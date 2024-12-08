(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g91350_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g91360_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx84310%_)
        (let* ((_%g8431484332%_
                (lambda (_%g8431584328%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8431584328%_)))
               (_%g8431384388%_
                (lambda (_%g8431584336%_)
                  (if (gx#stx-pair? _%g8431584336%_)
                      (let ((_%e8431884339%_ (gx#syntax-e _%g8431584336%_)))
                        (let ((_%hd8431984343%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8431884339%_)))
                              (_%tl8432084346%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8431884339%_))))
                          (if (gx#stx-pair? _%tl8432084346%_)
                              (let ((_%e8432184349%_
                                     (gx#syntax-e _%tl8432084346%_)))
                                (let ((_%hd8432284353%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8432184349%_)))
                                      (_%tl8432384356%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8432184349%_))))
                                  (if (gx#stx-pair? _%tl8432384356%_)
                                      (let ((_%e8432484359%_
                                             (gx#syntax-e _%tl8432384356%_)))
                                        (let ((_%hd8432584363%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8432484359%_)))
                                              (_%tl8432684366%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8432484359%_))))
                                          (if (gx#stx-null? _%tl8432684366%_)
                                              ((lambda (_%L84369%_ _%L84371%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L84371%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L84369%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8432584363%_
                                               _%hd8432284353%_)
                                              (_%g8431484332%_
                                               _%g8431584336%_))))
                                      (_%g8431484332%_ _%g8431584336%_))))
                              (_%g8431484332%_ _%g8431584336%_))))
                      (_%g8431484332%_ _%g8431584336%_)))))
          (_%g8431384388%_ _%$stx84310%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx84392%_)
        (let* ((_%g8439684410%_
                (lambda (_%g8439784406%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8439784406%_)))
               (_%g8439584451%_
                (lambda (_%g8439784414%_)
                  (if (gx#stx-pair? _%g8439784414%_)
                      (let ((_%e8439984417%_ (gx#syntax-e _%g8439784414%_)))
                        (let ((_%hd8440084421%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8439984417%_)))
                              (_%tl8440184424%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8439984417%_))))
                          (if (gx#stx-pair? _%tl8440184424%_)
                              (let ((_%e8440284427%_
                                     (gx#syntax-e _%tl8440184424%_)))
                                (let ((_%hd8440384431%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8440284427%_)))
                                      (_%tl8440484434%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8440284427%_))))
                                  (if (gx#stx-null? _%tl8440484434%_)
                                      ((lambda (_%L84437%_)
                                         (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'declare)
                         (cons (cons (gx#datum->syntax '#f 'not)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'interrupts-enabled)
                                           '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'let)
                               (cons (gx#datum->syntax '#f 'again)
                                     (cons '()
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'unless)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##fx=)
                           (cons (cons (gx#datum->syntax '#f '##vector-cas!)
                                       (cons _%L84437%_
                                             (cons '0
                                                   (cons '1 (cons '0 '())))))
                                 (cons '0 '())))
                     (cons (cons (gx#datum->syntax '#f '##thread-yield!) '())
                           (cons (cons (gx#datum->syntax '#f 'again) '())
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd8440384431%_)
                                      (_%g8439684410%_ _%g8439784414%_))))
                              (_%g8439684410%_ _%g8439784414%_))))
                      (_%g8439684410%_ _%g8439784414%_)))))
          (_%g8439584451%_ _%$stx84392%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx84455%_)
        (let* ((_%g8445984473%_
                (lambda (_%g8446084469%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8446084469%_)))
               (_%g8445884514%_
                (lambda (_%g8446084477%_)
                  (if (gx#stx-pair? _%g8446084477%_)
                      (let ((_%e8446284480%_ (gx#syntax-e _%g8446084477%_)))
                        (let ((_%hd8446384484%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8446284480%_)))
                              (_%tl8446484487%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8446284480%_))))
                          (if (gx#stx-pair? _%tl8446484487%_)
                              (let ((_%e8446584490%_
                                     (gx#syntax-e _%tl8446484487%_)))
                                (let ((_%hd8446684494%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8446584490%_)))
                                      (_%tl8446784497%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8446584490%_))))
                                  (if (gx#stx-null? _%tl8446784497%_)
                                      ((lambda (_%L84500%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L84500%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd8446684494%_)
                                      (_%g8445984473%_ _%g8446084477%_))))
                              (_%g8445984473%_ _%g8446084477%_))))
                      (_%g8445984473%_ _%g8446084477%_)))))
          (_%g8445884514%_ _%$stx84455%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx84518%_)
        (let* ((_%g8452284532%_
                (lambda (_%g8452384528%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8452384528%_)))
               (_%g8452184553%_
                (lambda (_%g8452384536%_)
                  (if (gx#stx-pair? _%g8452384536%_)
                      (let ((_%e8452484539%_ (gx#syntax-e _%g8452384536%_)))
                        (let ((_%hd8452584543%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8452484539%_)))
                              (_%tl8452684546%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8452484539%_))))
                          (if (gx#stx-null? _%tl8452684546%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g8452284532%_ _%g8452384536%_))))
                      (_%g8452284532%_ _%g8452384536%_)))))
          (_%g8452184553%_ _%$stx84518%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx84557%_)
        (let* ((_%g8456184579%_
                (lambda (_%g8456284575%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8456284575%_)))
               (_%g8456084634%_
                (lambda (_%g8456284583%_)
                  (if (gx#stx-pair? _%g8456284583%_)
                      (let ((_%e8456584586%_ (gx#syntax-e _%g8456284583%_)))
                        (let ((_%hd8456684590%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8456584586%_)))
                              (_%tl8456784593%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8456584586%_))))
                          (if (gx#stx-pair? _%tl8456784593%_)
                              (let ((_%e8456884596%_
                                     (gx#syntax-e _%tl8456784593%_)))
                                (let ((_%hd8456984600%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8456884596%_)))
                                      (_%tl8457084603%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8456884596%_))))
                                  (if (gx#stx-pair? _%tl8457084603%_)
                                      (let ((_%e8457184606%_
                                             (gx#syntax-e _%tl8457084603%_)))
                                        (let ((_%hd8457284610%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8457184606%_)))
                                              (_%tl8457384613%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8457184606%_))))
                                          (if (gx#stx-null? _%tl8457384613%_)
                                              ((lambda (_%L84616%_ _%L84618%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L84618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'key)
                                 (cons (gx#datum->syntax '#f 'lst)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'default)
                                                   (cons '#f '()))
                                             '()))))
                     (cons (cons (gx#datum->syntax '#f 'cond)
                                 (cons (cons (cons (gx#datum->syntax '#f 'and)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'pair?)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lst)
                             '()))
                 (cons (cons _%L84616%_
                             (cons (gx#datum->syntax '#f 'key)
                                   (cons (gx#datum->syntax '#f 'lst) '())))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (gx#datum->syntax '#f '=>)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'cdr)
                                                         '())))
                                       (cons (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'procedure?)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'default)
                                                               '()))
                                                   (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              ':-)
                             (cons (gx#datum->syntax '#f 'default)
                                   (cons (gx#datum->syntax '#f ':procedure)
                                         '())))
                       (cons (gx#datum->syntax '#f 'key) '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'else)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'default)
                                                               '()))
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8457284610%_
                                               _%hd8456984600%_)
                                              (_%g8456184579%_
                                               _%g8456284583%_))))
                                      (_%g8456184579%_ _%g8456284583%_))))
                              (_%g8456184579%_ _%g8456284583%_))))
                      (_%g8456184579%_ _%g8456284583%_)))))
          (_%g8456084634%_ _%$stx84557%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx84638%_)
        (let* ((_%g8464284660%_
                (lambda (_%g8464384656%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8464384656%_)))
               (_%g8464184715%_
                (lambda (_%g8464384664%_)
                  (if (gx#stx-pair? _%g8464384664%_)
                      (let ((_%e8464684667%_ (gx#syntax-e _%g8464384664%_)))
                        (let ((_%hd8464784671%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8464684667%_)))
                              (_%tl8464884674%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8464684667%_))))
                          (if (gx#stx-pair? _%tl8464884674%_)
                              (let ((_%e8464984677%_
                                     (gx#syntax-e _%tl8464884674%_)))
                                (let ((_%hd8465084681%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8464984677%_)))
                                      (_%tl8465184684%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8464984677%_))))
                                  (if (gx#stx-pair? _%tl8465184684%_)
                                      (let ((_%e8465284687%_
                                             (gx#syntax-e _%tl8465184684%_)))
                                        (let ((_%hd8465384691%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8465284687%_)))
                                              (_%tl8465484694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8465284687%_))))
                                          (if (gx#stx-null? _%tl8465484694%_)
                                              ((lambda (_%L84697%_ _%L84699%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L84699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'key)
                                 (cons (gx#datum->syntax '#f 'lst)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'default)
                                                   (cons '#f '()))
                                             '()))))
                     (cons (cons (gx#datum->syntax '#f 'let)
                                 (cons (gx#datum->syntax '#f 'lp)
                                       (cons (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'rest)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'lst)
                                                               '()))
                                                   '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'match)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'rest)
                                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '@list)
                                         (cons (gx#datum->syntax '#f 'k)
                                               (cons (gx#datum->syntax '#f 'v)
                                                     (gx#datum->syntax
                                                      '#f
                                                      'rest))))
                                   (cons (cons (gx#datum->syntax '#f 'if)
                                               (cons (cons _%L84697%_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'k)
                         (cons (gx#datum->syntax '#f 'key) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'v)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'lp)
                               (cons (gx#datum->syntax '#f 'rest) '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax '#f 'if)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'procedure?)
                         (cons (gx#datum->syntax '#f 'default) '()))
                   (cons (cons (cons (gx#datum->syntax '#f ':-)
                                     (cons (gx#datum->syntax '#f 'default)
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  ':procedure)
                                                 '())))
                               (cons (gx#datum->syntax '#f 'key) '()))
                         (cons (gx#datum->syntax '#f 'default) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8465384691%_
                                               _%hd8465084681%_)
                                              (_%g8464284660%_
                                               _%g8464384664%_))))
                                      (_%g8464284660%_ _%g8464384664%_))))
                              (_%g8464284660%_ _%g8464384664%_))))
                      (_%g8464284660%_ _%g8464384664%_)))))
          (_%g8464184715%_ _%$stx84638%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx84719%_)
        (let* ((_%g8472384741%_
                (lambda (_%g8472484737%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8472484737%_)))
               (_%g8472284796%_
                (lambda (_%g8472484745%_)
                  (if (gx#stx-pair? _%g8472484745%_)
                      (let ((_%e8472784748%_ (gx#syntax-e _%g8472484745%_)))
                        (let ((_%hd8472884752%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8472784748%_)))
                              (_%tl8472984755%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8472784748%_))))
                          (if (gx#stx-pair? _%tl8472984755%_)
                              (let ((_%e8473084758%_
                                     (gx#syntax-e _%tl8472984755%_)))
                                (let ((_%hd8473184762%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8473084758%_)))
                                      (_%tl8473284765%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8473084758%_))))
                                  (if (gx#stx-pair? _%tl8473284765%_)
                                      (let ((_%e8473384768%_
                                             (gx#syntax-e _%tl8473284765%_)))
                                        (let ((_%hd8473484772%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8473384768%_)))
                                              (_%tl8473584775%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8473384768%_))))
                                          (if (gx#stx-null? _%tl8473584775%_)
                                              ((lambda (_%L84778%_ _%L84780%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L84780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'el)
                                 (cons (gx#datum->syntax '#f 'lst) '())))
                     (cons (cons (gx#datum->syntax '#f 'let)
                                 (cons (gx#datum->syntax '#f 'lp)
                                       (cons (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'rest)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'lst)
                                                               '()))
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'r)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '@list)
                                   '())
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'match)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'rest)
                                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '@list)
                                         (cons (gx#datum->syntax '#f 'hd)
                                               (gx#datum->syntax '#f 'rest)))
                                   (cons (cons (gx#datum->syntax '#f 'if)
                                               (cons (cons _%L84778%_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'el)
                         (cons (gx#datum->syntax '#f 'hd) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'foldl1)
                         (cons (gx#datum->syntax '#f 'cons)
                               (cons (gx#datum->syntax '#f 'rest)
                                     (cons (gx#datum->syntax '#f 'r) '()))))
                   (cons (cons (gx#datum->syntax '#f 'lp)
                               (cons (gx#datum->syntax '#f 'rest)
                                     (cons (cons (gx#datum->syntax '#f 'cons)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'hd)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'r)
                                                             '())))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (gx#datum->syntax '#f 'lst)
                                               '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8473484772%_
                                               _%hd8473184762%_)
                                              (_%g8472384741%_
                                               _%g8472484745%_))))
                                      (_%g8472384741%_ _%g8472484745%_))))
                              (_%g8472384741%_ _%g8472484745%_))))
                      (_%g8472384741%_ _%g8472484745%_)))))
          (_%g8472284796%_ _%$stx84719%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx84800%_)
        (let* ((_%g8480484815%_
                (lambda (_%g8480584811%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8480584811%_)))
               (_%g8480384844%_
                (lambda (_%g8480584819%_)
                  (if (gx#stx-pair? _%g8480584819%_)
                      (let ((_%e8480784822%_ (gx#syntax-e _%g8480584819%_)))
                        (let ((_%hd8480884826%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8480784822%_)))
                              (_%tl8480984829%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8480784822%_))))
                          ((lambda (_%L84832%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L84832%_)))
                           _%tl8480984829%_)))
                      (_%g8480484815%_ _%g8480584819%_)))))
          (_%g8480384844%_ _%$stx84800%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx84848%_)
        (let* ((_%__stx9090190902%_ _%$stx84848%_)
               (_%g8485985073%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9090190902%_))))
          (let ((_%__kont9090490905%_
                 (lambda (_%L85926%_
                          _%L85928%_
                          _%L85929%_
                          _%L85930%_
                          _%L85931%_)
                   (cons _%L85931%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8596185964%_
                                                     _%g8596285967%_)
                                              (cons _%g8596185964%_
                                                    _%g8596285967%_))
                                            '()
                                            _%L85929%_)
                                           (cons _%L85930%_
                                                 (cons _%L85928%_
                                                       (cons _%L85926%_
                                                             '())))))))))
                (_%__kont9090890909%_
                 (lambda (_%L85779%_ _%L85781%_ _%L85782%_ _%L85783%_)
                   (cons _%L85783%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8580685809%_
                                                     _%g8580785812%_)
                                              (cons _%g8580685809%_
                                                    _%g8580785812%_))
                                            '()
                                            _%L85781%_)
                                           (cons _%L85782%_
                                                 (cons _%L85779%_
                                                       (cons _%L85779%_
                                                             '())))))))))
                (_%__kont9091290913%_
                 (lambda (_%L85682%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L85682%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont9091490915%_
                 (lambda (_%L85605%_
                          _%L85607%_
                          _%L85608%_
                          _%L85609%_
                          _%L85610%_
                          _%L85611%_)
                   (cons _%L85611%_
                         (cons '2
                               (cons (cons (cons _%L85609%_
                                                 (cons _%L85608%_ '()))
                                           _%L85610%_)
                                     (cons _%L85607%_ _%L85605%_))))))
                (_%__kont9091690917%_
                 (lambda (_%L85486%_
                          _%L85488%_
                          _%L85489%_
                          _%L85490%_
                          _%L85491%_)
                   (cons _%L85491%_
                         (cons '2
                               (cons (cons (cons _%L85489%_
                                                 (cons _%L85489%_ '()))
                                           _%L85490%_)
                                     (cons _%L85488%_ _%L85486%_))))))
                (_%__kont9091890919%_
                 (lambda (_%L85403%_ _%L85405%_ _%L85406%_)
                   (cons _%L85406%_
                         (cons '3 (cons '() (cons _%L85405%_ _%L85403%_))))))
                (_%__kont9092090921%_
                 (lambda (_%L85324%_
                          _%L85326%_
                          _%L85327%_
                          _%L85328%_
                          _%L85329%_)
                   (cons _%L85329%_
                         (cons '3
                               (cons (cons _%L85327%_ _%L85328%_)
                                     (cons _%L85326%_ _%L85324%_))))))
                (_%__kont9092290923%_
                 (lambda (_%L85208%_
                          _%L85210%_
                          _%L85211%_
                          _%L85212%_
                          _%L85213%_
                          _%L85214%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L85211%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L85208%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f 'tagval)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'DBG-helper)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'tagval)
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons (__foldr1
                                              (lambda (_%g8524885251%_
                                                       _%g8524985254%_)
                                                (cons _%g8524885251%_
                                                      _%g8524985254%_))
                                              '()
                                              _%L85213%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (__foldr1
                                              (lambda (_%g8524685257%_
                                                       _%g8524785260%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g8524685257%_ '())))
              _%g8524785260%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L85212%_))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L85210%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9125291253%_
                    (lambda (_%e8502985080%_
                             _%hd8503085084%_
                             _%tl8503185087%_
                             _%e8503285090%_
                             _%hd8503385094%_
                             _%tl8503485097%_
                             _%e8503585100%_
                             _%e8503685104%_
                             _%hd8503785108%_
                             _%tl8503885111%_
                             _%__splice9092490925%_
                             _%target8503985114%_
                             _%tl8504185117%_)
                      (letrec ((_%loop8504285120%_
                                (lambda (_%hd8504085124%_
                                         _%exprs8504685127%_
                                         _%names8504785129%_)
                                  (if (gx#stx-pair? _%hd8504085124%_)
                                      (let ((_%e8504385132%_
                                             (gx#syntax-e _%hd8504085124%_)))
                                        (let ((_%lp-tl8504585139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8504385132%_)))
                                              (_%lp-hd8504485136%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8504385132%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd8504485136%_)
                                              (let ((_%e8506285142%_
                                                     (gx#syntax-e
                                                      _%lp-hd8504485136%_)))
                                                (let ((_%tl8506485149%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8506285142%_)))
                                                      (_%hd8506385146%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8506285142%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8506485149%_)
                                                      (let ((_%e8506585152%_
                                                             (gx#syntax-e
                                                              _%tl8506485149%_)))
                                                        (let ((_%tl8506785159%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8506585152%_)))
                      (_%hd8506685156%_
                       (let () (declare (not safe)) (##car _%e8506585152%_))))
                  (if (gx#stx-null? _%tl8506785159%_)
                      (_%loop8504285120%_
                       _%lp-tl8504585139%_
                       (cons _%hd8506685156%_ _%exprs8504685127%_)
                       (cons _%hd8506385146%_ _%names8504785129%_))
                      (let () (declare (not safe)) (_%g8485985073%_)))))
              (let () (declare (not safe)) (_%g8485985073%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g8485985073%_)))))
                                      (let ((_%names8504985165%_
                                             (reverse _%names8504785129%_))
                                            (_%exprs8504885162%_
                                             (reverse _%exprs8504685127%_)))
                                        (if (gx#stx-pair? _%tl8503885111%_)
                                            (let ((_%e8505085168%_
                                                   (gx#syntax-e
                                                    _%tl8503885111%_)))
                                              (let ((_%tl8505285175%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8505085168%_)))
                                                    (_%hd8505185172%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8505085168%_))))
                                                (if (gx#stx-null?
                                                     _%hd8505185172%_)
                                                    (if (gx#stx-pair?
                                                         _%tl8505285175%_)
                                                        (let ((_%e8505385178%_
                                                               (gx#syntax-e
                                                                _%tl8505285175%_)))
                                                          (let ((_%tl8505585185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8505385178%_)))
                        (_%hd8505485182%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8505385178%_))))
                    (if (gx#stx-pair? _%tl8505585185%_)
                        (let ((_%e8505685188%_ (gx#syntax-e _%tl8505585185%_)))
                          (let ((_%tl8505885195%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8505685188%_)))
                                (_%hd8505785192%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8505685188%_))))
                            (if (gx#stx-pair? _%tl8505885195%_)
                                (let ((_%e8505985198%_
                                       (gx#syntax-e _%tl8505885195%_)))
                                  (let ((_%tl8506185205%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8505985198%_)))
                                        (_%hd8506085202%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8505985198%_))))
                                    (if (gx#stx-null? _%tl8506185205%_)
                                        (_%__kont9092290923%_
                                         _%hd8506085202%_
                                         _%hd8505785192%_
                                         _%hd8505485182%_
                                         _%exprs8504885162%_
                                         _%names8504985165%_
                                         _%hd8503085084%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8485985073%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8485985073%_)))))
                        (let () (declare (not safe)) (_%g8485985073%_)))))
                (let () (declare (not safe)) (_%g8485985073%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8485985073%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8485985073%_))))))))
                        (_%loop8504285120%_ _%target8503985114%_ '() '()))))
                   (_%__match9103091031%_
                    (lambda (_%e8490185705%_
                             _%hd8490285709%_
                             _%tl8490385712%_
                             _%e8490485715%_
                             _%hd8490585719%_
                             _%tl8490685722%_
                             _%e8490785725%_
                             _%e8490885729%_
                             _%hd8490985733%_
                             _%tl8491085736%_
                             _%__splice9091090911%_
                             _%target8491185739%_
                             _%tl8491385742%_
                             _%e8492085745%_
                             _%hd8492185749%_
                             _%tl8492285752%_)
                      (letrec ((_%loop8491485755%_
                                (lambda (_%hd8491285759%_ _%exprs8491885762%_)
                                  (if (gx#stx-pair? _%hd8491285759%_)
                                      (let ((_%e8491585765%_
                                             (gx#syntax-e _%hd8491285759%_)))
                                        (let ((_%lp-tl8491785772%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8491585765%_)))
                                              (_%lp-hd8491685769%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8491585765%_))))
                                          (_%loop8491485755%_
                                           _%lp-tl8491785772%_
                                           (cons _%lp-hd8491685769%_
                                                 _%exprs8491885762%_))))
                                      (let ((_%exprs8491985775%_
                                             (reverse _%exprs8491885762%_)))
                                        (_%__kont9090890909%_
                                         _%hd8492185749%_
                                         _%exprs8491985775%_
                                         _%hd8490985733%_
                                         _%hd8490285709%_))))))
                        (_%loop8491485755%_ _%target8491185739%_ '()))))
                   (_%__match9099090991%_
                    (lambda (_%e8486685822%_
                             _%hd8486785826%_
                             _%tl8486885829%_
                             _%e8486985832%_
                             _%hd8487085836%_
                             _%tl8487185839%_
                             _%e8487285842%_
                             _%e8487385846%_
                             _%hd8487485850%_
                             _%tl8487585853%_
                             _%__splice9090690907%_
                             _%target8487685856%_
                             _%tl8487885859%_
                             _%e8488585862%_
                             _%hd8488685866%_
                             _%tl8488785869%_
                             _%e8488885872%_
                             _%hd8488985876%_
                             _%tl8489085879%_
                             _%e8489185882%_
                             _%hd8489285886%_
                             _%tl8489385889%_
                             _%e8489485892%_
                             _%hd8489585896%_
                             _%tl8489685899%_)
                      (letrec ((_%loop8487985902%_
                                (lambda (_%hd8487785906%_ _%exprs8488385909%_)
                                  (if (gx#stx-pair? _%hd8487785906%_)
                                      (let ((_%e8488085912%_
                                             (gx#syntax-e _%hd8487785906%_)))
                                        (let ((_%lp-tl8488285919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8488085912%_)))
                                              (_%lp-hd8488185916%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8488085912%_))))
                                          (_%loop8487985902%_
                                           _%lp-tl8488285919%_
                                           (cons _%lp-hd8488185916%_
                                                 _%exprs8488385909%_))))
                                      (let ((_%exprs8488485922%_
                                             (reverse _%exprs8488385909%_)))
                                        (_%__kont9090490905%_
                                         _%hd8489585896%_
                                         _%hd8489285886%_
                                         _%exprs8488485922%_
                                         _%hd8487485850%_
                                         _%hd8486785826%_))))))
                        (_%loop8487985902%_ _%target8487685856%_ '())))))
              (if (gx#stx-pair? _%__stx9090190902%_)
                  (let ((_%e8486685822%_ (gx#syntax-e _%__stx9090190902%_)))
                    (let ((_%tl8486885829%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e8486685822%_)))
                          (_%hd8486785826%_
                           (let ()
                             (declare (not safe))
                             (##car _%e8486685822%_))))
                      (if (gx#stx-pair? _%tl8486885829%_)
                          (let ((_%e8486985832%_
                                 (gx#syntax-e _%tl8486885829%_)))
                            (let ((_%tl8487185839%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e8486985832%_)))
                                  (_%hd8487085836%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e8486985832%_))))
                              (if (gx#stx-datum? _%hd8487085836%_)
                                  (let ((_%e8487285842%_
                                         (gx#stx-e _%hd8487085836%_)))
                                    (if (equal? _%e8487285842%_ '1)
                                        (if (gx#stx-pair? _%tl8487185839%_)
                                            (let ((_%e8487385846%_
                                                   (gx#syntax-e
                                                    _%tl8487185839%_)))
                                              (let ((_%tl8487585853%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8487385846%_)))
                                                    (_%hd8487485850%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8487385846%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl8487585853%_)
                                                    (if (let ((__tmp91349
                                                               (gx#stx-length
                                                                _%tl8487585853%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp91349
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice9090690907%_
                       (gx#syntax-split-splice _%tl8487585853%_ '2)))
                  (let ((_%tl8487885859%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9090690907%_ '1)))
                        (_%target8487685856%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9090690907%_ '0))))
                    (if (gx#stx-pair? _%tl8487885859%_)
                        (let ((_%e8488585862%_ (gx#syntax-e _%tl8487885859%_)))
                          (let ((_%tl8488785869%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8488585862%_)))
                                (_%hd8488685866%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8488585862%_))))
                            (if (gx#stx-pair? _%hd8488685866%_)
                                (let ((_%e8488885872%_
                                       (gx#syntax-e _%hd8488685866%_)))
                                  (let ((_%tl8489085879%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8488885872%_)))
                                        (_%hd8488985876%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8488885872%_))))
                                    (if (gx#identifier? _%hd8488985876%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g91350_|
                                             _%hd8488985876%_)
                                            (if (gx#stx-pair? _%tl8489085879%_)
                                                (let ((_%e8489185882%_
                                                       (gx#syntax-e
                                                        _%tl8489085879%_)))
                                                  (let ((_%tl8489385889%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8489185882%_)))
                                                        (_%hd8489285886%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8489185882%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8489385889%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8488785869%_)
                                                            (let ((_%e8489485892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8488785869%_)))
                      (let ((_%tl8489685899%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8489485892%_)))
                            (_%hd8489585896%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8489485892%_))))
                        (if (gx#stx-null? _%tl8489685899%_)
                            (_%__match9099090991%_
                             _%e8486685822%_
                             _%hd8486785826%_
                             _%tl8486885829%_
                             _%e8486985832%_
                             _%hd8487085836%_
                             _%tl8487185839%_
                             _%e8487285842%_
                             _%e8487385846%_
                             _%hd8487485850%_
                             _%tl8487585853%_
                             _%__splice9090690907%_
                             _%target8487685856%_
                             _%tl8487885859%_
                             _%e8488585862%_
                             _%hd8488685866%_
                             _%tl8488785869%_
                             _%e8488885872%_
                             _%hd8488985876%_
                             _%tl8489085879%_
                             _%e8489185882%_
                             _%hd8489285886%_
                             _%tl8489385889%_
                             _%e8489485892%_
                             _%hd8489585896%_
                             _%tl8489685899%_)
                            (if (let ((__tmp91351
                                       (gx#stx-length _%tl8487585853%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp91351 '1))
                                (let ((_%__splice9091090911%_
                                       (gx#syntax-split-splice
                                        _%tl8487585853%_
                                        '1)))
                                  (let ((_%tl8491385742%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9091090911%_
                                            '1)))
                                        (_%target8491185739%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9091090911%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl8491385742%_)
                                        (let ((_%e8492085745%_
                                               (gx#syntax-e _%tl8491385742%_)))
                                          (let ((_%tl8492285752%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e8492085745%_)))
                                                (_%hd8492185749%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e8492085745%_))))
                                            (if (gx#stx-null? _%tl8492285752%_)
                                                (_%__match9103091031%_
                                                 _%e8486685822%_
                                                 _%hd8486785826%_
                                                 _%tl8486885829%_
                                                 _%e8486985832%_
                                                 _%hd8487085836%_
                                                 _%tl8487185839%_
                                                 _%e8487285842%_
                                                 _%e8487385846%_
                                                 _%hd8487485850%_
                                                 _%tl8487585853%_
                                                 _%__splice9091090911%_
                                                 _%target8491185739%_
                                                 _%tl8491385742%_
                                                 _%e8492085745%_
                                                 _%hd8492185749%_
                                                 _%tl8492285752%_)
                                                (if (gx#stx-null?
                                                     _%tl8487585853%_)
                                                    (_%__kont9091290913%_
                                                     _%hd8487485850%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8485985073%_))))))
                                        (if (gx#stx-null? _%tl8487585853%_)
                                            (_%__kont9091290913%_
                                             _%hd8487485850%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8485985073%_))))))
                                (if (gx#stx-null? _%tl8487585853%_)
                                    (_%__kont9091290913%_ _%hd8487485850%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8485985073%_)))))))
                    (if (let ((__tmp91352 (gx#stx-length _%tl8487585853%_)))
                          (declare (not safe))
                          (##fx>= __tmp91352 '1))
                        (let ((_%__splice9091090911%_
                               (gx#syntax-split-splice _%tl8487585853%_ '1)))
                          (let ((_%tl8491385742%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9091090911%_ '1)))
                                (_%target8491185739%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9091090911%_ '0))))
                            (if (gx#stx-pair? _%tl8491385742%_)
                                (let ((_%e8492085745%_
                                       (gx#syntax-e _%tl8491385742%_)))
                                  (let ((_%tl8492285752%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8492085745%_)))
                                        (_%hd8492185749%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8492085745%_))))
                                    (if (gx#stx-null? _%tl8492285752%_)
                                        (_%__match9103091031%_
                                         _%e8486685822%_
                                         _%hd8486785826%_
                                         _%tl8486885829%_
                                         _%e8486985832%_
                                         _%hd8487085836%_
                                         _%tl8487185839%_
                                         _%e8487285842%_
                                         _%e8487385846%_
                                         _%hd8487485850%_
                                         _%tl8487585853%_
                                         _%__splice9091090911%_
                                         _%target8491185739%_
                                         _%tl8491385742%_
                                         _%e8492085745%_
                                         _%hd8492185749%_
                                         _%tl8492285752%_)
                                        (if (gx#stx-null? _%tl8487585853%_)
                                            (_%__kont9091290913%_
                                             _%hd8487485850%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8485985073%_))))))
                                (if (gx#stx-null? _%tl8487585853%_)
                                    (_%__kont9091290913%_ _%hd8487485850%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8485985073%_))))))
                        (if (gx#stx-null? _%tl8487585853%_)
                            (_%__kont9091290913%_ _%hd8487485850%_)
                            (let () (declare (not safe)) (_%g8485985073%_)))))
                (if (let ((__tmp91353 (gx#stx-length _%tl8487585853%_)))
                      (declare (not safe))
                      (##fx>= __tmp91353 '1))
                    (let ((_%__splice9091090911%_
                           (gx#syntax-split-splice _%tl8487585853%_ '1)))
                      (let ((_%tl8491385742%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9091090911%_ '1)))
                            (_%target8491185739%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9091090911%_ '0))))
                        (if (gx#stx-pair? _%tl8491385742%_)
                            (let ((_%e8492085745%_
                                   (gx#syntax-e _%tl8491385742%_)))
                              (let ((_%tl8492285752%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8492085745%_)))
                                    (_%hd8492185749%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8492085745%_))))
                                (if (gx#stx-null? _%tl8492285752%_)
                                    (_%__match9103091031%_
                                     _%e8486685822%_
                                     _%hd8486785826%_
                                     _%tl8486885829%_
                                     _%e8486985832%_
                                     _%hd8487085836%_
                                     _%tl8487185839%_
                                     _%e8487285842%_
                                     _%e8487385846%_
                                     _%hd8487485850%_
                                     _%tl8487585853%_
                                     _%__splice9091090911%_
                                     _%target8491185739%_
                                     _%tl8491385742%_
                                     _%e8492085745%_
                                     _%hd8492185749%_
                                     _%tl8492285752%_)
                                    (if (gx#stx-null? _%tl8487585853%_)
                                        (_%__kont9091290913%_ _%hd8487485850%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8485985073%_))))))
                            (if (gx#stx-null? _%tl8487585853%_)
                                (_%__kont9091290913%_ _%hd8487485850%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8485985073%_))))))
                    (if (gx#stx-null? _%tl8487585853%_)
                        (_%__kont9091290913%_ _%hd8487485850%_)
                        (let () (declare (not safe)) (_%g8485985073%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp91354
                                                           (gx#stx-length
                                                            _%tl8487585853%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp91354 '1))
                                                    (let ((_%__splice9091090911%_
                                                           (gx#syntax-split-splice
                                                            _%tl8487585853%_
                                                            '1)))
                                                      (let ((_%tl8491385742%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9091090911%_ '1)))
                    (_%target8491185739%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9091090911%_ '0))))
                (if (gx#stx-pair? _%tl8491385742%_)
                    (let ((_%e8492085745%_ (gx#syntax-e _%tl8491385742%_)))
                      (let ((_%tl8492285752%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8492085745%_)))
                            (_%hd8492185749%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8492085745%_))))
                        (if (gx#stx-null? _%tl8492285752%_)
                            (_%__match9103091031%_
                             _%e8486685822%_
                             _%hd8486785826%_
                             _%tl8486885829%_
                             _%e8486985832%_
                             _%hd8487085836%_
                             _%tl8487185839%_
                             _%e8487285842%_
                             _%e8487385846%_
                             _%hd8487485850%_
                             _%tl8487585853%_
                             _%__splice9091090911%_
                             _%target8491185739%_
                             _%tl8491385742%_
                             _%e8492085745%_
                             _%hd8492185749%_
                             _%tl8492285752%_)
                            (if (gx#stx-null? _%tl8487585853%_)
                                (_%__kont9091290913%_ _%hd8487485850%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8485985073%_))))))
                    (if (gx#stx-null? _%tl8487585853%_)
                        (_%__kont9091290913%_ _%hd8487485850%_)
                        (let () (declare (not safe)) (_%g8485985073%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8487585853%_)
                                                        (_%__kont9091290913%_
                                                         _%hd8487485850%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8485985073%_)))))
                                            (if (let ((__tmp91355
                                                       (gx#stx-length
                                                        _%tl8487585853%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp91355 '1))
                                                (let ((_%__splice9091090911%_
                                                       (gx#syntax-split-splice
                                                        _%tl8487585853%_
                                                        '1)))
                                                  (let ((_%tl8491385742%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9091090911%_
                                                            '1)))
                                                        (_%target8491185739%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9091090911%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl8491385742%_)
                                                        (let ((_%e8492085745%_
                                                               (gx#syntax-e
                                                                _%tl8491385742%_)))
                                                          (let ((_%tl8492285752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8492085745%_)))
                        (_%hd8492185749%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8492085745%_))))
                    (if (gx#stx-null? _%tl8492285752%_)
                        (_%__match9103091031%_
                         _%e8486685822%_
                         _%hd8486785826%_
                         _%tl8486885829%_
                         _%e8486985832%_
                         _%hd8487085836%_
                         _%tl8487185839%_
                         _%e8487285842%_
                         _%e8487385846%_
                         _%hd8487485850%_
                         _%tl8487585853%_
                         _%__splice9091090911%_
                         _%target8491185739%_
                         _%tl8491385742%_
                         _%e8492085745%_
                         _%hd8492185749%_
                         _%tl8492285752%_)
                        (if (gx#stx-null? _%tl8487585853%_)
                            (_%__kont9091290913%_ _%hd8487485850%_)
                            (let () (declare (not safe)) (_%g8485985073%_))))))
                (if (gx#stx-null? _%tl8487585853%_)
                    (_%__kont9091290913%_ _%hd8487485850%_)
                    (let () (declare (not safe)) (_%g8485985073%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl8487585853%_)
                                                    (_%__kont9091290913%_
                                                     _%hd8487485850%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8485985073%_)))))
                                        (if (let ((__tmp91356
                                                   (gx#stx-length
                                                    _%tl8487585853%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp91356 '1))
                                            (let ((_%__splice9091090911%_
                                                   (gx#syntax-split-splice
                                                    _%tl8487585853%_
                                                    '1)))
                                              (let ((_%tl8491385742%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9091090911%_
                                                        '1)))
                                                    (_%target8491185739%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9091090911%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl8491385742%_)
                                                    (let ((_%e8492085745%_
                                                           (gx#syntax-e
                                                            _%tl8491385742%_)))
                                                      (let ((_%tl8492285752%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8492085745%_)))
                    (_%hd8492185749%_
                     (let () (declare (not safe)) (##car _%e8492085745%_))))
                (if (gx#stx-null? _%tl8492285752%_)
                    (_%__match9103091031%_
                     _%e8486685822%_
                     _%hd8486785826%_
                     _%tl8486885829%_
                     _%e8486985832%_
                     _%hd8487085836%_
                     _%tl8487185839%_
                     _%e8487285842%_
                     _%e8487385846%_
                     _%hd8487485850%_
                     _%tl8487585853%_
                     _%__splice9091090911%_
                     _%target8491185739%_
                     _%tl8491385742%_
                     _%e8492085745%_
                     _%hd8492185749%_
                     _%tl8492285752%_)
                    (if (gx#stx-null? _%tl8487585853%_)
                        (_%__kont9091290913%_ _%hd8487485850%_)
                        (let () (declare (not safe)) (_%g8485985073%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8487585853%_)
                                                        (_%__kont9091290913%_
                                                         _%hd8487485850%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8485985073%_))))))
                                            (if (gx#stx-null? _%tl8487585853%_)
                                                (_%__kont9091290913%_
                                                 _%hd8487485850%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8485985073%_)))))))
                                (if (let ((__tmp91357
                                           (gx#stx-length _%tl8487585853%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp91357 '1))
                                    (let ((_%__splice9091090911%_
                                           (gx#syntax-split-splice
                                            _%tl8487585853%_
                                            '1)))
                                      (let ((_%tl8491385742%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9091090911%_
                                                '1)))
                                            (_%target8491185739%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9091090911%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl8491385742%_)
                                            (let ((_%e8492085745%_
                                                   (gx#syntax-e
                                                    _%tl8491385742%_)))
                                              (let ((_%tl8492285752%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8492085745%_)))
                                                    (_%hd8492185749%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8492085745%_))))
                                                (if (gx#stx-null?
                                                     _%tl8492285752%_)
                                                    (_%__match9103091031%_
                                                     _%e8486685822%_
                                                     _%hd8486785826%_
                                                     _%tl8486885829%_
                                                     _%e8486985832%_
                                                     _%hd8487085836%_
                                                     _%tl8487185839%_
                                                     _%e8487285842%_
                                                     _%e8487385846%_
                                                     _%hd8487485850%_
                                                     _%tl8487585853%_
                                                     _%__splice9091090911%_
                                                     _%target8491185739%_
                                                     _%tl8491385742%_
                                                     _%e8492085745%_
                                                     _%hd8492185749%_
                                                     _%tl8492285752%_)
                                                    (if (gx#stx-null?
                                                         _%tl8487585853%_)
                                                        (_%__kont9091290913%_
                                                         _%hd8487485850%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8485985073%_))))))
                                            (if (gx#stx-null? _%tl8487585853%_)
                                                (_%__kont9091290913%_
                                                 _%hd8487485850%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8485985073%_))))))
                                    (if (gx#stx-null? _%tl8487585853%_)
                                        (_%__kont9091290913%_ _%hd8487485850%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8485985073%_)))))))
                        (if (let ((__tmp91358
                                   (gx#stx-length _%tl8487585853%_)))
                              (declare (not safe))
                              (##fx>= __tmp91358 '1))
                            (let ((_%__splice9091090911%_
                                   (gx#syntax-split-splice
                                    _%tl8487585853%_
                                    '1)))
                              (let ((_%tl8491385742%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9091090911%_
                                        '1)))
                                    (_%target8491185739%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9091090911%_
                                        '0))))
                                (if (gx#stx-pair? _%tl8491385742%_)
                                    (let ((_%e8492085745%_
                                           (gx#syntax-e _%tl8491385742%_)))
                                      (let ((_%tl8492285752%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8492085745%_)))
                                            (_%hd8492185749%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8492085745%_))))
                                        (if (gx#stx-null? _%tl8492285752%_)
                                            (_%__match9103091031%_
                                             _%e8486685822%_
                                             _%hd8486785826%_
                                             _%tl8486885829%_
                                             _%e8486985832%_
                                             _%hd8487085836%_
                                             _%tl8487185839%_
                                             _%e8487285842%_
                                             _%e8487385846%_
                                             _%hd8487485850%_
                                             _%tl8487585853%_
                                             _%__splice9091090911%_
                                             _%target8491185739%_
                                             _%tl8491385742%_
                                             _%e8492085745%_
                                             _%hd8492185749%_
                                             _%tl8492285752%_)
                                            (if (gx#stx-null? _%tl8487585853%_)
                                                (_%__kont9091290913%_
                                                 _%hd8487485850%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8485985073%_))))))
                                    (if (gx#stx-null? _%tl8487585853%_)
                                        (_%__kont9091290913%_ _%hd8487485850%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8485985073%_))))))
                            (if (gx#stx-null? _%tl8487585853%_)
                                (_%__kont9091290913%_ _%hd8487485850%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8485985073%_)))))))
                (if (let ((__tmp91359 (gx#stx-length _%tl8487585853%_)))
                      (declare (not safe))
                      (##fx>= __tmp91359 '1))
                    (let ((_%__splice9091090911%_
                           (gx#syntax-split-splice _%tl8487585853%_ '1)))
                      (let ((_%tl8491385742%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9091090911%_ '1)))
                            (_%target8491185739%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9091090911%_ '0))))
                        (if (gx#stx-pair? _%tl8491385742%_)
                            (let ((_%e8492085745%_
                                   (gx#syntax-e _%tl8491385742%_)))
                              (let ((_%tl8492285752%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8492085745%_)))
                                    (_%hd8492185749%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8492085745%_))))
                                (if (gx#stx-null? _%tl8492285752%_)
                                    (_%__match9103091031%_
                                     _%e8486685822%_
                                     _%hd8486785826%_
                                     _%tl8486885829%_
                                     _%e8486985832%_
                                     _%hd8487085836%_
                                     _%tl8487185839%_
                                     _%e8487285842%_
                                     _%e8487385846%_
                                     _%hd8487485850%_
                                     _%tl8487585853%_
                                     _%__splice9091090911%_
                                     _%target8491185739%_
                                     _%tl8491385742%_
                                     _%e8492085745%_
                                     _%hd8492185749%_
                                     _%tl8492285752%_)
                                    (if (gx#stx-null? _%tl8487585853%_)
                                        (_%__kont9091290913%_ _%hd8487485850%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8485985073%_))))))
                            (if (gx#stx-null? _%tl8487585853%_)
                                (_%__kont9091290913%_ _%hd8487485850%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8485985073%_))))))
                    (if (gx#stx-null? _%tl8487585853%_)
                        (_%__kont9091290913%_ _%hd8487485850%_)
                        (let () (declare (not safe)) (_%g8485985073%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8487585853%_)
                                                        (_%__kont9091290913%_
                                                         _%hd8487485850%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8485985073%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8485985073%_)))
                                        (if (equal? _%e8487285842%_ '2)
                                            (if (gx#stx-pair? _%tl8487185839%_)
                                                (let ((_%e8494785545%_
                                                       (gx#syntax-e
                                                        _%tl8487185839%_)))
                                                  (let ((_%tl8494985552%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8494785545%_)))
                                                        (_%hd8494885549%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8494785545%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl8494985552%_)
                                                        (let ((_%e8495085555%_
                                                               (gx#syntax-e
                                                                _%tl8494985552%_)))
                                                          (let ((_%tl8495285562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8495085555%_)))
                        (_%hd8495185559%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8495085555%_))))
                    (if (gx#stx-pair? _%hd8495185559%_)
                        (let ((_%e8495385565%_ (gx#syntax-e _%hd8495185559%_)))
                          (let ((_%tl8495585572%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8495385565%_)))
                                (_%hd8495485569%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8495385565%_))))
                            (if (gx#stx-pair? _%hd8495485569%_)
                                (let ((_%e8495685575%_
                                       (gx#syntax-e _%hd8495485569%_)))
                                  (let ((_%tl8495885582%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8495685575%_)))
                                        (_%hd8495785579%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8495685575%_))))
                                    (if (gx#identifier? _%hd8495785579%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g91360_|
                                             _%hd8495785579%_)
                                            (if (gx#stx-pair? _%tl8495885582%_)
                                                (let ((_%e8495985585%_
                                                       (gx#syntax-e
                                                        _%tl8495885582%_)))
                                                  (let ((_%tl8496185592%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8495985585%_)))
                                                        (_%hd8496085589%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8495985585%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8496185592%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8495585572%_)
                                                            (let ((_%e8496285595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8495585572%_)))
                      (let ((_%tl8496485602%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8496285595%_)))
                            (_%hd8496385599%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8496285595%_))))
                        (_%__kont9091490915%_
                         _%tl8495285562%_
                         _%tl8496485602%_
                         _%hd8496385599%_
                         _%hd8496085589%_
                         _%hd8494885549%_
                         _%hd8486785826%_)))
                    (_%__kont9091690917%_
                     _%tl8495285562%_
                     _%tl8495585572%_
                     _%hd8495485569%_
                     _%hd8494885549%_
                     _%hd8486785826%_))
                (_%__kont9091690917%_
                 _%tl8495285562%_
                 _%tl8495585572%_
                 _%hd8495485569%_
                 _%hd8494885549%_
                 _%hd8486785826%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont9091690917%_
                                                 _%tl8495285562%_
                                                 _%tl8495585572%_
                                                 _%hd8495485569%_
                                                 _%hd8494885549%_
                                                 _%hd8486785826%_))
                                            (_%__kont9091690917%_
                                             _%tl8495285562%_
                                             _%tl8495585572%_
                                             _%hd8495485569%_
                                             _%hd8494885549%_
                                             _%hd8486785826%_))
                                        (_%__kont9091690917%_
                                         _%tl8495285562%_
                                         _%tl8495585572%_
                                         _%hd8495485569%_
                                         _%hd8494885549%_
                                         _%hd8486785826%_))))
                                (_%__kont9091690917%_
                                 _%tl8495285562%_
                                 _%tl8495585572%_
                                 _%hd8495485569%_
                                 _%hd8494885549%_
                                 _%hd8486785826%_))))
                        (if (gx#stx-null? _%hd8495185559%_)
                            (_%__kont9091890919%_
                             _%tl8495285562%_
                             _%hd8494885549%_
                             _%hd8486785826%_)
                            (let () (declare (not safe)) (_%g8485985073%_))))))
                (let () (declare (not safe)) (_%g8485985073%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8485985073%_)))
                                            (if (equal? _%e8487285842%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl8487185839%_)
                                                    (let ((_%e8501485294%_
                                                           (gx#syntax-e
                                                            _%tl8487185839%_)))
                                                      (let ((_%tl8501685301%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8501485294%_)))
                    (_%hd8501585298%_
                     (let () (declare (not safe)) (##car _%e8501485294%_))))
                (if (gx#stx-pair? _%tl8501685301%_)
                    (let ((_%e8501785304%_ (gx#syntax-e _%tl8501685301%_)))
                      (let ((_%tl8501985311%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8501785304%_)))
                            (_%hd8501885308%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8501785304%_))))
                        (if (gx#stx-pair? _%hd8501885308%_)
                            (let ((_%e8502085314%_
                                   (gx#syntax-e _%hd8501885308%_)))
                              (let ((_%tl8502285321%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8502085314%_)))
                                    (_%hd8502185318%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8502085314%_))))
                                (_%__kont9092090921%_
                                 _%tl8501985311%_
                                 _%tl8502285321%_
                                 _%hd8502185318%_
                                 _%hd8501585298%_
                                 _%hd8486785826%_)))
                            (if (gx#stx-pair/null? _%hd8501585298%_)
                                (let ((_%__splice9092490925%_
                                       (gx#syntax-split-splice
                                        _%hd8501585298%_
                                        '0)))
                                  (let ((_%tl8504185117%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9092490925%_
                                            '1)))
                                        (_%target8503985114%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9092490925%_
                                            '0))))
                                    (if (gx#stx-null? _%tl8504185117%_)
                                        (_%__match9125291253%_
                                         _%e8486685822%_
                                         _%hd8486785826%_
                                         _%tl8486885829%_
                                         _%e8486985832%_
                                         _%hd8487085836%_
                                         _%tl8487185839%_
                                         _%e8487285842%_
                                         _%e8501485294%_
                                         _%hd8501585298%_
                                         _%tl8501685301%_
                                         _%__splice9092490925%_
                                         _%target8503985114%_
                                         _%tl8504185117%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8485985073%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8485985073%_))))))
                    (if (gx#stx-pair/null? _%hd8501585298%_)
                        (let ((_%__splice9092490925%_
                               (gx#syntax-split-splice _%hd8501585298%_ '0)))
                          (let ((_%tl8504185117%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9092490925%_ '1)))
                                (_%target8503985114%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9092490925%_ '0))))
                            (if (gx#stx-null? _%tl8504185117%_)
                                (_%__match9125291253%_
                                 _%e8486685822%_
                                 _%hd8486785826%_
                                 _%tl8486885829%_
                                 _%e8486985832%_
                                 _%hd8487085836%_
                                 _%tl8487185839%_
                                 _%e8487285842%_
                                 _%e8501485294%_
                                 _%hd8501585298%_
                                 _%tl8501685301%_
                                 _%__splice9092490925%_
                                 _%target8503985114%_
                                 _%tl8504185117%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8485985073%_)))))
                        (let () (declare (not safe)) (_%g8485985073%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8485985073%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8485985073%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g8485985073%_)))))
                          (let () (declare (not safe)) (_%g8485985073%_)))))
                  (let () (declare (not safe)) (_%g8485985073%_))))))))))
