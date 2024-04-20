(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g91198_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g91208_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx84264%_)
        (let* ((_%g8426884286%_
                (lambda (_%g8426984282%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8426984282%_)))
               (_%g8426784342%_
                (lambda (_%g8426984290%_)
                  (if (gx#stx-pair? _%g8426984290%_)
                      (let ((_%e8427284293%_ (gx#syntax-e _%g8426984290%_)))
                        (let ((_%hd8427384297%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8427284293%_)))
                              (_%tl8427484300%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8427284293%_))))
                          (if (gx#stx-pair? _%tl8427484300%_)
                              (let ((_%e8427584303%_
                                     (gx#syntax-e _%tl8427484300%_)))
                                (let ((_%hd8427684307%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8427584303%_)))
                                      (_%tl8427784310%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8427584303%_))))
                                  (if (gx#stx-pair? _%tl8427784310%_)
                                      (let ((_%e8427884313%_
                                             (gx#syntax-e _%tl8427784310%_)))
                                        (let ((_%hd8427984317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8427884313%_)))
                                              (_%tl8428084320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8427884313%_))))
                                          (if (gx#stx-null? _%tl8428084320%_)
                                              ((lambda (_%L84323%_ _%L84325%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L84325%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L84323%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8427984317%_
                                               _%hd8427684307%_)
                                              (_%g8426884286%_
                                               _%g8426984290%_))))
                                      (_%g8426884286%_ _%g8426984290%_))))
                              (_%g8426884286%_ _%g8426984290%_))))
                      (_%g8426884286%_ _%g8426984290%_)))))
          (_%g8426784342%_ _%$stx84264%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx84346%_)
        (let* ((_%g8435084364%_
                (lambda (_%g8435184360%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8435184360%_)))
               (_%g8434984405%_
                (lambda (_%g8435184368%_)
                  (if (gx#stx-pair? _%g8435184368%_)
                      (let ((_%e8435384371%_ (gx#syntax-e _%g8435184368%_)))
                        (let ((_%hd8435484375%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8435384371%_)))
                              (_%tl8435584378%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8435384371%_))))
                          (if (gx#stx-pair? _%tl8435584378%_)
                              (let ((_%e8435684381%_
                                     (gx#syntax-e _%tl8435584378%_)))
                                (let ((_%hd8435784385%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8435684381%_)))
                                      (_%tl8435884388%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8435684381%_))))
                                  (if (gx#stx-null? _%tl8435884388%_)
                                      ((lambda (_%L84391%_)
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
                                       (cons _%L84391%_
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
                                       _%hd8435784385%_)
                                      (_%g8435084364%_ _%g8435184368%_))))
                              (_%g8435084364%_ _%g8435184368%_))))
                      (_%g8435084364%_ _%g8435184368%_)))))
          (_%g8434984405%_ _%$stx84346%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx84409%_)
        (let* ((_%g8441384427%_
                (lambda (_%g8441484423%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8441484423%_)))
               (_%g8441284468%_
                (lambda (_%g8441484431%_)
                  (if (gx#stx-pair? _%g8441484431%_)
                      (let ((_%e8441684434%_ (gx#syntax-e _%g8441484431%_)))
                        (let ((_%hd8441784438%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8441684434%_)))
                              (_%tl8441884441%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8441684434%_))))
                          (if (gx#stx-pair? _%tl8441884441%_)
                              (let ((_%e8441984444%_
                                     (gx#syntax-e _%tl8441884441%_)))
                                (let ((_%hd8442084448%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8441984444%_)))
                                      (_%tl8442184451%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8441984444%_))))
                                  (if (gx#stx-null? _%tl8442184451%_)
                                      ((lambda (_%L84454%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L84454%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd8442084448%_)
                                      (_%g8441384427%_ _%g8441484431%_))))
                              (_%g8441384427%_ _%g8441484431%_))))
                      (_%g8441384427%_ _%g8441484431%_)))))
          (_%g8441284468%_ _%$stx84409%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx84472%_)
        (let* ((_%g8447684486%_
                (lambda (_%g8447784482%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8447784482%_)))
               (_%g8447584507%_
                (lambda (_%g8447784490%_)
                  (if (gx#stx-pair? _%g8447784490%_)
                      (let ((_%e8447884493%_ (gx#syntax-e _%g8447784490%_)))
                        (let ((_%hd8447984497%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8447884493%_)))
                              (_%tl8448084500%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8447884493%_))))
                          (if (gx#stx-null? _%tl8448084500%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g8447684486%_ _%g8447784490%_))))
                      (_%g8447684486%_ _%g8447784490%_)))))
          (_%g8447584507%_ _%$stx84472%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx84511%_)
        (let* ((_%g8451584533%_
                (lambda (_%g8451684529%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8451684529%_)))
               (_%g8451484588%_
                (lambda (_%g8451684537%_)
                  (if (gx#stx-pair? _%g8451684537%_)
                      (let ((_%e8451984540%_ (gx#syntax-e _%g8451684537%_)))
                        (let ((_%hd8452084544%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8451984540%_)))
                              (_%tl8452184547%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8451984540%_))))
                          (if (gx#stx-pair? _%tl8452184547%_)
                              (let ((_%e8452284550%_
                                     (gx#syntax-e _%tl8452184547%_)))
                                (let ((_%hd8452384554%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8452284550%_)))
                                      (_%tl8452484557%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8452284550%_))))
                                  (if (gx#stx-pair? _%tl8452484557%_)
                                      (let ((_%e8452584560%_
                                             (gx#syntax-e _%tl8452484557%_)))
                                        (let ((_%hd8452684564%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8452584560%_)))
                                              (_%tl8452784567%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8452584560%_))))
                                          (if (gx#stx-null? _%tl8452784567%_)
                                              ((lambda (_%L84570%_ _%L84572%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L84572%_
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
                 (cons (cons _%L84570%_
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
                                               _%hd8452684564%_
                                               _%hd8452384554%_)
                                              (_%g8451584533%_
                                               _%g8451684537%_))))
                                      (_%g8451584533%_ _%g8451684537%_))))
                              (_%g8451584533%_ _%g8451684537%_))))
                      (_%g8451584533%_ _%g8451684537%_)))))
          (_%g8451484588%_ _%$stx84511%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx84592%_)
        (let* ((_%g8459684614%_
                (lambda (_%g8459784610%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8459784610%_)))
               (_%g8459584669%_
                (lambda (_%g8459784618%_)
                  (if (gx#stx-pair? _%g8459784618%_)
                      (let ((_%e8460084621%_ (gx#syntax-e _%g8459784618%_)))
                        (let ((_%hd8460184625%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8460084621%_)))
                              (_%tl8460284628%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8460084621%_))))
                          (if (gx#stx-pair? _%tl8460284628%_)
                              (let ((_%e8460384631%_
                                     (gx#syntax-e _%tl8460284628%_)))
                                (let ((_%hd8460484635%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8460384631%_)))
                                      (_%tl8460584638%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8460384631%_))))
                                  (if (gx#stx-pair? _%tl8460584638%_)
                                      (let ((_%e8460684641%_
                                             (gx#syntax-e _%tl8460584638%_)))
                                        (let ((_%hd8460784645%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8460684641%_)))
                                              (_%tl8460884648%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8460684641%_))))
                                          (if (gx#stx-null? _%tl8460884648%_)
                                              ((lambda (_%L84651%_ _%L84653%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L84653%_
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
                                               (cons (cons _%L84651%_
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
                                               _%hd8460784645%_
                                               _%hd8460484635%_)
                                              (_%g8459684614%_
                                               _%g8459784618%_))))
                                      (_%g8459684614%_ _%g8459784618%_))))
                              (_%g8459684614%_ _%g8459784618%_))))
                      (_%g8459684614%_ _%g8459784618%_)))))
          (_%g8459584669%_ _%$stx84592%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx84673%_)
        (let* ((_%g8467784695%_
                (lambda (_%g8467884691%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8467884691%_)))
               (_%g8467684750%_
                (lambda (_%g8467884699%_)
                  (if (gx#stx-pair? _%g8467884699%_)
                      (let ((_%e8468184702%_ (gx#syntax-e _%g8467884699%_)))
                        (let ((_%hd8468284706%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8468184702%_)))
                              (_%tl8468384709%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8468184702%_))))
                          (if (gx#stx-pair? _%tl8468384709%_)
                              (let ((_%e8468484712%_
                                     (gx#syntax-e _%tl8468384709%_)))
                                (let ((_%hd8468584716%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8468484712%_)))
                                      (_%tl8468684719%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8468484712%_))))
                                  (if (gx#stx-pair? _%tl8468684719%_)
                                      (let ((_%e8468784722%_
                                             (gx#syntax-e _%tl8468684719%_)))
                                        (let ((_%hd8468884726%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8468784722%_)))
                                              (_%tl8468984729%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8468784722%_))))
                                          (if (gx#stx-null? _%tl8468984729%_)
                                              ((lambda (_%L84732%_ _%L84734%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L84734%_
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
                                               (cons (cons _%L84732%_
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
                                               _%hd8468884726%_
                                               _%hd8468584716%_)
                                              (_%g8467784695%_
                                               _%g8467884699%_))))
                                      (_%g8467784695%_ _%g8467884699%_))))
                              (_%g8467784695%_ _%g8467884699%_))))
                      (_%g8467784695%_ _%g8467884699%_)))))
          (_%g8467684750%_ _%$stx84673%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx84754%_)
        (let* ((_%g8475884769%_
                (lambda (_%g8475984765%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8475984765%_)))
               (_%g8475784798%_
                (lambda (_%g8475984773%_)
                  (if (gx#stx-pair? _%g8475984773%_)
                      (let ((_%e8476184776%_ (gx#syntax-e _%g8475984773%_)))
                        (let ((_%hd8476284780%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8476184776%_)))
                              (_%tl8476384783%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8476184776%_))))
                          ((lambda (_%L84786%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L84786%_)))
                           _%tl8476384783%_)))
                      (_%g8475884769%_ _%g8475984773%_)))))
          (_%g8475784798%_ _%$stx84754%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx84802%_)
        (let* ((_%__stx9075490755%_ _%$stx84802%_)
               (_%g8481385027%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9075490755%_))))
          (let ((_%__kont9075790758%_
                 (lambda (_%L85880%_
                          _%L85882%_
                          _%L85883%_
                          _%L85884%_
                          _%L85885%_)
                   (cons _%L85885%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8591585918%_
                                                     _%g8591685921%_)
                                              (cons _%g8591585918%_
                                                    _%g8591685921%_))
                                            '()
                                            _%L85883%_)
                                           (cons _%L85884%_
                                                 (cons _%L85882%_
                                                       (cons _%L85880%_
                                                             '())))))))))
                (_%__kont9076190762%_
                 (lambda (_%L85733%_ _%L85735%_ _%L85736%_ _%L85737%_)
                   (cons _%L85737%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8576085763%_
                                                     _%g8576185766%_)
                                              (cons _%g8576085763%_
                                                    _%g8576185766%_))
                                            '()
                                            _%L85735%_)
                                           (cons _%L85736%_
                                                 (cons _%L85733%_
                                                       (cons _%L85733%_
                                                             '())))))))))
                (_%__kont9076590766%_
                 (lambda (_%L85636%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L85636%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont9076790768%_
                 (lambda (_%L85559%_
                          _%L85561%_
                          _%L85562%_
                          _%L85563%_
                          _%L85564%_
                          _%L85565%_)
                   (cons _%L85565%_
                         (cons '2
                               (cons (cons (cons _%L85563%_
                                                 (cons _%L85562%_ '()))
                                           _%L85564%_)
                                     (cons _%L85561%_ _%L85559%_))))))
                (_%__kont9076990770%_
                 (lambda (_%L85440%_
                          _%L85442%_
                          _%L85443%_
                          _%L85444%_
                          _%L85445%_)
                   (cons _%L85445%_
                         (cons '2
                               (cons (cons (cons _%L85443%_
                                                 (cons _%L85443%_ '()))
                                           _%L85444%_)
                                     (cons _%L85442%_ _%L85440%_))))))
                (_%__kont9077190772%_
                 (lambda (_%L85357%_ _%L85359%_ _%L85360%_)
                   (cons _%L85360%_
                         (cons '3 (cons '() (cons _%L85359%_ _%L85357%_))))))
                (_%__kont9077390774%_
                 (lambda (_%L85278%_
                          _%L85280%_
                          _%L85281%_
                          _%L85282%_
                          _%L85283%_)
                   (cons _%L85283%_
                         (cons '3
                               (cons (cons _%L85281%_ _%L85282%_)
                                     (cons _%L85280%_ _%L85278%_))))))
                (_%__kont9077590776%_
                 (lambda (_%L85162%_
                          _%L85164%_
                          _%L85165%_
                          _%L85166%_
                          _%L85167%_
                          _%L85168%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L85165%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L85162%_ '())))
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
                                              (lambda (_%g8520285205%_
                                                       _%g8520385208%_)
                                                (cons _%g8520285205%_
                                                      _%g8520385208%_))
                                              '()
                                              _%L85167%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (__foldr1
                                              (lambda (_%g8520085211%_
                                                       _%g8520185214%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g8520085211%_ '())))
              _%g8520185214%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L85166%_))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L85164%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9110591106%_
                    (lambda (_%e8498385034%_
                             _%hd8498485038%_
                             _%tl8498585041%_
                             _%e8498685044%_
                             _%hd8498785048%_
                             _%tl8498885051%_
                             _%e8498985054%_
                             _%e8499085058%_
                             _%hd8499185062%_
                             _%tl8499285065%_
                             _%__splice9077790778%_
                             _%target8499385068%_
                             _%tl8499585071%_)
                      (letrec ((_%loop8499685074%_
                                (lambda (_%hd8499485078%_
                                         _%exprs8500085081%_
                                         _%names8500185083%_)
                                  (if (gx#stx-pair? _%hd8499485078%_)
                                      (let ((_%e8499785086%_
                                             (gx#syntax-e _%hd8499485078%_)))
                                        (let ((_%lp-tl8499985093%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8499785086%_)))
                                              (_%lp-hd8499885090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8499785086%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd8499885090%_)
                                              (let ((_%e8501685096%_
                                                     (gx#syntax-e
                                                      _%lp-hd8499885090%_)))
                                                (let ((_%tl8501885103%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8501685096%_)))
                                                      (_%hd8501785100%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8501685096%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8501885103%_)
                                                      (let ((_%e8501985106%_
                                                             (gx#syntax-e
                                                              _%tl8501885103%_)))
                                                        (let ((_%tl8502185113%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8501985106%_)))
                      (_%hd8502085110%_
                       (let () (declare (not safe)) (##car _%e8501985106%_))))
                  (if (gx#stx-null? _%tl8502185113%_)
                      (_%loop8499685074%_
                       _%lp-tl8499985093%_
                       (cons _%hd8502085110%_ _%exprs8500085081%_)
                       (cons _%hd8501785100%_ _%names8500185083%_))
                      (let () (declare (not safe)) (_%g8481385027%_)))))
              (let () (declare (not safe)) (_%g8481385027%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g8481385027%_)))))
                                      (let ((_%names8500385119%_
                                             (reverse _%names8500185083%_))
                                            (_%exprs8500285116%_
                                             (reverse _%exprs8500085081%_)))
                                        (if (gx#stx-pair? _%tl8499285065%_)
                                            (let ((_%e8500485122%_
                                                   (gx#syntax-e
                                                    _%tl8499285065%_)))
                                              (let ((_%tl8500685129%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8500485122%_)))
                                                    (_%hd8500585126%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8500485122%_))))
                                                (if (gx#stx-null?
                                                     _%hd8500585126%_)
                                                    (if (gx#stx-pair?
                                                         _%tl8500685129%_)
                                                        (let ((_%e8500785132%_
                                                               (gx#syntax-e
                                                                _%tl8500685129%_)))
                                                          (let ((_%tl8500985139%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8500785132%_)))
                        (_%hd8500885136%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8500785132%_))))
                    (if (gx#stx-pair? _%tl8500985139%_)
                        (let ((_%e8501085142%_ (gx#syntax-e _%tl8500985139%_)))
                          (let ((_%tl8501285149%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8501085142%_)))
                                (_%hd8501185146%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8501085142%_))))
                            (if (gx#stx-pair? _%tl8501285149%_)
                                (let ((_%e8501385152%_
                                       (gx#syntax-e _%tl8501285149%_)))
                                  (let ((_%tl8501585159%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8501385152%_)))
                                        (_%hd8501485156%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8501385152%_))))
                                    (if (gx#stx-null? _%tl8501585159%_)
                                        (_%__kont9077590776%_
                                         _%hd8501485156%_
                                         _%hd8501185146%_
                                         _%hd8500885136%_
                                         _%exprs8500285116%_
                                         _%names8500385119%_
                                         _%hd8498485038%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8481385027%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8481385027%_)))))
                        (let () (declare (not safe)) (_%g8481385027%_)))))
                (let () (declare (not safe)) (_%g8481385027%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8481385027%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8481385027%_))))))))
                        (_%loop8499685074%_ _%target8499385068%_ '() '()))))
                   (_%__match9088390884%_
                    (lambda (_%e8485585659%_
                             _%hd8485685663%_
                             _%tl8485785666%_
                             _%e8485885669%_
                             _%hd8485985673%_
                             _%tl8486085676%_
                             _%e8486185679%_
                             _%e8486285683%_
                             _%hd8486385687%_
                             _%tl8486485690%_
                             _%__splice9076390764%_
                             _%target8486585693%_
                             _%tl8486785696%_
                             _%e8487485699%_
                             _%hd8487585703%_
                             _%tl8487685706%_)
                      (letrec ((_%loop8486885709%_
                                (lambda (_%hd8486685713%_ _%exprs8487285716%_)
                                  (if (gx#stx-pair? _%hd8486685713%_)
                                      (let ((_%e8486985719%_
                                             (gx#syntax-e _%hd8486685713%_)))
                                        (let ((_%lp-tl8487185726%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8486985719%_)))
                                              (_%lp-hd8487085723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8486985719%_))))
                                          (_%loop8486885709%_
                                           _%lp-tl8487185726%_
                                           (cons _%lp-hd8487085723%_
                                                 _%exprs8487285716%_))))
                                      (let ((_%exprs8487385729%_
                                             (reverse _%exprs8487285716%_)))
                                        (_%__kont9076190762%_
                                         _%hd8487585703%_
                                         _%exprs8487385729%_
                                         _%hd8486385687%_
                                         _%hd8485685663%_))))))
                        (_%loop8486885709%_ _%target8486585693%_ '()))))
                   (_%__match9084390844%_
                    (lambda (_%e8482085776%_
                             _%hd8482185780%_
                             _%tl8482285783%_
                             _%e8482385786%_
                             _%hd8482485790%_
                             _%tl8482585793%_
                             _%e8482685796%_
                             _%e8482785800%_
                             _%hd8482885804%_
                             _%tl8482985807%_
                             _%__splice9075990760%_
                             _%target8483085810%_
                             _%tl8483285813%_
                             _%e8483985816%_
                             _%hd8484085820%_
                             _%tl8484185823%_
                             _%e8484285826%_
                             _%hd8484385830%_
                             _%tl8484485833%_
                             _%e8484585836%_
                             _%hd8484685840%_
                             _%tl8484785843%_
                             _%e8484885846%_
                             _%hd8484985850%_
                             _%tl8485085853%_)
                      (letrec ((_%loop8483385856%_
                                (lambda (_%hd8483185860%_ _%exprs8483785863%_)
                                  (if (gx#stx-pair? _%hd8483185860%_)
                                      (let ((_%e8483485866%_
                                             (gx#syntax-e _%hd8483185860%_)))
                                        (let ((_%lp-tl8483685873%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8483485866%_)))
                                              (_%lp-hd8483585870%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8483485866%_))))
                                          (_%loop8483385856%_
                                           _%lp-tl8483685873%_
                                           (cons _%lp-hd8483585870%_
                                                 _%exprs8483785863%_))))
                                      (let ((_%exprs8483885876%_
                                             (reverse _%exprs8483785863%_)))
                                        (_%__kont9075790758%_
                                         _%hd8484985850%_
                                         _%hd8484685840%_
                                         _%exprs8483885876%_
                                         _%hd8482885804%_
                                         _%hd8482185780%_))))))
                        (_%loop8483385856%_ _%target8483085810%_ '())))))
              (if (gx#stx-pair? _%__stx9075490755%_)
                  (let ((_%e8482085776%_ (gx#syntax-e _%__stx9075490755%_)))
                    (let ((_%tl8482285783%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e8482085776%_)))
                          (_%hd8482185780%_
                           (let ()
                             (declare (not safe))
                             (##car _%e8482085776%_))))
                      (if (gx#stx-pair? _%tl8482285783%_)
                          (let ((_%e8482385786%_
                                 (gx#syntax-e _%tl8482285783%_)))
                            (let ((_%tl8482585793%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e8482385786%_)))
                                  (_%hd8482485790%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e8482385786%_))))
                              (if (gx#stx-datum? _%hd8482485790%_)
                                  (let ((_%e8482685796%_
                                         (gx#stx-e _%hd8482485790%_)))
                                    (if (equal? _%e8482685796%_ '1)
                                        (if (gx#stx-pair? _%tl8482585793%_)
                                            (let ((_%e8482785800%_
                                                   (gx#syntax-e
                                                    _%tl8482585793%_)))
                                              (let ((_%tl8482985807%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8482785800%_)))
                                                    (_%hd8482885804%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8482785800%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl8482985807%_)
                                                    (if (let ((__tmp91197
                                                               (gx#stx-length
                                                                _%tl8482985807%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp91197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice9075990760%_
                       (gx#syntax-split-splice _%tl8482985807%_ '2)))
                  (let ((_%tl8483285813%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9075990760%_ '1)))
                        (_%target8483085810%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9075990760%_ '0))))
                    (if (gx#stx-pair? _%tl8483285813%_)
                        (let ((_%e8483985816%_ (gx#syntax-e _%tl8483285813%_)))
                          (let ((_%tl8484185823%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8483985816%_)))
                                (_%hd8484085820%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8483985816%_))))
                            (if (gx#stx-pair? _%hd8484085820%_)
                                (let ((_%e8484285826%_
                                       (gx#syntax-e _%hd8484085820%_)))
                                  (let ((_%tl8484485833%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8484285826%_)))
                                        (_%hd8484385830%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8484285826%_))))
                                    (if (gx#identifier? _%hd8484385830%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g91198_|
                                             _%hd8484385830%_)
                                            (if (gx#stx-pair? _%tl8484485833%_)
                                                (let ((_%e8484585836%_
                                                       (gx#syntax-e
                                                        _%tl8484485833%_)))
                                                  (let ((_%tl8484785843%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8484585836%_)))
                                                        (_%hd8484685840%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8484585836%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8484785843%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8484185823%_)
                                                            (let ((_%e8484885846%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8484185823%_)))
                      (let ((_%tl8485085853%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8484885846%_)))
                            (_%hd8484985850%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8484885846%_))))
                        (if (gx#stx-null? _%tl8485085853%_)
                            (_%__match9084390844%_
                             _%e8482085776%_
                             _%hd8482185780%_
                             _%tl8482285783%_
                             _%e8482385786%_
                             _%hd8482485790%_
                             _%tl8482585793%_
                             _%e8482685796%_
                             _%e8482785800%_
                             _%hd8482885804%_
                             _%tl8482985807%_
                             _%__splice9075990760%_
                             _%target8483085810%_
                             _%tl8483285813%_
                             _%e8483985816%_
                             _%hd8484085820%_
                             _%tl8484185823%_
                             _%e8484285826%_
                             _%hd8484385830%_
                             _%tl8484485833%_
                             _%e8484585836%_
                             _%hd8484685840%_
                             _%tl8484785843%_
                             _%e8484885846%_
                             _%hd8484985850%_
                             _%tl8485085853%_)
                            (if (let ((__tmp91199
                                       (gx#stx-length _%tl8482985807%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp91199 '1))
                                (let ((_%__splice9076390764%_
                                       (gx#syntax-split-splice
                                        _%tl8482985807%_
                                        '1)))
                                  (let ((_%tl8486785696%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9076390764%_
                                            '1)))
                                        (_%target8486585693%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9076390764%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl8486785696%_)
                                        (let ((_%e8487485699%_
                                               (gx#syntax-e _%tl8486785696%_)))
                                          (let ((_%tl8487685706%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e8487485699%_)))
                                                (_%hd8487585703%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e8487485699%_))))
                                            (if (gx#stx-null? _%tl8487685706%_)
                                                (_%__match9088390884%_
                                                 _%e8482085776%_
                                                 _%hd8482185780%_
                                                 _%tl8482285783%_
                                                 _%e8482385786%_
                                                 _%hd8482485790%_
                                                 _%tl8482585793%_
                                                 _%e8482685796%_
                                                 _%e8482785800%_
                                                 _%hd8482885804%_
                                                 _%tl8482985807%_
                                                 _%__splice9076390764%_
                                                 _%target8486585693%_
                                                 _%tl8486785696%_
                                                 _%e8487485699%_
                                                 _%hd8487585703%_
                                                 _%tl8487685706%_)
                                                (if (gx#stx-null?
                                                     _%tl8482985807%_)
                                                    (_%__kont9076590766%_
                                                     _%hd8482885804%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8481385027%_))))))
                                        (if (gx#stx-null? _%tl8482985807%_)
                                            (_%__kont9076590766%_
                                             _%hd8482885804%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8481385027%_))))))
                                (if (gx#stx-null? _%tl8482985807%_)
                                    (_%__kont9076590766%_ _%hd8482885804%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8481385027%_)))))))
                    (if (let ((__tmp91200 (gx#stx-length _%tl8482985807%_)))
                          (declare (not safe))
                          (##fx>= __tmp91200 '1))
                        (let ((_%__splice9076390764%_
                               (gx#syntax-split-splice _%tl8482985807%_ '1)))
                          (let ((_%tl8486785696%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9076390764%_ '1)))
                                (_%target8486585693%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9076390764%_ '0))))
                            (if (gx#stx-pair? _%tl8486785696%_)
                                (let ((_%e8487485699%_
                                       (gx#syntax-e _%tl8486785696%_)))
                                  (let ((_%tl8487685706%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8487485699%_)))
                                        (_%hd8487585703%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8487485699%_))))
                                    (if (gx#stx-null? _%tl8487685706%_)
                                        (_%__match9088390884%_
                                         _%e8482085776%_
                                         _%hd8482185780%_
                                         _%tl8482285783%_
                                         _%e8482385786%_
                                         _%hd8482485790%_
                                         _%tl8482585793%_
                                         _%e8482685796%_
                                         _%e8482785800%_
                                         _%hd8482885804%_
                                         _%tl8482985807%_
                                         _%__splice9076390764%_
                                         _%target8486585693%_
                                         _%tl8486785696%_
                                         _%e8487485699%_
                                         _%hd8487585703%_
                                         _%tl8487685706%_)
                                        (if (gx#stx-null? _%tl8482985807%_)
                                            (_%__kont9076590766%_
                                             _%hd8482885804%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8481385027%_))))))
                                (if (gx#stx-null? _%tl8482985807%_)
                                    (_%__kont9076590766%_ _%hd8482885804%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8481385027%_))))))
                        (if (gx#stx-null? _%tl8482985807%_)
                            (_%__kont9076590766%_ _%hd8482885804%_)
                            (let () (declare (not safe)) (_%g8481385027%_)))))
                (if (let ((__tmp91201 (gx#stx-length _%tl8482985807%_)))
                      (declare (not safe))
                      (##fx>= __tmp91201 '1))
                    (let ((_%__splice9076390764%_
                           (gx#syntax-split-splice _%tl8482985807%_ '1)))
                      (let ((_%tl8486785696%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9076390764%_ '1)))
                            (_%target8486585693%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9076390764%_ '0))))
                        (if (gx#stx-pair? _%tl8486785696%_)
                            (let ((_%e8487485699%_
                                   (gx#syntax-e _%tl8486785696%_)))
                              (let ((_%tl8487685706%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8487485699%_)))
                                    (_%hd8487585703%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8487485699%_))))
                                (if (gx#stx-null? _%tl8487685706%_)
                                    (_%__match9088390884%_
                                     _%e8482085776%_
                                     _%hd8482185780%_
                                     _%tl8482285783%_
                                     _%e8482385786%_
                                     _%hd8482485790%_
                                     _%tl8482585793%_
                                     _%e8482685796%_
                                     _%e8482785800%_
                                     _%hd8482885804%_
                                     _%tl8482985807%_
                                     _%__splice9076390764%_
                                     _%target8486585693%_
                                     _%tl8486785696%_
                                     _%e8487485699%_
                                     _%hd8487585703%_
                                     _%tl8487685706%_)
                                    (if (gx#stx-null? _%tl8482985807%_)
                                        (_%__kont9076590766%_ _%hd8482885804%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8481385027%_))))))
                            (if (gx#stx-null? _%tl8482985807%_)
                                (_%__kont9076590766%_ _%hd8482885804%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8481385027%_))))))
                    (if (gx#stx-null? _%tl8482985807%_)
                        (_%__kont9076590766%_ _%hd8482885804%_)
                        (let () (declare (not safe)) (_%g8481385027%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp91202
                                                           (gx#stx-length
                                                            _%tl8482985807%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp91202 '1))
                                                    (let ((_%__splice9076390764%_
                                                           (gx#syntax-split-splice
                                                            _%tl8482985807%_
                                                            '1)))
                                                      (let ((_%tl8486785696%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9076390764%_ '1)))
                    (_%target8486585693%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9076390764%_ '0))))
                (if (gx#stx-pair? _%tl8486785696%_)
                    (let ((_%e8487485699%_ (gx#syntax-e _%tl8486785696%_)))
                      (let ((_%tl8487685706%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8487485699%_)))
                            (_%hd8487585703%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8487485699%_))))
                        (if (gx#stx-null? _%tl8487685706%_)
                            (_%__match9088390884%_
                             _%e8482085776%_
                             _%hd8482185780%_
                             _%tl8482285783%_
                             _%e8482385786%_
                             _%hd8482485790%_
                             _%tl8482585793%_
                             _%e8482685796%_
                             _%e8482785800%_
                             _%hd8482885804%_
                             _%tl8482985807%_
                             _%__splice9076390764%_
                             _%target8486585693%_
                             _%tl8486785696%_
                             _%e8487485699%_
                             _%hd8487585703%_
                             _%tl8487685706%_)
                            (if (gx#stx-null? _%tl8482985807%_)
                                (_%__kont9076590766%_ _%hd8482885804%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8481385027%_))))))
                    (if (gx#stx-null? _%tl8482985807%_)
                        (_%__kont9076590766%_ _%hd8482885804%_)
                        (let () (declare (not safe)) (_%g8481385027%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8482985807%_)
                                                        (_%__kont9076590766%_
                                                         _%hd8482885804%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8481385027%_)))))
                                            (if (let ((__tmp91203
                                                       (gx#stx-length
                                                        _%tl8482985807%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp91203 '1))
                                                (let ((_%__splice9076390764%_
                                                       (gx#syntax-split-splice
                                                        _%tl8482985807%_
                                                        '1)))
                                                  (let ((_%tl8486785696%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9076390764%_
                                                            '1)))
                                                        (_%target8486585693%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9076390764%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl8486785696%_)
                                                        (let ((_%e8487485699%_
                                                               (gx#syntax-e
                                                                _%tl8486785696%_)))
                                                          (let ((_%tl8487685706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8487485699%_)))
                        (_%hd8487585703%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8487485699%_))))
                    (if (gx#stx-null? _%tl8487685706%_)
                        (_%__match9088390884%_
                         _%e8482085776%_
                         _%hd8482185780%_
                         _%tl8482285783%_
                         _%e8482385786%_
                         _%hd8482485790%_
                         _%tl8482585793%_
                         _%e8482685796%_
                         _%e8482785800%_
                         _%hd8482885804%_
                         _%tl8482985807%_
                         _%__splice9076390764%_
                         _%target8486585693%_
                         _%tl8486785696%_
                         _%e8487485699%_
                         _%hd8487585703%_
                         _%tl8487685706%_)
                        (if (gx#stx-null? _%tl8482985807%_)
                            (_%__kont9076590766%_ _%hd8482885804%_)
                            (let () (declare (not safe)) (_%g8481385027%_))))))
                (if (gx#stx-null? _%tl8482985807%_)
                    (_%__kont9076590766%_ _%hd8482885804%_)
                    (let () (declare (not safe)) (_%g8481385027%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl8482985807%_)
                                                    (_%__kont9076590766%_
                                                     _%hd8482885804%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8481385027%_)))))
                                        (if (let ((__tmp91204
                                                   (gx#stx-length
                                                    _%tl8482985807%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp91204 '1))
                                            (let ((_%__splice9076390764%_
                                                   (gx#syntax-split-splice
                                                    _%tl8482985807%_
                                                    '1)))
                                              (let ((_%tl8486785696%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9076390764%_
                                                        '1)))
                                                    (_%target8486585693%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9076390764%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl8486785696%_)
                                                    (let ((_%e8487485699%_
                                                           (gx#syntax-e
                                                            _%tl8486785696%_)))
                                                      (let ((_%tl8487685706%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8487485699%_)))
                    (_%hd8487585703%_
                     (let () (declare (not safe)) (##car _%e8487485699%_))))
                (if (gx#stx-null? _%tl8487685706%_)
                    (_%__match9088390884%_
                     _%e8482085776%_
                     _%hd8482185780%_
                     _%tl8482285783%_
                     _%e8482385786%_
                     _%hd8482485790%_
                     _%tl8482585793%_
                     _%e8482685796%_
                     _%e8482785800%_
                     _%hd8482885804%_
                     _%tl8482985807%_
                     _%__splice9076390764%_
                     _%target8486585693%_
                     _%tl8486785696%_
                     _%e8487485699%_
                     _%hd8487585703%_
                     _%tl8487685706%_)
                    (if (gx#stx-null? _%tl8482985807%_)
                        (_%__kont9076590766%_ _%hd8482885804%_)
                        (let () (declare (not safe)) (_%g8481385027%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8482985807%_)
                                                        (_%__kont9076590766%_
                                                         _%hd8482885804%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8481385027%_))))))
                                            (if (gx#stx-null? _%tl8482985807%_)
                                                (_%__kont9076590766%_
                                                 _%hd8482885804%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8481385027%_)))))))
                                (if (let ((__tmp91205
                                           (gx#stx-length _%tl8482985807%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp91205 '1))
                                    (let ((_%__splice9076390764%_
                                           (gx#syntax-split-splice
                                            _%tl8482985807%_
                                            '1)))
                                      (let ((_%tl8486785696%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9076390764%_
                                                '1)))
                                            (_%target8486585693%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9076390764%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl8486785696%_)
                                            (let ((_%e8487485699%_
                                                   (gx#syntax-e
                                                    _%tl8486785696%_)))
                                              (let ((_%tl8487685706%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8487485699%_)))
                                                    (_%hd8487585703%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8487485699%_))))
                                                (if (gx#stx-null?
                                                     _%tl8487685706%_)
                                                    (_%__match9088390884%_
                                                     _%e8482085776%_
                                                     _%hd8482185780%_
                                                     _%tl8482285783%_
                                                     _%e8482385786%_
                                                     _%hd8482485790%_
                                                     _%tl8482585793%_
                                                     _%e8482685796%_
                                                     _%e8482785800%_
                                                     _%hd8482885804%_
                                                     _%tl8482985807%_
                                                     _%__splice9076390764%_
                                                     _%target8486585693%_
                                                     _%tl8486785696%_
                                                     _%e8487485699%_
                                                     _%hd8487585703%_
                                                     _%tl8487685706%_)
                                                    (if (gx#stx-null?
                                                         _%tl8482985807%_)
                                                        (_%__kont9076590766%_
                                                         _%hd8482885804%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8481385027%_))))))
                                            (if (gx#stx-null? _%tl8482985807%_)
                                                (_%__kont9076590766%_
                                                 _%hd8482885804%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8481385027%_))))))
                                    (if (gx#stx-null? _%tl8482985807%_)
                                        (_%__kont9076590766%_ _%hd8482885804%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8481385027%_)))))))
                        (if (let ((__tmp91206
                                   (gx#stx-length _%tl8482985807%_)))
                              (declare (not safe))
                              (##fx>= __tmp91206 '1))
                            (let ((_%__splice9076390764%_
                                   (gx#syntax-split-splice
                                    _%tl8482985807%_
                                    '1)))
                              (let ((_%tl8486785696%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9076390764%_
                                        '1)))
                                    (_%target8486585693%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9076390764%_
                                        '0))))
                                (if (gx#stx-pair? _%tl8486785696%_)
                                    (let ((_%e8487485699%_
                                           (gx#syntax-e _%tl8486785696%_)))
                                      (let ((_%tl8487685706%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8487485699%_)))
                                            (_%hd8487585703%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8487485699%_))))
                                        (if (gx#stx-null? _%tl8487685706%_)
                                            (_%__match9088390884%_
                                             _%e8482085776%_
                                             _%hd8482185780%_
                                             _%tl8482285783%_
                                             _%e8482385786%_
                                             _%hd8482485790%_
                                             _%tl8482585793%_
                                             _%e8482685796%_
                                             _%e8482785800%_
                                             _%hd8482885804%_
                                             _%tl8482985807%_
                                             _%__splice9076390764%_
                                             _%target8486585693%_
                                             _%tl8486785696%_
                                             _%e8487485699%_
                                             _%hd8487585703%_
                                             _%tl8487685706%_)
                                            (if (gx#stx-null? _%tl8482985807%_)
                                                (_%__kont9076590766%_
                                                 _%hd8482885804%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8481385027%_))))))
                                    (if (gx#stx-null? _%tl8482985807%_)
                                        (_%__kont9076590766%_ _%hd8482885804%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8481385027%_))))))
                            (if (gx#stx-null? _%tl8482985807%_)
                                (_%__kont9076590766%_ _%hd8482885804%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8481385027%_)))))))
                (if (let ((__tmp91207 (gx#stx-length _%tl8482985807%_)))
                      (declare (not safe))
                      (##fx>= __tmp91207 '1))
                    (let ((_%__splice9076390764%_
                           (gx#syntax-split-splice _%tl8482985807%_ '1)))
                      (let ((_%tl8486785696%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9076390764%_ '1)))
                            (_%target8486585693%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9076390764%_ '0))))
                        (if (gx#stx-pair? _%tl8486785696%_)
                            (let ((_%e8487485699%_
                                   (gx#syntax-e _%tl8486785696%_)))
                              (let ((_%tl8487685706%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8487485699%_)))
                                    (_%hd8487585703%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8487485699%_))))
                                (if (gx#stx-null? _%tl8487685706%_)
                                    (_%__match9088390884%_
                                     _%e8482085776%_
                                     _%hd8482185780%_
                                     _%tl8482285783%_
                                     _%e8482385786%_
                                     _%hd8482485790%_
                                     _%tl8482585793%_
                                     _%e8482685796%_
                                     _%e8482785800%_
                                     _%hd8482885804%_
                                     _%tl8482985807%_
                                     _%__splice9076390764%_
                                     _%target8486585693%_
                                     _%tl8486785696%_
                                     _%e8487485699%_
                                     _%hd8487585703%_
                                     _%tl8487685706%_)
                                    (if (gx#stx-null? _%tl8482985807%_)
                                        (_%__kont9076590766%_ _%hd8482885804%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8481385027%_))))))
                            (if (gx#stx-null? _%tl8482985807%_)
                                (_%__kont9076590766%_ _%hd8482885804%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8481385027%_))))))
                    (if (gx#stx-null? _%tl8482985807%_)
                        (_%__kont9076590766%_ _%hd8482885804%_)
                        (let () (declare (not safe)) (_%g8481385027%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8482985807%_)
                                                        (_%__kont9076590766%_
                                                         _%hd8482885804%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8481385027%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8481385027%_)))
                                        (if (equal? _%e8482685796%_ '2)
                                            (if (gx#stx-pair? _%tl8482585793%_)
                                                (let ((_%e8490185499%_
                                                       (gx#syntax-e
                                                        _%tl8482585793%_)))
                                                  (let ((_%tl8490385506%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8490185499%_)))
                                                        (_%hd8490285503%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8490185499%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl8490385506%_)
                                                        (let ((_%e8490485509%_
                                                               (gx#syntax-e
                                                                _%tl8490385506%_)))
                                                          (let ((_%tl8490685516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8490485509%_)))
                        (_%hd8490585513%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8490485509%_))))
                    (if (gx#stx-pair? _%hd8490585513%_)
                        (let ((_%e8490785519%_ (gx#syntax-e _%hd8490585513%_)))
                          (let ((_%tl8490985526%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8490785519%_)))
                                (_%hd8490885523%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8490785519%_))))
                            (if (gx#stx-pair? _%hd8490885523%_)
                                (let ((_%e8491085529%_
                                       (gx#syntax-e _%hd8490885523%_)))
                                  (let ((_%tl8491285536%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8491085529%_)))
                                        (_%hd8491185533%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8491085529%_))))
                                    (if (gx#identifier? _%hd8491185533%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g91208_|
                                             _%hd8491185533%_)
                                            (if (gx#stx-pair? _%tl8491285536%_)
                                                (let ((_%e8491385539%_
                                                       (gx#syntax-e
                                                        _%tl8491285536%_)))
                                                  (let ((_%tl8491585546%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8491385539%_)))
                                                        (_%hd8491485543%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8491385539%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8491585546%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8490985526%_)
                                                            (let ((_%e8491685549%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8490985526%_)))
                      (let ((_%tl8491885556%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8491685549%_)))
                            (_%hd8491785553%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8491685549%_))))
                        (_%__kont9076790768%_
                         _%tl8490685516%_
                         _%tl8491885556%_
                         _%hd8491785553%_
                         _%hd8491485543%_
                         _%hd8490285503%_
                         _%hd8482185780%_)))
                    (_%__kont9076990770%_
                     _%tl8490685516%_
                     _%tl8490985526%_
                     _%hd8490885523%_
                     _%hd8490285503%_
                     _%hd8482185780%_))
                (_%__kont9076990770%_
                 _%tl8490685516%_
                 _%tl8490985526%_
                 _%hd8490885523%_
                 _%hd8490285503%_
                 _%hd8482185780%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont9076990770%_
                                                 _%tl8490685516%_
                                                 _%tl8490985526%_
                                                 _%hd8490885523%_
                                                 _%hd8490285503%_
                                                 _%hd8482185780%_))
                                            (_%__kont9076990770%_
                                             _%tl8490685516%_
                                             _%tl8490985526%_
                                             _%hd8490885523%_
                                             _%hd8490285503%_
                                             _%hd8482185780%_))
                                        (_%__kont9076990770%_
                                         _%tl8490685516%_
                                         _%tl8490985526%_
                                         _%hd8490885523%_
                                         _%hd8490285503%_
                                         _%hd8482185780%_))))
                                (_%__kont9076990770%_
                                 _%tl8490685516%_
                                 _%tl8490985526%_
                                 _%hd8490885523%_
                                 _%hd8490285503%_
                                 _%hd8482185780%_))))
                        (if (gx#stx-null? _%hd8490585513%_)
                            (_%__kont9077190772%_
                             _%tl8490685516%_
                             _%hd8490285503%_
                             _%hd8482185780%_)
                            (let () (declare (not safe)) (_%g8481385027%_))))))
                (let () (declare (not safe)) (_%g8481385027%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8481385027%_)))
                                            (if (equal? _%e8482685796%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl8482585793%_)
                                                    (let ((_%e8496885248%_
                                                           (gx#syntax-e
                                                            _%tl8482585793%_)))
                                                      (let ((_%tl8497085255%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8496885248%_)))
                    (_%hd8496985252%_
                     (let () (declare (not safe)) (##car _%e8496885248%_))))
                (if (gx#stx-pair? _%tl8497085255%_)
                    (let ((_%e8497185258%_ (gx#syntax-e _%tl8497085255%_)))
                      (let ((_%tl8497385265%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8497185258%_)))
                            (_%hd8497285262%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8497185258%_))))
                        (if (gx#stx-pair? _%hd8497285262%_)
                            (let ((_%e8497485268%_
                                   (gx#syntax-e _%hd8497285262%_)))
                              (let ((_%tl8497685275%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8497485268%_)))
                                    (_%hd8497585272%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8497485268%_))))
                                (_%__kont9077390774%_
                                 _%tl8497385265%_
                                 _%tl8497685275%_
                                 _%hd8497585272%_
                                 _%hd8496985252%_
                                 _%hd8482185780%_)))
                            (if (gx#stx-pair/null? _%hd8496985252%_)
                                (let ((_%__splice9077790778%_
                                       (gx#syntax-split-splice
                                        _%hd8496985252%_
                                        '0)))
                                  (let ((_%tl8499585071%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9077790778%_
                                            '1)))
                                        (_%target8499385068%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9077790778%_
                                            '0))))
                                    (if (gx#stx-null? _%tl8499585071%_)
                                        (_%__match9110591106%_
                                         _%e8482085776%_
                                         _%hd8482185780%_
                                         _%tl8482285783%_
                                         _%e8482385786%_
                                         _%hd8482485790%_
                                         _%tl8482585793%_
                                         _%e8482685796%_
                                         _%e8496885248%_
                                         _%hd8496985252%_
                                         _%tl8497085255%_
                                         _%__splice9077790778%_
                                         _%target8499385068%_
                                         _%tl8499585071%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8481385027%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8481385027%_))))))
                    (if (gx#stx-pair/null? _%hd8496985252%_)
                        (let ((_%__splice9077790778%_
                               (gx#syntax-split-splice _%hd8496985252%_ '0)))
                          (let ((_%tl8499585071%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9077790778%_ '1)))
                                (_%target8499385068%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9077790778%_ '0))))
                            (if (gx#stx-null? _%tl8499585071%_)
                                (_%__match9110591106%_
                                 _%e8482085776%_
                                 _%hd8482185780%_
                                 _%tl8482285783%_
                                 _%e8482385786%_
                                 _%hd8482485790%_
                                 _%tl8482585793%_
                                 _%e8482685796%_
                                 _%e8496885248%_
                                 _%hd8496985252%_
                                 _%tl8497085255%_
                                 _%__splice9077790778%_
                                 _%target8499385068%_
                                 _%tl8499585071%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8481385027%_)))))
                        (let () (declare (not safe)) (_%g8481385027%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8481385027%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8481385027%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g8481385027%_)))))
                          (let () (declare (not safe)) (_%g8481385027%_)))))
                  (let () (declare (not safe)) (_%g8481385027%_))))))))))
