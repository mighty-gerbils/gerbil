(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g88154_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g88164_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx81214%_)
        (let* ((_%g8121881236%_
                (lambda (_%g8121981232%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8121981232%_)))
               (_%g8121781292%_
                (lambda (_%g8121981240%_)
                  (if (gx#stx-pair? _%g8121981240%_)
                      (let ((_%e8122281243%_ (gx#syntax-e _%g8121981240%_)))
                        (let ((_%hd8122381247%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8122281243%_)))
                              (_%tl8122481250%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8122281243%_))))
                          (if (gx#stx-pair? _%tl8122481250%_)
                              (let ((_%e8122581253%_
                                     (gx#syntax-e _%tl8122481250%_)))
                                (let ((_%hd8122681257%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8122581253%_)))
                                      (_%tl8122781260%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8122581253%_))))
                                  (if (gx#stx-pair? _%tl8122781260%_)
                                      (let ((_%e8122881263%_
                                             (gx#syntax-e _%tl8122781260%_)))
                                        (let ((_%hd8122981267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8122881263%_)))
                                              (_%tl8123081270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8122881263%_))))
                                          (if (gx#stx-null? _%tl8123081270%_)
                                              ((lambda (_%L81273%_ _%L81275%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L81275%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L81273%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8122981267%_
                                               _%hd8122681257%_)
                                              (_%g8121881236%_
                                               _%g8121981240%_))))
                                      (_%g8121881236%_ _%g8121981240%_))))
                              (_%g8121881236%_ _%g8121981240%_))))
                      (_%g8121881236%_ _%g8121981240%_)))))
          (_%g8121781292%_ _%$stx81214%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx81296%_)
        (let* ((_%g8130081314%_
                (lambda (_%g8130181310%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8130181310%_)))
               (_%g8129981355%_
                (lambda (_%g8130181318%_)
                  (if (gx#stx-pair? _%g8130181318%_)
                      (let ((_%e8130381321%_ (gx#syntax-e _%g8130181318%_)))
                        (let ((_%hd8130481325%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8130381321%_)))
                              (_%tl8130581328%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8130381321%_))))
                          (if (gx#stx-pair? _%tl8130581328%_)
                              (let ((_%e8130681331%_
                                     (gx#syntax-e _%tl8130581328%_)))
                                (let ((_%hd8130781335%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8130681331%_)))
                                      (_%tl8130881338%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8130681331%_))))
                                  (if (gx#stx-null? _%tl8130881338%_)
                                      ((lambda (_%L81341%_)
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
                                       (cons _%L81341%_
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
                                       _%hd8130781335%_)
                                      (_%g8130081314%_ _%g8130181318%_))))
                              (_%g8130081314%_ _%g8130181318%_))))
                      (_%g8130081314%_ _%g8130181318%_)))))
          (_%g8129981355%_ _%$stx81296%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx81359%_)
        (let* ((_%g8136381377%_
                (lambda (_%g8136481373%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8136481373%_)))
               (_%g8136281418%_
                (lambda (_%g8136481381%_)
                  (if (gx#stx-pair? _%g8136481381%_)
                      (let ((_%e8136681384%_ (gx#syntax-e _%g8136481381%_)))
                        (let ((_%hd8136781388%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8136681384%_)))
                              (_%tl8136881391%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8136681384%_))))
                          (if (gx#stx-pair? _%tl8136881391%_)
                              (let ((_%e8136981394%_
                                     (gx#syntax-e _%tl8136881391%_)))
                                (let ((_%hd8137081398%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8136981394%_)))
                                      (_%tl8137181401%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8136981394%_))))
                                  (if (gx#stx-null? _%tl8137181401%_)
                                      ((lambda (_%L81404%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L81404%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd8137081398%_)
                                      (_%g8136381377%_ _%g8136481381%_))))
                              (_%g8136381377%_ _%g8136481381%_))))
                      (_%g8136381377%_ _%g8136481381%_)))))
          (_%g8136281418%_ _%$stx81359%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx81422%_)
        (let* ((_%g8142681436%_
                (lambda (_%g8142781432%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8142781432%_)))
               (_%g8142581457%_
                (lambda (_%g8142781440%_)
                  (if (gx#stx-pair? _%g8142781440%_)
                      (let ((_%e8142881443%_ (gx#syntax-e _%g8142781440%_)))
                        (let ((_%hd8142981447%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8142881443%_)))
                              (_%tl8143081450%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8142881443%_))))
                          (if (gx#stx-null? _%tl8143081450%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g8142681436%_ _%g8142781440%_))))
                      (_%g8142681436%_ _%g8142781440%_)))))
          (_%g8142581457%_ _%$stx81422%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx81461%_)
        (let* ((_%g8146581483%_
                (lambda (_%g8146681479%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8146681479%_)))
               (_%g8146481538%_
                (lambda (_%g8146681487%_)
                  (if (gx#stx-pair? _%g8146681487%_)
                      (let ((_%e8146981490%_ (gx#syntax-e _%g8146681487%_)))
                        (let ((_%hd8147081494%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8146981490%_)))
                              (_%tl8147181497%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8146981490%_))))
                          (if (gx#stx-pair? _%tl8147181497%_)
                              (let ((_%e8147281500%_
                                     (gx#syntax-e _%tl8147181497%_)))
                                (let ((_%hd8147381504%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8147281500%_)))
                                      (_%tl8147481507%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8147281500%_))))
                                  (if (gx#stx-pair? _%tl8147481507%_)
                                      (let ((_%e8147581510%_
                                             (gx#syntax-e _%tl8147481507%_)))
                                        (let ((_%hd8147681514%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8147581510%_)))
                                              (_%tl8147781517%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8147581510%_))))
                                          (if (gx#stx-null? _%tl8147781517%_)
                                              ((lambda (_%L81520%_ _%L81522%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L81522%_
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
                 (cons (cons _%L81520%_
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
                                               _%hd8147681514%_
                                               _%hd8147381504%_)
                                              (_%g8146581483%_
                                               _%g8146681487%_))))
                                      (_%g8146581483%_ _%g8146681487%_))))
                              (_%g8146581483%_ _%g8146681487%_))))
                      (_%g8146581483%_ _%g8146681487%_)))))
          (_%g8146481538%_ _%$stx81461%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx81542%_)
        (let* ((_%g8154681564%_
                (lambda (_%g8154781560%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8154781560%_)))
               (_%g8154581619%_
                (lambda (_%g8154781568%_)
                  (if (gx#stx-pair? _%g8154781568%_)
                      (let ((_%e8155081571%_ (gx#syntax-e _%g8154781568%_)))
                        (let ((_%hd8155181575%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8155081571%_)))
                              (_%tl8155281578%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8155081571%_))))
                          (if (gx#stx-pair? _%tl8155281578%_)
                              (let ((_%e8155381581%_
                                     (gx#syntax-e _%tl8155281578%_)))
                                (let ((_%hd8155481585%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8155381581%_)))
                                      (_%tl8155581588%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8155381581%_))))
                                  (if (gx#stx-pair? _%tl8155581588%_)
                                      (let ((_%e8155681591%_
                                             (gx#syntax-e _%tl8155581588%_)))
                                        (let ((_%hd8155781595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8155681591%_)))
                                              (_%tl8155881598%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8155681591%_))))
                                          (if (gx#stx-null? _%tl8155881598%_)
                                              ((lambda (_%L81601%_ _%L81603%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L81603%_
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
                                               (cons (cons _%L81601%_
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
                                               _%hd8155781595%_
                                               _%hd8155481585%_)
                                              (_%g8154681564%_
                                               _%g8154781568%_))))
                                      (_%g8154681564%_ _%g8154781568%_))))
                              (_%g8154681564%_ _%g8154781568%_))))
                      (_%g8154681564%_ _%g8154781568%_)))))
          (_%g8154581619%_ _%$stx81542%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx81623%_)
        (let* ((_%g8162781645%_
                (lambda (_%g8162881641%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8162881641%_)))
               (_%g8162681700%_
                (lambda (_%g8162881649%_)
                  (if (gx#stx-pair? _%g8162881649%_)
                      (let ((_%e8163181652%_ (gx#syntax-e _%g8162881649%_)))
                        (let ((_%hd8163281656%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8163181652%_)))
                              (_%tl8163381659%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8163181652%_))))
                          (if (gx#stx-pair? _%tl8163381659%_)
                              (let ((_%e8163481662%_
                                     (gx#syntax-e _%tl8163381659%_)))
                                (let ((_%hd8163581666%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8163481662%_)))
                                      (_%tl8163681669%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8163481662%_))))
                                  (if (gx#stx-pair? _%tl8163681669%_)
                                      (let ((_%e8163781672%_
                                             (gx#syntax-e _%tl8163681669%_)))
                                        (let ((_%hd8163881676%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8163781672%_)))
                                              (_%tl8163981679%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8163781672%_))))
                                          (if (gx#stx-null? _%tl8163981679%_)
                                              ((lambda (_%L81682%_ _%L81684%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L81684%_
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
                                               (cons (cons _%L81682%_
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
                                               _%hd8163881676%_
                                               _%hd8163581666%_)
                                              (_%g8162781645%_
                                               _%g8162881649%_))))
                                      (_%g8162781645%_ _%g8162881649%_))))
                              (_%g8162781645%_ _%g8162881649%_))))
                      (_%g8162781645%_ _%g8162881649%_)))))
          (_%g8162681700%_ _%$stx81623%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx81704%_)
        (let* ((_%g8170881719%_
                (lambda (_%g8170981715%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8170981715%_)))
               (_%g8170781748%_
                (lambda (_%g8170981723%_)
                  (if (gx#stx-pair? _%g8170981723%_)
                      (let ((_%e8171181726%_ (gx#syntax-e _%g8170981723%_)))
                        (let ((_%hd8171281730%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8171181726%_)))
                              (_%tl8171381733%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8171181726%_))))
                          ((lambda (_%L81736%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L81736%_)))
                           _%tl8171381733%_)))
                      (_%g8170881719%_ _%g8170981723%_)))))
          (_%g8170781748%_ _%$stx81704%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx81752%_)
        (let* ((_%__stx8771587716%_ _%$stx81752%_)
               (_%g8176381977%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8771587716%_))))
          (let ((_%__kont8771887719%_
                 (lambda (_%L82830%_
                          _%L82832%_
                          _%L82833%_
                          _%L82834%_
                          _%L82835%_)
                   (cons _%L82835%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8286582868%_
                                                     _%g8286682871%_)
                                              (cons _%g8286582868%_
                                                    _%g8286682871%_))
                                            '()
                                            _%L82833%_)
                                           (cons _%L82834%_
                                                 (cons _%L82832%_
                                                       (cons _%L82830%_
                                                             '())))))))))
                (_%__kont8772287723%_
                 (lambda (_%L82683%_ _%L82685%_ _%L82686%_ _%L82687%_)
                   (cons _%L82687%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8271082713%_
                                                     _%g8271182716%_)
                                              (cons _%g8271082713%_
                                                    _%g8271182716%_))
                                            '()
                                            _%L82685%_)
                                           (cons _%L82686%_
                                                 (cons _%L82683%_
                                                       (cons _%L82683%_
                                                             '())))))))))
                (_%__kont8772687727%_
                 (lambda (_%L82586%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L82586%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont8772887729%_
                 (lambda (_%L82509%_
                          _%L82511%_
                          _%L82512%_
                          _%L82513%_
                          _%L82514%_
                          _%L82515%_)
                   (cons _%L82515%_
                         (cons '2
                               (cons (cons (cons _%L82513%_
                                                 (cons _%L82512%_ '()))
                                           _%L82514%_)
                                     (cons _%L82511%_ _%L82509%_))))))
                (_%__kont8773087731%_
                 (lambda (_%L82390%_
                          _%L82392%_
                          _%L82393%_
                          _%L82394%_
                          _%L82395%_)
                   (cons _%L82395%_
                         (cons '2
                               (cons (cons (cons _%L82393%_
                                                 (cons _%L82393%_ '()))
                                           _%L82394%_)
                                     (cons _%L82392%_ _%L82390%_))))))
                (_%__kont8773287733%_
                 (lambda (_%L82307%_ _%L82309%_ _%L82310%_)
                   (cons _%L82310%_
                         (cons '3 (cons '() (cons _%L82309%_ _%L82307%_))))))
                (_%__kont8773487735%_
                 (lambda (_%L82228%_
                          _%L82230%_
                          _%L82231%_
                          _%L82232%_
                          _%L82233%_)
                   (cons _%L82233%_
                         (cons '3
                               (cons (cons _%L82231%_ _%L82232%_)
                                     (cons _%L82230%_ _%L82228%_))))))
                (_%__kont8773687737%_
                 (lambda (_%L82112%_
                          _%L82114%_
                          _%L82115%_
                          _%L82116%_
                          _%L82117%_
                          _%L82118%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L82115%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L82112%_ '())))
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
                                              (lambda (_%g8215282155%_
                                                       _%g8215382158%_)
                                                (cons _%g8215282155%_
                                                      _%g8215382158%_))
                                              '()
                                              _%L82117%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (__foldr1
                                              (lambda (_%g8215082161%_
                                                       _%g8215182164%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g8215082161%_ '())))
              _%g8215182164%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L82116%_))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L82114%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match8806688067%_
                    (lambda (_%e8193381984%_
                             _%hd8193481988%_
                             _%tl8193581991%_
                             _%e8193681994%_
                             _%hd8193781998%_
                             _%tl8193882001%_
                             _%e8193982004%_
                             _%e8194082008%_
                             _%hd8194182012%_
                             _%tl8194282015%_
                             _%__splice8773887739%_
                             _%target8194382018%_
                             _%tl8194582021%_)
                      (letrec ((_%loop8194682024%_
                                (lambda (_%hd8194482028%_
                                         _%exprs8195082031%_
                                         _%names8195182033%_)
                                  (if (gx#stx-pair? _%hd8194482028%_)
                                      (let ((_%e8194782036%_
                                             (gx#syntax-e _%hd8194482028%_)))
                                        (let ((_%lp-tl8194982043%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8194782036%_)))
                                              (_%lp-hd8194882040%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8194782036%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd8194882040%_)
                                              (let ((_%e8196682046%_
                                                     (gx#syntax-e
                                                      _%lp-hd8194882040%_)))
                                                (let ((_%tl8196882053%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8196682046%_)))
                                                      (_%hd8196782050%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8196682046%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8196882053%_)
                                                      (let ((_%e8196982056%_
                                                             (gx#syntax-e
                                                              _%tl8196882053%_)))
                                                        (let ((_%tl8197182063%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8196982056%_)))
                      (_%hd8197082060%_
                       (let () (declare (not safe)) (##car _%e8196982056%_))))
                  (if (gx#stx-null? _%tl8197182063%_)
                      (_%loop8194682024%_
                       _%lp-tl8194982043%_
                       (cons _%hd8197082060%_ _%exprs8195082031%_)
                       (cons _%hd8196782050%_ _%names8195182033%_))
                      (let () (declare (not safe)) (_%g8176381977%_)))))
              (let () (declare (not safe)) (_%g8176381977%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g8176381977%_)))))
                                      (let ((_%names8195382069%_
                                             (reverse _%names8195182033%_))
                                            (_%exprs8195282066%_
                                             (reverse _%exprs8195082031%_)))
                                        (if (gx#stx-pair? _%tl8194282015%_)
                                            (let ((_%e8195482072%_
                                                   (gx#syntax-e
                                                    _%tl8194282015%_)))
                                              (let ((_%tl8195682079%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8195482072%_)))
                                                    (_%hd8195582076%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8195482072%_))))
                                                (if (gx#stx-null?
                                                     _%hd8195582076%_)
                                                    (if (gx#stx-pair?
                                                         _%tl8195682079%_)
                                                        (let ((_%e8195782082%_
                                                               (gx#syntax-e
                                                                _%tl8195682079%_)))
                                                          (let ((_%tl8195982089%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8195782082%_)))
                        (_%hd8195882086%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8195782082%_))))
                    (if (gx#stx-pair? _%tl8195982089%_)
                        (let ((_%e8196082092%_ (gx#syntax-e _%tl8195982089%_)))
                          (let ((_%tl8196282099%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8196082092%_)))
                                (_%hd8196182096%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8196082092%_))))
                            (if (gx#stx-pair? _%tl8196282099%_)
                                (let ((_%e8196382102%_
                                       (gx#syntax-e _%tl8196282099%_)))
                                  (let ((_%tl8196582109%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8196382102%_)))
                                        (_%hd8196482106%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8196382102%_))))
                                    (if (gx#stx-null? _%tl8196582109%_)
                                        (_%__kont8773687737%_
                                         _%hd8196482106%_
                                         _%hd8196182096%_
                                         _%hd8195882086%_
                                         _%exprs8195282066%_
                                         _%names8195382069%_
                                         _%hd8193481988%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8176381977%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8176381977%_)))))
                        (let () (declare (not safe)) (_%g8176381977%_)))))
                (let () (declare (not safe)) (_%g8176381977%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8176381977%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8176381977%_))))))))
                        (_%loop8194682024%_ _%target8194382018%_ '() '()))))
                   (_%__match8784487845%_
                    (lambda (_%e8180582609%_
                             _%hd8180682613%_
                             _%tl8180782616%_
                             _%e8180882619%_
                             _%hd8180982623%_
                             _%tl8181082626%_
                             _%e8181182629%_
                             _%e8181282633%_
                             _%hd8181382637%_
                             _%tl8181482640%_
                             _%__splice8772487725%_
                             _%target8181582643%_
                             _%tl8181782646%_
                             _%e8182482649%_
                             _%hd8182582653%_
                             _%tl8182682656%_)
                      (letrec ((_%loop8181882659%_
                                (lambda (_%hd8181682663%_ _%exprs8182282666%_)
                                  (if (gx#stx-pair? _%hd8181682663%_)
                                      (let ((_%e8181982669%_
                                             (gx#syntax-e _%hd8181682663%_)))
                                        (let ((_%lp-tl8182182676%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8181982669%_)))
                                              (_%lp-hd8182082673%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8181982669%_))))
                                          (_%loop8181882659%_
                                           _%lp-tl8182182676%_
                                           (cons _%lp-hd8182082673%_
                                                 _%exprs8182282666%_))))
                                      (let ((_%exprs8182382679%_
                                             (reverse _%exprs8182282666%_)))
                                        (_%__kont8772287723%_
                                         _%hd8182582653%_
                                         _%exprs8182382679%_
                                         _%hd8181382637%_
                                         _%hd8180682613%_))))))
                        (_%loop8181882659%_ _%target8181582643%_ '()))))
                   (_%__match8780487805%_
                    (lambda (_%e8177082726%_
                             _%hd8177182730%_
                             _%tl8177282733%_
                             _%e8177382736%_
                             _%hd8177482740%_
                             _%tl8177582743%_
                             _%e8177682746%_
                             _%e8177782750%_
                             _%hd8177882754%_
                             _%tl8177982757%_
                             _%__splice8772087721%_
                             _%target8178082760%_
                             _%tl8178282763%_
                             _%e8178982766%_
                             _%hd8179082770%_
                             _%tl8179182773%_
                             _%e8179282776%_
                             _%hd8179382780%_
                             _%tl8179482783%_
                             _%e8179582786%_
                             _%hd8179682790%_
                             _%tl8179782793%_
                             _%e8179882796%_
                             _%hd8179982800%_
                             _%tl8180082803%_)
                      (letrec ((_%loop8178382806%_
                                (lambda (_%hd8178182810%_ _%exprs8178782813%_)
                                  (if (gx#stx-pair? _%hd8178182810%_)
                                      (let ((_%e8178482816%_
                                             (gx#syntax-e _%hd8178182810%_)))
                                        (let ((_%lp-tl8178682823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8178482816%_)))
                                              (_%lp-hd8178582820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8178482816%_))))
                                          (_%loop8178382806%_
                                           _%lp-tl8178682823%_
                                           (cons _%lp-hd8178582820%_
                                                 _%exprs8178782813%_))))
                                      (let ((_%exprs8178882826%_
                                             (reverse _%exprs8178782813%_)))
                                        (_%__kont8771887719%_
                                         _%hd8179982800%_
                                         _%hd8179682790%_
                                         _%exprs8178882826%_
                                         _%hd8177882754%_
                                         _%hd8177182730%_))))))
                        (_%loop8178382806%_ _%target8178082760%_ '())))))
              (if (gx#stx-pair? _%__stx8771587716%_)
                  (let ((_%e8177082726%_ (gx#syntax-e _%__stx8771587716%_)))
                    (let ((_%tl8177282733%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e8177082726%_)))
                          (_%hd8177182730%_
                           (let ()
                             (declare (not safe))
                             (##car _%e8177082726%_))))
                      (if (gx#stx-pair? _%tl8177282733%_)
                          (let ((_%e8177382736%_
                                 (gx#syntax-e _%tl8177282733%_)))
                            (let ((_%tl8177582743%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e8177382736%_)))
                                  (_%hd8177482740%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e8177382736%_))))
                              (if (gx#stx-datum? _%hd8177482740%_)
                                  (let ((_%e8177682746%_
                                         (gx#stx-e _%hd8177482740%_)))
                                    (if (equal? _%e8177682746%_ '1)
                                        (if (gx#stx-pair? _%tl8177582743%_)
                                            (let ((_%e8177782750%_
                                                   (gx#syntax-e
                                                    _%tl8177582743%_)))
                                              (let ((_%tl8177982757%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8177782750%_)))
                                                    (_%hd8177882754%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8177782750%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl8177982757%_)
                                                    (if (let ((__tmp88153
                                                               (gx#stx-length
                                                                _%tl8177982757%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp88153
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice8772087721%_
                       (gx#syntax-split-splice _%tl8177982757%_ '2)))
                  (let ((_%tl8178282763%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8772087721%_ '1)))
                        (_%target8178082760%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8772087721%_ '0))))
                    (if (gx#stx-pair? _%tl8178282763%_)
                        (let ((_%e8178982766%_ (gx#syntax-e _%tl8178282763%_)))
                          (let ((_%tl8179182773%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8178982766%_)))
                                (_%hd8179082770%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8178982766%_))))
                            (if (gx#stx-pair? _%hd8179082770%_)
                                (let ((_%e8179282776%_
                                       (gx#syntax-e _%hd8179082770%_)))
                                  (let ((_%tl8179482783%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8179282776%_)))
                                        (_%hd8179382780%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8179282776%_))))
                                    (if (gx#identifier? _%hd8179382780%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g88154_|
                                             _%hd8179382780%_)
                                            (if (gx#stx-pair? _%tl8179482783%_)
                                                (let ((_%e8179582786%_
                                                       (gx#syntax-e
                                                        _%tl8179482783%_)))
                                                  (let ((_%tl8179782793%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8179582786%_)))
                                                        (_%hd8179682790%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8179582786%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8179782793%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8179182773%_)
                                                            (let ((_%e8179882796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8179182773%_)))
                      (let ((_%tl8180082803%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8179882796%_)))
                            (_%hd8179982800%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8179882796%_))))
                        (if (gx#stx-null? _%tl8180082803%_)
                            (_%__match8780487805%_
                             _%e8177082726%_
                             _%hd8177182730%_
                             _%tl8177282733%_
                             _%e8177382736%_
                             _%hd8177482740%_
                             _%tl8177582743%_
                             _%e8177682746%_
                             _%e8177782750%_
                             _%hd8177882754%_
                             _%tl8177982757%_
                             _%__splice8772087721%_
                             _%target8178082760%_
                             _%tl8178282763%_
                             _%e8178982766%_
                             _%hd8179082770%_
                             _%tl8179182773%_
                             _%e8179282776%_
                             _%hd8179382780%_
                             _%tl8179482783%_
                             _%e8179582786%_
                             _%hd8179682790%_
                             _%tl8179782793%_
                             _%e8179882796%_
                             _%hd8179982800%_
                             _%tl8180082803%_)
                            (if (let ((__tmp88155
                                       (gx#stx-length _%tl8177982757%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp88155 '1))
                                (let ((_%__splice8772487725%_
                                       (gx#syntax-split-splice
                                        _%tl8177982757%_
                                        '1)))
                                  (let ((_%tl8181782646%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8772487725%_
                                            '1)))
                                        (_%target8181582643%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8772487725%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl8181782646%_)
                                        (let ((_%e8182482649%_
                                               (gx#syntax-e _%tl8181782646%_)))
                                          (let ((_%tl8182682656%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e8182482649%_)))
                                                (_%hd8182582653%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e8182482649%_))))
                                            (if (gx#stx-null? _%tl8182682656%_)
                                                (_%__match8784487845%_
                                                 _%e8177082726%_
                                                 _%hd8177182730%_
                                                 _%tl8177282733%_
                                                 _%e8177382736%_
                                                 _%hd8177482740%_
                                                 _%tl8177582743%_
                                                 _%e8177682746%_
                                                 _%e8177782750%_
                                                 _%hd8177882754%_
                                                 _%tl8177982757%_
                                                 _%__splice8772487725%_
                                                 _%target8181582643%_
                                                 _%tl8181782646%_
                                                 _%e8182482649%_
                                                 _%hd8182582653%_
                                                 _%tl8182682656%_)
                                                (if (gx#stx-null?
                                                     _%tl8177982757%_)
                                                    (_%__kont8772687727%_
                                                     _%hd8177882754%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8176381977%_))))))
                                        (if (gx#stx-null? _%tl8177982757%_)
                                            (_%__kont8772687727%_
                                             _%hd8177882754%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8176381977%_))))))
                                (if (gx#stx-null? _%tl8177982757%_)
                                    (_%__kont8772687727%_ _%hd8177882754%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8176381977%_)))))))
                    (if (let ((__tmp88156 (gx#stx-length _%tl8177982757%_)))
                          (declare (not safe))
                          (##fx>= __tmp88156 '1))
                        (let ((_%__splice8772487725%_
                               (gx#syntax-split-splice _%tl8177982757%_ '1)))
                          (let ((_%tl8181782646%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8772487725%_ '1)))
                                (_%target8181582643%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8772487725%_ '0))))
                            (if (gx#stx-pair? _%tl8181782646%_)
                                (let ((_%e8182482649%_
                                       (gx#syntax-e _%tl8181782646%_)))
                                  (let ((_%tl8182682656%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8182482649%_)))
                                        (_%hd8182582653%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8182482649%_))))
                                    (if (gx#stx-null? _%tl8182682656%_)
                                        (_%__match8784487845%_
                                         _%e8177082726%_
                                         _%hd8177182730%_
                                         _%tl8177282733%_
                                         _%e8177382736%_
                                         _%hd8177482740%_
                                         _%tl8177582743%_
                                         _%e8177682746%_
                                         _%e8177782750%_
                                         _%hd8177882754%_
                                         _%tl8177982757%_
                                         _%__splice8772487725%_
                                         _%target8181582643%_
                                         _%tl8181782646%_
                                         _%e8182482649%_
                                         _%hd8182582653%_
                                         _%tl8182682656%_)
                                        (if (gx#stx-null? _%tl8177982757%_)
                                            (_%__kont8772687727%_
                                             _%hd8177882754%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8176381977%_))))))
                                (if (gx#stx-null? _%tl8177982757%_)
                                    (_%__kont8772687727%_ _%hd8177882754%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8176381977%_))))))
                        (if (gx#stx-null? _%tl8177982757%_)
                            (_%__kont8772687727%_ _%hd8177882754%_)
                            (let () (declare (not safe)) (_%g8176381977%_)))))
                (if (let ((__tmp88157 (gx#stx-length _%tl8177982757%_)))
                      (declare (not safe))
                      (##fx>= __tmp88157 '1))
                    (let ((_%__splice8772487725%_
                           (gx#syntax-split-splice _%tl8177982757%_ '1)))
                      (let ((_%tl8181782646%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8772487725%_ '1)))
                            (_%target8181582643%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8772487725%_ '0))))
                        (if (gx#stx-pair? _%tl8181782646%_)
                            (let ((_%e8182482649%_
                                   (gx#syntax-e _%tl8181782646%_)))
                              (let ((_%tl8182682656%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8182482649%_)))
                                    (_%hd8182582653%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8182482649%_))))
                                (if (gx#stx-null? _%tl8182682656%_)
                                    (_%__match8784487845%_
                                     _%e8177082726%_
                                     _%hd8177182730%_
                                     _%tl8177282733%_
                                     _%e8177382736%_
                                     _%hd8177482740%_
                                     _%tl8177582743%_
                                     _%e8177682746%_
                                     _%e8177782750%_
                                     _%hd8177882754%_
                                     _%tl8177982757%_
                                     _%__splice8772487725%_
                                     _%target8181582643%_
                                     _%tl8181782646%_
                                     _%e8182482649%_
                                     _%hd8182582653%_
                                     _%tl8182682656%_)
                                    (if (gx#stx-null? _%tl8177982757%_)
                                        (_%__kont8772687727%_ _%hd8177882754%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8176381977%_))))))
                            (if (gx#stx-null? _%tl8177982757%_)
                                (_%__kont8772687727%_ _%hd8177882754%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8176381977%_))))))
                    (if (gx#stx-null? _%tl8177982757%_)
                        (_%__kont8772687727%_ _%hd8177882754%_)
                        (let () (declare (not safe)) (_%g8176381977%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp88158
                                                           (gx#stx-length
                                                            _%tl8177982757%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp88158 '1))
                                                    (let ((_%__splice8772487725%_
                                                           (gx#syntax-split-splice
                                                            _%tl8177982757%_
                                                            '1)))
                                                      (let ((_%tl8181782646%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8772487725%_ '1)))
                    (_%target8181582643%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8772487725%_ '0))))
                (if (gx#stx-pair? _%tl8181782646%_)
                    (let ((_%e8182482649%_ (gx#syntax-e _%tl8181782646%_)))
                      (let ((_%tl8182682656%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8182482649%_)))
                            (_%hd8182582653%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8182482649%_))))
                        (if (gx#stx-null? _%tl8182682656%_)
                            (_%__match8784487845%_
                             _%e8177082726%_
                             _%hd8177182730%_
                             _%tl8177282733%_
                             _%e8177382736%_
                             _%hd8177482740%_
                             _%tl8177582743%_
                             _%e8177682746%_
                             _%e8177782750%_
                             _%hd8177882754%_
                             _%tl8177982757%_
                             _%__splice8772487725%_
                             _%target8181582643%_
                             _%tl8181782646%_
                             _%e8182482649%_
                             _%hd8182582653%_
                             _%tl8182682656%_)
                            (if (gx#stx-null? _%tl8177982757%_)
                                (_%__kont8772687727%_ _%hd8177882754%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8176381977%_))))))
                    (if (gx#stx-null? _%tl8177982757%_)
                        (_%__kont8772687727%_ _%hd8177882754%_)
                        (let () (declare (not safe)) (_%g8176381977%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8177982757%_)
                                                        (_%__kont8772687727%_
                                                         _%hd8177882754%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8176381977%_)))))
                                            (if (let ((__tmp88159
                                                       (gx#stx-length
                                                        _%tl8177982757%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp88159 '1))
                                                (let ((_%__splice8772487725%_
                                                       (gx#syntax-split-splice
                                                        _%tl8177982757%_
                                                        '1)))
                                                  (let ((_%tl8181782646%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8772487725%_
                                                            '1)))
                                                        (_%target8181582643%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8772487725%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl8181782646%_)
                                                        (let ((_%e8182482649%_
                                                               (gx#syntax-e
                                                                _%tl8181782646%_)))
                                                          (let ((_%tl8182682656%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8182482649%_)))
                        (_%hd8182582653%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8182482649%_))))
                    (if (gx#stx-null? _%tl8182682656%_)
                        (_%__match8784487845%_
                         _%e8177082726%_
                         _%hd8177182730%_
                         _%tl8177282733%_
                         _%e8177382736%_
                         _%hd8177482740%_
                         _%tl8177582743%_
                         _%e8177682746%_
                         _%e8177782750%_
                         _%hd8177882754%_
                         _%tl8177982757%_
                         _%__splice8772487725%_
                         _%target8181582643%_
                         _%tl8181782646%_
                         _%e8182482649%_
                         _%hd8182582653%_
                         _%tl8182682656%_)
                        (if (gx#stx-null? _%tl8177982757%_)
                            (_%__kont8772687727%_ _%hd8177882754%_)
                            (let () (declare (not safe)) (_%g8176381977%_))))))
                (if (gx#stx-null? _%tl8177982757%_)
                    (_%__kont8772687727%_ _%hd8177882754%_)
                    (let () (declare (not safe)) (_%g8176381977%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl8177982757%_)
                                                    (_%__kont8772687727%_
                                                     _%hd8177882754%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8176381977%_)))))
                                        (if (let ((__tmp88160
                                                   (gx#stx-length
                                                    _%tl8177982757%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp88160 '1))
                                            (let ((_%__splice8772487725%_
                                                   (gx#syntax-split-splice
                                                    _%tl8177982757%_
                                                    '1)))
                                              (let ((_%tl8181782646%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8772487725%_
                                                        '1)))
                                                    (_%target8181582643%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8772487725%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl8181782646%_)
                                                    (let ((_%e8182482649%_
                                                           (gx#syntax-e
                                                            _%tl8181782646%_)))
                                                      (let ((_%tl8182682656%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8182482649%_)))
                    (_%hd8182582653%_
                     (let () (declare (not safe)) (##car _%e8182482649%_))))
                (if (gx#stx-null? _%tl8182682656%_)
                    (_%__match8784487845%_
                     _%e8177082726%_
                     _%hd8177182730%_
                     _%tl8177282733%_
                     _%e8177382736%_
                     _%hd8177482740%_
                     _%tl8177582743%_
                     _%e8177682746%_
                     _%e8177782750%_
                     _%hd8177882754%_
                     _%tl8177982757%_
                     _%__splice8772487725%_
                     _%target8181582643%_
                     _%tl8181782646%_
                     _%e8182482649%_
                     _%hd8182582653%_
                     _%tl8182682656%_)
                    (if (gx#stx-null? _%tl8177982757%_)
                        (_%__kont8772687727%_ _%hd8177882754%_)
                        (let () (declare (not safe)) (_%g8176381977%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8177982757%_)
                                                        (_%__kont8772687727%_
                                                         _%hd8177882754%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8176381977%_))))))
                                            (if (gx#stx-null? _%tl8177982757%_)
                                                (_%__kont8772687727%_
                                                 _%hd8177882754%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8176381977%_)))))))
                                (if (let ((__tmp88161
                                           (gx#stx-length _%tl8177982757%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp88161 '1))
                                    (let ((_%__splice8772487725%_
                                           (gx#syntax-split-splice
                                            _%tl8177982757%_
                                            '1)))
                                      (let ((_%tl8181782646%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8772487725%_
                                                '1)))
                                            (_%target8181582643%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8772487725%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl8181782646%_)
                                            (let ((_%e8182482649%_
                                                   (gx#syntax-e
                                                    _%tl8181782646%_)))
                                              (let ((_%tl8182682656%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8182482649%_)))
                                                    (_%hd8182582653%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8182482649%_))))
                                                (if (gx#stx-null?
                                                     _%tl8182682656%_)
                                                    (_%__match8784487845%_
                                                     _%e8177082726%_
                                                     _%hd8177182730%_
                                                     _%tl8177282733%_
                                                     _%e8177382736%_
                                                     _%hd8177482740%_
                                                     _%tl8177582743%_
                                                     _%e8177682746%_
                                                     _%e8177782750%_
                                                     _%hd8177882754%_
                                                     _%tl8177982757%_
                                                     _%__splice8772487725%_
                                                     _%target8181582643%_
                                                     _%tl8181782646%_
                                                     _%e8182482649%_
                                                     _%hd8182582653%_
                                                     _%tl8182682656%_)
                                                    (if (gx#stx-null?
                                                         _%tl8177982757%_)
                                                        (_%__kont8772687727%_
                                                         _%hd8177882754%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8176381977%_))))))
                                            (if (gx#stx-null? _%tl8177982757%_)
                                                (_%__kont8772687727%_
                                                 _%hd8177882754%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8176381977%_))))))
                                    (if (gx#stx-null? _%tl8177982757%_)
                                        (_%__kont8772687727%_ _%hd8177882754%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8176381977%_)))))))
                        (if (let ((__tmp88162
                                   (gx#stx-length _%tl8177982757%_)))
                              (declare (not safe))
                              (##fx>= __tmp88162 '1))
                            (let ((_%__splice8772487725%_
                                   (gx#syntax-split-splice
                                    _%tl8177982757%_
                                    '1)))
                              (let ((_%tl8181782646%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8772487725%_
                                        '1)))
                                    (_%target8181582643%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8772487725%_
                                        '0))))
                                (if (gx#stx-pair? _%tl8181782646%_)
                                    (let ((_%e8182482649%_
                                           (gx#syntax-e _%tl8181782646%_)))
                                      (let ((_%tl8182682656%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8182482649%_)))
                                            (_%hd8182582653%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8182482649%_))))
                                        (if (gx#stx-null? _%tl8182682656%_)
                                            (_%__match8784487845%_
                                             _%e8177082726%_
                                             _%hd8177182730%_
                                             _%tl8177282733%_
                                             _%e8177382736%_
                                             _%hd8177482740%_
                                             _%tl8177582743%_
                                             _%e8177682746%_
                                             _%e8177782750%_
                                             _%hd8177882754%_
                                             _%tl8177982757%_
                                             _%__splice8772487725%_
                                             _%target8181582643%_
                                             _%tl8181782646%_
                                             _%e8182482649%_
                                             _%hd8182582653%_
                                             _%tl8182682656%_)
                                            (if (gx#stx-null? _%tl8177982757%_)
                                                (_%__kont8772687727%_
                                                 _%hd8177882754%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8176381977%_))))))
                                    (if (gx#stx-null? _%tl8177982757%_)
                                        (_%__kont8772687727%_ _%hd8177882754%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8176381977%_))))))
                            (if (gx#stx-null? _%tl8177982757%_)
                                (_%__kont8772687727%_ _%hd8177882754%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8176381977%_)))))))
                (if (let ((__tmp88163 (gx#stx-length _%tl8177982757%_)))
                      (declare (not safe))
                      (##fx>= __tmp88163 '1))
                    (let ((_%__splice8772487725%_
                           (gx#syntax-split-splice _%tl8177982757%_ '1)))
                      (let ((_%tl8181782646%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8772487725%_ '1)))
                            (_%target8181582643%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8772487725%_ '0))))
                        (if (gx#stx-pair? _%tl8181782646%_)
                            (let ((_%e8182482649%_
                                   (gx#syntax-e _%tl8181782646%_)))
                              (let ((_%tl8182682656%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8182482649%_)))
                                    (_%hd8182582653%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8182482649%_))))
                                (if (gx#stx-null? _%tl8182682656%_)
                                    (_%__match8784487845%_
                                     _%e8177082726%_
                                     _%hd8177182730%_
                                     _%tl8177282733%_
                                     _%e8177382736%_
                                     _%hd8177482740%_
                                     _%tl8177582743%_
                                     _%e8177682746%_
                                     _%e8177782750%_
                                     _%hd8177882754%_
                                     _%tl8177982757%_
                                     _%__splice8772487725%_
                                     _%target8181582643%_
                                     _%tl8181782646%_
                                     _%e8182482649%_
                                     _%hd8182582653%_
                                     _%tl8182682656%_)
                                    (if (gx#stx-null? _%tl8177982757%_)
                                        (_%__kont8772687727%_ _%hd8177882754%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8176381977%_))))))
                            (if (gx#stx-null? _%tl8177982757%_)
                                (_%__kont8772687727%_ _%hd8177882754%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8176381977%_))))))
                    (if (gx#stx-null? _%tl8177982757%_)
                        (_%__kont8772687727%_ _%hd8177882754%_)
                        (let () (declare (not safe)) (_%g8176381977%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8177982757%_)
                                                        (_%__kont8772687727%_
                                                         _%hd8177882754%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8176381977%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8176381977%_)))
                                        (if (equal? _%e8177682746%_ '2)
                                            (if (gx#stx-pair? _%tl8177582743%_)
                                                (let ((_%e8185182449%_
                                                       (gx#syntax-e
                                                        _%tl8177582743%_)))
                                                  (let ((_%tl8185382456%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8185182449%_)))
                                                        (_%hd8185282453%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8185182449%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl8185382456%_)
                                                        (let ((_%e8185482459%_
                                                               (gx#syntax-e
                                                                _%tl8185382456%_)))
                                                          (let ((_%tl8185682466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8185482459%_)))
                        (_%hd8185582463%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8185482459%_))))
                    (if (gx#stx-pair? _%hd8185582463%_)
                        (let ((_%e8185782469%_ (gx#syntax-e _%hd8185582463%_)))
                          (let ((_%tl8185982476%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8185782469%_)))
                                (_%hd8185882473%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8185782469%_))))
                            (if (gx#stx-pair? _%hd8185882473%_)
                                (let ((_%e8186082479%_
                                       (gx#syntax-e _%hd8185882473%_)))
                                  (let ((_%tl8186282486%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8186082479%_)))
                                        (_%hd8186182483%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8186082479%_))))
                                    (if (gx#identifier? _%hd8186182483%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g88164_|
                                             _%hd8186182483%_)
                                            (if (gx#stx-pair? _%tl8186282486%_)
                                                (let ((_%e8186382489%_
                                                       (gx#syntax-e
                                                        _%tl8186282486%_)))
                                                  (let ((_%tl8186582496%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8186382489%_)))
                                                        (_%hd8186482493%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8186382489%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8186582496%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8185982476%_)
                                                            (let ((_%e8186682499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8185982476%_)))
                      (let ((_%tl8186882506%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8186682499%_)))
                            (_%hd8186782503%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8186682499%_))))
                        (_%__kont8772887729%_
                         _%tl8185682466%_
                         _%tl8186882506%_
                         _%hd8186782503%_
                         _%hd8186482493%_
                         _%hd8185282453%_
                         _%hd8177182730%_)))
                    (_%__kont8773087731%_
                     _%tl8185682466%_
                     _%tl8185982476%_
                     _%hd8185882473%_
                     _%hd8185282453%_
                     _%hd8177182730%_))
                (_%__kont8773087731%_
                 _%tl8185682466%_
                 _%tl8185982476%_
                 _%hd8185882473%_
                 _%hd8185282453%_
                 _%hd8177182730%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont8773087731%_
                                                 _%tl8185682466%_
                                                 _%tl8185982476%_
                                                 _%hd8185882473%_
                                                 _%hd8185282453%_
                                                 _%hd8177182730%_))
                                            (_%__kont8773087731%_
                                             _%tl8185682466%_
                                             _%tl8185982476%_
                                             _%hd8185882473%_
                                             _%hd8185282453%_
                                             _%hd8177182730%_))
                                        (_%__kont8773087731%_
                                         _%tl8185682466%_
                                         _%tl8185982476%_
                                         _%hd8185882473%_
                                         _%hd8185282453%_
                                         _%hd8177182730%_))))
                                (_%__kont8773087731%_
                                 _%tl8185682466%_
                                 _%tl8185982476%_
                                 _%hd8185882473%_
                                 _%hd8185282453%_
                                 _%hd8177182730%_))))
                        (if (gx#stx-null? _%hd8185582463%_)
                            (_%__kont8773287733%_
                             _%tl8185682466%_
                             _%hd8185282453%_
                             _%hd8177182730%_)
                            (let () (declare (not safe)) (_%g8176381977%_))))))
                (let () (declare (not safe)) (_%g8176381977%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8176381977%_)))
                                            (if (equal? _%e8177682746%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl8177582743%_)
                                                    (let ((_%e8191882198%_
                                                           (gx#syntax-e
                                                            _%tl8177582743%_)))
                                                      (let ((_%tl8192082205%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8191882198%_)))
                    (_%hd8191982202%_
                     (let () (declare (not safe)) (##car _%e8191882198%_))))
                (if (gx#stx-pair? _%tl8192082205%_)
                    (let ((_%e8192182208%_ (gx#syntax-e _%tl8192082205%_)))
                      (let ((_%tl8192382215%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8192182208%_)))
                            (_%hd8192282212%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8192182208%_))))
                        (if (gx#stx-pair? _%hd8192282212%_)
                            (let ((_%e8192482218%_
                                   (gx#syntax-e _%hd8192282212%_)))
                              (let ((_%tl8192682225%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8192482218%_)))
                                    (_%hd8192582222%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8192482218%_))))
                                (_%__kont8773487735%_
                                 _%tl8192382215%_
                                 _%tl8192682225%_
                                 _%hd8192582222%_
                                 _%hd8191982202%_
                                 _%hd8177182730%_)))
                            (if (gx#stx-pair/null? _%hd8191982202%_)
                                (let ((_%__splice8773887739%_
                                       (gx#syntax-split-splice
                                        _%hd8191982202%_
                                        '0)))
                                  (let ((_%tl8194582021%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8773887739%_
                                            '1)))
                                        (_%target8194382018%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8773887739%_
                                            '0))))
                                    (if (gx#stx-null? _%tl8194582021%_)
                                        (_%__match8806688067%_
                                         _%e8177082726%_
                                         _%hd8177182730%_
                                         _%tl8177282733%_
                                         _%e8177382736%_
                                         _%hd8177482740%_
                                         _%tl8177582743%_
                                         _%e8177682746%_
                                         _%e8191882198%_
                                         _%hd8191982202%_
                                         _%tl8192082205%_
                                         _%__splice8773887739%_
                                         _%target8194382018%_
                                         _%tl8194582021%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8176381977%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8176381977%_))))))
                    (if (gx#stx-pair/null? _%hd8191982202%_)
                        (let ((_%__splice8773887739%_
                               (gx#syntax-split-splice _%hd8191982202%_ '0)))
                          (let ((_%tl8194582021%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8773887739%_ '1)))
                                (_%target8194382018%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8773887739%_ '0))))
                            (if (gx#stx-null? _%tl8194582021%_)
                                (_%__match8806688067%_
                                 _%e8177082726%_
                                 _%hd8177182730%_
                                 _%tl8177282733%_
                                 _%e8177382736%_
                                 _%hd8177482740%_
                                 _%tl8177582743%_
                                 _%e8177682746%_
                                 _%e8191882198%_
                                 _%hd8191982202%_
                                 _%tl8192082205%_
                                 _%__splice8773887739%_
                                 _%target8194382018%_
                                 _%tl8194582021%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8176381977%_)))))
                        (let () (declare (not safe)) (_%g8176381977%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8176381977%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8176381977%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g8176381977%_)))))
                          (let () (declare (not safe)) (_%g8176381977%_)))))
                  (let () (declare (not safe)) (_%g8176381977%_))))))))))
