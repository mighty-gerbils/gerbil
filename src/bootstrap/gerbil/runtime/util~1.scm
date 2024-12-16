(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g91413_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g91423_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx84373%_)
        (let* ((_%g8437784395%_
                (lambda (_%g8437884391%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8437884391%_)))
               (_%g8437684451%_
                (lambda (_%g8437884399%_)
                  (if (gx#stx-pair? _%g8437884399%_)
                      (let ((_%e8438184402%_ (gx#syntax-e _%g8437884399%_)))
                        (let ((_%hd8438284406%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8438184402%_)))
                              (_%tl8438384409%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8438184402%_))))
                          (if (gx#stx-pair? _%tl8438384409%_)
                              (let ((_%e8438484412%_
                                     (gx#syntax-e _%tl8438384409%_)))
                                (let ((_%hd8438584416%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8438484412%_)))
                                      (_%tl8438684419%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8438484412%_))))
                                  (if (gx#stx-pair? _%tl8438684419%_)
                                      (let ((_%e8438784422%_
                                             (gx#syntax-e _%tl8438684419%_)))
                                        (let ((_%hd8438884426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8438784422%_)))
                                              (_%tl8438984429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8438784422%_))))
                                          (if (gx#stx-null? _%tl8438984429%_)
                                              ((lambda (_%L84432%_ _%L84434%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L84434%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L84432%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8438884426%_
                                               _%hd8438584416%_)
                                              (_%g8437784395%_
                                               _%g8437884399%_))))
                                      (_%g8437784395%_ _%g8437884399%_))))
                              (_%g8437784395%_ _%g8437884399%_))))
                      (_%g8437784395%_ _%g8437884399%_)))))
          (_%g8437684451%_ _%$stx84373%_))))
    (define |[:0:]#__lock-inline!|
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
                                       (cons _%L84500%_
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
                                       _%hd8446684494%_)
                                      (_%g8445984473%_ _%g8446084477%_))))
                              (_%g8445984473%_ _%g8446084477%_))))
                      (_%g8445984473%_ _%g8446084477%_)))))
          (_%g8445884514%_ _%$stx84455%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx84518%_)
        (let* ((_%g8452284536%_
                (lambda (_%g8452384532%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8452384532%_)))
               (_%g8452184577%_
                (lambda (_%g8452384540%_)
                  (if (gx#stx-pair? _%g8452384540%_)
                      (let ((_%e8452584543%_ (gx#syntax-e _%g8452384540%_)))
                        (let ((_%hd8452684547%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8452584543%_)))
                              (_%tl8452784550%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8452584543%_))))
                          (if (gx#stx-pair? _%tl8452784550%_)
                              (let ((_%e8452884553%_
                                     (gx#syntax-e _%tl8452784550%_)))
                                (let ((_%hd8452984557%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8452884553%_)))
                                      (_%tl8453084560%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8452884553%_))))
                                  (if (gx#stx-null? _%tl8453084560%_)
                                      ((lambda (_%L84563%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L84563%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd8452984557%_)
                                      (_%g8452284536%_ _%g8452384540%_))))
                              (_%g8452284536%_ _%g8452384540%_))))
                      (_%g8452284536%_ _%g8452384540%_)))))
          (_%g8452184577%_ _%$stx84518%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx84581%_)
        (let* ((_%g8458584595%_
                (lambda (_%g8458684591%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8458684591%_)))
               (_%g8458484616%_
                (lambda (_%g8458684599%_)
                  (if (gx#stx-pair? _%g8458684599%_)
                      (let ((_%e8458784602%_ (gx#syntax-e _%g8458684599%_)))
                        (let ((_%hd8458884606%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8458784602%_)))
                              (_%tl8458984609%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8458784602%_))))
                          (if (gx#stx-null? _%tl8458984609%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g8458584595%_ _%g8458684599%_))))
                      (_%g8458584595%_ _%g8458684599%_)))))
          (_%g8458484616%_ _%$stx84581%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx84620%_)
        (let* ((_%g8462484642%_
                (lambda (_%g8462584638%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8462584638%_)))
               (_%g8462384697%_
                (lambda (_%g8462584646%_)
                  (if (gx#stx-pair? _%g8462584646%_)
                      (let ((_%e8462884649%_ (gx#syntax-e _%g8462584646%_)))
                        (let ((_%hd8462984653%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8462884649%_)))
                              (_%tl8463084656%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8462884649%_))))
                          (if (gx#stx-pair? _%tl8463084656%_)
                              (let ((_%e8463184659%_
                                     (gx#syntax-e _%tl8463084656%_)))
                                (let ((_%hd8463284663%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8463184659%_)))
                                      (_%tl8463384666%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8463184659%_))))
                                  (if (gx#stx-pair? _%tl8463384666%_)
                                      (let ((_%e8463484669%_
                                             (gx#syntax-e _%tl8463384666%_)))
                                        (let ((_%hd8463584673%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8463484669%_)))
                                              (_%tl8463684676%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8463484669%_))))
                                          (if (gx#stx-null? _%tl8463684676%_)
                                              ((lambda (_%L84679%_ _%L84681%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L84681%_
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
                 (cons (cons _%L84679%_
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
                                               _%hd8463584673%_
                                               _%hd8463284663%_)
                                              (_%g8462484642%_
                                               _%g8462584646%_))))
                                      (_%g8462484642%_ _%g8462584646%_))))
                              (_%g8462484642%_ _%g8462584646%_))))
                      (_%g8462484642%_ _%g8462584646%_)))))
          (_%g8462384697%_ _%$stx84620%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx84701%_)
        (let* ((_%g8470584723%_
                (lambda (_%g8470684719%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8470684719%_)))
               (_%g8470484778%_
                (lambda (_%g8470684727%_)
                  (if (gx#stx-pair? _%g8470684727%_)
                      (let ((_%e8470984730%_ (gx#syntax-e _%g8470684727%_)))
                        (let ((_%hd8471084734%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8470984730%_)))
                              (_%tl8471184737%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8470984730%_))))
                          (if (gx#stx-pair? _%tl8471184737%_)
                              (let ((_%e8471284740%_
                                     (gx#syntax-e _%tl8471184737%_)))
                                (let ((_%hd8471384744%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8471284740%_)))
                                      (_%tl8471484747%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8471284740%_))))
                                  (if (gx#stx-pair? _%tl8471484747%_)
                                      (let ((_%e8471584750%_
                                             (gx#syntax-e _%tl8471484747%_)))
                                        (let ((_%hd8471684754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8471584750%_)))
                                              (_%tl8471784757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8471584750%_))))
                                          (if (gx#stx-null? _%tl8471784757%_)
                                              ((lambda (_%L84760%_ _%L84762%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L84762%_
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
                                               (cons (cons _%L84760%_
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
                                               _%hd8471684754%_
                                               _%hd8471384744%_)
                                              (_%g8470584723%_
                                               _%g8470684727%_))))
                                      (_%g8470584723%_ _%g8470684727%_))))
                              (_%g8470584723%_ _%g8470684727%_))))
                      (_%g8470584723%_ _%g8470684727%_)))))
          (_%g8470484778%_ _%$stx84701%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx84782%_)
        (let* ((_%g8478684804%_
                (lambda (_%g8478784800%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8478784800%_)))
               (_%g8478584859%_
                (lambda (_%g8478784808%_)
                  (if (gx#stx-pair? _%g8478784808%_)
                      (let ((_%e8479084811%_ (gx#syntax-e _%g8478784808%_)))
                        (let ((_%hd8479184815%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8479084811%_)))
                              (_%tl8479284818%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8479084811%_))))
                          (if (gx#stx-pair? _%tl8479284818%_)
                              (let ((_%e8479384821%_
                                     (gx#syntax-e _%tl8479284818%_)))
                                (let ((_%hd8479484825%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8479384821%_)))
                                      (_%tl8479584828%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8479384821%_))))
                                  (if (gx#stx-pair? _%tl8479584828%_)
                                      (let ((_%e8479684831%_
                                             (gx#syntax-e _%tl8479584828%_)))
                                        (let ((_%hd8479784835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8479684831%_)))
                                              (_%tl8479884838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8479684831%_))))
                                          (if (gx#stx-null? _%tl8479884838%_)
                                              ((lambda (_%L84841%_ _%L84843%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L84843%_
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
                                               (cons (cons _%L84841%_
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
                                               _%hd8479784835%_
                                               _%hd8479484825%_)
                                              (_%g8478684804%_
                                               _%g8478784808%_))))
                                      (_%g8478684804%_ _%g8478784808%_))))
                              (_%g8478684804%_ _%g8478784808%_))))
                      (_%g8478684804%_ _%g8478784808%_)))))
          (_%g8478584859%_ _%$stx84782%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx84863%_)
        (let* ((_%g8486784878%_
                (lambda (_%g8486884874%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8486884874%_)))
               (_%g8486684907%_
                (lambda (_%g8486884882%_)
                  (if (gx#stx-pair? _%g8486884882%_)
                      (let ((_%e8487084885%_ (gx#syntax-e _%g8486884882%_)))
                        (let ((_%hd8487184889%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8487084885%_)))
                              (_%tl8487284892%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8487084885%_))))
                          ((lambda (_%L84895%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L84895%_)))
                           _%tl8487284892%_)))
                      (_%g8486784878%_ _%g8486884882%_)))))
          (_%g8486684907%_ _%$stx84863%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx84911%_)
        (let* ((_%__stx9096490965%_ _%$stx84911%_)
               (_%g8492285136%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9096490965%_))))
          (let ((_%__kont9096790968%_
                 (lambda (_%L85989%_
                          _%L85991%_
                          _%L85992%_
                          _%L85993%_
                          _%L85994%_)
                   (cons _%L85994%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8602486027%_
                                                     _%g8602586030%_)
                                              (cons _%g8602486027%_
                                                    _%g8602586030%_))
                                            '()
                                            _%L85992%_)
                                           (cons _%L85993%_
                                                 (cons _%L85991%_
                                                       (cons _%L85989%_
                                                             '())))))))))
                (_%__kont9097190972%_
                 (lambda (_%L85842%_ _%L85844%_ _%L85845%_ _%L85846%_)
                   (cons _%L85846%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8586985872%_
                                                     _%g8587085875%_)
                                              (cons _%g8586985872%_
                                                    _%g8587085875%_))
                                            '()
                                            _%L85844%_)
                                           (cons _%L85845%_
                                                 (cons _%L85842%_
                                                       (cons _%L85842%_
                                                             '())))))))))
                (_%__kont9097590976%_
                 (lambda (_%L85745%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L85745%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont9097790978%_
                 (lambda (_%L85668%_
                          _%L85670%_
                          _%L85671%_
                          _%L85672%_
                          _%L85673%_
                          _%L85674%_)
                   (cons _%L85674%_
                         (cons '2
                               (cons (cons (cons _%L85672%_
                                                 (cons _%L85671%_ '()))
                                           _%L85673%_)
                                     (cons _%L85670%_ _%L85668%_))))))
                (_%__kont9097990980%_
                 (lambda (_%L85549%_
                          _%L85551%_
                          _%L85552%_
                          _%L85553%_
                          _%L85554%_)
                   (cons _%L85554%_
                         (cons '2
                               (cons (cons (cons _%L85552%_
                                                 (cons _%L85552%_ '()))
                                           _%L85553%_)
                                     (cons _%L85551%_ _%L85549%_))))))
                (_%__kont9098190982%_
                 (lambda (_%L85466%_ _%L85468%_ _%L85469%_)
                   (cons _%L85469%_
                         (cons '3 (cons '() (cons _%L85468%_ _%L85466%_))))))
                (_%__kont9098390984%_
                 (lambda (_%L85387%_
                          _%L85389%_
                          _%L85390%_
                          _%L85391%_
                          _%L85392%_)
                   (cons _%L85392%_
                         (cons '3
                               (cons (cons _%L85390%_ _%L85391%_)
                                     (cons _%L85389%_ _%L85387%_))))))
                (_%__kont9098590986%_
                 (lambda (_%L85271%_
                          _%L85273%_
                          _%L85274%_
                          _%L85275%_
                          _%L85276%_
                          _%L85277%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L85274%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L85271%_ '())))
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
                                              (lambda (_%g8531185314%_
                                                       _%g8531285317%_)
                                                (cons _%g8531185314%_
                                                      _%g8531285317%_))
                                              '()
                                              _%L85276%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (__foldr1
                                              (lambda (_%g8530985320%_
                                                       _%g8531085323%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g8530985320%_ '())))
              _%g8531085323%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L85275%_))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L85273%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9131591316%_
                    (lambda (_%e8509285143%_
                             _%hd8509385147%_
                             _%tl8509485150%_
                             _%e8509585153%_
                             _%hd8509685157%_
                             _%tl8509785160%_
                             _%e8509885163%_
                             _%e8509985167%_
                             _%hd8510085171%_
                             _%tl8510185174%_
                             _%__splice9098790988%_
                             _%target8510285177%_
                             _%tl8510485180%_)
                      (letrec ((_%loop8510585183%_
                                (lambda (_%hd8510385187%_
                                         _%exprs8510985190%_
                                         _%names8511085192%_)
                                  (if (gx#stx-pair? _%hd8510385187%_)
                                      (let ((_%e8510685195%_
                                             (gx#syntax-e _%hd8510385187%_)))
                                        (let ((_%lp-tl8510885202%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8510685195%_)))
                                              (_%lp-hd8510785199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8510685195%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd8510785199%_)
                                              (let ((_%e8512585205%_
                                                     (gx#syntax-e
                                                      _%lp-hd8510785199%_)))
                                                (let ((_%tl8512785212%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8512585205%_)))
                                                      (_%hd8512685209%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8512585205%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8512785212%_)
                                                      (let ((_%e8512885215%_
                                                             (gx#syntax-e
                                                              _%tl8512785212%_)))
                                                        (let ((_%tl8513085222%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8512885215%_)))
                      (_%hd8512985219%_
                       (let () (declare (not safe)) (##car _%e8512885215%_))))
                  (if (gx#stx-null? _%tl8513085222%_)
                      (_%loop8510585183%_
                       _%lp-tl8510885202%_
                       (cons _%hd8512985219%_ _%exprs8510985190%_)
                       (cons _%hd8512685209%_ _%names8511085192%_))
                      (let () (declare (not safe)) (_%g8492285136%_)))))
              (let () (declare (not safe)) (_%g8492285136%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g8492285136%_)))))
                                      (let ((_%names8511285228%_
                                             (reverse _%names8511085192%_))
                                            (_%exprs8511185225%_
                                             (reverse _%exprs8510985190%_)))
                                        (if (gx#stx-pair? _%tl8510185174%_)
                                            (let ((_%e8511385231%_
                                                   (gx#syntax-e
                                                    _%tl8510185174%_)))
                                              (let ((_%tl8511585238%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8511385231%_)))
                                                    (_%hd8511485235%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8511385231%_))))
                                                (if (gx#stx-null?
                                                     _%hd8511485235%_)
                                                    (if (gx#stx-pair?
                                                         _%tl8511585238%_)
                                                        (let ((_%e8511685241%_
                                                               (gx#syntax-e
                                                                _%tl8511585238%_)))
                                                          (let ((_%tl8511885248%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8511685241%_)))
                        (_%hd8511785245%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8511685241%_))))
                    (if (gx#stx-pair? _%tl8511885248%_)
                        (let ((_%e8511985251%_ (gx#syntax-e _%tl8511885248%_)))
                          (let ((_%tl8512185258%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8511985251%_)))
                                (_%hd8512085255%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8511985251%_))))
                            (if (gx#stx-pair? _%tl8512185258%_)
                                (let ((_%e8512285261%_
                                       (gx#syntax-e _%tl8512185258%_)))
                                  (let ((_%tl8512485268%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8512285261%_)))
                                        (_%hd8512385265%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8512285261%_))))
                                    (if (gx#stx-null? _%tl8512485268%_)
                                        (_%__kont9098590986%_
                                         _%hd8512385265%_
                                         _%hd8512085255%_
                                         _%hd8511785245%_
                                         _%exprs8511185225%_
                                         _%names8511285228%_
                                         _%hd8509385147%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8492285136%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8492285136%_)))))
                        (let () (declare (not safe)) (_%g8492285136%_)))))
                (let () (declare (not safe)) (_%g8492285136%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8492285136%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8492285136%_))))))))
                        (_%loop8510585183%_ _%target8510285177%_ '() '()))))
                   (_%__match9109391094%_
                    (lambda (_%e8496485768%_
                             _%hd8496585772%_
                             _%tl8496685775%_
                             _%e8496785778%_
                             _%hd8496885782%_
                             _%tl8496985785%_
                             _%e8497085788%_
                             _%e8497185792%_
                             _%hd8497285796%_
                             _%tl8497385799%_
                             _%__splice9097390974%_
                             _%target8497485802%_
                             _%tl8497685805%_
                             _%e8498385808%_
                             _%hd8498485812%_
                             _%tl8498585815%_)
                      (letrec ((_%loop8497785818%_
                                (lambda (_%hd8497585822%_ _%exprs8498185825%_)
                                  (if (gx#stx-pair? _%hd8497585822%_)
                                      (let ((_%e8497885828%_
                                             (gx#syntax-e _%hd8497585822%_)))
                                        (let ((_%lp-tl8498085835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8497885828%_)))
                                              (_%lp-hd8497985832%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8497885828%_))))
                                          (_%loop8497785818%_
                                           _%lp-tl8498085835%_
                                           (cons _%lp-hd8497985832%_
                                                 _%exprs8498185825%_))))
                                      (let ((_%exprs8498285838%_
                                             (reverse _%exprs8498185825%_)))
                                        (_%__kont9097190972%_
                                         _%hd8498485812%_
                                         _%exprs8498285838%_
                                         _%hd8497285796%_
                                         _%hd8496585772%_))))))
                        (_%loop8497785818%_ _%target8497485802%_ '()))))
                   (_%__match9105391054%_
                    (lambda (_%e8492985885%_
                             _%hd8493085889%_
                             _%tl8493185892%_
                             _%e8493285895%_
                             _%hd8493385899%_
                             _%tl8493485902%_
                             _%e8493585905%_
                             _%e8493685909%_
                             _%hd8493785913%_
                             _%tl8493885916%_
                             _%__splice9096990970%_
                             _%target8493985919%_
                             _%tl8494185922%_
                             _%e8494885925%_
                             _%hd8494985929%_
                             _%tl8495085932%_
                             _%e8495185935%_
                             _%hd8495285939%_
                             _%tl8495385942%_
                             _%e8495485945%_
                             _%hd8495585949%_
                             _%tl8495685952%_
                             _%e8495785955%_
                             _%hd8495885959%_
                             _%tl8495985962%_)
                      (letrec ((_%loop8494285965%_
                                (lambda (_%hd8494085969%_ _%exprs8494685972%_)
                                  (if (gx#stx-pair? _%hd8494085969%_)
                                      (let ((_%e8494385975%_
                                             (gx#syntax-e _%hd8494085969%_)))
                                        (let ((_%lp-tl8494585982%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8494385975%_)))
                                              (_%lp-hd8494485979%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8494385975%_))))
                                          (_%loop8494285965%_
                                           _%lp-tl8494585982%_
                                           (cons _%lp-hd8494485979%_
                                                 _%exprs8494685972%_))))
                                      (let ((_%exprs8494785985%_
                                             (reverse _%exprs8494685972%_)))
                                        (_%__kont9096790968%_
                                         _%hd8495885959%_
                                         _%hd8495585949%_
                                         _%exprs8494785985%_
                                         _%hd8493785913%_
                                         _%hd8493085889%_))))))
                        (_%loop8494285965%_ _%target8493985919%_ '())))))
              (if (gx#stx-pair? _%__stx9096490965%_)
                  (let ((_%e8492985885%_ (gx#syntax-e _%__stx9096490965%_)))
                    (let ((_%tl8493185892%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e8492985885%_)))
                          (_%hd8493085889%_
                           (let ()
                             (declare (not safe))
                             (##car _%e8492985885%_))))
                      (if (gx#stx-pair? _%tl8493185892%_)
                          (let ((_%e8493285895%_
                                 (gx#syntax-e _%tl8493185892%_)))
                            (let ((_%tl8493485902%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e8493285895%_)))
                                  (_%hd8493385899%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e8493285895%_))))
                              (if (gx#stx-datum? _%hd8493385899%_)
                                  (let ((_%e8493585905%_
                                         (gx#stx-e _%hd8493385899%_)))
                                    (if (equal? _%e8493585905%_ '1)
                                        (if (gx#stx-pair? _%tl8493485902%_)
                                            (let ((_%e8493685909%_
                                                   (gx#syntax-e
                                                    _%tl8493485902%_)))
                                              (let ((_%tl8493885916%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8493685909%_)))
                                                    (_%hd8493785913%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8493685909%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl8493885916%_)
                                                    (if (let ((__tmp91412
                                                               (gx#stx-length
                                                                _%tl8493885916%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp91412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice9096990970%_
                       (gx#syntax-split-splice _%tl8493885916%_ '2)))
                  (let ((_%tl8494185922%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9096990970%_ '1)))
                        (_%target8493985919%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9096990970%_ '0))))
                    (if (gx#stx-pair? _%tl8494185922%_)
                        (let ((_%e8494885925%_ (gx#syntax-e _%tl8494185922%_)))
                          (let ((_%tl8495085932%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8494885925%_)))
                                (_%hd8494985929%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8494885925%_))))
                            (if (gx#stx-pair? _%hd8494985929%_)
                                (let ((_%e8495185935%_
                                       (gx#syntax-e _%hd8494985929%_)))
                                  (let ((_%tl8495385942%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8495185935%_)))
                                        (_%hd8495285939%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8495185935%_))))
                                    (if (gx#identifier? _%hd8495285939%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g91413_|
                                             _%hd8495285939%_)
                                            (if (gx#stx-pair? _%tl8495385942%_)
                                                (let ((_%e8495485945%_
                                                       (gx#syntax-e
                                                        _%tl8495385942%_)))
                                                  (let ((_%tl8495685952%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8495485945%_)))
                                                        (_%hd8495585949%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8495485945%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8495685952%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8495085932%_)
                                                            (let ((_%e8495785955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8495085932%_)))
                      (let ((_%tl8495985962%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8495785955%_)))
                            (_%hd8495885959%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8495785955%_))))
                        (if (gx#stx-null? _%tl8495985962%_)
                            (_%__match9105391054%_
                             _%e8492985885%_
                             _%hd8493085889%_
                             _%tl8493185892%_
                             _%e8493285895%_
                             _%hd8493385899%_
                             _%tl8493485902%_
                             _%e8493585905%_
                             _%e8493685909%_
                             _%hd8493785913%_
                             _%tl8493885916%_
                             _%__splice9096990970%_
                             _%target8493985919%_
                             _%tl8494185922%_
                             _%e8494885925%_
                             _%hd8494985929%_
                             _%tl8495085932%_
                             _%e8495185935%_
                             _%hd8495285939%_
                             _%tl8495385942%_
                             _%e8495485945%_
                             _%hd8495585949%_
                             _%tl8495685952%_
                             _%e8495785955%_
                             _%hd8495885959%_
                             _%tl8495985962%_)
                            (if (let ((__tmp91414
                                       (gx#stx-length _%tl8493885916%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp91414 '1))
                                (let ((_%__splice9097390974%_
                                       (gx#syntax-split-splice
                                        _%tl8493885916%_
                                        '1)))
                                  (let ((_%tl8497685805%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9097390974%_
                                            '1)))
                                        (_%target8497485802%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9097390974%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl8497685805%_)
                                        (let ((_%e8498385808%_
                                               (gx#syntax-e _%tl8497685805%_)))
                                          (let ((_%tl8498585815%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e8498385808%_)))
                                                (_%hd8498485812%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e8498385808%_))))
                                            (if (gx#stx-null? _%tl8498585815%_)
                                                (_%__match9109391094%_
                                                 _%e8492985885%_
                                                 _%hd8493085889%_
                                                 _%tl8493185892%_
                                                 _%e8493285895%_
                                                 _%hd8493385899%_
                                                 _%tl8493485902%_
                                                 _%e8493585905%_
                                                 _%e8493685909%_
                                                 _%hd8493785913%_
                                                 _%tl8493885916%_
                                                 _%__splice9097390974%_
                                                 _%target8497485802%_
                                                 _%tl8497685805%_
                                                 _%e8498385808%_
                                                 _%hd8498485812%_
                                                 _%tl8498585815%_)
                                                (if (gx#stx-null?
                                                     _%tl8493885916%_)
                                                    (_%__kont9097590976%_
                                                     _%hd8493785913%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8492285136%_))))))
                                        (if (gx#stx-null? _%tl8493885916%_)
                                            (_%__kont9097590976%_
                                             _%hd8493785913%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8492285136%_))))))
                                (if (gx#stx-null? _%tl8493885916%_)
                                    (_%__kont9097590976%_ _%hd8493785913%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8492285136%_)))))))
                    (if (let ((__tmp91415 (gx#stx-length _%tl8493885916%_)))
                          (declare (not safe))
                          (##fx>= __tmp91415 '1))
                        (let ((_%__splice9097390974%_
                               (gx#syntax-split-splice _%tl8493885916%_ '1)))
                          (let ((_%tl8497685805%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9097390974%_ '1)))
                                (_%target8497485802%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9097390974%_ '0))))
                            (if (gx#stx-pair? _%tl8497685805%_)
                                (let ((_%e8498385808%_
                                       (gx#syntax-e _%tl8497685805%_)))
                                  (let ((_%tl8498585815%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8498385808%_)))
                                        (_%hd8498485812%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8498385808%_))))
                                    (if (gx#stx-null? _%tl8498585815%_)
                                        (_%__match9109391094%_
                                         _%e8492985885%_
                                         _%hd8493085889%_
                                         _%tl8493185892%_
                                         _%e8493285895%_
                                         _%hd8493385899%_
                                         _%tl8493485902%_
                                         _%e8493585905%_
                                         _%e8493685909%_
                                         _%hd8493785913%_
                                         _%tl8493885916%_
                                         _%__splice9097390974%_
                                         _%target8497485802%_
                                         _%tl8497685805%_
                                         _%e8498385808%_
                                         _%hd8498485812%_
                                         _%tl8498585815%_)
                                        (if (gx#stx-null? _%tl8493885916%_)
                                            (_%__kont9097590976%_
                                             _%hd8493785913%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8492285136%_))))))
                                (if (gx#stx-null? _%tl8493885916%_)
                                    (_%__kont9097590976%_ _%hd8493785913%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8492285136%_))))))
                        (if (gx#stx-null? _%tl8493885916%_)
                            (_%__kont9097590976%_ _%hd8493785913%_)
                            (let () (declare (not safe)) (_%g8492285136%_)))))
                (if (let ((__tmp91416 (gx#stx-length _%tl8493885916%_)))
                      (declare (not safe))
                      (##fx>= __tmp91416 '1))
                    (let ((_%__splice9097390974%_
                           (gx#syntax-split-splice _%tl8493885916%_ '1)))
                      (let ((_%tl8497685805%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9097390974%_ '1)))
                            (_%target8497485802%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9097390974%_ '0))))
                        (if (gx#stx-pair? _%tl8497685805%_)
                            (let ((_%e8498385808%_
                                   (gx#syntax-e _%tl8497685805%_)))
                              (let ((_%tl8498585815%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8498385808%_)))
                                    (_%hd8498485812%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8498385808%_))))
                                (if (gx#stx-null? _%tl8498585815%_)
                                    (_%__match9109391094%_
                                     _%e8492985885%_
                                     _%hd8493085889%_
                                     _%tl8493185892%_
                                     _%e8493285895%_
                                     _%hd8493385899%_
                                     _%tl8493485902%_
                                     _%e8493585905%_
                                     _%e8493685909%_
                                     _%hd8493785913%_
                                     _%tl8493885916%_
                                     _%__splice9097390974%_
                                     _%target8497485802%_
                                     _%tl8497685805%_
                                     _%e8498385808%_
                                     _%hd8498485812%_
                                     _%tl8498585815%_)
                                    (if (gx#stx-null? _%tl8493885916%_)
                                        (_%__kont9097590976%_ _%hd8493785913%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8492285136%_))))))
                            (if (gx#stx-null? _%tl8493885916%_)
                                (_%__kont9097590976%_ _%hd8493785913%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8492285136%_))))))
                    (if (gx#stx-null? _%tl8493885916%_)
                        (_%__kont9097590976%_ _%hd8493785913%_)
                        (let () (declare (not safe)) (_%g8492285136%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp91417
                                                           (gx#stx-length
                                                            _%tl8493885916%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp91417 '1))
                                                    (let ((_%__splice9097390974%_
                                                           (gx#syntax-split-splice
                                                            _%tl8493885916%_
                                                            '1)))
                                                      (let ((_%tl8497685805%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9097390974%_ '1)))
                    (_%target8497485802%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9097390974%_ '0))))
                (if (gx#stx-pair? _%tl8497685805%_)
                    (let ((_%e8498385808%_ (gx#syntax-e _%tl8497685805%_)))
                      (let ((_%tl8498585815%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8498385808%_)))
                            (_%hd8498485812%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8498385808%_))))
                        (if (gx#stx-null? _%tl8498585815%_)
                            (_%__match9109391094%_
                             _%e8492985885%_
                             _%hd8493085889%_
                             _%tl8493185892%_
                             _%e8493285895%_
                             _%hd8493385899%_
                             _%tl8493485902%_
                             _%e8493585905%_
                             _%e8493685909%_
                             _%hd8493785913%_
                             _%tl8493885916%_
                             _%__splice9097390974%_
                             _%target8497485802%_
                             _%tl8497685805%_
                             _%e8498385808%_
                             _%hd8498485812%_
                             _%tl8498585815%_)
                            (if (gx#stx-null? _%tl8493885916%_)
                                (_%__kont9097590976%_ _%hd8493785913%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8492285136%_))))))
                    (if (gx#stx-null? _%tl8493885916%_)
                        (_%__kont9097590976%_ _%hd8493785913%_)
                        (let () (declare (not safe)) (_%g8492285136%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8493885916%_)
                                                        (_%__kont9097590976%_
                                                         _%hd8493785913%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8492285136%_)))))
                                            (if (let ((__tmp91418
                                                       (gx#stx-length
                                                        _%tl8493885916%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp91418 '1))
                                                (let ((_%__splice9097390974%_
                                                       (gx#syntax-split-splice
                                                        _%tl8493885916%_
                                                        '1)))
                                                  (let ((_%tl8497685805%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9097390974%_
                                                            '1)))
                                                        (_%target8497485802%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9097390974%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl8497685805%_)
                                                        (let ((_%e8498385808%_
                                                               (gx#syntax-e
                                                                _%tl8497685805%_)))
                                                          (let ((_%tl8498585815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8498385808%_)))
                        (_%hd8498485812%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8498385808%_))))
                    (if (gx#stx-null? _%tl8498585815%_)
                        (_%__match9109391094%_
                         _%e8492985885%_
                         _%hd8493085889%_
                         _%tl8493185892%_
                         _%e8493285895%_
                         _%hd8493385899%_
                         _%tl8493485902%_
                         _%e8493585905%_
                         _%e8493685909%_
                         _%hd8493785913%_
                         _%tl8493885916%_
                         _%__splice9097390974%_
                         _%target8497485802%_
                         _%tl8497685805%_
                         _%e8498385808%_
                         _%hd8498485812%_
                         _%tl8498585815%_)
                        (if (gx#stx-null? _%tl8493885916%_)
                            (_%__kont9097590976%_ _%hd8493785913%_)
                            (let () (declare (not safe)) (_%g8492285136%_))))))
                (if (gx#stx-null? _%tl8493885916%_)
                    (_%__kont9097590976%_ _%hd8493785913%_)
                    (let () (declare (not safe)) (_%g8492285136%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl8493885916%_)
                                                    (_%__kont9097590976%_
                                                     _%hd8493785913%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8492285136%_)))))
                                        (if (let ((__tmp91419
                                                   (gx#stx-length
                                                    _%tl8493885916%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp91419 '1))
                                            (let ((_%__splice9097390974%_
                                                   (gx#syntax-split-splice
                                                    _%tl8493885916%_
                                                    '1)))
                                              (let ((_%tl8497685805%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9097390974%_
                                                        '1)))
                                                    (_%target8497485802%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9097390974%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl8497685805%_)
                                                    (let ((_%e8498385808%_
                                                           (gx#syntax-e
                                                            _%tl8497685805%_)))
                                                      (let ((_%tl8498585815%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8498385808%_)))
                    (_%hd8498485812%_
                     (let () (declare (not safe)) (##car _%e8498385808%_))))
                (if (gx#stx-null? _%tl8498585815%_)
                    (_%__match9109391094%_
                     _%e8492985885%_
                     _%hd8493085889%_
                     _%tl8493185892%_
                     _%e8493285895%_
                     _%hd8493385899%_
                     _%tl8493485902%_
                     _%e8493585905%_
                     _%e8493685909%_
                     _%hd8493785913%_
                     _%tl8493885916%_
                     _%__splice9097390974%_
                     _%target8497485802%_
                     _%tl8497685805%_
                     _%e8498385808%_
                     _%hd8498485812%_
                     _%tl8498585815%_)
                    (if (gx#stx-null? _%tl8493885916%_)
                        (_%__kont9097590976%_ _%hd8493785913%_)
                        (let () (declare (not safe)) (_%g8492285136%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8493885916%_)
                                                        (_%__kont9097590976%_
                                                         _%hd8493785913%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8492285136%_))))))
                                            (if (gx#stx-null? _%tl8493885916%_)
                                                (_%__kont9097590976%_
                                                 _%hd8493785913%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8492285136%_)))))))
                                (if (let ((__tmp91420
                                           (gx#stx-length _%tl8493885916%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp91420 '1))
                                    (let ((_%__splice9097390974%_
                                           (gx#syntax-split-splice
                                            _%tl8493885916%_
                                            '1)))
                                      (let ((_%tl8497685805%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9097390974%_
                                                '1)))
                                            (_%target8497485802%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9097390974%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl8497685805%_)
                                            (let ((_%e8498385808%_
                                                   (gx#syntax-e
                                                    _%tl8497685805%_)))
                                              (let ((_%tl8498585815%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8498385808%_)))
                                                    (_%hd8498485812%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8498385808%_))))
                                                (if (gx#stx-null?
                                                     _%tl8498585815%_)
                                                    (_%__match9109391094%_
                                                     _%e8492985885%_
                                                     _%hd8493085889%_
                                                     _%tl8493185892%_
                                                     _%e8493285895%_
                                                     _%hd8493385899%_
                                                     _%tl8493485902%_
                                                     _%e8493585905%_
                                                     _%e8493685909%_
                                                     _%hd8493785913%_
                                                     _%tl8493885916%_
                                                     _%__splice9097390974%_
                                                     _%target8497485802%_
                                                     _%tl8497685805%_
                                                     _%e8498385808%_
                                                     _%hd8498485812%_
                                                     _%tl8498585815%_)
                                                    (if (gx#stx-null?
                                                         _%tl8493885916%_)
                                                        (_%__kont9097590976%_
                                                         _%hd8493785913%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8492285136%_))))))
                                            (if (gx#stx-null? _%tl8493885916%_)
                                                (_%__kont9097590976%_
                                                 _%hd8493785913%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8492285136%_))))))
                                    (if (gx#stx-null? _%tl8493885916%_)
                                        (_%__kont9097590976%_ _%hd8493785913%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8492285136%_)))))))
                        (if (let ((__tmp91421
                                   (gx#stx-length _%tl8493885916%_)))
                              (declare (not safe))
                              (##fx>= __tmp91421 '1))
                            (let ((_%__splice9097390974%_
                                   (gx#syntax-split-splice
                                    _%tl8493885916%_
                                    '1)))
                              (let ((_%tl8497685805%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9097390974%_
                                        '1)))
                                    (_%target8497485802%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9097390974%_
                                        '0))))
                                (if (gx#stx-pair? _%tl8497685805%_)
                                    (let ((_%e8498385808%_
                                           (gx#syntax-e _%tl8497685805%_)))
                                      (let ((_%tl8498585815%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8498385808%_)))
                                            (_%hd8498485812%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8498385808%_))))
                                        (if (gx#stx-null? _%tl8498585815%_)
                                            (_%__match9109391094%_
                                             _%e8492985885%_
                                             _%hd8493085889%_
                                             _%tl8493185892%_
                                             _%e8493285895%_
                                             _%hd8493385899%_
                                             _%tl8493485902%_
                                             _%e8493585905%_
                                             _%e8493685909%_
                                             _%hd8493785913%_
                                             _%tl8493885916%_
                                             _%__splice9097390974%_
                                             _%target8497485802%_
                                             _%tl8497685805%_
                                             _%e8498385808%_
                                             _%hd8498485812%_
                                             _%tl8498585815%_)
                                            (if (gx#stx-null? _%tl8493885916%_)
                                                (_%__kont9097590976%_
                                                 _%hd8493785913%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8492285136%_))))))
                                    (if (gx#stx-null? _%tl8493885916%_)
                                        (_%__kont9097590976%_ _%hd8493785913%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8492285136%_))))))
                            (if (gx#stx-null? _%tl8493885916%_)
                                (_%__kont9097590976%_ _%hd8493785913%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8492285136%_)))))))
                (if (let ((__tmp91422 (gx#stx-length _%tl8493885916%_)))
                      (declare (not safe))
                      (##fx>= __tmp91422 '1))
                    (let ((_%__splice9097390974%_
                           (gx#syntax-split-splice _%tl8493885916%_ '1)))
                      (let ((_%tl8497685805%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9097390974%_ '1)))
                            (_%target8497485802%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9097390974%_ '0))))
                        (if (gx#stx-pair? _%tl8497685805%_)
                            (let ((_%e8498385808%_
                                   (gx#syntax-e _%tl8497685805%_)))
                              (let ((_%tl8498585815%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8498385808%_)))
                                    (_%hd8498485812%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8498385808%_))))
                                (if (gx#stx-null? _%tl8498585815%_)
                                    (_%__match9109391094%_
                                     _%e8492985885%_
                                     _%hd8493085889%_
                                     _%tl8493185892%_
                                     _%e8493285895%_
                                     _%hd8493385899%_
                                     _%tl8493485902%_
                                     _%e8493585905%_
                                     _%e8493685909%_
                                     _%hd8493785913%_
                                     _%tl8493885916%_
                                     _%__splice9097390974%_
                                     _%target8497485802%_
                                     _%tl8497685805%_
                                     _%e8498385808%_
                                     _%hd8498485812%_
                                     _%tl8498585815%_)
                                    (if (gx#stx-null? _%tl8493885916%_)
                                        (_%__kont9097590976%_ _%hd8493785913%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8492285136%_))))))
                            (if (gx#stx-null? _%tl8493885916%_)
                                (_%__kont9097590976%_ _%hd8493785913%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8492285136%_))))))
                    (if (gx#stx-null? _%tl8493885916%_)
                        (_%__kont9097590976%_ _%hd8493785913%_)
                        (let () (declare (not safe)) (_%g8492285136%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8493885916%_)
                                                        (_%__kont9097590976%_
                                                         _%hd8493785913%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8492285136%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8492285136%_)))
                                        (if (equal? _%e8493585905%_ '2)
                                            (if (gx#stx-pair? _%tl8493485902%_)
                                                (let ((_%e8501085608%_
                                                       (gx#syntax-e
                                                        _%tl8493485902%_)))
                                                  (let ((_%tl8501285615%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8501085608%_)))
                                                        (_%hd8501185612%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8501085608%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl8501285615%_)
                                                        (let ((_%e8501385618%_
                                                               (gx#syntax-e
                                                                _%tl8501285615%_)))
                                                          (let ((_%tl8501585625%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8501385618%_)))
                        (_%hd8501485622%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8501385618%_))))
                    (if (gx#stx-pair? _%hd8501485622%_)
                        (let ((_%e8501685628%_ (gx#syntax-e _%hd8501485622%_)))
                          (let ((_%tl8501885635%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8501685628%_)))
                                (_%hd8501785632%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8501685628%_))))
                            (if (gx#stx-pair? _%hd8501785632%_)
                                (let ((_%e8501985638%_
                                       (gx#syntax-e _%hd8501785632%_)))
                                  (let ((_%tl8502185645%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8501985638%_)))
                                        (_%hd8502085642%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8501985638%_))))
                                    (if (gx#identifier? _%hd8502085642%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g91423_|
                                             _%hd8502085642%_)
                                            (if (gx#stx-pair? _%tl8502185645%_)
                                                (let ((_%e8502285648%_
                                                       (gx#syntax-e
                                                        _%tl8502185645%_)))
                                                  (let ((_%tl8502485655%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8502285648%_)))
                                                        (_%hd8502385652%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8502285648%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8502485655%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8501885635%_)
                                                            (let ((_%e8502585658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8501885635%_)))
                      (let ((_%tl8502785665%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8502585658%_)))
                            (_%hd8502685662%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8502585658%_))))
                        (_%__kont9097790978%_
                         _%tl8501585625%_
                         _%tl8502785665%_
                         _%hd8502685662%_
                         _%hd8502385652%_
                         _%hd8501185612%_
                         _%hd8493085889%_)))
                    (_%__kont9097990980%_
                     _%tl8501585625%_
                     _%tl8501885635%_
                     _%hd8501785632%_
                     _%hd8501185612%_
                     _%hd8493085889%_))
                (_%__kont9097990980%_
                 _%tl8501585625%_
                 _%tl8501885635%_
                 _%hd8501785632%_
                 _%hd8501185612%_
                 _%hd8493085889%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont9097990980%_
                                                 _%tl8501585625%_
                                                 _%tl8501885635%_
                                                 _%hd8501785632%_
                                                 _%hd8501185612%_
                                                 _%hd8493085889%_))
                                            (_%__kont9097990980%_
                                             _%tl8501585625%_
                                             _%tl8501885635%_
                                             _%hd8501785632%_
                                             _%hd8501185612%_
                                             _%hd8493085889%_))
                                        (_%__kont9097990980%_
                                         _%tl8501585625%_
                                         _%tl8501885635%_
                                         _%hd8501785632%_
                                         _%hd8501185612%_
                                         _%hd8493085889%_))))
                                (_%__kont9097990980%_
                                 _%tl8501585625%_
                                 _%tl8501885635%_
                                 _%hd8501785632%_
                                 _%hd8501185612%_
                                 _%hd8493085889%_))))
                        (if (gx#stx-null? _%hd8501485622%_)
                            (_%__kont9098190982%_
                             _%tl8501585625%_
                             _%hd8501185612%_
                             _%hd8493085889%_)
                            (let () (declare (not safe)) (_%g8492285136%_))))))
                (let () (declare (not safe)) (_%g8492285136%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8492285136%_)))
                                            (if (equal? _%e8493585905%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl8493485902%_)
                                                    (let ((_%e8507785357%_
                                                           (gx#syntax-e
                                                            _%tl8493485902%_)))
                                                      (let ((_%tl8507985364%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8507785357%_)))
                    (_%hd8507885361%_
                     (let () (declare (not safe)) (##car _%e8507785357%_))))
                (if (gx#stx-pair? _%tl8507985364%_)
                    (let ((_%e8508085367%_ (gx#syntax-e _%tl8507985364%_)))
                      (let ((_%tl8508285374%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8508085367%_)))
                            (_%hd8508185371%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8508085367%_))))
                        (if (gx#stx-pair? _%hd8508185371%_)
                            (let ((_%e8508385377%_
                                   (gx#syntax-e _%hd8508185371%_)))
                              (let ((_%tl8508585384%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8508385377%_)))
                                    (_%hd8508485381%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8508385377%_))))
                                (_%__kont9098390984%_
                                 _%tl8508285374%_
                                 _%tl8508585384%_
                                 _%hd8508485381%_
                                 _%hd8507885361%_
                                 _%hd8493085889%_)))
                            (if (gx#stx-pair/null? _%hd8507885361%_)
                                (let ((_%__splice9098790988%_
                                       (gx#syntax-split-splice
                                        _%hd8507885361%_
                                        '0)))
                                  (let ((_%tl8510485180%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9098790988%_
                                            '1)))
                                        (_%target8510285177%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9098790988%_
                                            '0))))
                                    (if (gx#stx-null? _%tl8510485180%_)
                                        (_%__match9131591316%_
                                         _%e8492985885%_
                                         _%hd8493085889%_
                                         _%tl8493185892%_
                                         _%e8493285895%_
                                         _%hd8493385899%_
                                         _%tl8493485902%_
                                         _%e8493585905%_
                                         _%e8507785357%_
                                         _%hd8507885361%_
                                         _%tl8507985364%_
                                         _%__splice9098790988%_
                                         _%target8510285177%_
                                         _%tl8510485180%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8492285136%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8492285136%_))))))
                    (if (gx#stx-pair/null? _%hd8507885361%_)
                        (let ((_%__splice9098790988%_
                               (gx#syntax-split-splice _%hd8507885361%_ '0)))
                          (let ((_%tl8510485180%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9098790988%_ '1)))
                                (_%target8510285177%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9098790988%_ '0))))
                            (if (gx#stx-null? _%tl8510485180%_)
                                (_%__match9131591316%_
                                 _%e8492985885%_
                                 _%hd8493085889%_
                                 _%tl8493185892%_
                                 _%e8493285895%_
                                 _%hd8493385899%_
                                 _%tl8493485902%_
                                 _%e8493585905%_
                                 _%e8507785357%_
                                 _%hd8507885361%_
                                 _%tl8507985364%_
                                 _%__splice9098790988%_
                                 _%target8510285177%_
                                 _%tl8510485180%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8492285136%_)))))
                        (let () (declare (not safe)) (_%g8492285136%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8492285136%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8492285136%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g8492285136%_)))))
                          (let () (declare (not safe)) (_%g8492285136%_)))))
                  (let () (declare (not safe)) (_%g8492285136%_))))))))))
