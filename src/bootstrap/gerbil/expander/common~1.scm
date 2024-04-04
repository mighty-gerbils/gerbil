(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g113749_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113751_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113753_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113755_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113756_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113758_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113759_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113761_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113762_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113764_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113765_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113768_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj113745
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
          (##unchecked-structure-set! __obj113745 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113745 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113745 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113745 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113745 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113745 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113745 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113745 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113745 '#f '11 '#f '#f))
        (let ((__tmp113748 |gx[1]#_g113749_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113745 __tmp113748 '12 '#f '#f))
        (let ((__tmp113750 |gx[1]#_g113751_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113745 __tmp113750 '13 '#f '#f))
        (let ((__tmp113752 |gx[1]#_g113753_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113745 __tmp113752 '14 '#f '#f))
        (let ((__tmp113754
               (cons (cons 'e |gx[1]#_g113755_|)
                     (cons (cons 'source |gx[1]#_g113756_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113745 __tmp113754 '15 '#f '#f))
        (let ((__tmp113757
               (cons (cons 'e |gx[1]#_g113758_|)
                     (cons (cons 'source |gx[1]#_g113759_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113745 __tmp113757 '16 '#f '#f))
        (let ((__tmp113760
               (cons (cons 'e |gx[1]#_g113761_|)
                     (cons (cons 'source |gx[1]#_g113762_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113745 __tmp113760 '17 '#f '#f))
        (let ((__tmp113763
               (cons (cons 'e |gx[1]#_g113764_|)
                     (cons (cons 'source |gx[1]#_g113765_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113745 __tmp113763 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113745 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113745 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113745 '() '20 '#f '#f))
        __obj113745))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx112340%_)
        (let* ((_%g112344112358%_
                (lambda (_%g112345112354%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g112345112354%_)))
               (_%g112343112400%_
                (lambda (_%g112345112362%_)
                  (if (gx#stx-pair? _%g112345112362%_)
                      (let ((_%e112349112365%_
                             (gx#syntax-e _%g112345112362%_)))
                        (let ((_%hd112348112369%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e112349112365%_)))
                              (_%tl112347112372%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e112349112365%_))))
                          (if (gx#stx-pair? _%tl112347112372%_)
                              (let ((_%e112352112375%_
                                     (gx#syntax-e _%tl112347112372%_)))
                                (let ((_%hd112351112379%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e112352112375%_)))
                                      (_%tl112350112382%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e112352112375%_))))
                                  (if (gx#stx-null? _%tl112350112382%_)
                                      ((lambda (_%L112385%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L112385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L112385%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd112351112379%_)
                                      (_%g112344112358%_ _%g112345112362%_))))
                              (_%g112344112358%_ _%g112345112362%_))))
                      (_%g112344112358%_ _%g112345112362%_)))))
          (_%g112343112400%_ _%$stx112340%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx112404%_)
        (letrec ((_%generate112407%_
                  (lambda (_%tgt112556%_ _%kws112558%_ _%clauses112559%_)
                    (letrec ((_%generate-clause112561%_
                              (lambda (_%hd113496%_ _%E113498%_)
                                (let* ((_%__stx113648113649%_ _%hd113496%_)
                                       (_%g113502113529%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx113648113649%_))))
                                  (let ((_%__kont113651113652%_
                                         (lambda (_%L113625%_ _%L113627%_)
                                           (_%generate1112563%_
                                            _%hd113496%_
                                            _%L113627%_
                                            '#t
                                            _%L113625%_
                                            _%E113498%_)))
                                        (_%__kont113653113654%_
                                         (lambda (_%L113577%_
                                                  _%L113579%_
                                                  _%L113580%_)
                                           (_%generate1112563%_
                                            _%hd113496%_
                                            _%L113580%_
                                            _%L113579%_
                                            _%L113577%_
                                            _%E113498%_)))
                                        (_%__kont113655113656%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx112404%_
                                            _%hd113496%_))))
                                    (if (gx#stx-pair? _%__stx113648113649%_)
                                        (let ((_%e113508113605%_
                                               (gx#syntax-e
                                                _%__stx113648113649%_)))
                                          (let ((_%tl113506113612%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e113508113605%_)))
                                                (_%hd113507113609%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e113508113605%_))))
                                            (if (gx#stx-pair?
                                                 _%tl113506113612%_)
                                                (let ((_%e113511113615%_
                                                       (gx#syntax-e
                                                        _%tl113506113612%_)))
                                                  (let ((_%tl113509113622%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e113511113615%_)))
                                                        (_%hd113510113619%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e113511113615%_))))
                                                    (if (gx#stx-null?
                                                         _%tl113509113622%_)
                                                        (_%__kont113651113652%_
                                                         _%hd113510113619%_
                                                         _%hd113507113609%_)
                                                        (if (gx#stx-pair?
                                                             _%tl113509113622%_)
                                                            (let ((_%e113523113567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl113509113622%_)))
                      (let ((_%tl113521113574%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113523113567%_)))
                            (_%hd113522113571%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113523113567%_))))
                        (if (gx#stx-null? _%tl113521113574%_)
                            (_%__kont113653113654%_
                             _%hd113522113571%_
                             _%hd113510113619%_
                             _%hd113507113609%_)
                            (_%__kont113655113656%_))))
                    (_%__kont113655113656%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont113655113656%_))))
                                        (_%__kont113655113656%_))))))
                             (_%generate1112563%_
                              (lambda (_%where112949%_
                                       _%hd112951%_
                                       _%fender112952%_
                                       _%body112953%_
                                       _%E112954%_)
                                (letrec ((_%recur112956%_
                                          (lambda (_%hd112959%_
                                                   _%tgt112961%_
                                                   _%K112962%_)
                                            (let* ((_%__stx113694113695%_
                                                    _%hd112959%_)
                                                   (_%g112965112977%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx113694113695%_))))
                                              (let ((_%__kont113697113698%_
                                                     (lambda (_%L113286%_
                                                              _%L113288%_)
                                                       (let* ((_%g113299113307%_
                                                               (lambda (_%g113300113303%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g113300113303%_)))
                      (_%g113298113488%_
                       (lambda (_%g113300113311%_)
                         ((lambda (_%L113314%_)
                            (let ()
                              (let* ((_%g113326113334%_
                                      (lambda (_%g113327113330%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g113327113330%_)))
                                     (_%g113325113484%_
                                      (lambda (_%g113327113338%_)
                                        ((lambda (_%L113341%_)
                                           (let ()
                                             (let* ((_%g113354113362%_
                                                     (lambda (_%g113355113358%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g113355113358%_)))
                                                    (_%g113353113480%_
                                                     (lambda (_%g113355113366%_)
                                                       ((lambda (_%L113369%_)
                                                          (let ()
                                                            (let* ((_%g113382113390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g113383113386%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g113383113386%_)))
                           (_%g113381113476%_
                            (lambda (_%g113383113394%_)
                              ((lambda (_%L113397%_)
                                 (let ()
                                   (let* ((_%g113410113418%_
                                           (lambda (_%g113411113414%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g113411113414%_)))
                                          (_%g113409113472%_
                                           (lambda (_%g113411113422%_)
                                             ((lambda (_%L113425%_)
                                                (let ()
                                                  (let* ((_%g113438113446%_
                                                          (lambda (_%g113439113442%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g113439113442%_)))
                                                         (_%g113437113468%_
                                                          (lambda (_%g113439113450%_)
                                                            ((lambda (_%L113453%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'stx-pair?)
                                           (cons _%L113314%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'let)
                                                 (cons (cons (cons _%L113341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'syntax-e)
                                       (cons _%L113314%_ '()))
                                 '()))
                     '())
               (cons (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (cons _%L113369%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##car)
                                                         (cons _%L113341%_
                                                               '()))
                                                   '()))
                                       (cons (cons _%L113397%_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##cdr)
                                                               (cons _%L113341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons _%L113425%_ '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%L113453%_ '()))))))
                     _%g113439113450%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g113437113468%_
                                                     _%E112954%_))))
                                              _%g113411113422%_))))
                                     (_%g113409113472%_
                                      (_%recur112956%_
                                       _%L113288%_
                                       _%L113369%_
                                       (_%recur112956%_
                                        _%L113286%_
                                        _%L113397%_
                                        _%K112962%_))))))
                               _%g113383113394%_))))
                      (_%g113381113476%_ (gx#genident 'tl)))))
                _%g113355113366%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g113353113480%_
                                                (gx#genident 'hd)))))
                                         _%g113327113338%_))))
                                (_%g113325113484%_ (gx#genident 'e)))))
                          _%g113300113311%_))))
                 (_%g113298113488%_ _%tgt112961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont113699113700%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd112959%_)
                                                           (let ()
                                                             (if (gx#underscore?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd112959%_)
                         (let () _%K112962%_)
                         (if (let ((__tmp113766
                                    (lambda (_%g112991112993%_)
                                      (gx#bound-identifier=?
                                       _%g112991112993%_
                                       _%hd112959%_))))
                               (declare (not safe))
                               (__find __tmp113766 _%kws112558%_))
                             (let ()
                               (let* ((_%g112999113014%_
                                       (lambda (_%g113000113010%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g113000113010%_)))
                                      (_%g112998113067%_
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
                          (cons (gx#datum->syntax '#f 'if)
                                (cons (cons (gx#datum->syntax '#f 'and)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'identifier?)
                                                        (cons _%L113043%_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'core-identifier=?)
                                                              (cons _%L113043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _%L113041%_ '()))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons _%K112962%_
                                            (cons _%E112954%_ '()))))))
                      _%hd113007113035%_
                      _%hd113004113025%_)
                     (_%g112999113014%_ _%g113000113018%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112999113014%_
                                                      _%g113000113018%_))))
                                             (_%g112999113014%_
                                              _%g113000113018%_)))))
                                 (_%g112998113067%_
                                  (list _%tgt112961%_ _%hd112959%_))))
                             (let ()
                               (let* ((_%g113073113088%_
                                       (lambda (_%g113074113084%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g113074113084%_)))
                                      (_%g113072113133%_
                                       (lambda (_%g113074113092%_)
                                         (if (gx#stx-pair? _%g113074113092%_)
                                             (let ((_%e113079113095%_
                                                    (gx#syntax-e
                                                     _%g113074113092%_)))
                                               (let ((_%hd113078113099%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e113079113095%_)))
                                                     (_%tl113077113102%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e113079113095%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl113077113102%_)
                                                     (let ((_%e113082113105%_
                                                            (gx#syntax-e
                                                             _%tl113077113102%_)))
                                                       (let ((_%hd113081113109%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e113082113105%_)))
                     (_%tl113080113112%_
                      (let () (declare (not safe)) (##cdr _%e113082113105%_))))
                 (if (gx#stx-null? _%tl113080113112%_)
                     ((lambda (_%L113115%_ _%L113117%_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (cons (cons _%L113115%_
                                                  (cons _%L113117%_ '()))
                                            '())
                                      (cons _%K112962%_ '())))))
                      _%hd113081113109%_
                      _%hd113078113099%_)
                     (_%g113073113088%_ _%g113074113092%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g113073113088%_
                                                      _%g113074113092%_))))
                                             (_%g113073113088%_
                                              _%g113074113092%_)))))
                                 (_%g113072113133%_
                                  (list _%tgt112961%_ _%hd112959%_)))))))
                   (if (gx#stx-null? _%hd112959%_)
                       (let ()
                         (let* ((_%g113139113147%_
                                 (lambda (_%g113140113143%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g113140113143%_)))
                                (_%g113138113166%_
                                 (lambda (_%g113140113151%_)
                                   ((lambda (_%L113154%_)
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-null?)
                                                          (cons _%L113154%_
                                                                '()))
                                                    (cons _%K112962%_
                                                          (cons _%E112954%_
                                                                '()))))))
                                    _%g113140113151%_))))
                           (_%g113138113166%_ _%tgt112961%_)))
                       (if (gx#stx-datum? _%hd112959%_)
                           (let ()
                             (let* ((_%g113172113191%_
                                     (lambda (_%g113173113187%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g113173113187%_)))
                                    (_%g113171113250%_
                                     (lambda (_%g113173113195%_)
                                       (if (gx#stx-pair? _%g113173113195%_)
                                           (let ((_%e113179113198%_
                                                  (gx#syntax-e
                                                   _%g113173113195%_)))
                                             (let ((_%hd113178113202%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e113179113198%_)))
                                                   (_%tl113177113205%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e113179113198%_))))
                                               (if (gx#stx-pair?
                                                    _%tl113177113205%_)
                                                   (let ((_%e113182113208%_
                                                          (gx#syntax-e
                                                           _%tl113177113205%_)))
                                                     (let ((_%hd113181113212%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e113182113208%_)))
                                                           (_%tl113180113215%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e113182113208%_))))
                                                       (if (gx#stx-pair?
                                                            _%tl113180113215%_)
                                                           (let ((_%e113185113218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl113180113215%_)))
                     (let ((_%hd113184113222%_
                            (let ()
                              (declare (not safe))
                              (##car _%e113185113218%_)))
                           (_%tl113183113225%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e113185113218%_))))
                       (if (gx#stx-null? _%tl113183113225%_)
                           ((lambda (_%L113228%_ _%L113230%_ _%L113231%_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons _%L113228%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'stx-e)
                                                              (cons _%L113231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons (gx#datum->syntax '#f 'quote)
                            (cons _%L113230%_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%K112962%_
                                                  (cons _%E112954%_ '()))))))
                            _%hd113184113222%_
                            _%hd113181113212%_
                            _%hd113178113202%_)
                           (_%g113172113191%_ _%g113173113195%_))))
                   (_%g113172113191%_ _%g113173113195%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g113172113191%_
                                                    _%g113173113195%_))))
                                           (_%g113172113191%_
                                            _%g113173113195%_)))))
                               (_%g113171113250%_
                                (list _%tgt112961%_
                                      _%hd112959%_
                                      (let ((_%e113254%_
                                             (gx#stx-e _%hd112959%_)))
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (keyword? _%e113254%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (immediate? _%e113254%_)))
                                            (let ()
                                              (gx#datum->syntax '#f 'eq?))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (number? _%e113254%_))
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
                              _%stx112404%_
                              _%where112949%_
                              _%hd112959%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx113694113695%_)
                                                    (let ((_%e112971113276%_
                                                           (gx#syntax-e
                                                            _%__stx113694113695%_)))
                                                      (let ((_%tl112969113283%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e112971113276%_)))
                    (_%hd112970113280%_
                     (let () (declare (not safe)) (##car _%e112971113276%_))))
                (_%__kont113697113698%_
                 _%tl112969113283%_
                 _%hd112970113280%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont113699113700%_)))))))
                                  (_%recur112956%_
                                   _%hd112951%_
                                   _%tgt112556%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender112952%_
                                               (cons _%body112953%_
                                                     (cons _%E112954%_
                                                           '()))))))))
                             (_%generate-clauses112564%_
                              (lambda (_%clauses112687%_)
                                (let _%lp112690%_ ((_%rest112693%_
                                                    _%clauses112687%_)
                                                   (_%E112695%_
                                                    (gx#genident 'E))
                                                   (_%r112696%_ '()))
                                  (let* ((_%__stx113730113731%_ _%rest112693%_)
                                         (_%g112699112711%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx113730113731%_))))
                                    (let ((_%__kont113733113734%_
                                           (lambda (_%L112776%_ _%L112778%_)
                                             (let* ((_%__stx113710113711%_
                                                     _%L112778%_)
                                                    (_%g112790112801%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx113710113711%_))))
                                               (let ((_%__kont113713113714%_
                                                      (lambda (_%L112930%_)
                                                        (if (gx#stx-null?
                                                             _%L112776%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L112930%_)
                             (let ((__tmp113767 (gx#stx-null? _%L112930%_)))
                               (declare (not safe))
                               (not __tmp113767)))
                        (cons (cons _%E112695%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L112930%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L112778%_))
                                          '()))
                              _%r112696%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx112404%_
                         _%L112778%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx112404%_
                     _%L112778%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont113715113716%_
                                                      (lambda ()
                                                        (let* ((_%g112812112820%_
                                                                (lambda (_%g112813112816%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g112813112816%_)))
                       (_%g112811112909%_
                        (lambda (_%g112813112824%_)
                          ((lambda (_%L112827%_)
                             (let ()
                               (let* ((_%g112843112851%_
                                       (lambda (_%g112844112847%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g112844112847%_)))
                                      (_%g112842112905%_
                                       (lambda (_%g112844112855%_)
                                         ((lambda (_%L112858%_)
                                            (let ()
                                              (let* ((_%g112871112879%_
                                                      (lambda (_%g112872112875%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g112872112875%_)))
                                                     (_%g112870112901%_
                                                      (lambda (_%g112872112883%_)
                                                        ((lambda (_%L112886%_)
                                                           (let ()
                                                             (_%lp112690%_
                                                              _%L112776%_
                                                              _%L112827%_
                                                              (cons (cons _%E112695%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _%L112886%_ '()))
                            _%r112696%_))))
                 _%g112872112883%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g112870112901%_
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons '()
                                                              (cons _%L112858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%L112778%_))))))
                                          _%g112844112855%_))))
                                 (_%g112842112905%_
                                  (_%generate-clause112561%_
                                   _%L112778%_
                                   (cons _%L112827%_ '()))))))
                           _%g112813112824%_))))
                  (_%g112811112909%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx113710113711%_)
                                                     (let ((_%e112795112920%_
                                                            (gx#syntax-e
                                                             _%__stx113710113711%_)))
                                                       (let ((_%tl112793112927%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e112795112920%_)))
                     (_%hd112794112924%_
                      (let () (declare (not safe)) (##car _%e112795112920%_))))
                 (if (gx#identifier? _%hd112794112924%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g113768_|
                          _%hd112794112924%_)
                         (_%__kont113713113714%_ _%tl112793112927%_)
                         (_%__kont113715113716%_))
                     (_%__kont113715113716%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont113715113716%_))))))
                                          (_%__kont113735113736%_
                                           (lambda ()
                                             (let* ((_%g112722112730%_
                                                     (lambda (_%g112723112726%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g112723112726%_)))
                                                    (_%g112721112755%_
                                                     (lambda (_%g112723112734%_)
                                                       ((lambda (_%L112737%_)
                                                          (let ()
                                                            (cons (cons _%E112695%_
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
                                   (cons _%L112737%_ '()))))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (gx#stx-source _%stx112404%_))
                                      '()))
                          _%r112696%_)))
                _%g112723112734%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g112721112755%_
                                                _%tgt112556%_)))))
                                      (if (gx#stx-pair? _%__stx113730113731%_)
                                          (let ((_%e112705112766%_
                                                 (gx#syntax-e
                                                  _%__stx113730113731%_)))
                                            (let ((_%tl112703112773%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e112705112766%_)))
                                                  (_%hd112704112770%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e112705112766%_))))
                                              (_%__kont113733113734%_
                                               _%tl112703112773%_
                                               _%hd112704112770%_)))
                                          (_%__kont113735113736%_))))))))
                      (let* ((_%bind112566%_
                              (_%generate-clauses112564%_ _%clauses112559%_))
                             (_%g112569112586%_
                              (lambda (_%g112570112582%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g112570112582%_)))
                             (_%g112568112683%_
                              (lambda (_%g112570112590%_)
                                (if (gx#stx-pair/null? _%g112570112590%_)
                                    (let ((_g113769_
                                           (gx#syntax-split-splice
                                            _%g112570112590%_
                                            '0)))
                                      (begin
                                        (let ((_g113770_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g113769_)
                                                     (##vector-length
                                                      _g113769_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g113770_ 2)))
                                              (error "Context expects 2 values"
                                                     _g113770_)))
                                        (let ((_%target112572112593%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g113769_ 0)))
                                              (_%tl112574112596%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g113769_ 1))))
                                          (if (gx#stx-null? _%tl112574112596%_)
                                              (letrec ((_%loop112575112599%_
                                                        (lambda (_%hd112573112603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try112579112606%_)
                  (if (gx#stx-pair? _%hd112573112603%_)
                      (let ((_%e112576112609%_
                             (gx#syntax-e _%hd112573112603%_)))
                        (let ((_%lp-hd112577112613%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e112576112609%_)))
                              (_%lp-tl112578112616%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e112576112609%_))))
                          (_%loop112575112599%_
                           _%lp-tl112578112616%_
                           (cons _%lp-hd112577112613%_
                                 _%bind-try112579112606%_))))
                      (let ((_%bind-try112580112619%_
                             (reverse _%bind-try112579112606%_)))
                        ((lambda (_%L112623%_)
                           (let ()
                             (let* ((_%g112641112649%_
                                     (lambda (_%g112642112645%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g112642112645%_)))
                                    (_%g112640112679%_
                                     (lambda (_%g112642112653%_)
                                       ((lambda (_%L112656%_)
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'let*)
                                                  (cons (let ((__tmp113771
                                                               (lambda (_%g112670112673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g112671112676%_)
                         (cons _%g112670112673%_ _%g112671112676%_))))
                  (declare (not safe))
                  (__foldr1 __tmp113771 '() _%L112623%_))
                (cons (cons _%L112656%_ '()) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g112642112653%_))))
                               (_%g112640112679%_
                                (car (last _%bind112566%_))))))
                         _%bind-try112580112619%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop112575112599%_
                                                 _%target112572112593%_
                                                 '()))
                                              (_%g112569112586%_
                                               _%g112570112590%_)))))
                                    (_%g112569112586%_ _%g112570112590%_)))))
                        (_%g112568112683%_ _%bind112566%_))))))
          (let* ((_%g112410112429%_
                  (lambda (_%g112411112425%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g112411112425%_)))
                 (_%g112409112552%_
                  (lambda (_%g112411112433%_)
                    (if (gx#stx-pair? _%g112411112433%_)
                        (let ((_%e112417112436%_
                               (gx#syntax-e _%g112411112433%_)))
                          (let ((_%hd112416112440%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e112417112436%_)))
                                (_%tl112415112443%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e112417112436%_))))
                            (if (gx#stx-pair? _%tl112415112443%_)
                                (let ((_%e112420112446%_
                                       (gx#syntax-e _%tl112415112443%_)))
                                  (let ((_%hd112419112450%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e112420112446%_)))
                                        (_%tl112418112453%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e112420112446%_))))
                                    (if (gx#stx-pair? _%tl112418112453%_)
                                        (let ((_%e112423112456%_
                                               (gx#syntax-e
                                                _%tl112418112453%_)))
                                          (let ((_%hd112422112460%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e112423112456%_)))
                                                (_%tl112421112463%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e112423112456%_))))
                                            ((lambda (_%L112466%_
                                                      _%L112468%_
                                                      _%L112469%_)
                                               (if (and (gx#identifier-list?
                                                         _%L112468%_)
                                                        (gx#stx-list?
                                                         _%L112466%_))
                                                   (let* ((_%g112487112495%_
                                                           (lambda (_%g112488112491%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g112488112491%_)))
                                                          (_%g112486112548%_
                                                           (lambda (_%g112488112499%_)
                                                             ((lambda (_%L112502%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g112514112522%_
                                  (lambda (_%g112515112518%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g112515112518%_)))
                                 (_%g112513112544%_
                                  (lambda (_%g112515112526%_)
                                    ((lambda (_%L112529%_)
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'let)
                                               (cons (cons (cons _%L112502%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L112469%_ '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%L112529%_ '())))))
                                     _%g112515112526%_))))
                            (_%g112513112544%_
                             (_%generate112407%_
                              _%L112502%_
                              (gx#syntax->list _%L112468%_)
                              _%L112466%_)))))
                      _%g112488112499%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112486112548%_
                                                      (gx#genident 'e)))
                                                   (_%g112410112429%_
                                                    _%g112411112433%_)))
                                             _%tl112421112463%_
                                             _%hd112422112460%_
                                             _%hd112419112450%_)))
                                        (_%g112410112429%_
                                         _%g112411112433%_))))
                                (_%g112410112429%_ _%g112411112433%_))))
                        (_%g112410112429%_ _%g112411112433%_)))))
            (_%g112409112552%_ _%stx112404%_)))))))
