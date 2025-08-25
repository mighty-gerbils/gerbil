(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g125046_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125048_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125050_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125052_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125053_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125055_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125056_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125058_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125059_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125061_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125062_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125064_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj125042
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
          (##unchecked-structure-set! __obj125042 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125042 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125042 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125042 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125042 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125042 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125042 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125042 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125042 '#f '11 '#f '#f))
        (let ((__tmp125045 |gx[1]#_g125046_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj125042 __tmp125045 '12 '#f '#f))
        (let ((__tmp125047 |gx[1]#_g125048_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj125042 __tmp125047 '13 '#f '#f))
        (let ((__tmp125049 |gx[1]#_g125050_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj125042 __tmp125049 '14 '#f '#f))
        (let ((__tmp125051
               (cons (cons 'e |gx[1]#_g125052_|)
                     (cons (cons 'source |gx[1]#_g125053_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj125042 __tmp125051 '15 '#f '#f))
        (let ((__tmp125054
               (cons (cons 'e |gx[1]#_g125055_|)
                     (cons (cons 'source |gx[1]#_g125056_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj125042 __tmp125054 '16 '#f '#f))
        (let ((__tmp125057
               (cons (cons 'e |gx[1]#_g125058_|)
                     (cons (cons 'source |gx[1]#_g125059_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj125042 __tmp125057 '17 '#f '#f))
        (let ((__tmp125060
               (cons (cons 'e |gx[1]#_g125061_|)
                     (cons (cons 'source |gx[1]#_g125062_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj125042 __tmp125060 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125042 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125042 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125042 '() '20 '#f '#f))
        __obj125042))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx123637%_)
        (let* ((_%g123641123655%_
                (lambda (_%g123642123651%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g123642123651%_)))
               (_%g123640123697%_
                (lambda (_%g123642123659%_)
                  (if (gx#stx-pair? _%g123642123659%_)
                      (let ((_%e123644123662%_
                             (gx#syntax-e _%g123642123659%_)))
                        (let ((_%hd123645123666%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e123644123662%_)))
                              (_%tl123646123669%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e123644123662%_))))
                          (if (gx#stx-pair? _%tl123646123669%_)
                              (let ((_%e123647123672%_
                                     (gx#syntax-e _%tl123646123669%_)))
                                (let ((_%hd123648123676%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e123647123672%_)))
                                      (_%tl123649123679%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e123647123672%_))))
                                  (if (gx#stx-null? _%tl123649123679%_)
                                      ((lambda (_%L123682%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L123682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L123682%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd123648123676%_)
                                      (_%g123641123655%_ _%g123642123659%_))))
                              (_%g123641123655%_ _%g123642123659%_))))
                      (_%g123641123655%_ _%g123642123659%_)))))
          (_%g123640123697%_ _%$stx123637%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx123701%_)
        (letrec ((_%generate123704%_
                  (lambda (_%tgt123853%_ _%kws123855%_ _%clauses123856%_)
                    (letrec ((_%generate-clause123858%_
                              (lambda (_%hd124793%_ _%E124795%_)
                                (let* ((_%__stx124945124946%_ _%hd124793%_)
                                       (_%g124799124826%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx124945124946%_))))
                                  (let ((_%__kont124948124949%_
                                         (lambda (_%L124922%_ _%L124924%_)
                                           (_%generate1123860%_
                                            _%hd124793%_
                                            _%L124924%_
                                            '#t
                                            _%L124922%_
                                            _%E124795%_)))
                                        (_%__kont124950124951%_
                                         (lambda (_%L124874%_
                                                  _%L124876%_
                                                  _%L124877%_)
                                           (_%generate1123860%_
                                            _%hd124793%_
                                            _%L124877%_
                                            _%L124876%_
                                            _%L124874%_
                                            _%E124795%_)))
                                        (_%__kont124952124953%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx123701%_
                                            _%hd124793%_))))
                                    (if (gx#stx-pair? _%__stx124945124946%_)
                                        (let ((_%e124803124902%_
                                               (gx#syntax-e
                                                _%__stx124945124946%_)))
                                          (let ((_%tl124805124909%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e124803124902%_)))
                                                (_%hd124804124906%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e124803124902%_))))
                                            (if (gx#stx-pair?
                                                 _%tl124805124909%_)
                                                (let ((_%e124806124912%_
                                                       (gx#syntax-e
                                                        _%tl124805124909%_)))
                                                  (let ((_%tl124808124919%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e124806124912%_)))
                                                        (_%hd124807124916%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e124806124912%_))))
                                                    (if (gx#stx-null?
                                                         _%tl124808124919%_)
                                                        (_%__kont124948124949%_
                                                         _%hd124807124916%_
                                                         _%hd124804124906%_)
                                                        (if (gx#stx-pair?
                                                             _%tl124808124919%_)
                                                            (let ((_%e124818124864%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl124808124919%_)))
                      (let ((_%tl124820124871%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e124818124864%_)))
                            (_%hd124819124868%_
                             (let ()
                               (declare (not safe))
                               (##car _%e124818124864%_))))
                        (if (gx#stx-null? _%tl124820124871%_)
                            (_%__kont124950124951%_
                             _%hd124819124868%_
                             _%hd124807124916%_
                             _%hd124804124906%_)
                            (_%__kont124952124953%_))))
                    (_%__kont124952124953%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont124952124953%_))))
                                        (_%__kont124952124953%_))))))
                             (_%generate1123860%_
                              (lambda (_%where124246%_
                                       _%hd124248%_
                                       _%fender124249%_
                                       _%body124250%_
                                       _%E124251%_)
                                (letrec ((_%recur124253%_
                                          (lambda (_%hd124256%_
                                                   _%tgt124258%_
                                                   _%K124259%_)
                                            (let* ((_%__stx124991124992%_
                                                    _%hd124256%_)
                                                   (_%g124262124274%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx124991124992%_))))
                                              (let ((_%__kont124994124995%_
                                                     (lambda (_%L124583%_
                                                              _%L124585%_)
                                                       (let* ((_%g124596124604%_
                                                               (lambda (_%g124597124600%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g124597124600%_)))
                      (_%g124595124785%_
                       (lambda (_%g124597124608%_)
                         ((lambda (_%L124611%_)
                            (let* ((_%g124623124631%_
                                    (lambda (_%g124624124627%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g124624124627%_)))
                                   (_%g124622124781%_
                                    (lambda (_%g124624124635%_)
                                      ((lambda (_%L124638%_)
                                         (let* ((_%g124651124659%_
                                                 (lambda (_%g124652124655%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g124652124655%_)))
                                                (_%g124650124777%_
                                                 (lambda (_%g124652124663%_)
                                                   ((lambda (_%L124666%_)
                                                      (let* ((_%g124679124687%_
                                                              (lambda (_%g124680124683%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g124680124683%_)))
                     (_%g124678124773%_
                      (lambda (_%g124680124691%_)
                        ((lambda (_%L124694%_)
                           (let* ((_%g124707124715%_
                                   (lambda (_%g124708124711%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g124708124711%_)))
                                  (_%g124706124769%_
                                   (lambda (_%g124708124719%_)
                                     ((lambda (_%L124722%_)
                                        (let* ((_%g124735124743%_
                                                (lambda (_%g124736124739%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g124736124739%_)))
                                               (_%g124734124765%_
                                                (lambda (_%g124736124747%_)
                                                  ((lambda (_%L124750%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L124611%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L124638%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L124611%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L124666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L124638%_ '()))
                                       '()))
                           (cons (cons _%L124694%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L124638%_ '()))
                                             '()))
                                 '()))
                     (cons _%L124722%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L124750%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g124736124747%_))))
                                          (_%g124734124765%_ _%E124251%_)))
                                      _%g124708124719%_))))
                             (_%g124706124769%_
                              (_%recur124253%_
                               _%L124585%_
                               _%L124666%_
                               (_%recur124253%_
                                _%L124583%_
                                _%L124694%_
                                _%K124259%_)))))
                         _%g124680124691%_))))
                (_%g124678124773%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g124652124663%_))))
                                           (_%g124650124777%_
                                            (gx#genident 'hd))))
                                       _%g124624124635%_))))
                              (_%g124622124781%_ (gx#genident 'e))))
                          _%g124597124608%_))))
                 (_%g124595124785%_ _%tgt124258%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont124996124997%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd124256%_)
                                                           (if (gx#underscore?
                                                                _%hd124256%_)
                                                               _%K124259%_
                                                               (if (let ((__tmp125063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g124288124290%_)
                                    (gx#bound-identifier=?
                                     _%g124288124290%_
                                     _%hd124256%_))))
                             (declare (not safe))
                             (__find __tmp125063 _%kws123855%_))
                           (let* ((_%g124296124311%_
                                   (lambda (_%g124297124307%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g124297124307%_)))
                                  (_%g124295124364%_
                                   (lambda (_%g124297124315%_)
                                     (if (gx#stx-pair? _%g124297124315%_)
                                         (let ((_%e124300124318%_
                                                (gx#syntax-e
                                                 _%g124297124315%_)))
                                           (let ((_%hd124301124322%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e124300124318%_)))
                                                 (_%tl124302124325%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e124300124318%_))))
                                             (if (gx#stx-pair?
                                                  _%tl124302124325%_)
                                                 (let ((_%e124303124328%_
                                                        (gx#syntax-e
                                                         _%tl124302124325%_)))
                                                   (let ((_%hd124304124332%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e124303124328%_)))
                                                         (_%tl124305124335%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e124303124328%_))))
                                                     (if (gx#stx-null?
                                                          _%tl124305124335%_)
                                                         ((lambda (_%L124338%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L124340%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L124340%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L124340%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L124338%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K124259%_ (cons _%E124251%_ '())))))
                  _%hd124304124332%_
                  _%hd124301124322%_)
                 (_%g124296124311%_ _%g124297124315%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g124296124311%_
                                                  _%g124297124315%_))))
                                         (_%g124296124311%_
                                          _%g124297124315%_)))))
                             (_%g124295124364%_
                              (list _%tgt124258%_ _%hd124256%_)))
                           (let* ((_%g124370124385%_
                                   (lambda (_%g124371124381%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g124371124381%_)))
                                  (_%g124369124430%_
                                   (lambda (_%g124371124389%_)
                                     (if (gx#stx-pair? _%g124371124389%_)
                                         (let ((_%e124374124392%_
                                                (gx#syntax-e
                                                 _%g124371124389%_)))
                                           (let ((_%hd124375124396%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e124374124392%_)))
                                                 (_%tl124376124399%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e124374124392%_))))
                                             (if (gx#stx-pair?
                                                  _%tl124376124399%_)
                                                 (let ((_%e124377124402%_
                                                        (gx#syntax-e
                                                         _%tl124376124399%_)))
                                                   (let ((_%hd124378124406%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e124377124402%_)))
                                                         (_%tl124379124409%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e124377124402%_))))
                                                     (if (gx#stx-null?
                                                          _%tl124379124409%_)
                                                         ((lambda (_%L124412%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L124414%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L124412%_ (cons _%L124414%_ '()))
                                      '())
                                (cons _%K124259%_ '()))))
                  _%hd124378124406%_
                  _%hd124375124396%_)
                 (_%g124370124385%_ _%g124371124389%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g124370124385%_
                                                  _%g124371124389%_))))
                                         (_%g124370124385%_
                                          _%g124371124389%_)))))
                             (_%g124369124430%_
                              (list _%tgt124258%_ _%hd124256%_)))))
                   (if (gx#stx-null? _%hd124256%_)
                       (let* ((_%g124436124444%_
                               (lambda (_%g124437124440%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g124437124440%_)))
                              (_%g124435124463%_
                               (lambda (_%g124437124448%_)
                                 ((lambda (_%L124451%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L124451%_ '()))
                                                (cons _%K124259%_
                                                      (cons _%E124251%_
                                                            '())))))
                                  _%g124437124448%_))))
                         (_%g124435124463%_ _%tgt124258%_))
                       (if (gx#stx-datum? _%hd124256%_)
                           (let* ((_%g124469124488%_
                                   (lambda (_%g124470124484%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g124470124484%_)))
                                  (_%g124468124547%_
                                   (lambda (_%g124470124492%_)
                                     (if (gx#stx-pair? _%g124470124492%_)
                                         (let ((_%e124474124495%_
                                                (gx#syntax-e
                                                 _%g124470124492%_)))
                                           (let ((_%hd124475124499%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e124474124495%_)))
                                                 (_%tl124476124502%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e124474124495%_))))
                                             (if (gx#stx-pair?
                                                  _%tl124476124502%_)
                                                 (let ((_%e124477124505%_
                                                        (gx#syntax-e
                                                         _%tl124476124502%_)))
                                                   (let ((_%hd124478124509%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e124477124505%_)))
                                                         (_%tl124479124512%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e124477124505%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl124479124512%_)
                                                         (let ((_%e124480124515%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl124479124512%_)))
                   (let ((_%hd124481124519%_
                          (let ()
                            (declare (not safe))
                            (##car _%e124480124515%_)))
                         (_%tl124482124522%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e124480124515%_))))
                     (if (gx#stx-null? _%tl124482124522%_)
                         ((lambda (_%L124525%_ _%L124527%_ _%L124528%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L124525%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L124528%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L124527%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K124259%_
                                              (cons _%E124251%_ '())))))
                          _%hd124481124519%_
                          _%hd124478124509%_
                          _%hd124475124499%_)
                         (_%g124469124488%_ _%g124470124492%_))))
                 (_%g124469124488%_ _%g124470124492%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g124469124488%_
                                                  _%g124470124492%_))))
                                         (_%g124469124488%_
                                          _%g124470124492%_)))))
                             (_%g124468124547%_
                              (list _%tgt124258%_
                                    _%hd124256%_
                                    (let ((_%e124551%_
                                           (gx#stx-e _%hd124256%_)))
                                      (if (or (keyword? _%e124551%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e124551%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e124551%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx123701%_
                            _%where124246%_
                            _%hd124256%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx124991124992%_)
                                                    (let ((_%e124266124573%_
                                                           (gx#syntax-e
                                                            _%__stx124991124992%_)))
                                                      (let ((_%tl124268124580%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e124266124573%_)))
                    (_%hd124267124577%_
                     (let () (declare (not safe)) (##car _%e124266124573%_))))
                (_%__kont124994124995%_
                 _%tl124268124580%_
                 _%hd124267124577%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont124996124997%_)))))))
                                  (_%recur124253%_
                                   _%hd124248%_
                                   _%tgt123853%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender124249%_
                                               (cons _%body124250%_
                                                     (cons _%E124251%_
                                                           '()))))))))
                             (_%generate-clauses123861%_
                              (lambda (_%clauses123984%_)
                                (let _%lp123987%_ ((_%rest123990%_
                                                    _%clauses123984%_)
                                                   (_%E123992%_
                                                    (gx#genident 'E))
                                                   (_%r123993%_ '()))
                                  (let* ((_%__stx125027125028%_ _%rest123990%_)
                                         (_%g123996124008%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx125027125028%_))))
                                    (let ((_%__kont125030125031%_
                                           (lambda (_%L124073%_ _%L124075%_)
                                             (let* ((_%__stx125007125008%_
                                                     _%L124075%_)
                                                    (_%g124087124098%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx125007125008%_))))
                                               (let ((_%__kont125010125011%_
                                                      (lambda (_%L124227%_)
                                                        (if (gx#stx-null?
                                                             _%L124073%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L124227%_)
                             (not (gx#stx-null? _%L124227%_)))
                        (cons (cons _%E123992%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L124227%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L124075%_))
                                          '()))
                              _%r123993%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx123701%_
                         _%L124075%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx123701%_
                     _%L124075%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont125012125013%_
                                                      (lambda ()
                                                        (let* ((_%g124109124117%_
                                                                (lambda (_%g124110124113%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g124110124113%_)))
                       (_%g124108124206%_
                        (lambda (_%g124110124121%_)
                          ((lambda (_%L124124%_)
                             (let* ((_%g124140124148%_
                                     (lambda (_%g124141124144%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g124141124144%_)))
                                    (_%g124139124202%_
                                     (lambda (_%g124141124152%_)
                                       ((lambda (_%L124155%_)
                                          (let* ((_%g124168124176%_
                                                  (lambda (_%g124169124172%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g124169124172%_)))
                                                 (_%g124167124198%_
                                                  (lambda (_%g124169124180%_)
                                                    ((lambda (_%L124183%_)
                                                       (_%lp123987%_
                                                        _%L124073%_
                                                        _%L124124%_
                                                        (cons (cons _%E123992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L124183%_ '()))
                      _%r123993%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g124169124180%_))))
                                            (_%g124167124198%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L124155%_
                                                                '())))
                                              (gx#stx-source _%L124075%_)))))
                                        _%g124141124152%_))))
                               (_%g124139124202%_
                                (_%generate-clause123858%_
                                 _%L124075%_
                                 (cons _%L124124%_ '())))))
                           _%g124110124121%_))))
                  (_%g124108124206%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx125007125008%_)
                                                     (let ((_%e124090124217%_
                                                            (gx#syntax-e
                                                             _%__stx125007125008%_)))
                                                       (let ((_%tl124092124224%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e124090124217%_)))
                     (_%hd124091124221%_
                      (let () (declare (not safe)) (##car _%e124090124217%_))))
                 (if (gx#identifier? _%hd124091124221%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g125064_|
                          _%hd124091124221%_)
                         (_%__kont125010125011%_ _%tl124092124224%_)
                         (_%__kont125012125013%_))
                     (_%__kont125012125013%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont125012125013%_))))))
                                          (_%__kont125032125033%_
                                           (lambda ()
                                             (let* ((_%g124019124027%_
                                                     (lambda (_%g124020124023%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g124020124023%_)))
                                                    (_%g124018124052%_
                                                     (lambda (_%g124020124031%_)
                                                       ((lambda (_%L124034%_)
                                                          (cons (cons _%E123992%_
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
                                 (cons _%L124034%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx123701%_))
                                    '()))
                        _%r123993%_))
                _%g124020124031%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g124018124052%_
                                                _%tgt123853%_)))))
                                      (if (gx#stx-pair? _%__stx125027125028%_)
                                          (let ((_%e124000124063%_
                                                 (gx#syntax-e
                                                  _%__stx125027125028%_)))
                                            (let ((_%tl124002124070%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e124000124063%_)))
                                                  (_%hd124001124067%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e124000124063%_))))
                                              (_%__kont125030125031%_
                                               _%tl124002124070%_
                                               _%hd124001124067%_)))
                                          (_%__kont125032125033%_))))))))
                      (let* ((_%bind123863%_
                              (_%generate-clauses123861%_ _%clauses123856%_))
                             (_%g123866123883%_
                              (lambda (_%g123867123879%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g123867123879%_)))
                             (_%g123865123980%_
                              (lambda (_%g123867123887%_)
                                (if (gx#stx-pair/null? _%g123867123887%_)
                                    (let ((_g125065_
                                           (gx#syntax-split-splice
                                            _%g123867123887%_
                                            '0)))
                                      (begin
                                        (let ((_g125066_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g125065_)
                                                     (##values-length
                                                      _g125065_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g125066_ 2)))
                                              (error "Context expects 2 values"
                                                     _g125066_)))
                                        (let ((_%target123869123890%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g125065_ 0)))
                                              (_%tl123871123893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g125065_ 1))))
                                          (if (gx#stx-null? _%tl123871123893%_)
                                              (letrec ((_%loop123872123896%_
                                                        (lambda (_%hd123870123900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try123876123903%_)
                  (if (gx#stx-pair? _%hd123870123900%_)
                      (let ((_%e123873123906%_
                             (gx#syntax-e _%hd123870123900%_)))
                        (let ((_%lp-hd123874123910%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e123873123906%_)))
                              (_%lp-tl123875123913%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e123873123906%_))))
                          (_%loop123872123896%_
                           _%lp-tl123875123913%_
                           (cons _%lp-hd123874123910%_
                                 _%bind-try123876123903%_))))
                      (let ((_%bind-try123877123916%_
                             (reverse _%bind-try123876123903%_)))
                        ((lambda (_%L123920%_)
                           (let* ((_%g123938123946%_
                                   (lambda (_%g123939123942%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g123939123942%_)))
                                  (_%g123937123976%_
                                   (lambda (_%g123939123950%_)
                                     ((lambda (_%L123953%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp125067
                                                           (lambda (_%g123967123970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g123968123973%_)
                     (cons _%g123967123970%_ _%g123968123973%_))))
              (declare (not safe))
              (__foldr1 __tmp125067 '() _%L123920%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L123953%_
                                                                '())
                                                          '()))))
                                      _%g123939123950%_))))
                             (_%g123937123976%_ (car (last _%bind123863%_)))))
                         _%bind-try123877123916%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop123872123896%_
                                                 _%target123869123890%_
                                                 '()))
                                              (_%g123866123883%_
                                               _%g123867123887%_)))))
                                    (_%g123866123883%_ _%g123867123887%_)))))
                        (_%g123865123980%_ _%bind123863%_))))))
          (let* ((_%g123707123726%_
                  (lambda (_%g123708123722%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g123708123722%_)))
                 (_%g123706123849%_
                  (lambda (_%g123708123730%_)
                    (if (gx#stx-pair? _%g123708123730%_)
                        (let ((_%e123712123733%_
                               (gx#syntax-e _%g123708123730%_)))
                          (let ((_%hd123713123737%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e123712123733%_)))
                                (_%tl123714123740%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e123712123733%_))))
                            (if (gx#stx-pair? _%tl123714123740%_)
                                (let ((_%e123715123743%_
                                       (gx#syntax-e _%tl123714123740%_)))
                                  (let ((_%hd123716123747%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e123715123743%_)))
                                        (_%tl123717123750%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e123715123743%_))))
                                    (if (gx#stx-pair? _%tl123717123750%_)
                                        (let ((_%e123718123753%_
                                               (gx#syntax-e
                                                _%tl123717123750%_)))
                                          (let ((_%hd123719123757%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e123718123753%_)))
                                                (_%tl123720123760%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e123718123753%_))))
                                            ((lambda (_%L123763%_
                                                      _%L123765%_
                                                      _%L123766%_)
                                               (if (and (gx#identifier-list?
                                                         _%L123765%_)
                                                        (gx#stx-list?
                                                         _%L123763%_))
                                                   (let* ((_%g123784123792%_
                                                           (lambda (_%g123785123788%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g123785123788%_)))
                                                          (_%g123783123845%_
                                                           (lambda (_%g123785123796%_)
                                                             ((lambda (_%L123799%_)
                                                                (let* ((_%g123811123819%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g123812123815%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g123812123815%_)))
                               (_%g123810123841%_
                                (lambda (_%g123812123823%_)
                                  ((lambda (_%L123826%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L123799%_
                                                             (cons _%L123766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L123826%_ '()))))
                                   _%g123812123823%_))))
                          (_%g123810123841%_
                           (_%generate123704%_
                            _%L123799%_
                            (gx#syntax->list _%L123765%_)
                            _%L123763%_))))
                      _%g123785123796%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g123783123845%_
                                                      (gx#genident 'e)))
                                                   (_%g123707123726%_
                                                    _%g123708123730%_)))
                                             _%tl123720123760%_
                                             _%hd123719123757%_
                                             _%hd123716123747%_)))
                                        (_%g123707123726%_
                                         _%g123708123730%_))))
                                (_%g123707123726%_ _%g123708123730%_))))
                        (_%g123707123726%_ _%g123708123730%_)))))
            (_%g123706123849%_ _%stx123701%_)))))))
