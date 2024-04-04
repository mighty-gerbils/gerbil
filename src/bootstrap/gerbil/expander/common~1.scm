(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g113675_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113677_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113679_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113681_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113682_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113684_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113685_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113687_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113688_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113690_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113691_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113694_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj113671
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
          (##unchecked-structure-set! __obj113671 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113671 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113671 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113671 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113671 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113671 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113671 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113671 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113671 '#f '11 '#f '#f))
        (let ((__tmp113674 |gx[1]#_g113675_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113671 __tmp113674 '12 '#f '#f))
        (let ((__tmp113676 |gx[1]#_g113677_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113671 __tmp113676 '13 '#f '#f))
        (let ((__tmp113678 |gx[1]#_g113679_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113671 __tmp113678 '14 '#f '#f))
        (let ((__tmp113680
               (cons (cons 'e |gx[1]#_g113681_|)
                     (cons (cons 'source |gx[1]#_g113682_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113671 __tmp113680 '15 '#f '#f))
        (let ((__tmp113683
               (cons (cons 'e |gx[1]#_g113684_|)
                     (cons (cons 'source |gx[1]#_g113685_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113671 __tmp113683 '16 '#f '#f))
        (let ((__tmp113686
               (cons (cons 'e |gx[1]#_g113687_|)
                     (cons (cons 'source |gx[1]#_g113688_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113671 __tmp113686 '17 '#f '#f))
        (let ((__tmp113689
               (cons (cons 'e |gx[1]#_g113690_|)
                     (cons (cons 'source |gx[1]#_g113691_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113671 __tmp113689 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113671 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113671 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113671 '() '20 '#f '#f))
        __obj113671))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx112266%_)
        (let* ((_%g112270112284%_
                (lambda (_%g112271112280%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g112271112280%_)))
               (_%g112269112326%_
                (lambda (_%g112271112288%_)
                  (if (gx#stx-pair? _%g112271112288%_)
                      (let ((_%e112275112291%_
                             (gx#syntax-e _%g112271112288%_)))
                        (let ((_%hd112274112295%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e112275112291%_)))
                              (_%tl112273112298%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e112275112291%_))))
                          (if (gx#stx-pair? _%tl112273112298%_)
                              (let ((_%e112278112301%_
                                     (gx#syntax-e _%tl112273112298%_)))
                                (let ((_%hd112277112305%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e112278112301%_)))
                                      (_%tl112276112308%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e112278112301%_))))
                                  (if (gx#stx-null? _%tl112276112308%_)
                                      ((lambda (_%L112311%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L112311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L112311%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd112277112305%_)
                                      (_%g112270112284%_ _%g112271112288%_))))
                              (_%g112270112284%_ _%g112271112288%_))))
                      (_%g112270112284%_ _%g112271112288%_)))))
          (_%g112269112326%_ _%$stx112266%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx112330%_)
        (letrec ((_%generate112333%_
                  (lambda (_%tgt112482%_ _%kws112484%_ _%clauses112485%_)
                    (letrec ((_%generate-clause112487%_
                              (lambda (_%hd113422%_ _%E113424%_)
                                (let* ((_%__stx113574113575%_ _%hd113422%_)
                                       (_%g113428113455%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx113574113575%_))))
                                  (let ((_%__kont113577113578%_
                                         (lambda (_%L113551%_ _%L113553%_)
                                           (_%generate1112489%_
                                            _%hd113422%_
                                            _%L113553%_
                                            '#t
                                            _%L113551%_
                                            _%E113424%_)))
                                        (_%__kont113579113580%_
                                         (lambda (_%L113503%_
                                                  _%L113505%_
                                                  _%L113506%_)
                                           (_%generate1112489%_
                                            _%hd113422%_
                                            _%L113506%_
                                            _%L113505%_
                                            _%L113503%_
                                            _%E113424%_)))
                                        (_%__kont113581113582%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx112330%_
                                            _%hd113422%_))))
                                    (if (gx#stx-pair? _%__stx113574113575%_)
                                        (let ((_%e113434113531%_
                                               (gx#syntax-e
                                                _%__stx113574113575%_)))
                                          (let ((_%tl113432113538%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e113434113531%_)))
                                                (_%hd113433113535%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e113434113531%_))))
                                            (if (gx#stx-pair?
                                                 _%tl113432113538%_)
                                                (let ((_%e113437113541%_
                                                       (gx#syntax-e
                                                        _%tl113432113538%_)))
                                                  (let ((_%tl113435113548%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e113437113541%_)))
                                                        (_%hd113436113545%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e113437113541%_))))
                                                    (if (gx#stx-null?
                                                         _%tl113435113548%_)
                                                        (_%__kont113577113578%_
                                                         _%hd113436113545%_
                                                         _%hd113433113535%_)
                                                        (if (gx#stx-pair?
                                                             _%tl113435113548%_)
                                                            (let ((_%e113449113493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl113435113548%_)))
                      (let ((_%tl113447113500%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113449113493%_)))
                            (_%hd113448113497%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113449113493%_))))
                        (if (gx#stx-null? _%tl113447113500%_)
                            (_%__kont113579113580%_
                             _%hd113448113497%_
                             _%hd113436113545%_
                             _%hd113433113535%_)
                            (_%__kont113581113582%_))))
                    (_%__kont113581113582%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont113581113582%_))))
                                        (_%__kont113581113582%_))))))
                             (_%generate1112489%_
                              (lambda (_%where112875%_
                                       _%hd112877%_
                                       _%fender112878%_
                                       _%body112879%_
                                       _%E112880%_)
                                (letrec ((_%recur112882%_
                                          (lambda (_%hd112885%_
                                                   _%tgt112887%_
                                                   _%K112888%_)
                                            (let* ((_%__stx113620113621%_
                                                    _%hd112885%_)
                                                   (_%g112891112903%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx113620113621%_))))
                                              (let ((_%__kont113623113624%_
                                                     (lambda (_%L113212%_
                                                              _%L113214%_)
                                                       (let* ((_%g113225113233%_
                                                               (lambda (_%g113226113229%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g113226113229%_)))
                      (_%g113224113414%_
                       (lambda (_%g113226113237%_)
                         ((lambda (_%L113240%_)
                            (let ()
                              (let* ((_%g113252113260%_
                                      (lambda (_%g113253113256%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g113253113256%_)))
                                     (_%g113251113410%_
                                      (lambda (_%g113253113264%_)
                                        ((lambda (_%L113267%_)
                                           (let ()
                                             (let* ((_%g113280113288%_
                                                     (lambda (_%g113281113284%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g113281113284%_)))
                                                    (_%g113279113406%_
                                                     (lambda (_%g113281113292%_)
                                                       ((lambda (_%L113295%_)
                                                          (let ()
                                                            (let* ((_%g113308113316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g113309113312%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g113309113312%_)))
                           (_%g113307113402%_
                            (lambda (_%g113309113320%_)
                              ((lambda (_%L113323%_)
                                 (let ()
                                   (let* ((_%g113336113344%_
                                           (lambda (_%g113337113340%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g113337113340%_)))
                                          (_%g113335113398%_
                                           (lambda (_%g113337113348%_)
                                             ((lambda (_%L113351%_)
                                                (let ()
                                                  (let* ((_%g113364113372%_
                                                          (lambda (_%g113365113368%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g113365113368%_)))
                                                         (_%g113363113394%_
                                                          (lambda (_%g113365113376%_)
                                                            ((lambda (_%L113379%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'stx-pair?)
                                           (cons _%L113240%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'let)
                                                 (cons (cons (cons _%L113267%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'syntax-e)
                                       (cons _%L113240%_ '()))
                                 '()))
                     '())
               (cons (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (cons _%L113295%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##car)
                                                         (cons _%L113267%_
                                                               '()))
                                                   '()))
                                       (cons (cons _%L113323%_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##cdr)
                                                               (cons _%L113267%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons _%L113351%_ '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%L113379%_ '()))))))
                     _%g113365113376%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g113363113394%_
                                                     _%E112880%_))))
                                              _%g113337113348%_))))
                                     (_%g113335113398%_
                                      (_%recur112882%_
                                       _%L113214%_
                                       _%L113295%_
                                       (_%recur112882%_
                                        _%L113212%_
                                        _%L113323%_
                                        _%K112888%_))))))
                               _%g113309113320%_))))
                      (_%g113307113402%_ (gx#genident 'tl)))))
                _%g113281113292%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g113279113406%_
                                                (gx#genident 'hd)))))
                                         _%g113253113264%_))))
                                (_%g113251113410%_ (gx#genident 'e)))))
                          _%g113226113237%_))))
                 (_%g113224113414%_ _%tgt112887%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont113625113626%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd112885%_)
                                                           (let ()
                                                             (if (gx#underscore?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd112885%_)
                         (let () _%K112888%_)
                         (if (let ((__tmp113692
                                    (lambda (_%g112917112919%_)
                                      (gx#bound-identifier=?
                                       _%g112917112919%_
                                       _%hd112885%_))))
                               (declare (not safe))
                               (__find __tmp113692 _%kws112484%_))
                             (let ()
                               (let* ((_%g112925112940%_
                                       (lambda (_%g112926112936%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g112926112936%_)))
                                      (_%g112924112993%_
                                       (lambda (_%g112926112944%_)
                                         (if (gx#stx-pair? _%g112926112944%_)
                                             (let ((_%e112931112947%_
                                                    (gx#syntax-e
                                                     _%g112926112944%_)))
                                               (let ((_%hd112930112951%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e112931112947%_)))
                                                     (_%tl112929112954%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e112931112947%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl112929112954%_)
                                                     (let ((_%e112934112957%_
                                                            (gx#syntax-e
                                                             _%tl112929112954%_)))
                                                       (let ((_%hd112933112961%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e112934112957%_)))
                     (_%tl112932112964%_
                      (let () (declare (not safe)) (##cdr _%e112934112957%_))))
                 (if (gx#stx-null? _%tl112932112964%_)
                     ((lambda (_%L112967%_ _%L112969%_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'if)
                                (cons (cons (gx#datum->syntax '#f 'and)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'identifier?)
                                                        (cons _%L112969%_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'core-identifier=?)
                                                              (cons _%L112969%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _%L112967%_ '()))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons _%K112888%_
                                            (cons _%E112880%_ '()))))))
                      _%hd112933112961%_
                      _%hd112930112951%_)
                     (_%g112925112940%_ _%g112926112944%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112925112940%_
                                                      _%g112926112944%_))))
                                             (_%g112925112940%_
                                              _%g112926112944%_)))))
                                 (_%g112924112993%_
                                  (list _%tgt112887%_ _%hd112885%_))))
                             (let ()
                               (let* ((_%g112999113014%_
                                       (lambda (_%g113000113010%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g113000113010%_)))
                                      (_%g112998113059%_
                                       (lambda (_%g113000113018%_)
                                         (if (gx#stx-pair? _%g113000113018%_)
                                             (let ((_%e113005113021%_
                                                    (gx#syntax-e
                                                     _%g113000113018%_)))
                                               (let ((_%hd113004113025%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e113005113021%_)))
                                                     (_%tl113003113028%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e113005113021%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl113003113028%_)
                                                     (let ((_%e113008113031%_
                                                            (gx#syntax-e
                                                             _%tl113003113028%_)))
                                                       (let ((_%hd113007113035%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e113008113031%_)))
                     (_%tl113006113038%_
                      (let () (declare (not safe)) (##cdr _%e113008113031%_))))
                 (if (gx#stx-null? _%tl113006113038%_)
                     ((lambda (_%L113041%_ _%L113043%_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (cons (cons _%L113041%_
                                                  (cons _%L113043%_ '()))
                                            '())
                                      (cons _%K112888%_ '())))))
                      _%hd113007113035%_
                      _%hd113004113025%_)
                     (_%g112999113014%_ _%g113000113018%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112999113014%_
                                                      _%g113000113018%_))))
                                             (_%g112999113014%_
                                              _%g113000113018%_)))))
                                 (_%g112998113059%_
                                  (list _%tgt112887%_ _%hd112885%_)))))))
                   (if (gx#stx-null? _%hd112885%_)
                       (let ()
                         (let* ((_%g113065113073%_
                                 (lambda (_%g113066113069%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g113066113069%_)))
                                (_%g113064113092%_
                                 (lambda (_%g113066113077%_)
                                   ((lambda (_%L113080%_)
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-null?)
                                                          (cons _%L113080%_
                                                                '()))
                                                    (cons _%K112888%_
                                                          (cons _%E112880%_
                                                                '()))))))
                                    _%g113066113077%_))))
                           (_%g113064113092%_ _%tgt112887%_)))
                       (if (gx#stx-datum? _%hd112885%_)
                           (let ()
                             (let* ((_%g113098113117%_
                                     (lambda (_%g113099113113%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g113099113113%_)))
                                    (_%g113097113176%_
                                     (lambda (_%g113099113121%_)
                                       (if (gx#stx-pair? _%g113099113121%_)
                                           (let ((_%e113105113124%_
                                                  (gx#syntax-e
                                                   _%g113099113121%_)))
                                             (let ((_%hd113104113128%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e113105113124%_)))
                                                   (_%tl113103113131%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e113105113124%_))))
                                               (if (gx#stx-pair?
                                                    _%tl113103113131%_)
                                                   (let ((_%e113108113134%_
                                                          (gx#syntax-e
                                                           _%tl113103113131%_)))
                                                     (let ((_%hd113107113138%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e113108113134%_)))
                                                           (_%tl113106113141%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e113108113134%_))))
                                                       (if (gx#stx-pair?
                                                            _%tl113106113141%_)
                                                           (let ((_%e113111113144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl113106113141%_)))
                     (let ((_%hd113110113148%_
                            (let ()
                              (declare (not safe))
                              (##car _%e113111113144%_)))
                           (_%tl113109113151%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e113111113144%_))))
                       (if (gx#stx-null? _%tl113109113151%_)
                           ((lambda (_%L113154%_ _%L113156%_ _%L113157%_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons _%L113154%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'stx-e)
                                                              (cons _%L113157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons (gx#datum->syntax '#f 'quote)
                            (cons _%L113156%_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%K112888%_
                                                  (cons _%E112880%_ '()))))))
                            _%hd113110113148%_
                            _%hd113107113138%_
                            _%hd113104113128%_)
                           (_%g113098113117%_ _%g113099113121%_))))
                   (_%g113098113117%_ _%g113099113121%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g113098113117%_
                                                    _%g113099113121%_))))
                                           (_%g113098113117%_
                                            _%g113099113121%_)))))
                               (_%g113097113176%_
                                (list _%tgt112887%_
                                      _%hd112885%_
                                      (let ((_%e113180%_
                                             (gx#stx-e _%hd112885%_)))
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (keyword? _%e113180%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (immediate? _%e113180%_)))
                                            (let ()
                                              (gx#datum->syntax '#f 'eq?))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (number? _%e113180%_))
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
                              _%stx112330%_
                              _%where112875%_
                              _%hd112885%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx113620113621%_)
                                                    (let ((_%e112897113202%_
                                                           (gx#syntax-e
                                                            _%__stx113620113621%_)))
                                                      (let ((_%tl112895113209%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e112897113202%_)))
                    (_%hd112896113206%_
                     (let () (declare (not safe)) (##car _%e112897113202%_))))
                (_%__kont113623113624%_
                 _%tl112895113209%_
                 _%hd112896113206%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont113625113626%_)))))))
                                  (_%recur112882%_
                                   _%hd112877%_
                                   _%tgt112482%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender112878%_
                                               (cons _%body112879%_
                                                     (cons _%E112880%_
                                                           '()))))))))
                             (_%generate-clauses112490%_
                              (lambda (_%clauses112613%_)
                                (let _%lp112616%_ ((_%rest112619%_
                                                    _%clauses112613%_)
                                                   (_%E112621%_
                                                    (gx#genident 'E))
                                                   (_%r112622%_ '()))
                                  (let* ((_%__stx113656113657%_ _%rest112619%_)
                                         (_%g112625112637%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx113656113657%_))))
                                    (let ((_%__kont113659113660%_
                                           (lambda (_%L112702%_ _%L112704%_)
                                             (let* ((_%__stx113636113637%_
                                                     _%L112704%_)
                                                    (_%g112716112727%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx113636113637%_))))
                                               (let ((_%__kont113639113640%_
                                                      (lambda (_%L112856%_)
                                                        (if (gx#stx-null?
                                                             _%L112702%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L112856%_)
                             (let ((__tmp113693 (gx#stx-null? _%L112856%_)))
                               (declare (not safe))
                               (not __tmp113693)))
                        (cons (cons _%E112621%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L112856%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L112704%_))
                                          '()))
                              _%r112622%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx112330%_
                         _%L112704%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx112330%_
                     _%L112704%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont113641113642%_
                                                      (lambda ()
                                                        (let* ((_%g112738112746%_
                                                                (lambda (_%g112739112742%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g112739112742%_)))
                       (_%g112737112835%_
                        (lambda (_%g112739112750%_)
                          ((lambda (_%L112753%_)
                             (let ()
                               (let* ((_%g112769112777%_
                                       (lambda (_%g112770112773%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g112770112773%_)))
                                      (_%g112768112831%_
                                       (lambda (_%g112770112781%_)
                                         ((lambda (_%L112784%_)
                                            (let ()
                                              (let* ((_%g112797112805%_
                                                      (lambda (_%g112798112801%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g112798112801%_)))
                                                     (_%g112796112827%_
                                                      (lambda (_%g112798112809%_)
                                                        ((lambda (_%L112812%_)
                                                           (let ()
                                                             (_%lp112616%_
                                                              _%L112702%_
                                                              _%L112753%_
                                                              (cons (cons _%E112621%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _%L112812%_ '()))
                            _%r112622%_))))
                 _%g112798112809%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g112796112827%_
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons '()
                                                              (cons _%L112784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%L112704%_))))))
                                          _%g112770112781%_))))
                                 (_%g112768112831%_
                                  (_%generate-clause112487%_
                                   _%L112704%_
                                   (cons _%L112753%_ '()))))))
                           _%g112739112750%_))))
                  (_%g112737112835%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx113636113637%_)
                                                     (let ((_%e112721112846%_
                                                            (gx#syntax-e
                                                             _%__stx113636113637%_)))
                                                       (let ((_%tl112719112853%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e112721112846%_)))
                     (_%hd112720112850%_
                      (let () (declare (not safe)) (##car _%e112721112846%_))))
                 (if (gx#identifier? _%hd112720112850%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g113694_|
                          _%hd112720112850%_)
                         (_%__kont113639113640%_ _%tl112719112853%_)
                         (_%__kont113641113642%_))
                     (_%__kont113641113642%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont113641113642%_))))))
                                          (_%__kont113661113662%_
                                           (lambda ()
                                             (let* ((_%g112648112656%_
                                                     (lambda (_%g112649112652%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g112649112652%_)))
                                                    (_%g112647112681%_
                                                     (lambda (_%g112649112660%_)
                                                       ((lambda (_%L112663%_)
                                                          (let ()
                                                            (cons (cons _%E112621%_
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
                                   (cons _%L112663%_ '()))))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (gx#stx-source _%stx112330%_))
                                      '()))
                          _%r112622%_)))
                _%g112649112660%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g112647112681%_
                                                _%tgt112482%_)))))
                                      (if (gx#stx-pair? _%__stx113656113657%_)
                                          (let ((_%e112631112692%_
                                                 (gx#syntax-e
                                                  _%__stx113656113657%_)))
                                            (let ((_%tl112629112699%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e112631112692%_)))
                                                  (_%hd112630112696%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e112631112692%_))))
                                              (_%__kont113659113660%_
                                               _%tl112629112699%_
                                               _%hd112630112696%_)))
                                          (_%__kont113661113662%_))))))))
                      (let* ((_%bind112492%_
                              (_%generate-clauses112490%_ _%clauses112485%_))
                             (_%g112495112512%_
                              (lambda (_%g112496112508%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g112496112508%_)))
                             (_%g112494112609%_
                              (lambda (_%g112496112516%_)
                                (if (gx#stx-pair/null? _%g112496112516%_)
                                    (let ((_g113695_
                                           (gx#syntax-split-splice
                                            _%g112496112516%_
                                            '0)))
                                      (begin
                                        (let ((_g113696_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g113695_)
                                                     (##vector-length
                                                      _g113695_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g113696_ 2)))
                                              (error "Context expects 2 values"
                                                     _g113696_)))
                                        (let ((_%target112498112519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g113695_ 0)))
                                              (_%tl112500112522%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g113695_ 1))))
                                          (if (gx#stx-null? _%tl112500112522%_)
                                              (letrec ((_%loop112501112525%_
                                                        (lambda (_%hd112499112529%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try112505112532%_)
                  (if (gx#stx-pair? _%hd112499112529%_)
                      (let ((_%e112502112535%_
                             (gx#syntax-e _%hd112499112529%_)))
                        (let ((_%lp-hd112503112539%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e112502112535%_)))
                              (_%lp-tl112504112542%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e112502112535%_))))
                          (_%loop112501112525%_
                           _%lp-tl112504112542%_
                           (cons _%lp-hd112503112539%_
                                 _%bind-try112505112532%_))))
                      (let ((_%bind-try112506112545%_
                             (reverse _%bind-try112505112532%_)))
                        ((lambda (_%L112549%_)
                           (let ()
                             (let* ((_%g112567112575%_
                                     (lambda (_%g112568112571%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g112568112571%_)))
                                    (_%g112566112605%_
                                     (lambda (_%g112568112579%_)
                                       ((lambda (_%L112582%_)
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'let*)
                                                  (cons (let ((__tmp113697
                                                               (lambda (_%g112596112599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g112597112602%_)
                         (cons _%g112596112599%_ _%g112597112602%_))))
                  (declare (not safe))
                  (__foldr1 __tmp113697 '() _%L112549%_))
                (cons (cons _%L112582%_ '()) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g112568112579%_))))
                               (_%g112566112605%_
                                (car (last _%bind112492%_))))))
                         _%bind-try112506112545%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop112501112525%_
                                                 _%target112498112519%_
                                                 '()))
                                              (_%g112495112512%_
                                               _%g112496112516%_)))))
                                    (_%g112495112512%_ _%g112496112516%_)))))
                        (_%g112494112609%_ _%bind112492%_))))))
          (let* ((_%g112336112355%_
                  (lambda (_%g112337112351%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g112337112351%_)))
                 (_%g112335112478%_
                  (lambda (_%g112337112359%_)
                    (if (gx#stx-pair? _%g112337112359%_)
                        (let ((_%e112343112362%_
                               (gx#syntax-e _%g112337112359%_)))
                          (let ((_%hd112342112366%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e112343112362%_)))
                                (_%tl112341112369%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e112343112362%_))))
                            (if (gx#stx-pair? _%tl112341112369%_)
                                (let ((_%e112346112372%_
                                       (gx#syntax-e _%tl112341112369%_)))
                                  (let ((_%hd112345112376%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e112346112372%_)))
                                        (_%tl112344112379%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e112346112372%_))))
                                    (if (gx#stx-pair? _%tl112344112379%_)
                                        (let ((_%e112349112382%_
                                               (gx#syntax-e
                                                _%tl112344112379%_)))
                                          (let ((_%hd112348112386%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e112349112382%_)))
                                                (_%tl112347112389%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e112349112382%_))))
                                            ((lambda (_%L112392%_
                                                      _%L112394%_
                                                      _%L112395%_)
                                               (if (and (gx#identifier-list?
                                                         _%L112394%_)
                                                        (gx#stx-list?
                                                         _%L112392%_))
                                                   (let* ((_%g112413112421%_
                                                           (lambda (_%g112414112417%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g112414112417%_)))
                                                          (_%g112412112474%_
                                                           (lambda (_%g112414112425%_)
                                                             ((lambda (_%L112428%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g112440112448%_
                                  (lambda (_%g112441112444%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g112441112444%_)))
                                 (_%g112439112470%_
                                  (lambda (_%g112441112452%_)
                                    ((lambda (_%L112455%_)
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'let)
                                               (cons (cons (cons _%L112428%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L112395%_ '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%L112455%_ '())))))
                                     _%g112441112452%_))))
                            (_%g112439112470%_
                             (_%generate112333%_
                              _%L112428%_
                              (gx#syntax->list _%L112394%_)
                              _%L112392%_)))))
                      _%g112414112425%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112412112474%_
                                                      (gx#genident 'e)))
                                                   (_%g112336112355%_
                                                    _%g112337112359%_)))
                                             _%tl112347112389%_
                                             _%hd112348112386%_
                                             _%hd112345112376%_)))
                                        (_%g112336112355%_
                                         _%g112337112359%_))))
                                (_%g112336112355%_ _%g112337112359%_))))
                        (_%g112336112355%_ _%g112337112359%_)))))
            (_%g112335112478%_ _%stx112330%_)))))))
