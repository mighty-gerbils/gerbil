(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g125464_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125466_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125468_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125470_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125471_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125473_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125474_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125476_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125477_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125479_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125480_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125482_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj125460
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
          (##unchecked-structure-set! __obj125460 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125460 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125460 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125460 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125460 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125460 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125460 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125460 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125460 '#f '11 '#f '#f))
        (let ((__tmp125463 |gx[1]#_g125464_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj125460 __tmp125463 '12 '#f '#f))
        (let ((__tmp125465 |gx[1]#_g125466_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj125460 __tmp125465 '13 '#f '#f))
        (let ((__tmp125467 |gx[1]#_g125468_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj125460 __tmp125467 '14 '#f '#f))
        (let ((__tmp125469
               (cons (cons 'e |gx[1]#_g125470_|)
                     (cons (cons 'source |gx[1]#_g125471_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj125460 __tmp125469 '15 '#f '#f))
        (let ((__tmp125472
               (cons (cons 'e |gx[1]#_g125473_|)
                     (cons (cons 'source |gx[1]#_g125474_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj125460 __tmp125472 '16 '#f '#f))
        (let ((__tmp125475
               (cons (cons 'e |gx[1]#_g125476_|)
                     (cons (cons 'source |gx[1]#_g125477_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj125460 __tmp125475 '17 '#f '#f))
        (let ((__tmp125478
               (cons (cons 'e |gx[1]#_g125479_|)
                     (cons (cons 'source |gx[1]#_g125480_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj125460 __tmp125478 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125460 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125460 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125460 '() '20 '#f '#f))
        __obj125460))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx124055%_)
        (let* ((_%g124059124073%_
                (lambda (_%g124060124069%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g124060124069%_)))
               (_%g124058124115%_
                (lambda (_%g124060124077%_)
                  (if (gx#stx-pair? _%g124060124077%_)
                      (let ((_%e124062124080%_
                             (gx#syntax-e _%g124060124077%_)))
                        (let ((_%hd124063124084%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e124062124080%_)))
                              (_%tl124064124087%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e124062124080%_))))
                          (if (gx#stx-pair? _%tl124064124087%_)
                              (let ((_%e124065124090%_
                                     (gx#syntax-e _%tl124064124087%_)))
                                (let ((_%hd124066124094%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e124065124090%_)))
                                      (_%tl124067124097%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e124065124090%_))))
                                  (if (gx#stx-null? _%tl124067124097%_)
                                      ((lambda (_%L124100%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L124100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L124100%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd124066124094%_)
                                      (_%g124059124073%_ _%g124060124077%_))))
                              (_%g124059124073%_ _%g124060124077%_))))
                      (_%g124059124073%_ _%g124060124077%_)))))
          (_%g124058124115%_ _%$stx124055%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx124119%_)
        (letrec ((_%generate124122%_
                  (lambda (_%tgt124271%_ _%kws124273%_ _%clauses124274%_)
                    (letrec ((_%generate-clause124276%_
                              (lambda (_%hd125211%_ _%E125213%_)
                                (let* ((_%__stx125363125364%_ _%hd125211%_)
                                       (_%g125217125244%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx125363125364%_))))
                                  (let ((_%__kont125366125367%_
                                         (lambda (_%L125340%_ _%L125342%_)
                                           (_%generate1124278%_
                                            _%hd125211%_
                                            _%L125342%_
                                            '#t
                                            _%L125340%_
                                            _%E125213%_)))
                                        (_%__kont125368125369%_
                                         (lambda (_%L125292%_
                                                  _%L125294%_
                                                  _%L125295%_)
                                           (_%generate1124278%_
                                            _%hd125211%_
                                            _%L125295%_
                                            _%L125294%_
                                            _%L125292%_
                                            _%E125213%_)))
                                        (_%__kont125370125371%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx124119%_
                                            _%hd125211%_))))
                                    (if (gx#stx-pair? _%__stx125363125364%_)
                                        (let ((_%e125221125320%_
                                               (gx#syntax-e
                                                _%__stx125363125364%_)))
                                          (let ((_%tl125223125327%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e125221125320%_)))
                                                (_%hd125222125324%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e125221125320%_))))
                                            (if (gx#stx-pair?
                                                 _%tl125223125327%_)
                                                (let ((_%e125224125330%_
                                                       (gx#syntax-e
                                                        _%tl125223125327%_)))
                                                  (let ((_%tl125226125337%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e125224125330%_)))
                                                        (_%hd125225125334%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e125224125330%_))))
                                                    (if (gx#stx-null?
                                                         _%tl125226125337%_)
                                                        (_%__kont125366125367%_
                                                         _%hd125225125334%_
                                                         _%hd125222125324%_)
                                                        (if (gx#stx-pair?
                                                             _%tl125226125337%_)
                                                            (let ((_%e125236125282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl125226125337%_)))
                      (let ((_%tl125238125289%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e125236125282%_)))
                            (_%hd125237125286%_
                             (let ()
                               (declare (not safe))
                               (##car _%e125236125282%_))))
                        (if (gx#stx-null? _%tl125238125289%_)
                            (_%__kont125368125369%_
                             _%hd125237125286%_
                             _%hd125225125334%_
                             _%hd125222125324%_)
                            (_%__kont125370125371%_))))
                    (_%__kont125370125371%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont125370125371%_))))
                                        (_%__kont125370125371%_))))))
                             (_%generate1124278%_
                              (lambda (_%where124664%_
                                       _%hd124666%_
                                       _%fender124667%_
                                       _%body124668%_
                                       _%E124669%_)
                                (letrec ((_%recur124671%_
                                          (lambda (_%hd124674%_
                                                   _%tgt124676%_
                                                   _%K124677%_)
                                            (let* ((_%__stx125409125410%_
                                                    _%hd124674%_)
                                                   (_%g124680124692%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx125409125410%_))))
                                              (let ((_%__kont125412125413%_
                                                     (lambda (_%L125001%_
                                                              _%L125003%_)
                                                       (let* ((_%g125014125022%_
                                                               (lambda (_%g125015125018%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g125015125018%_)))
                      (_%g125013125203%_
                       (lambda (_%g125015125026%_)
                         ((lambda (_%L125029%_)
                            (let* ((_%g125041125049%_
                                    (lambda (_%g125042125045%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g125042125045%_)))
                                   (_%g125040125199%_
                                    (lambda (_%g125042125053%_)
                                      ((lambda (_%L125056%_)
                                         (let* ((_%g125069125077%_
                                                 (lambda (_%g125070125073%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g125070125073%_)))
                                                (_%g125068125195%_
                                                 (lambda (_%g125070125081%_)
                                                   ((lambda (_%L125084%_)
                                                      (let* ((_%g125097125105%_
                                                              (lambda (_%g125098125101%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g125098125101%_)))
                     (_%g125096125191%_
                      (lambda (_%g125098125109%_)
                        ((lambda (_%L125112%_)
                           (let* ((_%g125125125133%_
                                   (lambda (_%g125126125129%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g125126125129%_)))
                                  (_%g125124125187%_
                                   (lambda (_%g125126125137%_)
                                     ((lambda (_%L125140%_)
                                        (let* ((_%g125153125161%_
                                                (lambda (_%g125154125157%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g125154125157%_)))
                                               (_%g125152125183%_
                                                (lambda (_%g125154125165%_)
                                                  ((lambda (_%L125168%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L125029%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L125056%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L125029%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L125084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L125056%_ '()))
                                       '()))
                           (cons (cons _%L125112%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L125056%_ '()))
                                             '()))
                                 '()))
                     (cons _%L125140%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L125168%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g125154125165%_))))
                                          (_%g125152125183%_ _%E124669%_)))
                                      _%g125126125137%_))))
                             (_%g125124125187%_
                              (_%recur124671%_
                               _%L125003%_
                               _%L125084%_
                               (_%recur124671%_
                                _%L125001%_
                                _%L125112%_
                                _%K124677%_)))))
                         _%g125098125109%_))))
                (_%g125096125191%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g125070125081%_))))
                                           (_%g125068125195%_
                                            (gx#genident 'hd))))
                                       _%g125042125053%_))))
                              (_%g125040125199%_ (gx#genident 'e))))
                          _%g125015125026%_))))
                 (_%g125013125203%_ _%tgt124676%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont125414125415%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd124674%_)
                                                           (if (gx#underscore?
                                                                _%hd124674%_)
                                                               _%K124677%_
                                                               (if (let ((__tmp125481
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g124706124708%_)
                                    (gx#bound-identifier=?
                                     _%g124706124708%_
                                     _%hd124674%_))))
                             (declare (not safe))
                             (__find __tmp125481 _%kws124273%_))
                           (let* ((_%g124714124729%_
                                   (lambda (_%g124715124725%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g124715124725%_)))
                                  (_%g124713124782%_
                                   (lambda (_%g124715124733%_)
                                     (if (gx#stx-pair? _%g124715124733%_)
                                         (let ((_%e124718124736%_
                                                (gx#syntax-e
                                                 _%g124715124733%_)))
                                           (let ((_%hd124719124740%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e124718124736%_)))
                                                 (_%tl124720124743%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e124718124736%_))))
                                             (if (gx#stx-pair?
                                                  _%tl124720124743%_)
                                                 (let ((_%e124721124746%_
                                                        (gx#syntax-e
                                                         _%tl124720124743%_)))
                                                   (let ((_%hd124722124750%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e124721124746%_)))
                                                         (_%tl124723124753%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e124721124746%_))))
                                                     (if (gx#stx-null?
                                                          _%tl124723124753%_)
                                                         ((lambda (_%L124756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L124758%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L124758%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L124758%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L124756%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K124677%_ (cons _%E124669%_ '())))))
                  _%hd124722124750%_
                  _%hd124719124740%_)
                 (_%g124714124729%_ _%g124715124733%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g124714124729%_
                                                  _%g124715124733%_))))
                                         (_%g124714124729%_
                                          _%g124715124733%_)))))
                             (_%g124713124782%_
                              (list _%tgt124676%_ _%hd124674%_)))
                           (let* ((_%g124788124803%_
                                   (lambda (_%g124789124799%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g124789124799%_)))
                                  (_%g124787124848%_
                                   (lambda (_%g124789124807%_)
                                     (if (gx#stx-pair? _%g124789124807%_)
                                         (let ((_%e124792124810%_
                                                (gx#syntax-e
                                                 _%g124789124807%_)))
                                           (let ((_%hd124793124814%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e124792124810%_)))
                                                 (_%tl124794124817%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e124792124810%_))))
                                             (if (gx#stx-pair?
                                                  _%tl124794124817%_)
                                                 (let ((_%e124795124820%_
                                                        (gx#syntax-e
                                                         _%tl124794124817%_)))
                                                   (let ((_%hd124796124824%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e124795124820%_)))
                                                         (_%tl124797124827%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e124795124820%_))))
                                                     (if (gx#stx-null?
                                                          _%tl124797124827%_)
                                                         ((lambda (_%L124830%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L124832%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L124830%_ (cons _%L124832%_ '()))
                                      '())
                                (cons _%K124677%_ '()))))
                  _%hd124796124824%_
                  _%hd124793124814%_)
                 (_%g124788124803%_ _%g124789124807%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g124788124803%_
                                                  _%g124789124807%_))))
                                         (_%g124788124803%_
                                          _%g124789124807%_)))))
                             (_%g124787124848%_
                              (list _%tgt124676%_ _%hd124674%_)))))
                   (if (gx#stx-null? _%hd124674%_)
                       (let* ((_%g124854124862%_
                               (lambda (_%g124855124858%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g124855124858%_)))
                              (_%g124853124881%_
                               (lambda (_%g124855124866%_)
                                 ((lambda (_%L124869%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L124869%_ '()))
                                                (cons _%K124677%_
                                                      (cons _%E124669%_
                                                            '())))))
                                  _%g124855124866%_))))
                         (_%g124853124881%_ _%tgt124676%_))
                       (if (gx#stx-datum? _%hd124674%_)
                           (let* ((_%g124887124906%_
                                   (lambda (_%g124888124902%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g124888124902%_)))
                                  (_%g124886124965%_
                                   (lambda (_%g124888124910%_)
                                     (if (gx#stx-pair? _%g124888124910%_)
                                         (let ((_%e124892124913%_
                                                (gx#syntax-e
                                                 _%g124888124910%_)))
                                           (let ((_%hd124893124917%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e124892124913%_)))
                                                 (_%tl124894124920%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e124892124913%_))))
                                             (if (gx#stx-pair?
                                                  _%tl124894124920%_)
                                                 (let ((_%e124895124923%_
                                                        (gx#syntax-e
                                                         _%tl124894124920%_)))
                                                   (let ((_%hd124896124927%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e124895124923%_)))
                                                         (_%tl124897124930%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e124895124923%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl124897124930%_)
                                                         (let ((_%e124898124933%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl124897124930%_)))
                   (let ((_%hd124899124937%_
                          (let ()
                            (declare (not safe))
                            (##car _%e124898124933%_)))
                         (_%tl124900124940%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e124898124933%_))))
                     (if (gx#stx-null? _%tl124900124940%_)
                         ((lambda (_%L124943%_ _%L124945%_ _%L124946%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L124943%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L124946%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L124945%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K124677%_
                                              (cons _%E124669%_ '())))))
                          _%hd124899124937%_
                          _%hd124896124927%_
                          _%hd124893124917%_)
                         (_%g124887124906%_ _%g124888124910%_))))
                 (_%g124887124906%_ _%g124888124910%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g124887124906%_
                                                  _%g124888124910%_))))
                                         (_%g124887124906%_
                                          _%g124888124910%_)))))
                             (_%g124886124965%_
                              (list _%tgt124676%_
                                    _%hd124674%_
                                    (let ((_%e124969%_
                                           (gx#stx-e _%hd124674%_)))
                                      (if (or (keyword? _%e124969%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e124969%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e124969%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx124119%_
                            _%where124664%_
                            _%hd124674%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx125409125410%_)
                                                    (let ((_%e124684124991%_
                                                           (gx#syntax-e
                                                            _%__stx125409125410%_)))
                                                      (let ((_%tl124686124998%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e124684124991%_)))
                    (_%hd124685124995%_
                     (let () (declare (not safe)) (##car _%e124684124991%_))))
                (_%__kont125412125413%_
                 _%tl124686124998%_
                 _%hd124685124995%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont125414125415%_)))))))
                                  (_%recur124671%_
                                   _%hd124666%_
                                   _%tgt124271%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender124667%_
                                               (cons _%body124668%_
                                                     (cons _%E124669%_
                                                           '()))))))))
                             (_%generate-clauses124279%_
                              (lambda (_%clauses124402%_)
                                (let _%lp124405%_ ((_%rest124408%_
                                                    _%clauses124402%_)
                                                   (_%E124410%_
                                                    (gx#genident 'E))
                                                   (_%r124411%_ '()))
                                  (let* ((_%__stx125445125446%_ _%rest124408%_)
                                         (_%g124414124426%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx125445125446%_))))
                                    (let ((_%__kont125448125449%_
                                           (lambda (_%L124491%_ _%L124493%_)
                                             (let* ((_%__stx125425125426%_
                                                     _%L124493%_)
                                                    (_%g124505124516%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx125425125426%_))))
                                               (let ((_%__kont125428125429%_
                                                      (lambda (_%L124645%_)
                                                        (if (gx#stx-null?
                                                             _%L124491%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L124645%_)
                             (not (gx#stx-null? _%L124645%_)))
                        (cons (cons _%E124410%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L124645%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L124493%_))
                                          '()))
                              _%r124411%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx124119%_
                         _%L124493%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx124119%_
                     _%L124493%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont125430125431%_
                                                      (lambda ()
                                                        (let* ((_%g124527124535%_
                                                                (lambda (_%g124528124531%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g124528124531%_)))
                       (_%g124526124624%_
                        (lambda (_%g124528124539%_)
                          ((lambda (_%L124542%_)
                             (let* ((_%g124558124566%_
                                     (lambda (_%g124559124562%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g124559124562%_)))
                                    (_%g124557124620%_
                                     (lambda (_%g124559124570%_)
                                       ((lambda (_%L124573%_)
                                          (let* ((_%g124586124594%_
                                                  (lambda (_%g124587124590%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g124587124590%_)))
                                                 (_%g124585124616%_
                                                  (lambda (_%g124587124598%_)
                                                    ((lambda (_%L124601%_)
                                                       (_%lp124405%_
                                                        _%L124491%_
                                                        _%L124542%_
                                                        (cons (cons _%E124410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L124601%_ '()))
                      _%r124411%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g124587124598%_))))
                                            (_%g124585124616%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L124573%_
                                                                '())))
                                              (gx#stx-source _%L124493%_)))))
                                        _%g124559124570%_))))
                               (_%g124557124620%_
                                (_%generate-clause124276%_
                                 _%L124493%_
                                 (cons _%L124542%_ '())))))
                           _%g124528124539%_))))
                  (_%g124526124624%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx125425125426%_)
                                                     (let ((_%e124508124635%_
                                                            (gx#syntax-e
                                                             _%__stx125425125426%_)))
                                                       (let ((_%tl124510124642%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e124508124635%_)))
                     (_%hd124509124639%_
                      (let () (declare (not safe)) (##car _%e124508124635%_))))
                 (if (gx#identifier? _%hd124509124639%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g125482_|
                          _%hd124509124639%_)
                         (_%__kont125428125429%_ _%tl124510124642%_)
                         (_%__kont125430125431%_))
                     (_%__kont125430125431%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont125430125431%_))))))
                                          (_%__kont125450125451%_
                                           (lambda ()
                                             (let* ((_%g124437124445%_
                                                     (lambda (_%g124438124441%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g124438124441%_)))
                                                    (_%g124436124470%_
                                                     (lambda (_%g124438124449%_)
                                                       ((lambda (_%L124452%_)
                                                          (cons (cons _%E124410%_
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
                                 (cons _%L124452%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx124119%_))
                                    '()))
                        _%r124411%_))
                _%g124438124449%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g124436124470%_
                                                _%tgt124271%_)))))
                                      (if (gx#stx-pair? _%__stx125445125446%_)
                                          (let ((_%e124418124481%_
                                                 (gx#syntax-e
                                                  _%__stx125445125446%_)))
                                            (let ((_%tl124420124488%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e124418124481%_)))
                                                  (_%hd124419124485%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e124418124481%_))))
                                              (_%__kont125448125449%_
                                               _%tl124420124488%_
                                               _%hd124419124485%_)))
                                          (_%__kont125450125451%_))))))))
                      (let* ((_%bind124281%_
                              (_%generate-clauses124279%_ _%clauses124274%_))
                             (_%g124284124301%_
                              (lambda (_%g124285124297%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g124285124297%_)))
                             (_%g124283124398%_
                              (lambda (_%g124285124305%_)
                                (if (gx#stx-pair/null? _%g124285124305%_)
                                    (let ((_g125483_
                                           (gx#syntax-split-splice
                                            _%g124285124305%_
                                            '0)))
                                      (begin
                                        (let ((_g125484_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g125483_)
                                                     (##values-length
                                                      _g125483_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g125484_ 2)))
                                              (error "Context expects 2 values"
                                                     _g125484_)))
                                        (let ((_%target124287124308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g125483_ 0)))
                                              (_%tl124289124311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g125483_ 1))))
                                          (if (gx#stx-null? _%tl124289124311%_)
                                              (letrec ((_%loop124290124314%_
                                                        (lambda (_%hd124288124318%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try124294124321%_)
                  (if (gx#stx-pair? _%hd124288124318%_)
                      (let ((_%e124291124324%_
                             (gx#syntax-e _%hd124288124318%_)))
                        (let ((_%lp-hd124292124328%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e124291124324%_)))
                              (_%lp-tl124293124331%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e124291124324%_))))
                          (_%loop124290124314%_
                           _%lp-tl124293124331%_
                           (cons _%lp-hd124292124328%_
                                 _%bind-try124294124321%_))))
                      (let ((_%bind-try124295124334%_
                             (reverse _%bind-try124294124321%_)))
                        ((lambda (_%L124338%_)
                           (let* ((_%g124356124364%_
                                   (lambda (_%g124357124360%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g124357124360%_)))
                                  (_%g124355124394%_
                                   (lambda (_%g124357124368%_)
                                     ((lambda (_%L124371%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp125485
                                                           (lambda (_%g124385124388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g124386124391%_)
                     (cons _%g124385124388%_ _%g124386124391%_))))
              (declare (not safe))
              (__foldr1 __tmp125485 '() _%L124338%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L124371%_
                                                                '())
                                                          '()))))
                                      _%g124357124368%_))))
                             (_%g124355124394%_ (car (last _%bind124281%_)))))
                         _%bind-try124295124334%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop124290124314%_
                                                 _%target124287124308%_
                                                 '()))
                                              (_%g124284124301%_
                                               _%g124285124305%_)))))
                                    (_%g124284124301%_ _%g124285124305%_)))))
                        (_%g124283124398%_ _%bind124281%_))))))
          (let* ((_%g124125124144%_
                  (lambda (_%g124126124140%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g124126124140%_)))
                 (_%g124124124267%_
                  (lambda (_%g124126124148%_)
                    (if (gx#stx-pair? _%g124126124148%_)
                        (let ((_%e124130124151%_
                               (gx#syntax-e _%g124126124148%_)))
                          (let ((_%hd124131124155%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e124130124151%_)))
                                (_%tl124132124158%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e124130124151%_))))
                            (if (gx#stx-pair? _%tl124132124158%_)
                                (let ((_%e124133124161%_
                                       (gx#syntax-e _%tl124132124158%_)))
                                  (let ((_%hd124134124165%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e124133124161%_)))
                                        (_%tl124135124168%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e124133124161%_))))
                                    (if (gx#stx-pair? _%tl124135124168%_)
                                        (let ((_%e124136124171%_
                                               (gx#syntax-e
                                                _%tl124135124168%_)))
                                          (let ((_%hd124137124175%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e124136124171%_)))
                                                (_%tl124138124178%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e124136124171%_))))
                                            ((lambda (_%L124181%_
                                                      _%L124183%_
                                                      _%L124184%_)
                                               (if (and (gx#identifier-list?
                                                         _%L124183%_)
                                                        (gx#stx-list?
                                                         _%L124181%_))
                                                   (let* ((_%g124202124210%_
                                                           (lambda (_%g124203124206%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g124203124206%_)))
                                                          (_%g124201124263%_
                                                           (lambda (_%g124203124214%_)
                                                             ((lambda (_%L124217%_)
                                                                (let* ((_%g124229124237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g124230124233%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g124230124233%_)))
                               (_%g124228124259%_
                                (lambda (_%g124230124241%_)
                                  ((lambda (_%L124244%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L124217%_
                                                             (cons _%L124184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L124244%_ '()))))
                                   _%g124230124241%_))))
                          (_%g124228124259%_
                           (_%generate124122%_
                            _%L124217%_
                            (gx#syntax->list _%L124183%_)
                            _%L124181%_))))
                      _%g124203124214%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g124201124263%_
                                                      (gx#genident 'e)))
                                                   (_%g124125124144%_
                                                    _%g124126124148%_)))
                                             _%tl124138124178%_
                                             _%hd124137124175%_
                                             _%hd124134124165%_)))
                                        (_%g124125124144%_
                                         _%g124126124148%_))))
                                (_%g124125124144%_ _%g124126124148%_))))
                        (_%g124125124144%_ _%g124126124148%_)))))
            (_%g124124124267%_ _%stx124119%_)))))))
