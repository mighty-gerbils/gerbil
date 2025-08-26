(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g125049_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125051_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125053_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125055_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125056_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125058_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125059_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125061_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125062_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125064_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125065_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125067_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj125045
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
          (##unchecked-structure-set! __obj125045 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125045 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125045 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125045 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125045 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125045 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125045 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125045 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125045 '#f '11 '#f '#f))
        (let ((__tmp125048 |gx[1]#_g125049_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj125045 __tmp125048 '12 '#f '#f))
        (let ((__tmp125050 |gx[1]#_g125051_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj125045 __tmp125050 '13 '#f '#f))
        (let ((__tmp125052 |gx[1]#_g125053_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj125045 __tmp125052 '14 '#f '#f))
        (let ((__tmp125054
               (cons (cons 'e |gx[1]#_g125055_|)
                     (cons (cons 'source |gx[1]#_g125056_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj125045 __tmp125054 '15 '#f '#f))
        (let ((__tmp125057
               (cons (cons 'e |gx[1]#_g125058_|)
                     (cons (cons 'source |gx[1]#_g125059_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj125045 __tmp125057 '16 '#f '#f))
        (let ((__tmp125060
               (cons (cons 'e |gx[1]#_g125061_|)
                     (cons (cons 'source |gx[1]#_g125062_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj125045 __tmp125060 '17 '#f '#f))
        (let ((__tmp125063
               (cons (cons 'e |gx[1]#_g125064_|)
                     (cons (cons 'source |gx[1]#_g125065_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj125045 __tmp125063 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125045 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125045 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125045 '() '20 '#f '#f))
        __obj125045))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx123640%_)
        (let* ((_%g123644123658%_
                (lambda (_%g123645123654%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g123645123654%_)))
               (_%g123643123700%_
                (lambda (_%g123645123662%_)
                  (if (gx#stx-pair? _%g123645123662%_)
                      (let ((_%e123647123665%_
                             (gx#syntax-e _%g123645123662%_)))
                        (let ((_%hd123648123669%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e123647123665%_)))
                              (_%tl123649123672%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e123647123665%_))))
                          (if (gx#stx-pair? _%tl123649123672%_)
                              (let ((_%e123650123675%_
                                     (gx#syntax-e _%tl123649123672%_)))
                                (let ((_%hd123651123679%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e123650123675%_)))
                                      (_%tl123652123682%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e123650123675%_))))
                                  (if (gx#stx-null? _%tl123652123682%_)
                                      ((lambda (_%L123685%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L123685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L123685%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd123651123679%_)
                                      (_%g123644123658%_ _%g123645123662%_))))
                              (_%g123644123658%_ _%g123645123662%_))))
                      (_%g123644123658%_ _%g123645123662%_)))))
          (_%g123643123700%_ _%$stx123640%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx123704%_)
        (letrec ((_%generate123707%_
                  (lambda (_%tgt123856%_ _%kws123858%_ _%clauses123859%_)
                    (letrec ((_%generate-clause123861%_
                              (lambda (_%hd124796%_ _%E124798%_)
                                (let* ((_%__stx124948124949%_ _%hd124796%_)
                                       (_%g124802124829%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx124948124949%_))))
                                  (let ((_%__kont124951124952%_
                                         (lambda (_%L124925%_ _%L124927%_)
                                           (_%generate1123863%_
                                            _%hd124796%_
                                            _%L124927%_
                                            '#t
                                            _%L124925%_
                                            _%E124798%_)))
                                        (_%__kont124953124954%_
                                         (lambda (_%L124877%_
                                                  _%L124879%_
                                                  _%L124880%_)
                                           (_%generate1123863%_
                                            _%hd124796%_
                                            _%L124880%_
                                            _%L124879%_
                                            _%L124877%_
                                            _%E124798%_)))
                                        (_%__kont124955124956%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx123704%_
                                            _%hd124796%_))))
                                    (if (gx#stx-pair? _%__stx124948124949%_)
                                        (let ((_%e124806124905%_
                                               (gx#syntax-e
                                                _%__stx124948124949%_)))
                                          (let ((_%tl124808124912%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e124806124905%_)))
                                                (_%hd124807124909%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e124806124905%_))))
                                            (if (gx#stx-pair?
                                                 _%tl124808124912%_)
                                                (let ((_%e124809124915%_
                                                       (gx#syntax-e
                                                        _%tl124808124912%_)))
                                                  (let ((_%tl124811124922%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e124809124915%_)))
                                                        (_%hd124810124919%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e124809124915%_))))
                                                    (if (gx#stx-null?
                                                         _%tl124811124922%_)
                                                        (_%__kont124951124952%_
                                                         _%hd124810124919%_
                                                         _%hd124807124909%_)
                                                        (if (gx#stx-pair?
                                                             _%tl124811124922%_)
                                                            (let ((_%e124821124867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl124811124922%_)))
                      (let ((_%tl124823124874%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e124821124867%_)))
                            (_%hd124822124871%_
                             (let ()
                               (declare (not safe))
                               (##car _%e124821124867%_))))
                        (if (gx#stx-null? _%tl124823124874%_)
                            (_%__kont124953124954%_
                             _%hd124822124871%_
                             _%hd124810124919%_
                             _%hd124807124909%_)
                            (_%__kont124955124956%_))))
                    (_%__kont124955124956%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont124955124956%_))))
                                        (_%__kont124955124956%_))))))
                             (_%generate1123863%_
                              (lambda (_%where124249%_
                                       _%hd124251%_
                                       _%fender124252%_
                                       _%body124253%_
                                       _%E124254%_)
                                (letrec ((_%recur124256%_
                                          (lambda (_%hd124259%_
                                                   _%tgt124261%_
                                                   _%K124262%_)
                                            (let* ((_%__stx124994124995%_
                                                    _%hd124259%_)
                                                   (_%g124265124277%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx124994124995%_))))
                                              (let ((_%__kont124997124998%_
                                                     (lambda (_%L124586%_
                                                              _%L124588%_)
                                                       (let* ((_%g124599124607%_
                                                               (lambda (_%g124600124603%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g124600124603%_)))
                      (_%g124598124788%_
                       (lambda (_%g124600124611%_)
                         ((lambda (_%L124614%_)
                            (let* ((_%g124626124634%_
                                    (lambda (_%g124627124630%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g124627124630%_)))
                                   (_%g124625124784%_
                                    (lambda (_%g124627124638%_)
                                      ((lambda (_%L124641%_)
                                         (let* ((_%g124654124662%_
                                                 (lambda (_%g124655124658%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g124655124658%_)))
                                                (_%g124653124780%_
                                                 (lambda (_%g124655124666%_)
                                                   ((lambda (_%L124669%_)
                                                      (let* ((_%g124682124690%_
                                                              (lambda (_%g124683124686%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g124683124686%_)))
                     (_%g124681124776%_
                      (lambda (_%g124683124694%_)
                        ((lambda (_%L124697%_)
                           (let* ((_%g124710124718%_
                                   (lambda (_%g124711124714%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g124711124714%_)))
                                  (_%g124709124772%_
                                   (lambda (_%g124711124722%_)
                                     ((lambda (_%L124725%_)
                                        (let* ((_%g124738124746%_
                                                (lambda (_%g124739124742%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g124739124742%_)))
                                               (_%g124737124768%_
                                                (lambda (_%g124739124750%_)
                                                  ((lambda (_%L124753%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L124614%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L124641%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L124614%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L124669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L124641%_ '()))
                                       '()))
                           (cons (cons _%L124697%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L124641%_ '()))
                                             '()))
                                 '()))
                     (cons _%L124725%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L124753%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g124739124750%_))))
                                          (_%g124737124768%_ _%E124254%_)))
                                      _%g124711124722%_))))
                             (_%g124709124772%_
                              (_%recur124256%_
                               _%L124588%_
                               _%L124669%_
                               (_%recur124256%_
                                _%L124586%_
                                _%L124697%_
                                _%K124262%_)))))
                         _%g124683124694%_))))
                (_%g124681124776%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g124655124666%_))))
                                           (_%g124653124780%_
                                            (gx#genident 'hd))))
                                       _%g124627124638%_))))
                              (_%g124625124784%_ (gx#genident 'e))))
                          _%g124600124611%_))))
                 (_%g124598124788%_ _%tgt124261%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont124999125000%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd124259%_)
                                                           (if (gx#underscore?
                                                                _%hd124259%_)
                                                               _%K124262%_
                                                               (if (let ((__tmp125066
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g124291124293%_)
                                    (gx#bound-identifier=?
                                     _%g124291124293%_
                                     _%hd124259%_))))
                             (declare (not safe))
                             (__find __tmp125066 _%kws123858%_))
                           (let* ((_%g124299124314%_
                                   (lambda (_%g124300124310%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g124300124310%_)))
                                  (_%g124298124367%_
                                   (lambda (_%g124300124318%_)
                                     (if (gx#stx-pair? _%g124300124318%_)
                                         (let ((_%e124303124321%_
                                                (gx#syntax-e
                                                 _%g124300124318%_)))
                                           (let ((_%hd124304124325%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e124303124321%_)))
                                                 (_%tl124305124328%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e124303124321%_))))
                                             (if (gx#stx-pair?
                                                  _%tl124305124328%_)
                                                 (let ((_%e124306124331%_
                                                        (gx#syntax-e
                                                         _%tl124305124328%_)))
                                                   (let ((_%hd124307124335%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e124306124331%_)))
                                                         (_%tl124308124338%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e124306124331%_))))
                                                     (if (gx#stx-null?
                                                          _%tl124308124338%_)
                                                         ((lambda (_%L124341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L124343%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L124343%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L124343%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L124341%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K124262%_ (cons _%E124254%_ '())))))
                  _%hd124307124335%_
                  _%hd124304124325%_)
                 (_%g124299124314%_ _%g124300124318%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g124299124314%_
                                                  _%g124300124318%_))))
                                         (_%g124299124314%_
                                          _%g124300124318%_)))))
                             (_%g124298124367%_
                              (list _%tgt124261%_ _%hd124259%_)))
                           (let* ((_%g124373124388%_
                                   (lambda (_%g124374124384%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g124374124384%_)))
                                  (_%g124372124433%_
                                   (lambda (_%g124374124392%_)
                                     (if (gx#stx-pair? _%g124374124392%_)
                                         (let ((_%e124377124395%_
                                                (gx#syntax-e
                                                 _%g124374124392%_)))
                                           (let ((_%hd124378124399%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e124377124395%_)))
                                                 (_%tl124379124402%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e124377124395%_))))
                                             (if (gx#stx-pair?
                                                  _%tl124379124402%_)
                                                 (let ((_%e124380124405%_
                                                        (gx#syntax-e
                                                         _%tl124379124402%_)))
                                                   (let ((_%hd124381124409%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e124380124405%_)))
                                                         (_%tl124382124412%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e124380124405%_))))
                                                     (if (gx#stx-null?
                                                          _%tl124382124412%_)
                                                         ((lambda (_%L124415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L124417%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L124415%_ (cons _%L124417%_ '()))
                                      '())
                                (cons _%K124262%_ '()))))
                  _%hd124381124409%_
                  _%hd124378124399%_)
                 (_%g124373124388%_ _%g124374124392%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g124373124388%_
                                                  _%g124374124392%_))))
                                         (_%g124373124388%_
                                          _%g124374124392%_)))))
                             (_%g124372124433%_
                              (list _%tgt124261%_ _%hd124259%_)))))
                   (if (gx#stx-null? _%hd124259%_)
                       (let* ((_%g124439124447%_
                               (lambda (_%g124440124443%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g124440124443%_)))
                              (_%g124438124466%_
                               (lambda (_%g124440124451%_)
                                 ((lambda (_%L124454%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L124454%_ '()))
                                                (cons _%K124262%_
                                                      (cons _%E124254%_
                                                            '())))))
                                  _%g124440124451%_))))
                         (_%g124438124466%_ _%tgt124261%_))
                       (if (gx#stx-datum? _%hd124259%_)
                           (let* ((_%g124472124491%_
                                   (lambda (_%g124473124487%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g124473124487%_)))
                                  (_%g124471124550%_
                                   (lambda (_%g124473124495%_)
                                     (if (gx#stx-pair? _%g124473124495%_)
                                         (let ((_%e124477124498%_
                                                (gx#syntax-e
                                                 _%g124473124495%_)))
                                           (let ((_%hd124478124502%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e124477124498%_)))
                                                 (_%tl124479124505%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e124477124498%_))))
                                             (if (gx#stx-pair?
                                                  _%tl124479124505%_)
                                                 (let ((_%e124480124508%_
                                                        (gx#syntax-e
                                                         _%tl124479124505%_)))
                                                   (let ((_%hd124481124512%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e124480124508%_)))
                                                         (_%tl124482124515%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e124480124508%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl124482124515%_)
                                                         (let ((_%e124483124518%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl124482124515%_)))
                   (let ((_%hd124484124522%_
                          (let ()
                            (declare (not safe))
                            (##car _%e124483124518%_)))
                         (_%tl124485124525%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e124483124518%_))))
                     (if (gx#stx-null? _%tl124485124525%_)
                         ((lambda (_%L124528%_ _%L124530%_ _%L124531%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L124528%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L124531%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L124530%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K124262%_
                                              (cons _%E124254%_ '())))))
                          _%hd124484124522%_
                          _%hd124481124512%_
                          _%hd124478124502%_)
                         (_%g124472124491%_ _%g124473124495%_))))
                 (_%g124472124491%_ _%g124473124495%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g124472124491%_
                                                  _%g124473124495%_))))
                                         (_%g124472124491%_
                                          _%g124473124495%_)))))
                             (_%g124471124550%_
                              (list _%tgt124261%_
                                    _%hd124259%_
                                    (let ((_%e124554%_
                                           (gx#stx-e _%hd124259%_)))
                                      (if (or (keyword? _%e124554%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e124554%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e124554%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx123704%_
                            _%where124249%_
                            _%hd124259%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx124994124995%_)
                                                    (let ((_%e124269124576%_
                                                           (gx#syntax-e
                                                            _%__stx124994124995%_)))
                                                      (let ((_%tl124271124583%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e124269124576%_)))
                    (_%hd124270124580%_
                     (let () (declare (not safe)) (##car _%e124269124576%_))))
                (_%__kont124997124998%_
                 _%tl124271124583%_
                 _%hd124270124580%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont124999125000%_)))))))
                                  (_%recur124256%_
                                   _%hd124251%_
                                   _%tgt123856%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender124252%_
                                               (cons _%body124253%_
                                                     (cons _%E124254%_
                                                           '()))))))))
                             (_%generate-clauses123864%_
                              (lambda (_%clauses123987%_)
                                (let _%lp123990%_ ((_%rest123993%_
                                                    _%clauses123987%_)
                                                   (_%E123995%_
                                                    (gx#genident 'E))
                                                   (_%r123996%_ '()))
                                  (let* ((_%__stx125030125031%_ _%rest123993%_)
                                         (_%g123999124011%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx125030125031%_))))
                                    (let ((_%__kont125033125034%_
                                           (lambda (_%L124076%_ _%L124078%_)
                                             (let* ((_%__stx125010125011%_
                                                     _%L124078%_)
                                                    (_%g124090124101%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx125010125011%_))))
                                               (let ((_%__kont125013125014%_
                                                      (lambda (_%L124230%_)
                                                        (if (gx#stx-null?
                                                             _%L124076%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L124230%_)
                             (not (gx#stx-null? _%L124230%_)))
                        (cons (cons _%E123995%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L124230%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L124078%_))
                                          '()))
                              _%r123996%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx123704%_
                         _%L124078%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx123704%_
                     _%L124078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont125015125016%_
                                                      (lambda ()
                                                        (let* ((_%g124112124120%_
                                                                (lambda (_%g124113124116%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g124113124116%_)))
                       (_%g124111124209%_
                        (lambda (_%g124113124124%_)
                          ((lambda (_%L124127%_)
                             (let* ((_%g124143124151%_
                                     (lambda (_%g124144124147%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g124144124147%_)))
                                    (_%g124142124205%_
                                     (lambda (_%g124144124155%_)
                                       ((lambda (_%L124158%_)
                                          (let* ((_%g124171124179%_
                                                  (lambda (_%g124172124175%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g124172124175%_)))
                                                 (_%g124170124201%_
                                                  (lambda (_%g124172124183%_)
                                                    ((lambda (_%L124186%_)
                                                       (_%lp123990%_
                                                        _%L124076%_
                                                        _%L124127%_
                                                        (cons (cons _%E123995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L124186%_ '()))
                      _%r123996%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g124172124183%_))))
                                            (_%g124170124201%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L124158%_
                                                                '())))
                                              (gx#stx-source _%L124078%_)))))
                                        _%g124144124155%_))))
                               (_%g124142124205%_
                                (_%generate-clause123861%_
                                 _%L124078%_
                                 (cons _%L124127%_ '())))))
                           _%g124113124124%_))))
                  (_%g124111124209%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx125010125011%_)
                                                     (let ((_%e124093124220%_
                                                            (gx#syntax-e
                                                             _%__stx125010125011%_)))
                                                       (let ((_%tl124095124227%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e124093124220%_)))
                     (_%hd124094124224%_
                      (let () (declare (not safe)) (##car _%e124093124220%_))))
                 (if (gx#identifier? _%hd124094124224%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g125067_|
                          _%hd124094124224%_)
                         (_%__kont125013125014%_ _%tl124095124227%_)
                         (_%__kont125015125016%_))
                     (_%__kont125015125016%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont125015125016%_))))))
                                          (_%__kont125035125036%_
                                           (lambda ()
                                             (let* ((_%g124022124030%_
                                                     (lambda (_%g124023124026%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g124023124026%_)))
                                                    (_%g124021124055%_
                                                     (lambda (_%g124023124034%_)
                                                       ((lambda (_%L124037%_)
                                                          (cons (cons _%E123995%_
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
                                 (cons _%L124037%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx123704%_))
                                    '()))
                        _%r123996%_))
                _%g124023124034%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g124021124055%_
                                                _%tgt123856%_)))))
                                      (if (gx#stx-pair? _%__stx125030125031%_)
                                          (let ((_%e124003124066%_
                                                 (gx#syntax-e
                                                  _%__stx125030125031%_)))
                                            (let ((_%tl124005124073%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e124003124066%_)))
                                                  (_%hd124004124070%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e124003124066%_))))
                                              (_%__kont125033125034%_
                                               _%tl124005124073%_
                                               _%hd124004124070%_)))
                                          (_%__kont125035125036%_))))))))
                      (let* ((_%bind123866%_
                              (_%generate-clauses123864%_ _%clauses123859%_))
                             (_%g123869123886%_
                              (lambda (_%g123870123882%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g123870123882%_)))
                             (_%g123868123983%_
                              (lambda (_%g123870123890%_)
                                (if (gx#stx-pair/null? _%g123870123890%_)
                                    (let ((_g125068_
                                           (gx#syntax-split-splice
                                            _%g123870123890%_
                                            '0)))
                                      (begin
                                        (let ((_g125069_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g125068_)
                                                     (##values-length
                                                      _g125068_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g125069_ 2)))
                                              (error "Context expects 2 values"
                                                     _g125069_)))
                                        (let ((_%target123872123893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g125068_ 0)))
                                              (_%tl123874123896%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g125068_ 1))))
                                          (if (gx#stx-null? _%tl123874123896%_)
                                              (letrec ((_%loop123875123899%_
                                                        (lambda (_%hd123873123903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try123879123906%_)
                  (if (gx#stx-pair? _%hd123873123903%_)
                      (let ((_%e123876123909%_
                             (gx#syntax-e _%hd123873123903%_)))
                        (let ((_%lp-hd123877123913%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e123876123909%_)))
                              (_%lp-tl123878123916%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e123876123909%_))))
                          (_%loop123875123899%_
                           _%lp-tl123878123916%_
                           (cons _%lp-hd123877123913%_
                                 _%bind-try123879123906%_))))
                      (let ((_%bind-try123880123919%_
                             (reverse _%bind-try123879123906%_)))
                        ((lambda (_%L123923%_)
                           (let* ((_%g123941123949%_
                                   (lambda (_%g123942123945%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g123942123945%_)))
                                  (_%g123940123979%_
                                   (lambda (_%g123942123953%_)
                                     ((lambda (_%L123956%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp125070
                                                           (lambda (_%g123970123973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g123971123976%_)
                     (cons _%g123970123973%_ _%g123971123976%_))))
              (declare (not safe))
              (__foldr1 __tmp125070 '() _%L123923%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L123956%_
                                                                '())
                                                          '()))))
                                      _%g123942123953%_))))
                             (_%g123940123979%_ (car (last _%bind123866%_)))))
                         _%bind-try123880123919%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop123875123899%_
                                                 _%target123872123893%_
                                                 '()))
                                              (_%g123869123886%_
                                               _%g123870123890%_)))))
                                    (_%g123869123886%_ _%g123870123890%_)))))
                        (_%g123868123983%_ _%bind123866%_))))))
          (let* ((_%g123710123729%_
                  (lambda (_%g123711123725%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g123711123725%_)))
                 (_%g123709123852%_
                  (lambda (_%g123711123733%_)
                    (if (gx#stx-pair? _%g123711123733%_)
                        (let ((_%e123715123736%_
                               (gx#syntax-e _%g123711123733%_)))
                          (let ((_%hd123716123740%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e123715123736%_)))
                                (_%tl123717123743%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e123715123736%_))))
                            (if (gx#stx-pair? _%tl123717123743%_)
                                (let ((_%e123718123746%_
                                       (gx#syntax-e _%tl123717123743%_)))
                                  (let ((_%hd123719123750%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e123718123746%_)))
                                        (_%tl123720123753%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e123718123746%_))))
                                    (if (gx#stx-pair? _%tl123720123753%_)
                                        (let ((_%e123721123756%_
                                               (gx#syntax-e
                                                _%tl123720123753%_)))
                                          (let ((_%hd123722123760%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e123721123756%_)))
                                                (_%tl123723123763%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e123721123756%_))))
                                            ((lambda (_%L123766%_
                                                      _%L123768%_
                                                      _%L123769%_)
                                               (if (and (gx#identifier-list?
                                                         _%L123768%_)
                                                        (gx#stx-list?
                                                         _%L123766%_))
                                                   (let* ((_%g123787123795%_
                                                           (lambda (_%g123788123791%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g123788123791%_)))
                                                          (_%g123786123848%_
                                                           (lambda (_%g123788123799%_)
                                                             ((lambda (_%L123802%_)
                                                                (let* ((_%g123814123822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g123815123818%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g123815123818%_)))
                               (_%g123813123844%_
                                (lambda (_%g123815123826%_)
                                  ((lambda (_%L123829%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L123802%_
                                                             (cons _%L123769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L123829%_ '()))))
                                   _%g123815123826%_))))
                          (_%g123813123844%_
                           (_%generate123707%_
                            _%L123802%_
                            (gx#syntax->list _%L123768%_)
                            _%L123766%_))))
                      _%g123788123799%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g123786123848%_
                                                      (gx#genident 'e)))
                                                   (_%g123710123729%_
                                                    _%g123711123733%_)))
                                             _%tl123723123763%_
                                             _%hd123722123760%_
                                             _%hd123719123750%_)))
                                        (_%g123710123729%_
                                         _%g123711123733%_))))
                                (_%g123710123729%_ _%g123711123733%_))))
                        (_%g123710123729%_ _%g123711123733%_)))))
            (_%g123709123852%_ _%stx123704%_)))))))
