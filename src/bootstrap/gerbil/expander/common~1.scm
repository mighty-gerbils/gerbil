(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g113676_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113678_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113680_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113682_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113683_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113685_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113686_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113688_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113689_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113691_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113692_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113695_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj113672
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
          (##unchecked-structure-set! __obj113672 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113672 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113672 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113672 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113672 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113672 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113672 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113672 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113672 '#f '11 '#f '#f))
        (let ((__tmp113675 |gx[1]#_g113676_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113672 __tmp113675 '12 '#f '#f))
        (let ((__tmp113677 |gx[1]#_g113678_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113672 __tmp113677 '13 '#f '#f))
        (let ((__tmp113679 |gx[1]#_g113680_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113672 __tmp113679 '14 '#f '#f))
        (let ((__tmp113681
               (cons (cons 'e |gx[1]#_g113682_|)
                     (cons (cons 'source |gx[1]#_g113683_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113672 __tmp113681 '15 '#f '#f))
        (let ((__tmp113684
               (cons (cons 'e |gx[1]#_g113685_|)
                     (cons (cons 'source |gx[1]#_g113686_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113672 __tmp113684 '16 '#f '#f))
        (let ((__tmp113687
               (cons (cons 'e |gx[1]#_g113688_|)
                     (cons (cons 'source |gx[1]#_g113689_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113672 __tmp113687 '17 '#f '#f))
        (let ((__tmp113690
               (cons (cons 'e |gx[1]#_g113691_|)
                     (cons (cons 'source |gx[1]#_g113692_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113672 __tmp113690 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113672 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113672 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113672 '() '20 '#f '#f))
        __obj113672))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx112267%_)
        (let* ((_%g112271112285%_
                (lambda (_%g112272112281%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g112272112281%_)))
               (_%g112270112327%_
                (lambda (_%g112272112289%_)
                  (if (gx#stx-pair? _%g112272112289%_)
                      (let ((_%e112276112292%_
                             (gx#syntax-e _%g112272112289%_)))
                        (let ((_%hd112275112296%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e112276112292%_)))
                              (_%tl112274112299%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e112276112292%_))))
                          (if (gx#stx-pair? _%tl112274112299%_)
                              (let ((_%e112279112302%_
                                     (gx#syntax-e _%tl112274112299%_)))
                                (let ((_%hd112278112306%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e112279112302%_)))
                                      (_%tl112277112309%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e112279112302%_))))
                                  (if (gx#stx-null? _%tl112277112309%_)
                                      ((lambda (_%L112312%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L112312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L112312%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd112278112306%_)
                                      (_%g112271112285%_ _%g112272112289%_))))
                              (_%g112271112285%_ _%g112272112289%_))))
                      (_%g112271112285%_ _%g112272112289%_)))))
          (_%g112270112327%_ _%$stx112267%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx112331%_)
        (letrec ((_%generate112334%_
                  (lambda (_%tgt112483%_ _%kws112485%_ _%clauses112486%_)
                    (letrec ((_%generate-clause112488%_
                              (lambda (_%hd113423%_ _%E113425%_)
                                (let* ((_%__stx113575113576%_ _%hd113423%_)
                                       (_%g113429113456%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx113575113576%_))))
                                  (let ((_%__kont113578113579%_
                                         (lambda (_%L113552%_ _%L113554%_)
                                           (_%generate1112490%_
                                            _%hd113423%_
                                            _%L113554%_
                                            '#t
                                            _%L113552%_
                                            _%E113425%_)))
                                        (_%__kont113580113581%_
                                         (lambda (_%L113504%_
                                                  _%L113506%_
                                                  _%L113507%_)
                                           (_%generate1112490%_
                                            _%hd113423%_
                                            _%L113507%_
                                            _%L113506%_
                                            _%L113504%_
                                            _%E113425%_)))
                                        (_%__kont113582113583%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx112331%_
                                            _%hd113423%_))))
                                    (if (gx#stx-pair? _%__stx113575113576%_)
                                        (let ((_%e113435113532%_
                                               (gx#syntax-e
                                                _%__stx113575113576%_)))
                                          (let ((_%tl113433113539%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e113435113532%_)))
                                                (_%hd113434113536%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e113435113532%_))))
                                            (if (gx#stx-pair?
                                                 _%tl113433113539%_)
                                                (let ((_%e113438113542%_
                                                       (gx#syntax-e
                                                        _%tl113433113539%_)))
                                                  (let ((_%tl113436113549%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e113438113542%_)))
                                                        (_%hd113437113546%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e113438113542%_))))
                                                    (if (gx#stx-null?
                                                         _%tl113436113549%_)
                                                        (_%__kont113578113579%_
                                                         _%hd113437113546%_
                                                         _%hd113434113536%_)
                                                        (if (gx#stx-pair?
                                                             _%tl113436113549%_)
                                                            (let ((_%e113450113494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl113436113549%_)))
                      (let ((_%tl113448113501%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113450113494%_)))
                            (_%hd113449113498%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113450113494%_))))
                        (if (gx#stx-null? _%tl113448113501%_)
                            (_%__kont113580113581%_
                             _%hd113449113498%_
                             _%hd113437113546%_
                             _%hd113434113536%_)
                            (_%__kont113582113583%_))))
                    (_%__kont113582113583%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont113582113583%_))))
                                        (_%__kont113582113583%_))))))
                             (_%generate1112490%_
                              (lambda (_%where112876%_
                                       _%hd112878%_
                                       _%fender112879%_
                                       _%body112880%_
                                       _%E112881%_)
                                (letrec ((_%recur112883%_
                                          (lambda (_%hd112886%_
                                                   _%tgt112888%_
                                                   _%K112889%_)
                                            (let* ((_%__stx113621113622%_
                                                    _%hd112886%_)
                                                   (_%g112892112904%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx113621113622%_))))
                                              (let ((_%__kont113624113625%_
                                                     (lambda (_%L113213%_
                                                              _%L113215%_)
                                                       (let* ((_%g113226113234%_
                                                               (lambda (_%g113227113230%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g113227113230%_)))
                      (_%g113225113415%_
                       (lambda (_%g113227113238%_)
                         ((lambda (_%L113241%_)
                            (let ()
                              (let* ((_%g113253113261%_
                                      (lambda (_%g113254113257%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g113254113257%_)))
                                     (_%g113252113411%_
                                      (lambda (_%g113254113265%_)
                                        ((lambda (_%L113268%_)
                                           (let ()
                                             (let* ((_%g113281113289%_
                                                     (lambda (_%g113282113285%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g113282113285%_)))
                                                    (_%g113280113407%_
                                                     (lambda (_%g113282113293%_)
                                                       ((lambda (_%L113296%_)
                                                          (let ()
                                                            (let* ((_%g113309113317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g113310113313%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g113310113313%_)))
                           (_%g113308113403%_
                            (lambda (_%g113310113321%_)
                              ((lambda (_%L113324%_)
                                 (let ()
                                   (let* ((_%g113337113345%_
                                           (lambda (_%g113338113341%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g113338113341%_)))
                                          (_%g113336113399%_
                                           (lambda (_%g113338113349%_)
                                             ((lambda (_%L113352%_)
                                                (let ()
                                                  (let* ((_%g113365113373%_
                                                          (lambda (_%g113366113369%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g113366113369%_)))
                                                         (_%g113364113395%_
                                                          (lambda (_%g113366113377%_)
                                                            ((lambda (_%L113380%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'stx-pair?)
                                           (cons _%L113241%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'let)
                                                 (cons (cons (cons _%L113268%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'syntax-e)
                                       (cons _%L113241%_ '()))
                                 '()))
                     '())
               (cons (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (cons _%L113296%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##car)
                                                         (cons _%L113268%_
                                                               '()))
                                                   '()))
                                       (cons (cons _%L113324%_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##cdr)
                                                               (cons _%L113268%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons _%L113352%_ '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%L113380%_ '()))))))
                     _%g113366113377%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g113364113395%_
                                                     _%E112881%_))))
                                              _%g113338113349%_))))
                                     (_%g113336113399%_
                                      (_%recur112883%_
                                       _%L113215%_
                                       _%L113296%_
                                       (_%recur112883%_
                                        _%L113213%_
                                        _%L113324%_
                                        _%K112889%_))))))
                               _%g113310113321%_))))
                      (_%g113308113403%_ (gx#genident 'tl)))))
                _%g113282113293%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g113280113407%_
                                                (gx#genident 'hd)))))
                                         _%g113254113265%_))))
                                (_%g113252113411%_ (gx#genident 'e)))))
                          _%g113227113238%_))))
                 (_%g113225113415%_ _%tgt112888%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont113626113627%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd112886%_)
                                                           (let ()
                                                             (if (gx#underscore?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd112886%_)
                         (let () _%K112889%_)
                         (if (let ((__tmp113693
                                    (lambda (_%g112918112920%_)
                                      (gx#bound-identifier=?
                                       _%g112918112920%_
                                       _%hd112886%_))))
                               (declare (not safe))
                               (__find __tmp113693 _%kws112485%_))
                             (let ()
                               (let* ((_%g112926112941%_
                                       (lambda (_%g112927112937%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g112927112937%_)))
                                      (_%g112925112994%_
                                       (lambda (_%g112927112945%_)
                                         (if (gx#stx-pair? _%g112927112945%_)
                                             (let ((_%e112932112948%_
                                                    (gx#syntax-e
                                                     _%g112927112945%_)))
                                               (let ((_%hd112931112952%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e112932112948%_)))
                                                     (_%tl112930112955%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e112932112948%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl112930112955%_)
                                                     (let ((_%e112935112958%_
                                                            (gx#syntax-e
                                                             _%tl112930112955%_)))
                                                       (let ((_%hd112934112962%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e112935112958%_)))
                     (_%tl112933112965%_
                      (let () (declare (not safe)) (##cdr _%e112935112958%_))))
                 (if (gx#stx-null? _%tl112933112965%_)
                     ((lambda (_%L112968%_ _%L112970%_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'if)
                                (cons (cons (gx#datum->syntax '#f 'and)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'identifier?)
                                                        (cons _%L112970%_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'core-identifier=?)
                                                              (cons _%L112970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _%L112968%_ '()))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons _%K112889%_
                                            (cons _%E112881%_ '()))))))
                      _%hd112934112962%_
                      _%hd112931112952%_)
                     (_%g112926112941%_ _%g112927112945%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112926112941%_
                                                      _%g112927112945%_))))
                                             (_%g112926112941%_
                                              _%g112927112945%_)))))
                                 (_%g112925112994%_
                                  (list _%tgt112888%_ _%hd112886%_))))
                             (let ()
                               (let* ((_%g113000113015%_
                                       (lambda (_%g113001113011%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g113001113011%_)))
                                      (_%g112999113060%_
                                       (lambda (_%g113001113019%_)
                                         (if (gx#stx-pair? _%g113001113019%_)
                                             (let ((_%e113006113022%_
                                                    (gx#syntax-e
                                                     _%g113001113019%_)))
                                               (let ((_%hd113005113026%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e113006113022%_)))
                                                     (_%tl113004113029%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e113006113022%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl113004113029%_)
                                                     (let ((_%e113009113032%_
                                                            (gx#syntax-e
                                                             _%tl113004113029%_)))
                                                       (let ((_%hd113008113036%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e113009113032%_)))
                     (_%tl113007113039%_
                      (let () (declare (not safe)) (##cdr _%e113009113032%_))))
                 (if (gx#stx-null? _%tl113007113039%_)
                     ((lambda (_%L113042%_ _%L113044%_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (cons (cons _%L113042%_
                                                  (cons _%L113044%_ '()))
                                            '())
                                      (cons _%K112889%_ '())))))
                      _%hd113008113036%_
                      _%hd113005113026%_)
                     (_%g113000113015%_ _%g113001113019%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g113000113015%_
                                                      _%g113001113019%_))))
                                             (_%g113000113015%_
                                              _%g113001113019%_)))))
                                 (_%g112999113060%_
                                  (list _%tgt112888%_ _%hd112886%_)))))))
                   (if (gx#stx-null? _%hd112886%_)
                       (let ()
                         (let* ((_%g113066113074%_
                                 (lambda (_%g113067113070%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g113067113070%_)))
                                (_%g113065113093%_
                                 (lambda (_%g113067113078%_)
                                   ((lambda (_%L113081%_)
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-null?)
                                                          (cons _%L113081%_
                                                                '()))
                                                    (cons _%K112889%_
                                                          (cons _%E112881%_
                                                                '()))))))
                                    _%g113067113078%_))))
                           (_%g113065113093%_ _%tgt112888%_)))
                       (if (gx#stx-datum? _%hd112886%_)
                           (let ()
                             (let* ((_%g113099113118%_
                                     (lambda (_%g113100113114%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g113100113114%_)))
                                    (_%g113098113177%_
                                     (lambda (_%g113100113122%_)
                                       (if (gx#stx-pair? _%g113100113122%_)
                                           (let ((_%e113106113125%_
                                                  (gx#syntax-e
                                                   _%g113100113122%_)))
                                             (let ((_%hd113105113129%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e113106113125%_)))
                                                   (_%tl113104113132%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e113106113125%_))))
                                               (if (gx#stx-pair?
                                                    _%tl113104113132%_)
                                                   (let ((_%e113109113135%_
                                                          (gx#syntax-e
                                                           _%tl113104113132%_)))
                                                     (let ((_%hd113108113139%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e113109113135%_)))
                                                           (_%tl113107113142%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e113109113135%_))))
                                                       (if (gx#stx-pair?
                                                            _%tl113107113142%_)
                                                           (let ((_%e113112113145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl113107113142%_)))
                     (let ((_%hd113111113149%_
                            (let ()
                              (declare (not safe))
                              (##car _%e113112113145%_)))
                           (_%tl113110113152%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e113112113145%_))))
                       (if (gx#stx-null? _%tl113110113152%_)
                           ((lambda (_%L113155%_ _%L113157%_ _%L113158%_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons _%L113155%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'stx-e)
                                                              (cons _%L113158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons (gx#datum->syntax '#f 'quote)
                            (cons _%L113157%_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%K112889%_
                                                  (cons _%E112881%_ '()))))))
                            _%hd113111113149%_
                            _%hd113108113139%_
                            _%hd113105113129%_)
                           (_%g113099113118%_ _%g113100113122%_))))
                   (_%g113099113118%_ _%g113100113122%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g113099113118%_
                                                    _%g113100113122%_))))
                                           (_%g113099113118%_
                                            _%g113100113122%_)))))
                               (_%g113098113177%_
                                (list _%tgt112888%_
                                      _%hd112886%_
                                      (let ((_%e113181%_
                                             (gx#stx-e _%hd112886%_)))
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (keyword? _%e113181%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (immediate? _%e113181%_)))
                                            (let ()
                                              (gx#datum->syntax '#f 'eq?))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (number? _%e113181%_))
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
                              _%stx112331%_
                              _%where112876%_
                              _%hd112886%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx113621113622%_)
                                                    (let ((_%e112898113203%_
                                                           (gx#syntax-e
                                                            _%__stx113621113622%_)))
                                                      (let ((_%tl112896113210%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e112898113203%_)))
                    (_%hd112897113207%_
                     (let () (declare (not safe)) (##car _%e112898113203%_))))
                (_%__kont113624113625%_
                 _%tl112896113210%_
                 _%hd112897113207%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont113626113627%_)))))))
                                  (_%recur112883%_
                                   _%hd112878%_
                                   _%tgt112483%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender112879%_
                                               (cons _%body112880%_
                                                     (cons _%E112881%_
                                                           '()))))))))
                             (_%generate-clauses112491%_
                              (lambda (_%clauses112614%_)
                                (let _%lp112617%_ ((_%rest112620%_
                                                    _%clauses112614%_)
                                                   (_%E112622%_
                                                    (gx#genident 'E))
                                                   (_%r112623%_ '()))
                                  (let* ((_%__stx113657113658%_ _%rest112620%_)
                                         (_%g112626112638%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx113657113658%_))))
                                    (let ((_%__kont113660113661%_
                                           (lambda (_%L112703%_ _%L112705%_)
                                             (let* ((_%__stx113637113638%_
                                                     _%L112705%_)
                                                    (_%g112717112728%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx113637113638%_))))
                                               (let ((_%__kont113640113641%_
                                                      (lambda (_%L112857%_)
                                                        (if (gx#stx-null?
                                                             _%L112703%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L112857%_)
                             (let ((__tmp113694 (gx#stx-null? _%L112857%_)))
                               (declare (not safe))
                               (not __tmp113694)))
                        (cons (cons _%E112622%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L112857%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L112705%_))
                                          '()))
                              _%r112623%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx112331%_
                         _%L112705%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx112331%_
                     _%L112705%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont113642113643%_
                                                      (lambda ()
                                                        (let* ((_%g112739112747%_
                                                                (lambda (_%g112740112743%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g112740112743%_)))
                       (_%g112738112836%_
                        (lambda (_%g112740112751%_)
                          ((lambda (_%L112754%_)
                             (let ()
                               (let* ((_%g112770112778%_
                                       (lambda (_%g112771112774%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g112771112774%_)))
                                      (_%g112769112832%_
                                       (lambda (_%g112771112782%_)
                                         ((lambda (_%L112785%_)
                                            (let ()
                                              (let* ((_%g112798112806%_
                                                      (lambda (_%g112799112802%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g112799112802%_)))
                                                     (_%g112797112828%_
                                                      (lambda (_%g112799112810%_)
                                                        ((lambda (_%L112813%_)
                                                           (let ()
                                                             (_%lp112617%_
                                                              _%L112703%_
                                                              _%L112754%_
                                                              (cons (cons _%E112622%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _%L112813%_ '()))
                            _%r112623%_))))
                 _%g112799112810%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g112797112828%_
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons '()
                                                              (cons _%L112785%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%L112705%_))))))
                                          _%g112771112782%_))))
                                 (_%g112769112832%_
                                  (_%generate-clause112488%_
                                   _%L112705%_
                                   (cons _%L112754%_ '()))))))
                           _%g112740112751%_))))
                  (_%g112738112836%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx113637113638%_)
                                                     (let ((_%e112722112847%_
                                                            (gx#syntax-e
                                                             _%__stx113637113638%_)))
                                                       (let ((_%tl112720112854%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e112722112847%_)))
                     (_%hd112721112851%_
                      (let () (declare (not safe)) (##car _%e112722112847%_))))
                 (if (gx#identifier? _%hd112721112851%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g113695_|
                          _%hd112721112851%_)
                         (_%__kont113640113641%_ _%tl112720112854%_)
                         (_%__kont113642113643%_))
                     (_%__kont113642113643%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont113642113643%_))))))
                                          (_%__kont113662113663%_
                                           (lambda ()
                                             (let* ((_%g112649112657%_
                                                     (lambda (_%g112650112653%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g112650112653%_)))
                                                    (_%g112648112682%_
                                                     (lambda (_%g112650112661%_)
                                                       ((lambda (_%L112664%_)
                                                          (let ()
                                                            (cons (cons _%E112622%_
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
                                   (cons _%L112664%_ '()))))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (gx#stx-source _%stx112331%_))
                                      '()))
                          _%r112623%_)))
                _%g112650112661%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g112648112682%_
                                                _%tgt112483%_)))))
                                      (if (gx#stx-pair? _%__stx113657113658%_)
                                          (let ((_%e112632112693%_
                                                 (gx#syntax-e
                                                  _%__stx113657113658%_)))
                                            (let ((_%tl112630112700%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e112632112693%_)))
                                                  (_%hd112631112697%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e112632112693%_))))
                                              (_%__kont113660113661%_
                                               _%tl112630112700%_
                                               _%hd112631112697%_)))
                                          (_%__kont113662113663%_))))))))
                      (let* ((_%bind112493%_
                              (_%generate-clauses112491%_ _%clauses112486%_))
                             (_%g112496112513%_
                              (lambda (_%g112497112509%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g112497112509%_)))
                             (_%g112495112610%_
                              (lambda (_%g112497112517%_)
                                (if (gx#stx-pair/null? _%g112497112517%_)
                                    (let ((_g113696_
                                           (gx#syntax-split-splice
                                            _%g112497112517%_
                                            '0)))
                                      (begin
                                        (let ((_g113697_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g113696_)
                                                     (##vector-length
                                                      _g113696_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g113697_ 2)))
                                              (error "Context expects 2 values"
                                                     _g113697_)))
                                        (let ((_%target112499112520%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g113696_ 0)))
                                              (_%tl112501112523%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g113696_ 1))))
                                          (if (gx#stx-null? _%tl112501112523%_)
                                              (letrec ((_%loop112502112526%_
                                                        (lambda (_%hd112500112530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try112506112533%_)
                  (if (gx#stx-pair? _%hd112500112530%_)
                      (let ((_%e112503112536%_
                             (gx#syntax-e _%hd112500112530%_)))
                        (let ((_%lp-hd112504112540%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e112503112536%_)))
                              (_%lp-tl112505112543%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e112503112536%_))))
                          (_%loop112502112526%_
                           _%lp-tl112505112543%_
                           (cons _%lp-hd112504112540%_
                                 _%bind-try112506112533%_))))
                      (let ((_%bind-try112507112546%_
                             (reverse _%bind-try112506112533%_)))
                        ((lambda (_%L112550%_)
                           (let ()
                             (let* ((_%g112568112576%_
                                     (lambda (_%g112569112572%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g112569112572%_)))
                                    (_%g112567112606%_
                                     (lambda (_%g112569112580%_)
                                       ((lambda (_%L112583%_)
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'let*)
                                                  (cons (let ((__tmp113698
                                                               (lambda (_%g112597112600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g112598112603%_)
                         (cons _%g112597112600%_ _%g112598112603%_))))
                  (declare (not safe))
                  (__foldr1 __tmp113698 '() _%L112550%_))
                (cons (cons _%L112583%_ '()) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g112569112580%_))))
                               (_%g112567112606%_
                                (car (last _%bind112493%_))))))
                         _%bind-try112507112546%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop112502112526%_
                                                 _%target112499112520%_
                                                 '()))
                                              (_%g112496112513%_
                                               _%g112497112517%_)))))
                                    (_%g112496112513%_ _%g112497112517%_)))))
                        (_%g112495112610%_ _%bind112493%_))))))
          (let* ((_%g112337112356%_
                  (lambda (_%g112338112352%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g112338112352%_)))
                 (_%g112336112479%_
                  (lambda (_%g112338112360%_)
                    (if (gx#stx-pair? _%g112338112360%_)
                        (let ((_%e112344112363%_
                               (gx#syntax-e _%g112338112360%_)))
                          (let ((_%hd112343112367%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e112344112363%_)))
                                (_%tl112342112370%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e112344112363%_))))
                            (if (gx#stx-pair? _%tl112342112370%_)
                                (let ((_%e112347112373%_
                                       (gx#syntax-e _%tl112342112370%_)))
                                  (let ((_%hd112346112377%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e112347112373%_)))
                                        (_%tl112345112380%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e112347112373%_))))
                                    (if (gx#stx-pair? _%tl112345112380%_)
                                        (let ((_%e112350112383%_
                                               (gx#syntax-e
                                                _%tl112345112380%_)))
                                          (let ((_%hd112349112387%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e112350112383%_)))
                                                (_%tl112348112390%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e112350112383%_))))
                                            ((lambda (_%L112393%_
                                                      _%L112395%_
                                                      _%L112396%_)
                                               (if (and (gx#identifier-list?
                                                         _%L112395%_)
                                                        (gx#stx-list?
                                                         _%L112393%_))
                                                   (let* ((_%g112414112422%_
                                                           (lambda (_%g112415112418%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g112415112418%_)))
                                                          (_%g112413112475%_
                                                           (lambda (_%g112415112426%_)
                                                             ((lambda (_%L112429%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g112441112449%_
                                  (lambda (_%g112442112445%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g112442112445%_)))
                                 (_%g112440112471%_
                                  (lambda (_%g112442112453%_)
                                    ((lambda (_%L112456%_)
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'let)
                                               (cons (cons (cons _%L112429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L112396%_ '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%L112456%_ '())))))
                                     _%g112442112453%_))))
                            (_%g112440112471%_
                             (_%generate112334%_
                              _%L112429%_
                              (gx#syntax->list _%L112395%_)
                              _%L112393%_)))))
                      _%g112415112426%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112413112475%_
                                                      (gx#genident 'e)))
                                                   (_%g112337112356%_
                                                    _%g112338112360%_)))
                                             _%tl112348112390%_
                                             _%hd112349112387%_
                                             _%hd112346112377%_)))
                                        (_%g112337112356%_
                                         _%g112338112360%_))))
                                (_%g112337112356%_ _%g112338112360%_))))
                        (_%g112337112356%_ _%g112338112360%_)))))
            (_%g112336112479%_ _%stx112331%_)))))))
