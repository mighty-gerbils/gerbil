(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g115004_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115006_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115008_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115010_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115011_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115013_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115014_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115016_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115017_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115019_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115020_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115022_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj115000
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
          (##unchecked-structure-set! __obj115000 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115000 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115000 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115000 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115000 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115000 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115000 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115000 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115000 '#f '11 '#f '#f))
        (let ((__tmp115003 |gx[1]#_g115004_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj115000 __tmp115003 '12 '#f '#f))
        (let ((__tmp115005 |gx[1]#_g115006_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj115000 __tmp115005 '13 '#f '#f))
        (let ((__tmp115007 |gx[1]#_g115008_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj115000 __tmp115007 '14 '#f '#f))
        (let ((__tmp115009
               (cons (cons 'e |gx[1]#_g115010_|)
                     (cons (cons 'source |gx[1]#_g115011_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj115000 __tmp115009 '15 '#f '#f))
        (let ((__tmp115012
               (cons (cons 'e |gx[1]#_g115013_|)
                     (cons (cons 'source |gx[1]#_g115014_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj115000 __tmp115012 '16 '#f '#f))
        (let ((__tmp115015
               (cons (cons 'e |gx[1]#_g115016_|)
                     (cons (cons 'source |gx[1]#_g115017_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj115000 __tmp115015 '17 '#f '#f))
        (let ((__tmp115018
               (cons (cons 'e |gx[1]#_g115019_|)
                     (cons (cons 'source |gx[1]#_g115020_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj115000 __tmp115018 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115000 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115000 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115000 '() '20 '#f '#f))
        __obj115000))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx113595%_)
        (let* ((_%g113599113613%_
                (lambda (_%g113600113609%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g113600113609%_)))
               (_%g113598113655%_
                (lambda (_%g113600113617%_)
                  (if (gx#stx-pair? _%g113600113617%_)
                      (let ((_%e113602113620%_
                             (gx#syntax-e _%g113600113617%_)))
                        (let ((_%hd113603113624%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e113602113620%_)))
                              (_%tl113604113627%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e113602113620%_))))
                          (if (gx#stx-pair? _%tl113604113627%_)
                              (let ((_%e113605113630%_
                                     (gx#syntax-e _%tl113604113627%_)))
                                (let ((_%hd113606113634%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e113605113630%_)))
                                      (_%tl113607113637%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e113605113630%_))))
                                  (if (gx#stx-null? _%tl113607113637%_)
                                      ((lambda (_%L113640%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L113640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L113640%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd113606113634%_)
                                      (_%g113599113613%_ _%g113600113617%_))))
                              (_%g113599113613%_ _%g113600113617%_))))
                      (_%g113599113613%_ _%g113600113617%_)))))
          (_%g113598113655%_ _%$stx113595%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx113659%_)
        (letrec ((_%generate113662%_
                  (lambda (_%tgt113811%_ _%kws113813%_ _%clauses113814%_)
                    (letrec ((_%generate-clause113816%_
                              (lambda (_%hd114751%_ _%E114753%_)
                                (let* ((_%__stx114903114904%_ _%hd114751%_)
                                       (_%g114757114784%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx114903114904%_))))
                                  (let ((_%__kont114906114907%_
                                         (lambda (_%L114880%_ _%L114882%_)
                                           (_%generate1113818%_
                                            _%hd114751%_
                                            _%L114882%_
                                            '#t
                                            _%L114880%_
                                            _%E114753%_)))
                                        (_%__kont114908114909%_
                                         (lambda (_%L114832%_
                                                  _%L114834%_
                                                  _%L114835%_)
                                           (_%generate1113818%_
                                            _%hd114751%_
                                            _%L114835%_
                                            _%L114834%_
                                            _%L114832%_
                                            _%E114753%_)))
                                        (_%__kont114910114911%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx113659%_
                                            _%hd114751%_))))
                                    (if (gx#stx-pair? _%__stx114903114904%_)
                                        (let ((_%e114761114860%_
                                               (gx#syntax-e
                                                _%__stx114903114904%_)))
                                          (let ((_%tl114763114867%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e114761114860%_)))
                                                (_%hd114762114864%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e114761114860%_))))
                                            (if (gx#stx-pair?
                                                 _%tl114763114867%_)
                                                (let ((_%e114764114870%_
                                                       (gx#syntax-e
                                                        _%tl114763114867%_)))
                                                  (let ((_%tl114766114877%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e114764114870%_)))
                                                        (_%hd114765114874%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e114764114870%_))))
                                                    (if (gx#stx-null?
                                                         _%tl114766114877%_)
                                                        (_%__kont114906114907%_
                                                         _%hd114765114874%_
                                                         _%hd114762114864%_)
                                                        (if (gx#stx-pair?
                                                             _%tl114766114877%_)
                                                            (let ((_%e114776114822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl114766114877%_)))
                      (let ((_%tl114778114829%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e114776114822%_)))
                            (_%hd114777114826%_
                             (let ()
                               (declare (not safe))
                               (##car _%e114776114822%_))))
                        (if (gx#stx-null? _%tl114778114829%_)
                            (_%__kont114908114909%_
                             _%hd114777114826%_
                             _%hd114765114874%_
                             _%hd114762114864%_)
                            (_%__kont114910114911%_))))
                    (_%__kont114910114911%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont114910114911%_))))
                                        (_%__kont114910114911%_))))))
                             (_%generate1113818%_
                              (lambda (_%where114204%_
                                       _%hd114206%_
                                       _%fender114207%_
                                       _%body114208%_
                                       _%E114209%_)
                                (letrec ((_%recur114211%_
                                          (lambda (_%hd114214%_
                                                   _%tgt114216%_
                                                   _%K114217%_)
                                            (let* ((_%__stx114949114950%_
                                                    _%hd114214%_)
                                                   (_%g114220114232%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx114949114950%_))))
                                              (let ((_%__kont114952114953%_
                                                     (lambda (_%L114541%_
                                                              _%L114543%_)
                                                       (let* ((_%g114554114562%_
                                                               (lambda (_%g114555114558%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g114555114558%_)))
                      (_%g114553114743%_
                       (lambda (_%g114555114566%_)
                         ((lambda (_%L114569%_)
                            (let* ((_%g114581114589%_
                                    (lambda (_%g114582114585%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g114582114585%_)))
                                   (_%g114580114739%_
                                    (lambda (_%g114582114593%_)
                                      ((lambda (_%L114596%_)
                                         (let* ((_%g114609114617%_
                                                 (lambda (_%g114610114613%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g114610114613%_)))
                                                (_%g114608114735%_
                                                 (lambda (_%g114610114621%_)
                                                   ((lambda (_%L114624%_)
                                                      (let* ((_%g114637114645%_
                                                              (lambda (_%g114638114641%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g114638114641%_)))
                     (_%g114636114731%_
                      (lambda (_%g114638114649%_)
                        ((lambda (_%L114652%_)
                           (let* ((_%g114665114673%_
                                   (lambda (_%g114666114669%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114666114669%_)))
                                  (_%g114664114727%_
                                   (lambda (_%g114666114677%_)
                                     ((lambda (_%L114680%_)
                                        (let* ((_%g114693114701%_
                                                (lambda (_%g114694114697%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g114694114697%_)))
                                               (_%g114692114723%_
                                                (lambda (_%g114694114705%_)
                                                  ((lambda (_%L114708%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L114569%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L114596%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L114569%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L114624%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L114596%_ '()))
                                       '()))
                           (cons (cons _%L114652%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L114596%_ '()))
                                             '()))
                                 '()))
                     (cons _%L114680%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L114708%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g114694114705%_))))
                                          (_%g114692114723%_ _%E114209%_)))
                                      _%g114666114677%_))))
                             (_%g114664114727%_
                              (_%recur114211%_
                               _%L114543%_
                               _%L114624%_
                               (_%recur114211%_
                                _%L114541%_
                                _%L114652%_
                                _%K114217%_)))))
                         _%g114638114649%_))))
                (_%g114636114731%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g114610114621%_))))
                                           (_%g114608114735%_
                                            (gx#genident 'hd))))
                                       _%g114582114593%_))))
                              (_%g114580114739%_ (gx#genident 'e))))
                          _%g114555114566%_))))
                 (_%g114553114743%_ _%tgt114216%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont114954114955%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd114214%_)
                                                           (if (gx#underscore?
                                                                _%hd114214%_)
                                                               _%K114217%_
                                                               (if (let ((__tmp115021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g114246114248%_)
                                    (gx#bound-identifier=?
                                     _%g114246114248%_
                                     _%hd114214%_))))
                             (declare (not safe))
                             (__find __tmp115021 _%kws113813%_))
                           (let* ((_%g114254114269%_
                                   (lambda (_%g114255114265%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114255114265%_)))
                                  (_%g114253114322%_
                                   (lambda (_%g114255114273%_)
                                     (if (gx#stx-pair? _%g114255114273%_)
                                         (let ((_%e114258114276%_
                                                (gx#syntax-e
                                                 _%g114255114273%_)))
                                           (let ((_%hd114259114280%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e114258114276%_)))
                                                 (_%tl114260114283%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e114258114276%_))))
                                             (if (gx#stx-pair?
                                                  _%tl114260114283%_)
                                                 (let ((_%e114261114286%_
                                                        (gx#syntax-e
                                                         _%tl114260114283%_)))
                                                   (let ((_%hd114262114290%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e114261114286%_)))
                                                         (_%tl114263114293%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e114261114286%_))))
                                                     (if (gx#stx-null?
                                                          _%tl114263114293%_)
                                                         ((lambda (_%L114296%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L114298%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L114298%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L114298%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L114296%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K114217%_ (cons _%E114209%_ '())))))
                  _%hd114262114290%_
                  _%hd114259114280%_)
                 (_%g114254114269%_ _%g114255114273%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g114254114269%_
                                                  _%g114255114273%_))))
                                         (_%g114254114269%_
                                          _%g114255114273%_)))))
                             (_%g114253114322%_
                              (list _%tgt114216%_ _%hd114214%_)))
                           (let* ((_%g114328114343%_
                                   (lambda (_%g114329114339%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114329114339%_)))
                                  (_%g114327114388%_
                                   (lambda (_%g114329114347%_)
                                     (if (gx#stx-pair? _%g114329114347%_)
                                         (let ((_%e114332114350%_
                                                (gx#syntax-e
                                                 _%g114329114347%_)))
                                           (let ((_%hd114333114354%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e114332114350%_)))
                                                 (_%tl114334114357%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e114332114350%_))))
                                             (if (gx#stx-pair?
                                                  _%tl114334114357%_)
                                                 (let ((_%e114335114360%_
                                                        (gx#syntax-e
                                                         _%tl114334114357%_)))
                                                   (let ((_%hd114336114364%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e114335114360%_)))
                                                         (_%tl114337114367%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e114335114360%_))))
                                                     (if (gx#stx-null?
                                                          _%tl114337114367%_)
                                                         ((lambda (_%L114370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L114372%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L114370%_ (cons _%L114372%_ '()))
                                      '())
                                (cons _%K114217%_ '()))))
                  _%hd114336114364%_
                  _%hd114333114354%_)
                 (_%g114328114343%_ _%g114329114347%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g114328114343%_
                                                  _%g114329114347%_))))
                                         (_%g114328114343%_
                                          _%g114329114347%_)))))
                             (_%g114327114388%_
                              (list _%tgt114216%_ _%hd114214%_)))))
                   (if (gx#stx-null? _%hd114214%_)
                       (let* ((_%g114394114402%_
                               (lambda (_%g114395114398%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g114395114398%_)))
                              (_%g114393114421%_
                               (lambda (_%g114395114406%_)
                                 ((lambda (_%L114409%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L114409%_ '()))
                                                (cons _%K114217%_
                                                      (cons _%E114209%_
                                                            '())))))
                                  _%g114395114406%_))))
                         (_%g114393114421%_ _%tgt114216%_))
                       (if (gx#stx-datum? _%hd114214%_)
                           (let* ((_%g114427114446%_
                                   (lambda (_%g114428114442%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114428114442%_)))
                                  (_%g114426114505%_
                                   (lambda (_%g114428114450%_)
                                     (if (gx#stx-pair? _%g114428114450%_)
                                         (let ((_%e114432114453%_
                                                (gx#syntax-e
                                                 _%g114428114450%_)))
                                           (let ((_%hd114433114457%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e114432114453%_)))
                                                 (_%tl114434114460%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e114432114453%_))))
                                             (if (gx#stx-pair?
                                                  _%tl114434114460%_)
                                                 (let ((_%e114435114463%_
                                                        (gx#syntax-e
                                                         _%tl114434114460%_)))
                                                   (let ((_%hd114436114467%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e114435114463%_)))
                                                         (_%tl114437114470%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e114435114463%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl114437114470%_)
                                                         (let ((_%e114438114473%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl114437114470%_)))
                   (let ((_%hd114439114477%_
                          (let ()
                            (declare (not safe))
                            (##car _%e114438114473%_)))
                         (_%tl114440114480%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e114438114473%_))))
                     (if (gx#stx-null? _%tl114440114480%_)
                         ((lambda (_%L114483%_ _%L114485%_ _%L114486%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L114483%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L114486%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L114485%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K114217%_
                                              (cons _%E114209%_ '())))))
                          _%hd114439114477%_
                          _%hd114436114467%_
                          _%hd114433114457%_)
                         (_%g114427114446%_ _%g114428114450%_))))
                 (_%g114427114446%_ _%g114428114450%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g114427114446%_
                                                  _%g114428114450%_))))
                                         (_%g114427114446%_
                                          _%g114428114450%_)))))
                             (_%g114426114505%_
                              (list _%tgt114216%_
                                    _%hd114214%_
                                    (let ((_%e114509%_
                                           (gx#stx-e _%hd114214%_)))
                                      (if (or (keyword? _%e114509%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e114509%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e114509%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx113659%_
                            _%where114204%_
                            _%hd114214%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx114949114950%_)
                                                    (let ((_%e114224114531%_
                                                           (gx#syntax-e
                                                            _%__stx114949114950%_)))
                                                      (let ((_%tl114226114538%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e114224114531%_)))
                    (_%hd114225114535%_
                     (let () (declare (not safe)) (##car _%e114224114531%_))))
                (_%__kont114952114953%_
                 _%tl114226114538%_
                 _%hd114225114535%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont114954114955%_)))))))
                                  (_%recur114211%_
                                   _%hd114206%_
                                   _%tgt113811%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender114207%_
                                               (cons _%body114208%_
                                                     (cons _%E114209%_
                                                           '()))))))))
                             (_%generate-clauses113819%_
                              (lambda (_%clauses113942%_)
                                (let _%lp113945%_ ((_%rest113948%_
                                                    _%clauses113942%_)
                                                   (_%E113950%_
                                                    (gx#genident 'E))
                                                   (_%r113951%_ '()))
                                  (let* ((_%__stx114985114986%_ _%rest113948%_)
                                         (_%g113954113966%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx114985114986%_))))
                                    (let ((_%__kont114988114989%_
                                           (lambda (_%L114031%_ _%L114033%_)
                                             (let* ((_%__stx114965114966%_
                                                     _%L114033%_)
                                                    (_%g114045114056%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx114965114966%_))))
                                               (let ((_%__kont114968114969%_
                                                      (lambda (_%L114185%_)
                                                        (if (gx#stx-null?
                                                             _%L114031%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L114185%_)
                             (not (gx#stx-null? _%L114185%_)))
                        (cons (cons _%E113950%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L114185%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L114033%_))
                                          '()))
                              _%r113951%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx113659%_
                         _%L114033%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx113659%_
                     _%L114033%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont114970114971%_
                                                      (lambda ()
                                                        (let* ((_%g114067114075%_
                                                                (lambda (_%g114068114071%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g114068114071%_)))
                       (_%g114066114164%_
                        (lambda (_%g114068114079%_)
                          ((lambda (_%L114082%_)
                             (let* ((_%g114098114106%_
                                     (lambda (_%g114099114102%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g114099114102%_)))
                                    (_%g114097114160%_
                                     (lambda (_%g114099114110%_)
                                       ((lambda (_%L114113%_)
                                          (let* ((_%g114126114134%_
                                                  (lambda (_%g114127114130%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g114127114130%_)))
                                                 (_%g114125114156%_
                                                  (lambda (_%g114127114138%_)
                                                    ((lambda (_%L114141%_)
                                                       (_%lp113945%_
                                                        _%L114031%_
                                                        _%L114082%_
                                                        (cons (cons _%E113950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L114141%_ '()))
                      _%r113951%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g114127114138%_))))
                                            (_%g114125114156%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L114113%_
                                                                '())))
                                              (gx#stx-source _%L114033%_)))))
                                        _%g114099114110%_))))
                               (_%g114097114160%_
                                (_%generate-clause113816%_
                                 _%L114033%_
                                 (cons _%L114082%_ '())))))
                           _%g114068114079%_))))
                  (_%g114066114164%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx114965114966%_)
                                                     (let ((_%e114048114175%_
                                                            (gx#syntax-e
                                                             _%__stx114965114966%_)))
                                                       (let ((_%tl114050114182%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e114048114175%_)))
                     (_%hd114049114179%_
                      (let () (declare (not safe)) (##car _%e114048114175%_))))
                 (if (gx#identifier? _%hd114049114179%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g115022_|
                          _%hd114049114179%_)
                         (_%__kont114968114969%_ _%tl114050114182%_)
                         (_%__kont114970114971%_))
                     (_%__kont114970114971%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont114970114971%_))))))
                                          (_%__kont114990114991%_
                                           (lambda ()
                                             (let* ((_%g113977113985%_
                                                     (lambda (_%g113978113981%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g113978113981%_)))
                                                    (_%g113976114010%_
                                                     (lambda (_%g113978113989%_)
                                                       ((lambda (_%L113992%_)
                                                          (cons (cons _%E113950%_
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
                                 (cons _%L113992%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx113659%_))
                                    '()))
                        _%r113951%_))
                _%g113978113989%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g113976114010%_
                                                _%tgt113811%_)))))
                                      (if (gx#stx-pair? _%__stx114985114986%_)
                                          (let ((_%e113958114021%_
                                                 (gx#syntax-e
                                                  _%__stx114985114986%_)))
                                            (let ((_%tl113960114028%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e113958114021%_)))
                                                  (_%hd113959114025%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e113958114021%_))))
                                              (_%__kont114988114989%_
                                               _%tl113960114028%_
                                               _%hd113959114025%_)))
                                          (_%__kont114990114991%_))))))))
                      (let* ((_%bind113821%_
                              (_%generate-clauses113819%_ _%clauses113814%_))
                             (_%g113824113841%_
                              (lambda (_%g113825113837%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g113825113837%_)))
                             (_%g113823113938%_
                              (lambda (_%g113825113845%_)
                                (if (gx#stx-pair/null? _%g113825113845%_)
                                    (let ((_g115023_
                                           (gx#syntax-split-splice
                                            _%g113825113845%_
                                            '0)))
                                      (begin
                                        (let ((_g115024_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g115023_)
                                                     (##vector-length
                                                      _g115023_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g115024_ 2)))
                                              (error "Context expects 2 values"
                                                     _g115024_)))
                                        (let ((_%target113827113848%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g115023_ 0)))
                                              (_%tl113829113851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g115023_ 1))))
                                          (if (gx#stx-null? _%tl113829113851%_)
                                              (letrec ((_%loop113830113854%_
                                                        (lambda (_%hd113828113858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try113834113861%_)
                  (if (gx#stx-pair? _%hd113828113858%_)
                      (let ((_%e113831113864%_
                             (gx#syntax-e _%hd113828113858%_)))
                        (let ((_%lp-hd113832113868%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e113831113864%_)))
                              (_%lp-tl113833113871%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e113831113864%_))))
                          (_%loop113830113854%_
                           _%lp-tl113833113871%_
                           (cons _%lp-hd113832113868%_
                                 _%bind-try113834113861%_))))
                      (let ((_%bind-try113835113874%_
                             (reverse _%bind-try113834113861%_)))
                        ((lambda (_%L113878%_)
                           (let* ((_%g113896113904%_
                                   (lambda (_%g113897113900%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g113897113900%_)))
                                  (_%g113895113934%_
                                   (lambda (_%g113897113908%_)
                                     ((lambda (_%L113911%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp115025
                                                           (lambda (_%g113925113928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g113926113931%_)
                     (cons _%g113925113928%_ _%g113926113931%_))))
              (declare (not safe))
              (__foldr1 __tmp115025 '() _%L113878%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L113911%_
                                                                '())
                                                          '()))))
                                      _%g113897113908%_))))
                             (_%g113895113934%_ (car (last _%bind113821%_)))))
                         _%bind-try113835113874%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop113830113854%_
                                                 _%target113827113848%_
                                                 '()))
                                              (_%g113824113841%_
                                               _%g113825113845%_)))))
                                    (_%g113824113841%_ _%g113825113845%_)))))
                        (_%g113823113938%_ _%bind113821%_))))))
          (let* ((_%g113665113684%_
                  (lambda (_%g113666113680%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g113666113680%_)))
                 (_%g113664113807%_
                  (lambda (_%g113666113688%_)
                    (if (gx#stx-pair? _%g113666113688%_)
                        (let ((_%e113670113691%_
                               (gx#syntax-e _%g113666113688%_)))
                          (let ((_%hd113671113695%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e113670113691%_)))
                                (_%tl113672113698%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e113670113691%_))))
                            (if (gx#stx-pair? _%tl113672113698%_)
                                (let ((_%e113673113701%_
                                       (gx#syntax-e _%tl113672113698%_)))
                                  (let ((_%hd113674113705%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e113673113701%_)))
                                        (_%tl113675113708%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e113673113701%_))))
                                    (if (gx#stx-pair? _%tl113675113708%_)
                                        (let ((_%e113676113711%_
                                               (gx#syntax-e
                                                _%tl113675113708%_)))
                                          (let ((_%hd113677113715%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e113676113711%_)))
                                                (_%tl113678113718%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e113676113711%_))))
                                            ((lambda (_%L113721%_
                                                      _%L113723%_
                                                      _%L113724%_)
                                               (if (and (gx#identifier-list?
                                                         _%L113723%_)
                                                        (gx#stx-list?
                                                         _%L113721%_))
                                                   (let* ((_%g113742113750%_
                                                           (lambda (_%g113743113746%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g113743113746%_)))
                                                          (_%g113741113803%_
                                                           (lambda (_%g113743113754%_)
                                                             ((lambda (_%L113757%_)
                                                                (let* ((_%g113769113777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g113770113773%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g113770113773%_)))
                               (_%g113768113799%_
                                (lambda (_%g113770113781%_)
                                  ((lambda (_%L113784%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L113757%_
                                                             (cons _%L113724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L113784%_ '()))))
                                   _%g113770113781%_))))
                          (_%g113768113799%_
                           (_%generate113662%_
                            _%L113757%_
                            (gx#syntax->list _%L113723%_)
                            _%L113721%_))))
                      _%g113743113754%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g113741113803%_
                                                      (gx#genident 'e)))
                                                   (_%g113665113684%_
                                                    _%g113666113688%_)))
                                             _%tl113678113718%_
                                             _%hd113677113715%_
                                             _%hd113674113705%_)))
                                        (_%g113665113684%_
                                         _%g113666113688%_))))
                                (_%g113665113684%_ _%g113666113688%_))))
                        (_%g113665113684%_ _%g113666113688%_)))))
            (_%g113664113807%_ _%stx113659%_)))))))
