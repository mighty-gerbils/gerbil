(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g125466_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125468_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125470_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125472_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125473_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125475_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125476_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125478_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125479_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125481_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125482_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g125484_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj125462
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
          (##unchecked-structure-set! __obj125462 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125462 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125462 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125462 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125462 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125462 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125462 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125462 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125462 '#f '11 '#f '#f))
        (let ((__tmp125465 |gx[1]#_g125466_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj125462 __tmp125465 '12 '#f '#f))
        (let ((__tmp125467 |gx[1]#_g125468_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj125462 __tmp125467 '13 '#f '#f))
        (let ((__tmp125469 |gx[1]#_g125470_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj125462 __tmp125469 '14 '#f '#f))
        (let ((__tmp125471
               (cons (cons 'e |gx[1]#_g125472_|)
                     (cons (cons 'source |gx[1]#_g125473_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj125462 __tmp125471 '15 '#f '#f))
        (let ((__tmp125474
               (cons (cons 'e |gx[1]#_g125475_|)
                     (cons (cons 'source |gx[1]#_g125476_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj125462 __tmp125474 '16 '#f '#f))
        (let ((__tmp125477
               (cons (cons 'e |gx[1]#_g125478_|)
                     (cons (cons 'source |gx[1]#_g125479_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj125462 __tmp125477 '17 '#f '#f))
        (let ((__tmp125480
               (cons (cons 'e |gx[1]#_g125481_|)
                     (cons (cons 'source |gx[1]#_g125482_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj125462 __tmp125480 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125462 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125462 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj125462 '() '20 '#f '#f))
        __obj125462))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx124057%_)
        (let* ((_%g124061124075%_
                (lambda (_%g124062124071%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g124062124071%_)))
               (_%g124060124117%_
                (lambda (_%g124062124079%_)
                  (if (gx#stx-pair? _%g124062124079%_)
                      (let ((_%e124064124082%_
                             (gx#syntax-e _%g124062124079%_)))
                        (let ((_%hd124065124086%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e124064124082%_)))
                              (_%tl124066124089%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e124064124082%_))))
                          (if (gx#stx-pair? _%tl124066124089%_)
                              (let ((_%e124067124092%_
                                     (gx#syntax-e _%tl124066124089%_)))
                                (let ((_%hd124068124096%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e124067124092%_)))
                                      (_%tl124069124099%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e124067124092%_))))
                                  (if (gx#stx-null? _%tl124069124099%_)
                                      ((lambda (_%L124102%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L124102%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L124102%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd124068124096%_)
                                      (_%g124061124075%_ _%g124062124079%_))))
                              (_%g124061124075%_ _%g124062124079%_))))
                      (_%g124061124075%_ _%g124062124079%_)))))
          (_%g124060124117%_ _%$stx124057%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx124121%_)
        (letrec ((_%generate124124%_
                  (lambda (_%tgt124273%_ _%kws124275%_ _%clauses124276%_)
                    (letrec ((_%generate-clause124278%_
                              (lambda (_%hd125213%_ _%E125215%_)
                                (let* ((_%__stx125365125366%_ _%hd125213%_)
                                       (_%g125219125246%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx125365125366%_))))
                                  (let ((_%__kont125368125369%_
                                         (lambda (_%L125342%_ _%L125344%_)
                                           (_%generate1124280%_
                                            _%hd125213%_
                                            _%L125344%_
                                            '#t
                                            _%L125342%_
                                            _%E125215%_)))
                                        (_%__kont125370125371%_
                                         (lambda (_%L125294%_
                                                  _%L125296%_
                                                  _%L125297%_)
                                           (_%generate1124280%_
                                            _%hd125213%_
                                            _%L125297%_
                                            _%L125296%_
                                            _%L125294%_
                                            _%E125215%_)))
                                        (_%__kont125372125373%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx124121%_
                                            _%hd125213%_))))
                                    (if (gx#stx-pair? _%__stx125365125366%_)
                                        (let ((_%e125223125322%_
                                               (gx#syntax-e
                                                _%__stx125365125366%_)))
                                          (let ((_%tl125225125329%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e125223125322%_)))
                                                (_%hd125224125326%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e125223125322%_))))
                                            (if (gx#stx-pair?
                                                 _%tl125225125329%_)
                                                (let ((_%e125226125332%_
                                                       (gx#syntax-e
                                                        _%tl125225125329%_)))
                                                  (let ((_%tl125228125339%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e125226125332%_)))
                                                        (_%hd125227125336%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e125226125332%_))))
                                                    (if (gx#stx-null?
                                                         _%tl125228125339%_)
                                                        (_%__kont125368125369%_
                                                         _%hd125227125336%_
                                                         _%hd125224125326%_)
                                                        (if (gx#stx-pair?
                                                             _%tl125228125339%_)
                                                            (let ((_%e125238125284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl125228125339%_)))
                      (let ((_%tl125240125291%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e125238125284%_)))
                            (_%hd125239125288%_
                             (let ()
                               (declare (not safe))
                               (##car _%e125238125284%_))))
                        (if (gx#stx-null? _%tl125240125291%_)
                            (_%__kont125370125371%_
                             _%hd125239125288%_
                             _%hd125227125336%_
                             _%hd125224125326%_)
                            (_%__kont125372125373%_))))
                    (_%__kont125372125373%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont125372125373%_))))
                                        (_%__kont125372125373%_))))))
                             (_%generate1124280%_
                              (lambda (_%where124666%_
                                       _%hd124668%_
                                       _%fender124669%_
                                       _%body124670%_
                                       _%E124671%_)
                                (letrec ((_%recur124673%_
                                          (lambda (_%hd124676%_
                                                   _%tgt124678%_
                                                   _%K124679%_)
                                            (let* ((_%__stx125411125412%_
                                                    _%hd124676%_)
                                                   (_%g124682124694%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx125411125412%_))))
                                              (let ((_%__kont125414125415%_
                                                     (lambda (_%L125003%_
                                                              _%L125005%_)
                                                       (let* ((_%g125016125024%_
                                                               (lambda (_%g125017125020%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g125017125020%_)))
                      (_%g125015125205%_
                       (lambda (_%g125017125028%_)
                         ((lambda (_%L125031%_)
                            (let* ((_%g125043125051%_
                                    (lambda (_%g125044125047%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g125044125047%_)))
                                   (_%g125042125201%_
                                    (lambda (_%g125044125055%_)
                                      ((lambda (_%L125058%_)
                                         (let* ((_%g125071125079%_
                                                 (lambda (_%g125072125075%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g125072125075%_)))
                                                (_%g125070125197%_
                                                 (lambda (_%g125072125083%_)
                                                   ((lambda (_%L125086%_)
                                                      (let* ((_%g125099125107%_
                                                              (lambda (_%g125100125103%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g125100125103%_)))
                     (_%g125098125193%_
                      (lambda (_%g125100125111%_)
                        ((lambda (_%L125114%_)
                           (let* ((_%g125127125135%_
                                   (lambda (_%g125128125131%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g125128125131%_)))
                                  (_%g125126125189%_
                                   (lambda (_%g125128125139%_)
                                     ((lambda (_%L125142%_)
                                        (let* ((_%g125155125163%_
                                                (lambda (_%g125156125159%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g125156125159%_)))
                                               (_%g125154125185%_
                                                (lambda (_%g125156125167%_)
                                                  ((lambda (_%L125170%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L125031%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L125058%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L125031%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L125086%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L125058%_ '()))
                                       '()))
                           (cons (cons _%L125114%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L125058%_ '()))
                                             '()))
                                 '()))
                     (cons _%L125142%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L125170%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g125156125167%_))))
                                          (_%g125154125185%_ _%E124671%_)))
                                      _%g125128125139%_))))
                             (_%g125126125189%_
                              (_%recur124673%_
                               _%L125005%_
                               _%L125086%_
                               (_%recur124673%_
                                _%L125003%_
                                _%L125114%_
                                _%K124679%_)))))
                         _%g125100125111%_))))
                (_%g125098125193%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g125072125083%_))))
                                           (_%g125070125197%_
                                            (gx#genident 'hd))))
                                       _%g125044125055%_))))
                              (_%g125042125201%_ (gx#genident 'e))))
                          _%g125017125028%_))))
                 (_%g125015125205%_ _%tgt124678%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont125416125417%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd124676%_)
                                                           (if (gx#underscore?
                                                                _%hd124676%_)
                                                               _%K124679%_
                                                               (if (let ((__tmp125483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g124708124710%_)
                                    (gx#bound-identifier=?
                                     _%g124708124710%_
                                     _%hd124676%_))))
                             (declare (not safe))
                             (__find __tmp125483 _%kws124275%_))
                           (let* ((_%g124716124731%_
                                   (lambda (_%g124717124727%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g124717124727%_)))
                                  (_%g124715124784%_
                                   (lambda (_%g124717124735%_)
                                     (if (gx#stx-pair? _%g124717124735%_)
                                         (let ((_%e124720124738%_
                                                (gx#syntax-e
                                                 _%g124717124735%_)))
                                           (let ((_%hd124721124742%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e124720124738%_)))
                                                 (_%tl124722124745%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e124720124738%_))))
                                             (if (gx#stx-pair?
                                                  _%tl124722124745%_)
                                                 (let ((_%e124723124748%_
                                                        (gx#syntax-e
                                                         _%tl124722124745%_)))
                                                   (let ((_%hd124724124752%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e124723124748%_)))
                                                         (_%tl124725124755%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e124723124748%_))))
                                                     (if (gx#stx-null?
                                                          _%tl124725124755%_)
                                                         ((lambda (_%L124758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L124760%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L124760%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L124760%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L124758%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K124679%_ (cons _%E124671%_ '())))))
                  _%hd124724124752%_
                  _%hd124721124742%_)
                 (_%g124716124731%_ _%g124717124735%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g124716124731%_
                                                  _%g124717124735%_))))
                                         (_%g124716124731%_
                                          _%g124717124735%_)))))
                             (_%g124715124784%_
                              (list _%tgt124678%_ _%hd124676%_)))
                           (let* ((_%g124790124805%_
                                   (lambda (_%g124791124801%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g124791124801%_)))
                                  (_%g124789124850%_
                                   (lambda (_%g124791124809%_)
                                     (if (gx#stx-pair? _%g124791124809%_)
                                         (let ((_%e124794124812%_
                                                (gx#syntax-e
                                                 _%g124791124809%_)))
                                           (let ((_%hd124795124816%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e124794124812%_)))
                                                 (_%tl124796124819%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e124794124812%_))))
                                             (if (gx#stx-pair?
                                                  _%tl124796124819%_)
                                                 (let ((_%e124797124822%_
                                                        (gx#syntax-e
                                                         _%tl124796124819%_)))
                                                   (let ((_%hd124798124826%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e124797124822%_)))
                                                         (_%tl124799124829%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e124797124822%_))))
                                                     (if (gx#stx-null?
                                                          _%tl124799124829%_)
                                                         ((lambda (_%L124832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L124834%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L124832%_ (cons _%L124834%_ '()))
                                      '())
                                (cons _%K124679%_ '()))))
                  _%hd124798124826%_
                  _%hd124795124816%_)
                 (_%g124790124805%_ _%g124791124809%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g124790124805%_
                                                  _%g124791124809%_))))
                                         (_%g124790124805%_
                                          _%g124791124809%_)))))
                             (_%g124789124850%_
                              (list _%tgt124678%_ _%hd124676%_)))))
                   (if (gx#stx-null? _%hd124676%_)
                       (let* ((_%g124856124864%_
                               (lambda (_%g124857124860%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g124857124860%_)))
                              (_%g124855124883%_
                               (lambda (_%g124857124868%_)
                                 ((lambda (_%L124871%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L124871%_ '()))
                                                (cons _%K124679%_
                                                      (cons _%E124671%_
                                                            '())))))
                                  _%g124857124868%_))))
                         (_%g124855124883%_ _%tgt124678%_))
                       (if (gx#stx-datum? _%hd124676%_)
                           (let* ((_%g124889124908%_
                                   (lambda (_%g124890124904%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g124890124904%_)))
                                  (_%g124888124967%_
                                   (lambda (_%g124890124912%_)
                                     (if (gx#stx-pair? _%g124890124912%_)
                                         (let ((_%e124894124915%_
                                                (gx#syntax-e
                                                 _%g124890124912%_)))
                                           (let ((_%hd124895124919%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e124894124915%_)))
                                                 (_%tl124896124922%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e124894124915%_))))
                                             (if (gx#stx-pair?
                                                  _%tl124896124922%_)
                                                 (let ((_%e124897124925%_
                                                        (gx#syntax-e
                                                         _%tl124896124922%_)))
                                                   (let ((_%hd124898124929%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e124897124925%_)))
                                                         (_%tl124899124932%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e124897124925%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl124899124932%_)
                                                         (let ((_%e124900124935%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl124899124932%_)))
                   (let ((_%hd124901124939%_
                          (let ()
                            (declare (not safe))
                            (##car _%e124900124935%_)))
                         (_%tl124902124942%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e124900124935%_))))
                     (if (gx#stx-null? _%tl124902124942%_)
                         ((lambda (_%L124945%_ _%L124947%_ _%L124948%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L124945%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L124948%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L124947%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K124679%_
                                              (cons _%E124671%_ '())))))
                          _%hd124901124939%_
                          _%hd124898124929%_
                          _%hd124895124919%_)
                         (_%g124889124908%_ _%g124890124912%_))))
                 (_%g124889124908%_ _%g124890124912%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g124889124908%_
                                                  _%g124890124912%_))))
                                         (_%g124889124908%_
                                          _%g124890124912%_)))))
                             (_%g124888124967%_
                              (list _%tgt124678%_
                                    _%hd124676%_
                                    (let ((_%e124971%_
                                           (gx#stx-e _%hd124676%_)))
                                      (if (or (keyword? _%e124971%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e124971%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e124971%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx124121%_
                            _%where124666%_
                            _%hd124676%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx125411125412%_)
                                                    (let ((_%e124686124993%_
                                                           (gx#syntax-e
                                                            _%__stx125411125412%_)))
                                                      (let ((_%tl124688125000%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e124686124993%_)))
                    (_%hd124687124997%_
                     (let () (declare (not safe)) (##car _%e124686124993%_))))
                (_%__kont125414125415%_
                 _%tl124688125000%_
                 _%hd124687124997%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont125416125417%_)))))))
                                  (_%recur124673%_
                                   _%hd124668%_
                                   _%tgt124273%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender124669%_
                                               (cons _%body124670%_
                                                     (cons _%E124671%_
                                                           '()))))))))
                             (_%generate-clauses124281%_
                              (lambda (_%clauses124404%_)
                                (let _%lp124407%_ ((_%rest124410%_
                                                    _%clauses124404%_)
                                                   (_%E124412%_
                                                    (gx#genident 'E))
                                                   (_%r124413%_ '()))
                                  (let* ((_%__stx125447125448%_ _%rest124410%_)
                                         (_%g124416124428%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx125447125448%_))))
                                    (let ((_%__kont125450125451%_
                                           (lambda (_%L124493%_ _%L124495%_)
                                             (let* ((_%__stx125427125428%_
                                                     _%L124495%_)
                                                    (_%g124507124518%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx125427125428%_))))
                                               (let ((_%__kont125430125431%_
                                                      (lambda (_%L124647%_)
                                                        (if (gx#stx-null?
                                                             _%L124493%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L124647%_)
                             (not (gx#stx-null? _%L124647%_)))
                        (cons (cons _%E124412%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L124647%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L124495%_))
                                          '()))
                              _%r124413%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx124121%_
                         _%L124495%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx124121%_
                     _%L124495%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont125432125433%_
                                                      (lambda ()
                                                        (let* ((_%g124529124537%_
                                                                (lambda (_%g124530124533%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g124530124533%_)))
                       (_%g124528124626%_
                        (lambda (_%g124530124541%_)
                          ((lambda (_%L124544%_)
                             (let* ((_%g124560124568%_
                                     (lambda (_%g124561124564%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g124561124564%_)))
                                    (_%g124559124622%_
                                     (lambda (_%g124561124572%_)
                                       ((lambda (_%L124575%_)
                                          (let* ((_%g124588124596%_
                                                  (lambda (_%g124589124592%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g124589124592%_)))
                                                 (_%g124587124618%_
                                                  (lambda (_%g124589124600%_)
                                                    ((lambda (_%L124603%_)
                                                       (_%lp124407%_
                                                        _%L124493%_
                                                        _%L124544%_
                                                        (cons (cons _%E124412%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L124603%_ '()))
                      _%r124413%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g124589124600%_))))
                                            (_%g124587124618%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L124575%_
                                                                '())))
                                              (gx#stx-source _%L124495%_)))))
                                        _%g124561124572%_))))
                               (_%g124559124622%_
                                (_%generate-clause124278%_
                                 _%L124495%_
                                 (cons _%L124544%_ '())))))
                           _%g124530124541%_))))
                  (_%g124528124626%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx125427125428%_)
                                                     (let ((_%e124510124637%_
                                                            (gx#syntax-e
                                                             _%__stx125427125428%_)))
                                                       (let ((_%tl124512124644%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e124510124637%_)))
                     (_%hd124511124641%_
                      (let () (declare (not safe)) (##car _%e124510124637%_))))
                 (if (gx#identifier? _%hd124511124641%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g125484_|
                          _%hd124511124641%_)
                         (_%__kont125430125431%_ _%tl124512124644%_)
                         (_%__kont125432125433%_))
                     (_%__kont125432125433%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont125432125433%_))))))
                                          (_%__kont125452125453%_
                                           (lambda ()
                                             (let* ((_%g124439124447%_
                                                     (lambda (_%g124440124443%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g124440124443%_)))
                                                    (_%g124438124472%_
                                                     (lambda (_%g124440124451%_)
                                                       ((lambda (_%L124454%_)
                                                          (cons (cons _%E124412%_
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
                                 (cons _%L124454%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx124121%_))
                                    '()))
                        _%r124413%_))
                _%g124440124451%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g124438124472%_
                                                _%tgt124273%_)))))
                                      (if (gx#stx-pair? _%__stx125447125448%_)
                                          (let ((_%e124420124483%_
                                                 (gx#syntax-e
                                                  _%__stx125447125448%_)))
                                            (let ((_%tl124422124490%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e124420124483%_)))
                                                  (_%hd124421124487%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e124420124483%_))))
                                              (_%__kont125450125451%_
                                               _%tl124422124490%_
                                               _%hd124421124487%_)))
                                          (_%__kont125452125453%_))))))))
                      (let* ((_%bind124283%_
                              (_%generate-clauses124281%_ _%clauses124276%_))
                             (_%g124286124303%_
                              (lambda (_%g124287124299%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g124287124299%_)))
                             (_%g124285124400%_
                              (lambda (_%g124287124307%_)
                                (if (gx#stx-pair/null? _%g124287124307%_)
                                    (let ((_g125485_
                                           (gx#syntax-split-splice
                                            _%g124287124307%_
                                            '0)))
                                      (begin
                                        (let ((_g125486_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g125485_)
                                                     (##values-length
                                                      _g125485_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g125486_ 2)))
                                              (error "Context expects 2 values"
                                                     _g125486_)))
                                        (let ((_%target124289124310%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g125485_ 0)))
                                              (_%tl124291124313%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g125485_ 1))))
                                          (if (gx#stx-null? _%tl124291124313%_)
                                              (letrec ((_%loop124292124316%_
                                                        (lambda (_%hd124290124320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try124296124323%_)
                  (if (gx#stx-pair? _%hd124290124320%_)
                      (let ((_%e124293124326%_
                             (gx#syntax-e _%hd124290124320%_)))
                        (let ((_%lp-hd124294124330%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e124293124326%_)))
                              (_%lp-tl124295124333%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e124293124326%_))))
                          (_%loop124292124316%_
                           _%lp-tl124295124333%_
                           (cons _%lp-hd124294124330%_
                                 _%bind-try124296124323%_))))
                      (let ((_%bind-try124297124336%_
                             (reverse _%bind-try124296124323%_)))
                        ((lambda (_%L124340%_)
                           (let* ((_%g124358124366%_
                                   (lambda (_%g124359124362%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g124359124362%_)))
                                  (_%g124357124396%_
                                   (lambda (_%g124359124370%_)
                                     ((lambda (_%L124373%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp125487
                                                           (lambda (_%g124387124390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g124388124393%_)
                     (cons _%g124387124390%_ _%g124388124393%_))))
              (declare (not safe))
              (__foldr1 __tmp125487 '() _%L124340%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L124373%_
                                                                '())
                                                          '()))))
                                      _%g124359124370%_))))
                             (_%g124357124396%_ (car (last _%bind124283%_)))))
                         _%bind-try124297124336%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop124292124316%_
                                                 _%target124289124310%_
                                                 '()))
                                              (_%g124286124303%_
                                               _%g124287124307%_)))))
                                    (_%g124286124303%_ _%g124287124307%_)))))
                        (_%g124285124400%_ _%bind124283%_))))))
          (let* ((_%g124127124146%_
                  (lambda (_%g124128124142%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g124128124142%_)))
                 (_%g124126124269%_
                  (lambda (_%g124128124150%_)
                    (if (gx#stx-pair? _%g124128124150%_)
                        (let ((_%e124132124153%_
                               (gx#syntax-e _%g124128124150%_)))
                          (let ((_%hd124133124157%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e124132124153%_)))
                                (_%tl124134124160%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e124132124153%_))))
                            (if (gx#stx-pair? _%tl124134124160%_)
                                (let ((_%e124135124163%_
                                       (gx#syntax-e _%tl124134124160%_)))
                                  (let ((_%hd124136124167%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e124135124163%_)))
                                        (_%tl124137124170%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e124135124163%_))))
                                    (if (gx#stx-pair? _%tl124137124170%_)
                                        (let ((_%e124138124173%_
                                               (gx#syntax-e
                                                _%tl124137124170%_)))
                                          (let ((_%hd124139124177%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e124138124173%_)))
                                                (_%tl124140124180%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e124138124173%_))))
                                            ((lambda (_%L124183%_
                                                      _%L124185%_
                                                      _%L124186%_)
                                               (if (and (gx#identifier-list?
                                                         _%L124185%_)
                                                        (gx#stx-list?
                                                         _%L124183%_))
                                                   (let* ((_%g124204124212%_
                                                           (lambda (_%g124205124208%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g124205124208%_)))
                                                          (_%g124203124265%_
                                                           (lambda (_%g124205124216%_)
                                                             ((lambda (_%L124219%_)
                                                                (let* ((_%g124231124239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g124232124235%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g124232124235%_)))
                               (_%g124230124261%_
                                (lambda (_%g124232124243%_)
                                  ((lambda (_%L124246%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L124219%_
                                                             (cons _%L124186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L124246%_ '()))))
                                   _%g124232124243%_))))
                          (_%g124230124261%_
                           (_%generate124124%_
                            _%L124219%_
                            (gx#syntax->list _%L124185%_)
                            _%L124183%_))))
                      _%g124205124216%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g124203124265%_
                                                      (gx#genident 'e)))
                                                   (_%g124127124146%_
                                                    _%g124128124150%_)))
                                             _%tl124140124180%_
                                             _%hd124139124177%_
                                             _%hd124136124167%_)))
                                        (_%g124127124146%_
                                         _%g124128124150%_))))
                                (_%g124127124146%_ _%g124128124150%_))))
                        (_%g124127124146%_ _%g124128124150%_)))))
            (_%g124126124269%_ _%stx124121%_)))))))
