(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g113790_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113792_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113794_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113796_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113797_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113799_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113800_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113802_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113803_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113805_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113806_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113808_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj113786
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
          (##unchecked-structure-set! __obj113786 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113786 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113786 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113786 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113786 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113786 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113786 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113786 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113786 '#f '11 '#f '#f))
        (let ((__tmp113789 |gx[1]#_g113790_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113786 __tmp113789 '12 '#f '#f))
        (let ((__tmp113791 |gx[1]#_g113792_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113786 __tmp113791 '13 '#f '#f))
        (let ((__tmp113793 |gx[1]#_g113794_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113786 __tmp113793 '14 '#f '#f))
        (let ((__tmp113795
               (cons (cons 'e |gx[1]#_g113796_|)
                     (cons (cons 'source |gx[1]#_g113797_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113786 __tmp113795 '15 '#f '#f))
        (let ((__tmp113798
               (cons (cons 'e |gx[1]#_g113799_|)
                     (cons (cons 'source |gx[1]#_g113800_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113786 __tmp113798 '16 '#f '#f))
        (let ((__tmp113801
               (cons (cons 'e |gx[1]#_g113802_|)
                     (cons (cons 'source |gx[1]#_g113803_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113786 __tmp113801 '17 '#f '#f))
        (let ((__tmp113804
               (cons (cons 'e |gx[1]#_g113805_|)
                     (cons (cons 'source |gx[1]#_g113806_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113786 __tmp113804 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113786 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113786 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113786 '() '20 '#f '#f))
        __obj113786))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx112381%_)
        (let* ((_%g112385112399%_
                (lambda (_%g112386112395%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g112386112395%_)))
               (_%g112384112441%_
                (lambda (_%g112386112403%_)
                  (if (gx#stx-pair? _%g112386112403%_)
                      (let ((_%e112388112406%_
                             (gx#syntax-e _%g112386112403%_)))
                        (let ((_%hd112389112410%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e112388112406%_)))
                              (_%tl112390112413%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e112388112406%_))))
                          (if (gx#stx-pair? _%tl112390112413%_)
                              (let ((_%e112391112416%_
                                     (gx#syntax-e _%tl112390112413%_)))
                                (let ((_%hd112392112420%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e112391112416%_)))
                                      (_%tl112393112423%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e112391112416%_))))
                                  (if (gx#stx-null? _%tl112393112423%_)
                                      ((lambda (_%L112426%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L112426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L112426%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd112392112420%_)
                                      (_%g112385112399%_ _%g112386112403%_))))
                              (_%g112385112399%_ _%g112386112403%_))))
                      (_%g112385112399%_ _%g112386112403%_)))))
          (_%g112384112441%_ _%$stx112381%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx112445%_)
        (letrec ((_%generate112448%_
                  (lambda (_%tgt112597%_ _%kws112599%_ _%clauses112600%_)
                    (letrec ((_%generate-clause112602%_
                              (lambda (_%hd113537%_ _%E113539%_)
                                (let* ((_%__stx113689113690%_ _%hd113537%_)
                                       (_%g113543113570%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx113689113690%_))))
                                  (let ((_%__kont113692113693%_
                                         (lambda (_%L113666%_ _%L113668%_)
                                           (_%generate1112604%_
                                            _%hd113537%_
                                            _%L113668%_
                                            '#t
                                            _%L113666%_
                                            _%E113539%_)))
                                        (_%__kont113694113695%_
                                         (lambda (_%L113618%_
                                                  _%L113620%_
                                                  _%L113621%_)
                                           (_%generate1112604%_
                                            _%hd113537%_
                                            _%L113621%_
                                            _%L113620%_
                                            _%L113618%_
                                            _%E113539%_)))
                                        (_%__kont113696113697%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx112445%_
                                            _%hd113537%_))))
                                    (if (gx#stx-pair? _%__stx113689113690%_)
                                        (let ((_%e113547113646%_
                                               (gx#syntax-e
                                                _%__stx113689113690%_)))
                                          (let ((_%tl113549113653%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e113547113646%_)))
                                                (_%hd113548113650%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e113547113646%_))))
                                            (if (gx#stx-pair?
                                                 _%tl113549113653%_)
                                                (let ((_%e113550113656%_
                                                       (gx#syntax-e
                                                        _%tl113549113653%_)))
                                                  (let ((_%tl113552113663%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e113550113656%_)))
                                                        (_%hd113551113660%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e113550113656%_))))
                                                    (if (gx#stx-null?
                                                         _%tl113552113663%_)
                                                        (_%__kont113692113693%_
                                                         _%hd113551113660%_
                                                         _%hd113548113650%_)
                                                        (if (gx#stx-pair?
                                                             _%tl113552113663%_)
                                                            (let ((_%e113562113608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl113552113663%_)))
                      (let ((_%tl113564113615%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113562113608%_)))
                            (_%hd113563113612%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113562113608%_))))
                        (if (gx#stx-null? _%tl113564113615%_)
                            (_%__kont113694113695%_
                             _%hd113563113612%_
                             _%hd113551113660%_
                             _%hd113548113650%_)
                            (_%__kont113696113697%_))))
                    (_%__kont113696113697%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont113696113697%_))))
                                        (_%__kont113696113697%_))))))
                             (_%generate1112604%_
                              (lambda (_%where112990%_
                                       _%hd112992%_
                                       _%fender112993%_
                                       _%body112994%_
                                       _%E112995%_)
                                (letrec ((_%recur112997%_
                                          (lambda (_%hd113000%_
                                                   _%tgt113002%_
                                                   _%K113003%_)
                                            (let* ((_%__stx113735113736%_
                                                    _%hd113000%_)
                                                   (_%g113006113018%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx113735113736%_))))
                                              (let ((_%__kont113738113739%_
                                                     (lambda (_%L113327%_
                                                              _%L113329%_)
                                                       (let* ((_%g113340113348%_
                                                               (lambda (_%g113341113344%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g113341113344%_)))
                      (_%g113339113529%_
                       (lambda (_%g113341113352%_)
                         ((lambda (_%L113355%_)
                            (let* ((_%g113367113375%_
                                    (lambda (_%g113368113371%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g113368113371%_)))
                                   (_%g113366113525%_
                                    (lambda (_%g113368113379%_)
                                      ((lambda (_%L113382%_)
                                         (let* ((_%g113395113403%_
                                                 (lambda (_%g113396113399%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g113396113399%_)))
                                                (_%g113394113521%_
                                                 (lambda (_%g113396113407%_)
                                                   ((lambda (_%L113410%_)
                                                      (let* ((_%g113423113431%_
                                                              (lambda (_%g113424113427%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g113424113427%_)))
                     (_%g113422113517%_
                      (lambda (_%g113424113435%_)
                        ((lambda (_%L113438%_)
                           (let* ((_%g113451113459%_
                                   (lambda (_%g113452113455%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g113452113455%_)))
                                  (_%g113450113513%_
                                   (lambda (_%g113452113463%_)
                                     ((lambda (_%L113466%_)
                                        (let* ((_%g113479113487%_
                                                (lambda (_%g113480113483%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g113480113483%_)))
                                               (_%g113478113509%_
                                                (lambda (_%g113480113491%_)
                                                  ((lambda (_%L113494%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L113355%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L113382%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L113355%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L113410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L113382%_ '()))
                                       '()))
                           (cons (cons _%L113438%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L113382%_ '()))
                                             '()))
                                 '()))
                     (cons _%L113466%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L113494%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g113480113491%_))))
                                          (_%g113478113509%_ _%E112995%_)))
                                      _%g113452113463%_))))
                             (_%g113450113513%_
                              (_%recur112997%_
                               _%L113329%_
                               _%L113410%_
                               (_%recur112997%_
                                _%L113327%_
                                _%L113438%_
                                _%K113003%_)))))
                         _%g113424113435%_))))
                (_%g113422113517%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g113396113407%_))))
                                           (_%g113394113521%_
                                            (gx#genident 'hd))))
                                       _%g113368113379%_))))
                              (_%g113366113525%_ (gx#genident 'e))))
                          _%g113341113352%_))))
                 (_%g113339113529%_ _%tgt113002%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont113740113741%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd113000%_)
                                                           (if (gx#underscore?
                                                                _%hd113000%_)
                                                               _%K113003%_
                                                               (if (let ((__tmp113807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g113032113034%_)
                                    (gx#bound-identifier=?
                                     _%g113032113034%_
                                     _%hd113000%_))))
                             (declare (not safe))
                             (__find __tmp113807 _%kws112599%_))
                           (let* ((_%g113040113055%_
                                   (lambda (_%g113041113051%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g113041113051%_)))
                                  (_%g113039113108%_
                                   (lambda (_%g113041113059%_)
                                     (if (gx#stx-pair? _%g113041113059%_)
                                         (let ((_%e113044113062%_
                                                (gx#syntax-e
                                                 _%g113041113059%_)))
                                           (let ((_%hd113045113066%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e113044113062%_)))
                                                 (_%tl113046113069%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e113044113062%_))))
                                             (if (gx#stx-pair?
                                                  _%tl113046113069%_)
                                                 (let ((_%e113047113072%_
                                                        (gx#syntax-e
                                                         _%tl113046113069%_)))
                                                   (let ((_%hd113048113076%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e113047113072%_)))
                                                         (_%tl113049113079%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e113047113072%_))))
                                                     (if (gx#stx-null?
                                                          _%tl113049113079%_)
                                                         ((lambda (_%L113082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L113084%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L113084%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L113084%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L113082%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K113003%_ (cons _%E112995%_ '())))))
                  _%hd113048113076%_
                  _%hd113045113066%_)
                 (_%g113040113055%_ _%g113041113059%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g113040113055%_
                                                  _%g113041113059%_))))
                                         (_%g113040113055%_
                                          _%g113041113059%_)))))
                             (_%g113039113108%_
                              (list _%tgt113002%_ _%hd113000%_)))
                           (let* ((_%g113114113129%_
                                   (lambda (_%g113115113125%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g113115113125%_)))
                                  (_%g113113113174%_
                                   (lambda (_%g113115113133%_)
                                     (if (gx#stx-pair? _%g113115113133%_)
                                         (let ((_%e113118113136%_
                                                (gx#syntax-e
                                                 _%g113115113133%_)))
                                           (let ((_%hd113119113140%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e113118113136%_)))
                                                 (_%tl113120113143%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e113118113136%_))))
                                             (if (gx#stx-pair?
                                                  _%tl113120113143%_)
                                                 (let ((_%e113121113146%_
                                                        (gx#syntax-e
                                                         _%tl113120113143%_)))
                                                   (let ((_%hd113122113150%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e113121113146%_)))
                                                         (_%tl113123113153%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e113121113146%_))))
                                                     (if (gx#stx-null?
                                                          _%tl113123113153%_)
                                                         ((lambda (_%L113156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L113158%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L113156%_ (cons _%L113158%_ '()))
                                      '())
                                (cons _%K113003%_ '()))))
                  _%hd113122113150%_
                  _%hd113119113140%_)
                 (_%g113114113129%_ _%g113115113133%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g113114113129%_
                                                  _%g113115113133%_))))
                                         (_%g113114113129%_
                                          _%g113115113133%_)))))
                             (_%g113113113174%_
                              (list _%tgt113002%_ _%hd113000%_)))))
                   (if (gx#stx-null? _%hd113000%_)
                       (let* ((_%g113180113188%_
                               (lambda (_%g113181113184%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g113181113184%_)))
                              (_%g113179113207%_
                               (lambda (_%g113181113192%_)
                                 ((lambda (_%L113195%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L113195%_ '()))
                                                (cons _%K113003%_
                                                      (cons _%E112995%_
                                                            '())))))
                                  _%g113181113192%_))))
                         (_%g113179113207%_ _%tgt113002%_))
                       (if (gx#stx-datum? _%hd113000%_)
                           (let* ((_%g113213113232%_
                                   (lambda (_%g113214113228%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g113214113228%_)))
                                  (_%g113212113291%_
                                   (lambda (_%g113214113236%_)
                                     (if (gx#stx-pair? _%g113214113236%_)
                                         (let ((_%e113218113239%_
                                                (gx#syntax-e
                                                 _%g113214113236%_)))
                                           (let ((_%hd113219113243%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e113218113239%_)))
                                                 (_%tl113220113246%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e113218113239%_))))
                                             (if (gx#stx-pair?
                                                  _%tl113220113246%_)
                                                 (let ((_%e113221113249%_
                                                        (gx#syntax-e
                                                         _%tl113220113246%_)))
                                                   (let ((_%hd113222113253%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e113221113249%_)))
                                                         (_%tl113223113256%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e113221113249%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl113223113256%_)
                                                         (let ((_%e113224113259%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl113223113256%_)))
                   (let ((_%hd113225113263%_
                          (let ()
                            (declare (not safe))
                            (##car _%e113224113259%_)))
                         (_%tl113226113266%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e113224113259%_))))
                     (if (gx#stx-null? _%tl113226113266%_)
                         ((lambda (_%L113269%_ _%L113271%_ _%L113272%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L113269%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L113272%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L113271%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K113003%_
                                              (cons _%E112995%_ '())))))
                          _%hd113225113263%_
                          _%hd113222113253%_
                          _%hd113219113243%_)
                         (_%g113213113232%_ _%g113214113236%_))))
                 (_%g113213113232%_ _%g113214113236%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g113213113232%_
                                                  _%g113214113236%_))))
                                         (_%g113213113232%_
                                          _%g113214113236%_)))))
                             (_%g113212113291%_
                              (list _%tgt113002%_
                                    _%hd113000%_
                                    (let ((_%e113295%_
                                           (gx#stx-e _%hd113000%_)))
                                      (if (or (keyword? _%e113295%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e113295%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e113295%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx112445%_
                            _%where112990%_
                            _%hd113000%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx113735113736%_)
                                                    (let ((_%e113010113317%_
                                                           (gx#syntax-e
                                                            _%__stx113735113736%_)))
                                                      (let ((_%tl113012113324%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e113010113317%_)))
                    (_%hd113011113321%_
                     (let () (declare (not safe)) (##car _%e113010113317%_))))
                (_%__kont113738113739%_
                 _%tl113012113324%_
                 _%hd113011113321%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont113740113741%_)))))))
                                  (_%recur112997%_
                                   _%hd112992%_
                                   _%tgt112597%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender112993%_
                                               (cons _%body112994%_
                                                     (cons _%E112995%_
                                                           '()))))))))
                             (_%generate-clauses112605%_
                              (lambda (_%clauses112728%_)
                                (let _%lp112731%_ ((_%rest112734%_
                                                    _%clauses112728%_)
                                                   (_%E112736%_
                                                    (gx#genident 'E))
                                                   (_%r112737%_ '()))
                                  (let* ((_%__stx113771113772%_ _%rest112734%_)
                                         (_%g112740112752%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx113771113772%_))))
                                    (let ((_%__kont113774113775%_
                                           (lambda (_%L112817%_ _%L112819%_)
                                             (let* ((_%__stx113751113752%_
                                                     _%L112819%_)
                                                    (_%g112831112842%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx113751113752%_))))
                                               (let ((_%__kont113754113755%_
                                                      (lambda (_%L112971%_)
                                                        (if (gx#stx-null?
                                                             _%L112817%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L112971%_)
                             (not (gx#stx-null? _%L112971%_)))
                        (cons (cons _%E112736%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L112971%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L112819%_))
                                          '()))
                              _%r112737%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx112445%_
                         _%L112819%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx112445%_
                     _%L112819%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont113756113757%_
                                                      (lambda ()
                                                        (let* ((_%g112853112861%_
                                                                (lambda (_%g112854112857%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g112854112857%_)))
                       (_%g112852112950%_
                        (lambda (_%g112854112865%_)
                          ((lambda (_%L112868%_)
                             (let* ((_%g112884112892%_
                                     (lambda (_%g112885112888%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g112885112888%_)))
                                    (_%g112883112946%_
                                     (lambda (_%g112885112896%_)
                                       ((lambda (_%L112899%_)
                                          (let* ((_%g112912112920%_
                                                  (lambda (_%g112913112916%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g112913112916%_)))
                                                 (_%g112911112942%_
                                                  (lambda (_%g112913112924%_)
                                                    ((lambda (_%L112927%_)
                                                       (_%lp112731%_
                                                        _%L112817%_
                                                        _%L112868%_
                                                        (cons (cons _%E112736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L112927%_ '()))
                      _%r112737%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g112913112924%_))))
                                            (_%g112911112942%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L112899%_
                                                                '())))
                                              (gx#stx-source _%L112819%_)))))
                                        _%g112885112896%_))))
                               (_%g112883112946%_
                                (_%generate-clause112602%_
                                 _%L112819%_
                                 (cons _%L112868%_ '())))))
                           _%g112854112865%_))))
                  (_%g112852112950%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx113751113752%_)
                                                     (let ((_%e112834112961%_
                                                            (gx#syntax-e
                                                             _%__stx113751113752%_)))
                                                       (let ((_%tl112836112968%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e112834112961%_)))
                     (_%hd112835112965%_
                      (let () (declare (not safe)) (##car _%e112834112961%_))))
                 (if (gx#identifier? _%hd112835112965%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g113808_|
                          _%hd112835112965%_)
                         (_%__kont113754113755%_ _%tl112836112968%_)
                         (_%__kont113756113757%_))
                     (_%__kont113756113757%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont113756113757%_))))))
                                          (_%__kont113776113777%_
                                           (lambda ()
                                             (let* ((_%g112763112771%_
                                                     (lambda (_%g112764112767%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g112764112767%_)))
                                                    (_%g112762112796%_
                                                     (lambda (_%g112764112775%_)
                                                       ((lambda (_%L112778%_)
                                                          (cons (cons _%E112736%_
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
                                 (cons _%L112778%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx112445%_))
                                    '()))
                        _%r112737%_))
                _%g112764112775%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g112762112796%_
                                                _%tgt112597%_)))))
                                      (if (gx#stx-pair? _%__stx113771113772%_)
                                          (let ((_%e112744112807%_
                                                 (gx#syntax-e
                                                  _%__stx113771113772%_)))
                                            (let ((_%tl112746112814%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e112744112807%_)))
                                                  (_%hd112745112811%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e112744112807%_))))
                                              (_%__kont113774113775%_
                                               _%tl112746112814%_
                                               _%hd112745112811%_)))
                                          (_%__kont113776113777%_))))))))
                      (let* ((_%bind112607%_
                              (_%generate-clauses112605%_ _%clauses112600%_))
                             (_%g112610112627%_
                              (lambda (_%g112611112623%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g112611112623%_)))
                             (_%g112609112724%_
                              (lambda (_%g112611112631%_)
                                (if (gx#stx-pair/null? _%g112611112631%_)
                                    (let ((_g113809_
                                           (gx#syntax-split-splice
                                            _%g112611112631%_
                                            '0)))
                                      (begin
                                        (let ((_g113810_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g113809_)
                                                     (##vector-length
                                                      _g113809_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g113810_ 2)))
                                              (error "Context expects 2 values"
                                                     _g113810_)))
                                        (let ((_%target112613112634%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g113809_ 0)))
                                              (_%tl112615112637%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g113809_ 1))))
                                          (if (gx#stx-null? _%tl112615112637%_)
                                              (letrec ((_%loop112616112640%_
                                                        (lambda (_%hd112614112644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try112620112647%_)
                  (if (gx#stx-pair? _%hd112614112644%_)
                      (let ((_%e112617112650%_
                             (gx#syntax-e _%hd112614112644%_)))
                        (let ((_%lp-hd112618112654%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e112617112650%_)))
                              (_%lp-tl112619112657%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e112617112650%_))))
                          (_%loop112616112640%_
                           _%lp-tl112619112657%_
                           (cons _%lp-hd112618112654%_
                                 _%bind-try112620112647%_))))
                      (let ((_%bind-try112621112660%_
                             (reverse _%bind-try112620112647%_)))
                        ((lambda (_%L112664%_)
                           (let* ((_%g112682112690%_
                                   (lambda (_%g112683112686%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g112683112686%_)))
                                  (_%g112681112720%_
                                   (lambda (_%g112683112694%_)
                                     ((lambda (_%L112697%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp113811
                                                           (lambda (_%g112711112714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g112712112717%_)
                     (cons _%g112711112714%_ _%g112712112717%_))))
              (declare (not safe))
              (__foldr1 __tmp113811 '() _%L112664%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L112697%_
                                                                '())
                                                          '()))))
                                      _%g112683112694%_))))
                             (_%g112681112720%_ (car (last _%bind112607%_)))))
                         _%bind-try112621112660%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop112616112640%_
                                                 _%target112613112634%_
                                                 '()))
                                              (_%g112610112627%_
                                               _%g112611112631%_)))))
                                    (_%g112610112627%_ _%g112611112631%_)))))
                        (_%g112609112724%_ _%bind112607%_))))))
          (let* ((_%g112451112470%_
                  (lambda (_%g112452112466%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g112452112466%_)))
                 (_%g112450112593%_
                  (lambda (_%g112452112474%_)
                    (if (gx#stx-pair? _%g112452112474%_)
                        (let ((_%e112456112477%_
                               (gx#syntax-e _%g112452112474%_)))
                          (let ((_%hd112457112481%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e112456112477%_)))
                                (_%tl112458112484%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e112456112477%_))))
                            (if (gx#stx-pair? _%tl112458112484%_)
                                (let ((_%e112459112487%_
                                       (gx#syntax-e _%tl112458112484%_)))
                                  (let ((_%hd112460112491%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e112459112487%_)))
                                        (_%tl112461112494%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e112459112487%_))))
                                    (if (gx#stx-pair? _%tl112461112494%_)
                                        (let ((_%e112462112497%_
                                               (gx#syntax-e
                                                _%tl112461112494%_)))
                                          (let ((_%hd112463112501%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e112462112497%_)))
                                                (_%tl112464112504%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e112462112497%_))))
                                            ((lambda (_%L112507%_
                                                      _%L112509%_
                                                      _%L112510%_)
                                               (if (and (gx#identifier-list?
                                                         _%L112509%_)
                                                        (gx#stx-list?
                                                         _%L112507%_))
                                                   (let* ((_%g112528112536%_
                                                           (lambda (_%g112529112532%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g112529112532%_)))
                                                          (_%g112527112589%_
                                                           (lambda (_%g112529112540%_)
                                                             ((lambda (_%L112543%_)
                                                                (let* ((_%g112555112563%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g112556112559%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g112556112559%_)))
                               (_%g112554112585%_
                                (lambda (_%g112556112567%_)
                                  ((lambda (_%L112570%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L112543%_
                                                             (cons _%L112510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L112570%_ '()))))
                                   _%g112556112567%_))))
                          (_%g112554112585%_
                           (_%generate112448%_
                            _%L112543%_
                            (gx#syntax->list _%L112509%_)
                            _%L112507%_))))
                      _%g112529112540%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112527112589%_
                                                      (gx#genident 'e)))
                                                   (_%g112451112470%_
                                                    _%g112452112474%_)))
                                             _%tl112464112504%_
                                             _%hd112463112501%_
                                             _%hd112460112491%_)))
                                        (_%g112451112470%_
                                         _%g112452112474%_))))
                                (_%g112451112470%_ _%g112452112474%_))))
                        (_%g112451112470%_ _%g112452112474%_)))))
            (_%g112450112593%_ _%stx112445%_)))))))
