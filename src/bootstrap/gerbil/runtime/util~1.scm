(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g88050_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g88060_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx81041%_)
        (let* ((_%g8104581063%_
                (lambda (_%g8104681059%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8104681059%_)))
               (_%g8104481119%_
                (lambda (_%g8104681067%_)
                  (if (gx#stx-pair? _%g8104681067%_)
                      (let ((_%e8105181070%_ (gx#syntax-e _%g8104681067%_)))
                        (let ((_%hd8105081074%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8105181070%_)))
                              (_%tl8104981077%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8105181070%_))))
                          (if (gx#stx-pair? _%tl8104981077%_)
                              (let ((_%e8105481080%_
                                     (gx#syntax-e _%tl8104981077%_)))
                                (let ((_%hd8105381084%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8105481080%_)))
                                      (_%tl8105281087%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8105481080%_))))
                                  (if (gx#stx-pair? _%tl8105281087%_)
                                      (let ((_%e8105781090%_
                                             (gx#syntax-e _%tl8105281087%_)))
                                        (let ((_%hd8105681094%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8105781090%_)))
                                              (_%tl8105581097%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8105781090%_))))
                                          (if (gx#stx-null? _%tl8105581097%_)
                                              ((lambda (_%L81100%_ _%L81102%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L81102%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L81100%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8105681094%_
                                               _%hd8105381084%_)
                                              (_%g8104581063%_
                                               _%g8104681067%_))))
                                      (_%g8104581063%_ _%g8104681067%_))))
                              (_%g8104581063%_ _%g8104681067%_))))
                      (_%g8104581063%_ _%g8104681067%_)))))
          (_%g8104481119%_ _%$stx81041%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx81123%_)
        (let* ((_%g8112781141%_
                (lambda (_%g8112881137%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8112881137%_)))
               (_%g8112681182%_
                (lambda (_%g8112881145%_)
                  (if (gx#stx-pair? _%g8112881145%_)
                      (let ((_%e8113281148%_ (gx#syntax-e _%g8112881145%_)))
                        (let ((_%hd8113181152%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8113281148%_)))
                              (_%tl8113081155%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8113281148%_))))
                          (if (gx#stx-pair? _%tl8113081155%_)
                              (let ((_%e8113581158%_
                                     (gx#syntax-e _%tl8113081155%_)))
                                (let ((_%hd8113481162%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8113581158%_)))
                                      (_%tl8113381165%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8113581158%_))))
                                  (if (gx#stx-null? _%tl8113381165%_)
                                      ((lambda (_%L81168%_)
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
                                       (cons _%L81168%_
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
                                       _%hd8113481162%_)
                                      (_%g8112781141%_ _%g8112881145%_))))
                              (_%g8112781141%_ _%g8112881145%_))))
                      (_%g8112781141%_ _%g8112881145%_)))))
          (_%g8112681182%_ _%$stx81123%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx81186%_)
        (let* ((_%g8119081204%_
                (lambda (_%g8119181200%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8119181200%_)))
               (_%g8118981245%_
                (lambda (_%g8119181208%_)
                  (if (gx#stx-pair? _%g8119181208%_)
                      (let ((_%e8119581211%_ (gx#syntax-e _%g8119181208%_)))
                        (let ((_%hd8119481215%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8119581211%_)))
                              (_%tl8119381218%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8119581211%_))))
                          (if (gx#stx-pair? _%tl8119381218%_)
                              (let ((_%e8119881221%_
                                     (gx#syntax-e _%tl8119381218%_)))
                                (let ((_%hd8119781225%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8119881221%_)))
                                      (_%tl8119681228%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8119881221%_))))
                                  (if (gx#stx-null? _%tl8119681228%_)
                                      ((lambda (_%L81231%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L81231%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd8119781225%_)
                                      (_%g8119081204%_ _%g8119181208%_))))
                              (_%g8119081204%_ _%g8119181208%_))))
                      (_%g8119081204%_ _%g8119181208%_)))))
          (_%g8118981245%_ _%$stx81186%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx81249%_)
        (let* ((_%g8125381263%_
                (lambda (_%g8125481259%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8125481259%_)))
               (_%g8125281284%_
                (lambda (_%g8125481267%_)
                  (if (gx#stx-pair? _%g8125481267%_)
                      (let ((_%e8125781270%_ (gx#syntax-e _%g8125481267%_)))
                        (let ((_%hd8125681274%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8125781270%_)))
                              (_%tl8125581277%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8125781270%_))))
                          (if (gx#stx-null? _%tl8125581277%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g8125381263%_ _%g8125481267%_))))
                      (_%g8125381263%_ _%g8125481267%_)))))
          (_%g8125281284%_ _%$stx81249%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx81288%_)
        (let* ((_%g8129281310%_
                (lambda (_%g8129381306%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8129381306%_)))
               (_%g8129181365%_
                (lambda (_%g8129381314%_)
                  (if (gx#stx-pair? _%g8129381314%_)
                      (let ((_%e8129881317%_ (gx#syntax-e _%g8129381314%_)))
                        (let ((_%hd8129781321%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8129881317%_)))
                              (_%tl8129681324%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8129881317%_))))
                          (if (gx#stx-pair? _%tl8129681324%_)
                              (let ((_%e8130181327%_
                                     (gx#syntax-e _%tl8129681324%_)))
                                (let ((_%hd8130081331%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8130181327%_)))
                                      (_%tl8129981334%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8130181327%_))))
                                  (if (gx#stx-pair? _%tl8129981334%_)
                                      (let ((_%e8130481337%_
                                             (gx#syntax-e _%tl8129981334%_)))
                                        (let ((_%hd8130381341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8130481337%_)))
                                              (_%tl8130281344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8130481337%_))))
                                          (if (gx#stx-null? _%tl8130281344%_)
                                              ((lambda (_%L81347%_ _%L81349%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L81349%_
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
                 (cons (cons _%L81347%_
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
                                               _%hd8130381341%_
                                               _%hd8130081331%_)
                                              (_%g8129281310%_
                                               _%g8129381314%_))))
                                      (_%g8129281310%_ _%g8129381314%_))))
                              (_%g8129281310%_ _%g8129381314%_))))
                      (_%g8129281310%_ _%g8129381314%_)))))
          (_%g8129181365%_ _%$stx81288%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx81369%_)
        (let* ((_%g8137381391%_
                (lambda (_%g8137481387%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8137481387%_)))
               (_%g8137281446%_
                (lambda (_%g8137481395%_)
                  (if (gx#stx-pair? _%g8137481395%_)
                      (let ((_%e8137981398%_ (gx#syntax-e _%g8137481395%_)))
                        (let ((_%hd8137881402%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8137981398%_)))
                              (_%tl8137781405%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8137981398%_))))
                          (if (gx#stx-pair? _%tl8137781405%_)
                              (let ((_%e8138281408%_
                                     (gx#syntax-e _%tl8137781405%_)))
                                (let ((_%hd8138181412%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8138281408%_)))
                                      (_%tl8138081415%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8138281408%_))))
                                  (if (gx#stx-pair? _%tl8138081415%_)
                                      (let ((_%e8138581418%_
                                             (gx#syntax-e _%tl8138081415%_)))
                                        (let ((_%hd8138481422%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8138581418%_)))
                                              (_%tl8138381425%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8138581418%_))))
                                          (if (gx#stx-null? _%tl8138381425%_)
                                              ((lambda (_%L81428%_ _%L81430%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L81430%_
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
                                               (cons (cons _%L81428%_
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
                                               _%hd8138481422%_
                                               _%hd8138181412%_)
                                              (_%g8137381391%_
                                               _%g8137481395%_))))
                                      (_%g8137381391%_ _%g8137481395%_))))
                              (_%g8137381391%_ _%g8137481395%_))))
                      (_%g8137381391%_ _%g8137481395%_)))))
          (_%g8137281446%_ _%$stx81369%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx81450%_)
        (let* ((_%g8145481472%_
                (lambda (_%g8145581468%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8145581468%_)))
               (_%g8145381527%_
                (lambda (_%g8145581476%_)
                  (if (gx#stx-pair? _%g8145581476%_)
                      (let ((_%e8146081479%_ (gx#syntax-e _%g8145581476%_)))
                        (let ((_%hd8145981483%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8146081479%_)))
                              (_%tl8145881486%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8146081479%_))))
                          (if (gx#stx-pair? _%tl8145881486%_)
                              (let ((_%e8146381489%_
                                     (gx#syntax-e _%tl8145881486%_)))
                                (let ((_%hd8146281493%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8146381489%_)))
                                      (_%tl8146181496%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8146381489%_))))
                                  (if (gx#stx-pair? _%tl8146181496%_)
                                      (let ((_%e8146681499%_
                                             (gx#syntax-e _%tl8146181496%_)))
                                        (let ((_%hd8146581503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8146681499%_)))
                                              (_%tl8146481506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8146681499%_))))
                                          (if (gx#stx-null? _%tl8146481506%_)
                                              ((lambda (_%L81509%_ _%L81511%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L81511%_
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
                                               (cons (cons _%L81509%_
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
                                               _%hd8146581503%_
                                               _%hd8146281493%_)
                                              (_%g8145481472%_
                                               _%g8145581476%_))))
                                      (_%g8145481472%_ _%g8145581476%_))))
                              (_%g8145481472%_ _%g8145581476%_))))
                      (_%g8145481472%_ _%g8145581476%_)))))
          (_%g8145381527%_ _%$stx81450%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx81531%_)
        (let* ((_%g8153581546%_
                (lambda (_%g8153681542%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8153681542%_)))
               (_%g8153481575%_
                (lambda (_%g8153681550%_)
                  (if (gx#stx-pair? _%g8153681550%_)
                      (let ((_%e8154081553%_ (gx#syntax-e _%g8153681550%_)))
                        (let ((_%hd8153981557%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8154081553%_)))
                              (_%tl8153881560%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8154081553%_))))
                          ((lambda (_%L81563%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L81563%_)))
                           _%tl8153881560%_)))
                      (_%g8153581546%_ _%g8153681550%_)))))
          (_%g8153481575%_ _%$stx81531%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx81579%_)
        (let* ((_%__stx8757487575%_ _%$stx81579%_)
               (_%g8159081804%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8757487575%_))))
          (let ((_%__kont8757787578%_
                 (lambda (_%L82657%_
                          _%L82659%_
                          _%L82660%_
                          _%L82661%_
                          _%L82662%_)
                   (cons _%L82662%_
                         (cons '2
                               (cons '()
                                     (cons (let ((__tmp88045
                                                  (lambda (_%g8269282695%_
                                                           _%g8269382698%_)
                                                    (cons _%g8269282695%_
                                                          _%g8269382698%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp88045
                                              '()
                                              _%L82660%_))
                                           (cons _%L82661%_
                                                 (cons _%L82659%_
                                                       (cons _%L82657%_
                                                             '())))))))))
                (_%__kont8758187582%_
                 (lambda (_%L82510%_ _%L82512%_ _%L82513%_ _%L82514%_)
                   (cons _%L82514%_
                         (cons '2
                               (cons '()
                                     (cons (let ((__tmp88046
                                                  (lambda (_%g8253782540%_
                                                           _%g8253882543%_)
                                                    (cons _%g8253782540%_
                                                          _%g8253882543%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp88046
                                              '()
                                              _%L82512%_))
                                           (cons _%L82513%_
                                                 (cons _%L82510%_
                                                       (cons _%L82510%_
                                                             '())))))))))
                (_%__kont8758587586%_
                 (lambda (_%L82413%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L82413%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont8758787588%_
                 (lambda (_%L82336%_
                          _%L82338%_
                          _%L82339%_
                          _%L82340%_
                          _%L82341%_
                          _%L82342%_)
                   (cons _%L82342%_
                         (cons '2
                               (cons (cons (cons _%L82340%_
                                                 (cons _%L82339%_ '()))
                                           _%L82341%_)
                                     (cons _%L82338%_ _%L82336%_))))))
                (_%__kont8758987590%_
                 (lambda (_%L82217%_
                          _%L82219%_
                          _%L82220%_
                          _%L82221%_
                          _%L82222%_)
                   (cons _%L82222%_
                         (cons '2
                               (cons (cons (cons _%L82220%_
                                                 (cons _%L82220%_ '()))
                                           _%L82221%_)
                                     (cons _%L82219%_ _%L82217%_))))))
                (_%__kont8759187592%_
                 (lambda (_%L82134%_ _%L82136%_ _%L82137%_)
                   (cons _%L82137%_
                         (cons '3 (cons '() (cons _%L82136%_ _%L82134%_))))))
                (_%__kont8759387594%_
                 (lambda (_%L82055%_
                          _%L82057%_
                          _%L82058%_
                          _%L82059%_
                          _%L82060%_)
                   (cons _%L82060%_
                         (cons '3
                               (cons (cons _%L82058%_ _%L82059%_)
                                     (cons _%L82057%_ _%L82055%_))))))
                (_%__kont8759587596%_
                 (lambda (_%L81939%_
                          _%L81941%_
                          _%L81942%_
                          _%L81943%_
                          _%L81944%_
                          _%L81945%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L81942%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L81939%_ '())))
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
                                       (cons (let ((__tmp88047
                                                    (lambda (_%g8197981982%_
                                                             _%g8198081985%_)
                                                      (cons _%g8197981982%_
                                                            _%g8198081985%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp88047
                                                '()
                                                _%L81944%_))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (let ((__tmp88048
                                                    (lambda (_%g8197781988%_
                                                             _%g8197881991%_)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '() (cons _%g8197781988%_ '())))
                    _%g8197881991%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp88048
                                                '()
                                                _%L81943%_)))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L81941%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match8792587926%_
                    (lambda (_%e8176281811%_
                             _%hd8176181815%_
                             _%tl8176081818%_
                             _%e8176581821%_
                             _%hd8176481825%_
                             _%tl8176381828%_
                             _%e8176681831%_
                             _%e8176981835%_
                             _%hd8176881839%_
                             _%tl8176781842%_
                             _%__splice8759787598%_
                             _%target8177081845%_
                             _%tl8177281848%_)
                      (letrec ((_%loop8177381851%_
                                (lambda (_%hd8177181855%_
                                         _%exprs8177781858%_
                                         _%names8177881860%_)
                                  (if (gx#stx-pair? _%hd8177181855%_)
                                      (let ((_%e8177481863%_
                                             (gx#syntax-e _%hd8177181855%_)))
                                        (let ((_%lp-tl8177681870%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8177481863%_)))
                                              (_%lp-hd8177581867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8177481863%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd8177581867%_)
                                              (let ((_%e8178381873%_
                                                     (gx#syntax-e
                                                      _%lp-hd8177581867%_)))
                                                (let ((_%tl8178181880%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8178381873%_)))
                                                      (_%hd8178281877%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8178381873%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8178181880%_)
                                                      (let ((_%e8178681883%_
                                                             (gx#syntax-e
                                                              _%tl8178181880%_)))
                                                        (let ((_%tl8178481890%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8178681883%_)))
                      (_%hd8178581887%_
                       (let () (declare (not safe)) (##car _%e8178681883%_))))
                  (if (gx#stx-null? _%tl8178481890%_)
                      (_%loop8177381851%_
                       _%lp-tl8177681870%_
                       (cons _%hd8178581887%_ _%exprs8177781858%_)
                       (cons _%hd8178281877%_ _%names8177881860%_))
                      (let () (declare (not safe)) (_%g8159081804%_)))))
              (let () (declare (not safe)) (_%g8159081804%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g8159081804%_)))))
                                      (let ((_%names8178081896%_
                                             (reverse _%names8177881860%_))
                                            (_%exprs8177981893%_
                                             (reverse _%exprs8177781858%_)))
                                        (if (gx#stx-pair? _%tl8176781842%_)
                                            (let ((_%e8178981899%_
                                                   (gx#syntax-e
                                                    _%tl8176781842%_)))
                                              (let ((_%tl8178781906%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8178981899%_)))
                                                    (_%hd8178881903%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8178981899%_))))
                                                (if (gx#stx-null?
                                                     _%hd8178881903%_)
                                                    (if (gx#stx-pair?
                                                         _%tl8178781906%_)
                                                        (let ((_%e8179281909%_
                                                               (gx#syntax-e
                                                                _%tl8178781906%_)))
                                                          (let ((_%tl8179081916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8179281909%_)))
                        (_%hd8179181913%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8179281909%_))))
                    (if (gx#stx-pair? _%tl8179081916%_)
                        (let ((_%e8179581919%_ (gx#syntax-e _%tl8179081916%_)))
                          (let ((_%tl8179381926%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8179581919%_)))
                                (_%hd8179481923%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8179581919%_))))
                            (if (gx#stx-pair? _%tl8179381926%_)
                                (let ((_%e8179881929%_
                                       (gx#syntax-e _%tl8179381926%_)))
                                  (let ((_%tl8179681936%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8179881929%_)))
                                        (_%hd8179781933%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8179881929%_))))
                                    (if (gx#stx-null? _%tl8179681936%_)
                                        (_%__kont8759587596%_
                                         _%hd8179781933%_
                                         _%hd8179481923%_
                                         _%hd8179181913%_
                                         _%exprs8177981893%_
                                         _%names8178081896%_
                                         _%hd8176181815%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8159081804%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8159081804%_)))))
                        (let () (declare (not safe)) (_%g8159081804%_)))))
                (let () (declare (not safe)) (_%g8159081804%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8159081804%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8159081804%_))))))))
                        (_%loop8177381851%_ _%target8177081845%_ '() '()))))
                   (_%__match8770387704%_
                    (lambda (_%e8163482436%_
                             _%hd8163382440%_
                             _%tl8163282443%_
                             _%e8163782446%_
                             _%hd8163682450%_
                             _%tl8163582453%_
                             _%e8163882456%_
                             _%e8164182460%_
                             _%hd8164082464%_
                             _%tl8163982467%_
                             _%__splice8758387584%_
                             _%target8164282470%_
                             _%tl8164482473%_
                             _%e8165382476%_
                             _%hd8165282480%_
                             _%tl8165182483%_)
                      (letrec ((_%loop8164582486%_
                                (lambda (_%hd8164382490%_ _%exprs8164982493%_)
                                  (if (gx#stx-pair? _%hd8164382490%_)
                                      (let ((_%e8164682496%_
                                             (gx#syntax-e _%hd8164382490%_)))
                                        (let ((_%lp-tl8164882503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8164682496%_)))
                                              (_%lp-hd8164782500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8164682496%_))))
                                          (_%loop8164582486%_
                                           _%lp-tl8164882503%_
                                           (cons _%lp-hd8164782500%_
                                                 _%exprs8164982493%_))))
                                      (let ((_%exprs8165082506%_
                                             (reverse _%exprs8164982493%_)))
                                        (_%__kont8758187582%_
                                         _%hd8165282480%_
                                         _%exprs8165082506%_
                                         _%hd8164082464%_
                                         _%hd8163382440%_))))))
                        (_%loop8164582486%_ _%target8164282470%_ '()))))
                   (_%__match8766387664%_
                    (lambda (_%e8159982553%_
                             _%hd8159882557%_
                             _%tl8159782560%_
                             _%e8160282563%_
                             _%hd8160182567%_
                             _%tl8160082570%_
                             _%e8160382573%_
                             _%e8160682577%_
                             _%hd8160582581%_
                             _%tl8160482584%_
                             _%__splice8757987580%_
                             _%target8160782587%_
                             _%tl8160982590%_
                             _%e8161882593%_
                             _%hd8161782597%_
                             _%tl8161682600%_
                             _%e8162182603%_
                             _%hd8162082607%_
                             _%tl8161982610%_
                             _%e8162482613%_
                             _%hd8162382617%_
                             _%tl8162282620%_
                             _%e8162782623%_
                             _%hd8162682627%_
                             _%tl8162582630%_)
                      (letrec ((_%loop8161082633%_
                                (lambda (_%hd8160882637%_ _%exprs8161482640%_)
                                  (if (gx#stx-pair? _%hd8160882637%_)
                                      (let ((_%e8161182643%_
                                             (gx#syntax-e _%hd8160882637%_)))
                                        (let ((_%lp-tl8161382650%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8161182643%_)))
                                              (_%lp-hd8161282647%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8161182643%_))))
                                          (_%loop8161082633%_
                                           _%lp-tl8161382650%_
                                           (cons _%lp-hd8161282647%_
                                                 _%exprs8161482640%_))))
                                      (let ((_%exprs8161582653%_
                                             (reverse _%exprs8161482640%_)))
                                        (_%__kont8757787578%_
                                         _%hd8162682627%_
                                         _%hd8162382617%_
                                         _%exprs8161582653%_
                                         _%hd8160582581%_
                                         _%hd8159882557%_))))))
                        (_%loop8161082633%_ _%target8160782587%_ '())))))
              (if (gx#stx-pair? _%__stx8757487575%_)
                  (let ((_%e8159982553%_ (gx#syntax-e _%__stx8757487575%_)))
                    (let ((_%tl8159782560%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e8159982553%_)))
                          (_%hd8159882557%_
                           (let ()
                             (declare (not safe))
                             (##car _%e8159982553%_))))
                      (if (gx#stx-pair? _%tl8159782560%_)
                          (let ((_%e8160282563%_
                                 (gx#syntax-e _%tl8159782560%_)))
                            (let ((_%tl8160082570%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e8160282563%_)))
                                  (_%hd8160182567%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e8160282563%_))))
                              (if (gx#stx-datum? _%hd8160182567%_)
                                  (let ((_%e8160382573%_
                                         (gx#stx-e _%hd8160182567%_)))
                                    (if (equal? _%e8160382573%_ '1)
                                        (if (gx#stx-pair? _%tl8160082570%_)
                                            (let ((_%e8160682577%_
                                                   (gx#syntax-e
                                                    _%tl8160082570%_)))
                                              (let ((_%tl8160482584%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8160682577%_)))
                                                    (_%hd8160582581%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8160682577%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl8160482584%_)
                                                    (if (let ((__tmp88049
                                                               (gx#stx-length
                                                                _%tl8160482584%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp88049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice8757987580%_
                       (gx#syntax-split-splice _%tl8160482584%_ '2)))
                  (let ((_%tl8160982590%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8757987580%_ '1)))
                        (_%target8160782587%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8757987580%_ '0))))
                    (if (gx#stx-pair? _%tl8160982590%_)
                        (let ((_%e8161882593%_ (gx#syntax-e _%tl8160982590%_)))
                          (let ((_%tl8161682600%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8161882593%_)))
                                (_%hd8161782597%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8161882593%_))))
                            (if (gx#stx-pair? _%hd8161782597%_)
                                (let ((_%e8162182603%_
                                       (gx#syntax-e _%hd8161782597%_)))
                                  (let ((_%tl8161982610%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8162182603%_)))
                                        (_%hd8162082607%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8162182603%_))))
                                    (if (gx#identifier? _%hd8162082607%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g88050_|
                                             _%hd8162082607%_)
                                            (if (gx#stx-pair? _%tl8161982610%_)
                                                (let ((_%e8162482613%_
                                                       (gx#syntax-e
                                                        _%tl8161982610%_)))
                                                  (let ((_%tl8162282620%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8162482613%_)))
                                                        (_%hd8162382617%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8162482613%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8162282620%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8161682600%_)
                                                            (let ((_%e8162782623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8161682600%_)))
                      (let ((_%tl8162582630%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8162782623%_)))
                            (_%hd8162682627%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8162782623%_))))
                        (if (gx#stx-null? _%tl8162582630%_)
                            (_%__match8766387664%_
                             _%e8159982553%_
                             _%hd8159882557%_
                             _%tl8159782560%_
                             _%e8160282563%_
                             _%hd8160182567%_
                             _%tl8160082570%_
                             _%e8160382573%_
                             _%e8160682577%_
                             _%hd8160582581%_
                             _%tl8160482584%_
                             _%__splice8757987580%_
                             _%target8160782587%_
                             _%tl8160982590%_
                             _%e8161882593%_
                             _%hd8161782597%_
                             _%tl8161682600%_
                             _%e8162182603%_
                             _%hd8162082607%_
                             _%tl8161982610%_
                             _%e8162482613%_
                             _%hd8162382617%_
                             _%tl8162282620%_
                             _%e8162782623%_
                             _%hd8162682627%_
                             _%tl8162582630%_)
                            (if (let ((__tmp88051
                                       (gx#stx-length _%tl8160482584%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp88051 '1))
                                (let ((_%__splice8758387584%_
                                       (gx#syntax-split-splice
                                        _%tl8160482584%_
                                        '1)))
                                  (let ((_%tl8164482473%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8758387584%_
                                            '1)))
                                        (_%target8164282470%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8758387584%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl8164482473%_)
                                        (let ((_%e8165382476%_
                                               (gx#syntax-e _%tl8164482473%_)))
                                          (let ((_%tl8165182483%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e8165382476%_)))
                                                (_%hd8165282480%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e8165382476%_))))
                                            (if (gx#stx-null? _%tl8165182483%_)
                                                (_%__match8770387704%_
                                                 _%e8159982553%_
                                                 _%hd8159882557%_
                                                 _%tl8159782560%_
                                                 _%e8160282563%_
                                                 _%hd8160182567%_
                                                 _%tl8160082570%_
                                                 _%e8160382573%_
                                                 _%e8160682577%_
                                                 _%hd8160582581%_
                                                 _%tl8160482584%_
                                                 _%__splice8758387584%_
                                                 _%target8164282470%_
                                                 _%tl8164482473%_
                                                 _%e8165382476%_
                                                 _%hd8165282480%_
                                                 _%tl8165182483%_)
                                                (if (gx#stx-null?
                                                     _%tl8160482584%_)
                                                    (_%__kont8758587586%_
                                                     _%hd8160582581%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8159081804%_))))))
                                        (if (gx#stx-null? _%tl8160482584%_)
                                            (_%__kont8758587586%_
                                             _%hd8160582581%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8159081804%_))))))
                                (if (gx#stx-null? _%tl8160482584%_)
                                    (_%__kont8758587586%_ _%hd8160582581%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8159081804%_)))))))
                    (if (let ((__tmp88052 (gx#stx-length _%tl8160482584%_)))
                          (declare (not safe))
                          (##fx>= __tmp88052 '1))
                        (let ((_%__splice8758387584%_
                               (gx#syntax-split-splice _%tl8160482584%_ '1)))
                          (let ((_%tl8164482473%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8758387584%_ '1)))
                                (_%target8164282470%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8758387584%_ '0))))
                            (if (gx#stx-pair? _%tl8164482473%_)
                                (let ((_%e8165382476%_
                                       (gx#syntax-e _%tl8164482473%_)))
                                  (let ((_%tl8165182483%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8165382476%_)))
                                        (_%hd8165282480%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8165382476%_))))
                                    (if (gx#stx-null? _%tl8165182483%_)
                                        (_%__match8770387704%_
                                         _%e8159982553%_
                                         _%hd8159882557%_
                                         _%tl8159782560%_
                                         _%e8160282563%_
                                         _%hd8160182567%_
                                         _%tl8160082570%_
                                         _%e8160382573%_
                                         _%e8160682577%_
                                         _%hd8160582581%_
                                         _%tl8160482584%_
                                         _%__splice8758387584%_
                                         _%target8164282470%_
                                         _%tl8164482473%_
                                         _%e8165382476%_
                                         _%hd8165282480%_
                                         _%tl8165182483%_)
                                        (if (gx#stx-null? _%tl8160482584%_)
                                            (_%__kont8758587586%_
                                             _%hd8160582581%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8159081804%_))))))
                                (if (gx#stx-null? _%tl8160482584%_)
                                    (_%__kont8758587586%_ _%hd8160582581%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8159081804%_))))))
                        (if (gx#stx-null? _%tl8160482584%_)
                            (_%__kont8758587586%_ _%hd8160582581%_)
                            (let () (declare (not safe)) (_%g8159081804%_)))))
                (if (let ((__tmp88053 (gx#stx-length _%tl8160482584%_)))
                      (declare (not safe))
                      (##fx>= __tmp88053 '1))
                    (let ((_%__splice8758387584%_
                           (gx#syntax-split-splice _%tl8160482584%_ '1)))
                      (let ((_%tl8164482473%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8758387584%_ '1)))
                            (_%target8164282470%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8758387584%_ '0))))
                        (if (gx#stx-pair? _%tl8164482473%_)
                            (let ((_%e8165382476%_
                                   (gx#syntax-e _%tl8164482473%_)))
                              (let ((_%tl8165182483%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8165382476%_)))
                                    (_%hd8165282480%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8165382476%_))))
                                (if (gx#stx-null? _%tl8165182483%_)
                                    (_%__match8770387704%_
                                     _%e8159982553%_
                                     _%hd8159882557%_
                                     _%tl8159782560%_
                                     _%e8160282563%_
                                     _%hd8160182567%_
                                     _%tl8160082570%_
                                     _%e8160382573%_
                                     _%e8160682577%_
                                     _%hd8160582581%_
                                     _%tl8160482584%_
                                     _%__splice8758387584%_
                                     _%target8164282470%_
                                     _%tl8164482473%_
                                     _%e8165382476%_
                                     _%hd8165282480%_
                                     _%tl8165182483%_)
                                    (if (gx#stx-null? _%tl8160482584%_)
                                        (_%__kont8758587586%_ _%hd8160582581%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8159081804%_))))))
                            (if (gx#stx-null? _%tl8160482584%_)
                                (_%__kont8758587586%_ _%hd8160582581%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8159081804%_))))))
                    (if (gx#stx-null? _%tl8160482584%_)
                        (_%__kont8758587586%_ _%hd8160582581%_)
                        (let () (declare (not safe)) (_%g8159081804%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp88054
                                                           (gx#stx-length
                                                            _%tl8160482584%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp88054 '1))
                                                    (let ((_%__splice8758387584%_
                                                           (gx#syntax-split-splice
                                                            _%tl8160482584%_
                                                            '1)))
                                                      (let ((_%tl8164482473%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8758387584%_ '1)))
                    (_%target8164282470%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8758387584%_ '0))))
                (if (gx#stx-pair? _%tl8164482473%_)
                    (let ((_%e8165382476%_ (gx#syntax-e _%tl8164482473%_)))
                      (let ((_%tl8165182483%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8165382476%_)))
                            (_%hd8165282480%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8165382476%_))))
                        (if (gx#stx-null? _%tl8165182483%_)
                            (_%__match8770387704%_
                             _%e8159982553%_
                             _%hd8159882557%_
                             _%tl8159782560%_
                             _%e8160282563%_
                             _%hd8160182567%_
                             _%tl8160082570%_
                             _%e8160382573%_
                             _%e8160682577%_
                             _%hd8160582581%_
                             _%tl8160482584%_
                             _%__splice8758387584%_
                             _%target8164282470%_
                             _%tl8164482473%_
                             _%e8165382476%_
                             _%hd8165282480%_
                             _%tl8165182483%_)
                            (if (gx#stx-null? _%tl8160482584%_)
                                (_%__kont8758587586%_ _%hd8160582581%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8159081804%_))))))
                    (if (gx#stx-null? _%tl8160482584%_)
                        (_%__kont8758587586%_ _%hd8160582581%_)
                        (let () (declare (not safe)) (_%g8159081804%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8160482584%_)
                                                        (_%__kont8758587586%_
                                                         _%hd8160582581%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8159081804%_)))))
                                            (if (let ((__tmp88055
                                                       (gx#stx-length
                                                        _%tl8160482584%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp88055 '1))
                                                (let ((_%__splice8758387584%_
                                                       (gx#syntax-split-splice
                                                        _%tl8160482584%_
                                                        '1)))
                                                  (let ((_%tl8164482473%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8758387584%_
                                                            '1)))
                                                        (_%target8164282470%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8758387584%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl8164482473%_)
                                                        (let ((_%e8165382476%_
                                                               (gx#syntax-e
                                                                _%tl8164482473%_)))
                                                          (let ((_%tl8165182483%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8165382476%_)))
                        (_%hd8165282480%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8165382476%_))))
                    (if (gx#stx-null? _%tl8165182483%_)
                        (_%__match8770387704%_
                         _%e8159982553%_
                         _%hd8159882557%_
                         _%tl8159782560%_
                         _%e8160282563%_
                         _%hd8160182567%_
                         _%tl8160082570%_
                         _%e8160382573%_
                         _%e8160682577%_
                         _%hd8160582581%_
                         _%tl8160482584%_
                         _%__splice8758387584%_
                         _%target8164282470%_
                         _%tl8164482473%_
                         _%e8165382476%_
                         _%hd8165282480%_
                         _%tl8165182483%_)
                        (if (gx#stx-null? _%tl8160482584%_)
                            (_%__kont8758587586%_ _%hd8160582581%_)
                            (let () (declare (not safe)) (_%g8159081804%_))))))
                (if (gx#stx-null? _%tl8160482584%_)
                    (_%__kont8758587586%_ _%hd8160582581%_)
                    (let () (declare (not safe)) (_%g8159081804%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl8160482584%_)
                                                    (_%__kont8758587586%_
                                                     _%hd8160582581%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8159081804%_)))))
                                        (if (let ((__tmp88056
                                                   (gx#stx-length
                                                    _%tl8160482584%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp88056 '1))
                                            (let ((_%__splice8758387584%_
                                                   (gx#syntax-split-splice
                                                    _%tl8160482584%_
                                                    '1)))
                                              (let ((_%tl8164482473%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8758387584%_
                                                        '1)))
                                                    (_%target8164282470%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8758387584%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl8164482473%_)
                                                    (let ((_%e8165382476%_
                                                           (gx#syntax-e
                                                            _%tl8164482473%_)))
                                                      (let ((_%tl8165182483%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8165382476%_)))
                    (_%hd8165282480%_
                     (let () (declare (not safe)) (##car _%e8165382476%_))))
                (if (gx#stx-null? _%tl8165182483%_)
                    (_%__match8770387704%_
                     _%e8159982553%_
                     _%hd8159882557%_
                     _%tl8159782560%_
                     _%e8160282563%_
                     _%hd8160182567%_
                     _%tl8160082570%_
                     _%e8160382573%_
                     _%e8160682577%_
                     _%hd8160582581%_
                     _%tl8160482584%_
                     _%__splice8758387584%_
                     _%target8164282470%_
                     _%tl8164482473%_
                     _%e8165382476%_
                     _%hd8165282480%_
                     _%tl8165182483%_)
                    (if (gx#stx-null? _%tl8160482584%_)
                        (_%__kont8758587586%_ _%hd8160582581%_)
                        (let () (declare (not safe)) (_%g8159081804%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8160482584%_)
                                                        (_%__kont8758587586%_
                                                         _%hd8160582581%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8159081804%_))))))
                                            (if (gx#stx-null? _%tl8160482584%_)
                                                (_%__kont8758587586%_
                                                 _%hd8160582581%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8159081804%_)))))))
                                (if (let ((__tmp88057
                                           (gx#stx-length _%tl8160482584%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp88057 '1))
                                    (let ((_%__splice8758387584%_
                                           (gx#syntax-split-splice
                                            _%tl8160482584%_
                                            '1)))
                                      (let ((_%tl8164482473%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8758387584%_
                                                '1)))
                                            (_%target8164282470%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8758387584%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl8164482473%_)
                                            (let ((_%e8165382476%_
                                                   (gx#syntax-e
                                                    _%tl8164482473%_)))
                                              (let ((_%tl8165182483%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8165382476%_)))
                                                    (_%hd8165282480%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8165382476%_))))
                                                (if (gx#stx-null?
                                                     _%tl8165182483%_)
                                                    (_%__match8770387704%_
                                                     _%e8159982553%_
                                                     _%hd8159882557%_
                                                     _%tl8159782560%_
                                                     _%e8160282563%_
                                                     _%hd8160182567%_
                                                     _%tl8160082570%_
                                                     _%e8160382573%_
                                                     _%e8160682577%_
                                                     _%hd8160582581%_
                                                     _%tl8160482584%_
                                                     _%__splice8758387584%_
                                                     _%target8164282470%_
                                                     _%tl8164482473%_
                                                     _%e8165382476%_
                                                     _%hd8165282480%_
                                                     _%tl8165182483%_)
                                                    (if (gx#stx-null?
                                                         _%tl8160482584%_)
                                                        (_%__kont8758587586%_
                                                         _%hd8160582581%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8159081804%_))))))
                                            (if (gx#stx-null? _%tl8160482584%_)
                                                (_%__kont8758587586%_
                                                 _%hd8160582581%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8159081804%_))))))
                                    (if (gx#stx-null? _%tl8160482584%_)
                                        (_%__kont8758587586%_ _%hd8160582581%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8159081804%_)))))))
                        (if (let ((__tmp88058
                                   (gx#stx-length _%tl8160482584%_)))
                              (declare (not safe))
                              (##fx>= __tmp88058 '1))
                            (let ((_%__splice8758387584%_
                                   (gx#syntax-split-splice
                                    _%tl8160482584%_
                                    '1)))
                              (let ((_%tl8164482473%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8758387584%_
                                        '1)))
                                    (_%target8164282470%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8758387584%_
                                        '0))))
                                (if (gx#stx-pair? _%tl8164482473%_)
                                    (let ((_%e8165382476%_
                                           (gx#syntax-e _%tl8164482473%_)))
                                      (let ((_%tl8165182483%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8165382476%_)))
                                            (_%hd8165282480%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8165382476%_))))
                                        (if (gx#stx-null? _%tl8165182483%_)
                                            (_%__match8770387704%_
                                             _%e8159982553%_
                                             _%hd8159882557%_
                                             _%tl8159782560%_
                                             _%e8160282563%_
                                             _%hd8160182567%_
                                             _%tl8160082570%_
                                             _%e8160382573%_
                                             _%e8160682577%_
                                             _%hd8160582581%_
                                             _%tl8160482584%_
                                             _%__splice8758387584%_
                                             _%target8164282470%_
                                             _%tl8164482473%_
                                             _%e8165382476%_
                                             _%hd8165282480%_
                                             _%tl8165182483%_)
                                            (if (gx#stx-null? _%tl8160482584%_)
                                                (_%__kont8758587586%_
                                                 _%hd8160582581%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8159081804%_))))))
                                    (if (gx#stx-null? _%tl8160482584%_)
                                        (_%__kont8758587586%_ _%hd8160582581%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8159081804%_))))))
                            (if (gx#stx-null? _%tl8160482584%_)
                                (_%__kont8758587586%_ _%hd8160582581%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8159081804%_)))))))
                (if (let ((__tmp88059 (gx#stx-length _%tl8160482584%_)))
                      (declare (not safe))
                      (##fx>= __tmp88059 '1))
                    (let ((_%__splice8758387584%_
                           (gx#syntax-split-splice _%tl8160482584%_ '1)))
                      (let ((_%tl8164482473%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8758387584%_ '1)))
                            (_%target8164282470%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8758387584%_ '0))))
                        (if (gx#stx-pair? _%tl8164482473%_)
                            (let ((_%e8165382476%_
                                   (gx#syntax-e _%tl8164482473%_)))
                              (let ((_%tl8165182483%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8165382476%_)))
                                    (_%hd8165282480%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8165382476%_))))
                                (if (gx#stx-null? _%tl8165182483%_)
                                    (_%__match8770387704%_
                                     _%e8159982553%_
                                     _%hd8159882557%_
                                     _%tl8159782560%_
                                     _%e8160282563%_
                                     _%hd8160182567%_
                                     _%tl8160082570%_
                                     _%e8160382573%_
                                     _%e8160682577%_
                                     _%hd8160582581%_
                                     _%tl8160482584%_
                                     _%__splice8758387584%_
                                     _%target8164282470%_
                                     _%tl8164482473%_
                                     _%e8165382476%_
                                     _%hd8165282480%_
                                     _%tl8165182483%_)
                                    (if (gx#stx-null? _%tl8160482584%_)
                                        (_%__kont8758587586%_ _%hd8160582581%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8159081804%_))))))
                            (if (gx#stx-null? _%tl8160482584%_)
                                (_%__kont8758587586%_ _%hd8160582581%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8159081804%_))))))
                    (if (gx#stx-null? _%tl8160482584%_)
                        (_%__kont8758587586%_ _%hd8160582581%_)
                        (let () (declare (not safe)) (_%g8159081804%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8160482584%_)
                                                        (_%__kont8758587586%_
                                                         _%hd8160582581%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8159081804%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8159081804%_)))
                                        (if (equal? _%e8160382573%_ '2)
                                            (if (gx#stx-pair? _%tl8160082570%_)
                                                (let ((_%e8168082276%_
                                                       (gx#syntax-e
                                                        _%tl8160082570%_)))
                                                  (let ((_%tl8167882283%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8168082276%_)))
                                                        (_%hd8167982280%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8168082276%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl8167882283%_)
                                                        (let ((_%e8168382286%_
                                                               (gx#syntax-e
                                                                _%tl8167882283%_)))
                                                          (let ((_%tl8168182293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8168382286%_)))
                        (_%hd8168282290%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8168382286%_))))
                    (if (gx#stx-pair? _%hd8168282290%_)
                        (let ((_%e8168682296%_ (gx#syntax-e _%hd8168282290%_)))
                          (let ((_%tl8168482303%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8168682296%_)))
                                (_%hd8168582300%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8168682296%_))))
                            (if (gx#stx-pair? _%hd8168582300%_)
                                (let ((_%e8168982306%_
                                       (gx#syntax-e _%hd8168582300%_)))
                                  (let ((_%tl8168782313%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8168982306%_)))
                                        (_%hd8168882310%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8168982306%_))))
                                    (if (gx#identifier? _%hd8168882310%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g88060_|
                                             _%hd8168882310%_)
                                            (if (gx#stx-pair? _%tl8168782313%_)
                                                (let ((_%e8169282316%_
                                                       (gx#syntax-e
                                                        _%tl8168782313%_)))
                                                  (let ((_%tl8169082323%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8169282316%_)))
                                                        (_%hd8169182320%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8169282316%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8169082323%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8168482303%_)
                                                            (let ((_%e8169582326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8168482303%_)))
                      (let ((_%tl8169382333%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8169582326%_)))
                            (_%hd8169482330%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8169582326%_))))
                        (_%__kont8758787588%_
                         _%tl8168182293%_
                         _%tl8169382333%_
                         _%hd8169482330%_
                         _%hd8169182320%_
                         _%hd8167982280%_
                         _%hd8159882557%_)))
                    (_%__kont8758987590%_
                     _%tl8168182293%_
                     _%tl8168482303%_
                     _%hd8168582300%_
                     _%hd8167982280%_
                     _%hd8159882557%_))
                (_%__kont8758987590%_
                 _%tl8168182293%_
                 _%tl8168482303%_
                 _%hd8168582300%_
                 _%hd8167982280%_
                 _%hd8159882557%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont8758987590%_
                                                 _%tl8168182293%_
                                                 _%tl8168482303%_
                                                 _%hd8168582300%_
                                                 _%hd8167982280%_
                                                 _%hd8159882557%_))
                                            (_%__kont8758987590%_
                                             _%tl8168182293%_
                                             _%tl8168482303%_
                                             _%hd8168582300%_
                                             _%hd8167982280%_
                                             _%hd8159882557%_))
                                        (_%__kont8758987590%_
                                         _%tl8168182293%_
                                         _%tl8168482303%_
                                         _%hd8168582300%_
                                         _%hd8167982280%_
                                         _%hd8159882557%_))))
                                (_%__kont8758987590%_
                                 _%tl8168182293%_
                                 _%tl8168482303%_
                                 _%hd8168582300%_
                                 _%hd8167982280%_
                                 _%hd8159882557%_))))
                        (if (gx#stx-null? _%hd8168282290%_)
                            (_%__kont8759187592%_
                             _%tl8168182293%_
                             _%hd8167982280%_
                             _%hd8159882557%_)
                            (let () (declare (not safe)) (_%g8159081804%_))))))
                (let () (declare (not safe)) (_%g8159081804%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8159081804%_)))
                                            (if (equal? _%e8160382573%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl8160082570%_)
                                                    (let ((_%e8174782025%_
                                                           (gx#syntax-e
                                                            _%tl8160082570%_)))
                                                      (let ((_%tl8174582032%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8174782025%_)))
                    (_%hd8174682029%_
                     (let () (declare (not safe)) (##car _%e8174782025%_))))
                (if (gx#stx-pair? _%tl8174582032%_)
                    (let ((_%e8175082035%_ (gx#syntax-e _%tl8174582032%_)))
                      (let ((_%tl8174882042%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8175082035%_)))
                            (_%hd8174982039%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8175082035%_))))
                        (if (gx#stx-pair? _%hd8174982039%_)
                            (let ((_%e8175382045%_
                                   (gx#syntax-e _%hd8174982039%_)))
                              (let ((_%tl8175182052%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8175382045%_)))
                                    (_%hd8175282049%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8175382045%_))))
                                (_%__kont8759387594%_
                                 _%tl8174882042%_
                                 _%tl8175182052%_
                                 _%hd8175282049%_
                                 _%hd8174682029%_
                                 _%hd8159882557%_)))
                            (if (gx#stx-pair/null? _%hd8174682029%_)
                                (let ((_%__splice8759787598%_
                                       (gx#syntax-split-splice
                                        _%hd8174682029%_
                                        '0)))
                                  (let ((_%tl8177281848%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8759787598%_
                                            '1)))
                                        (_%target8177081845%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8759787598%_
                                            '0))))
                                    (if (gx#stx-null? _%tl8177281848%_)
                                        (_%__match8792587926%_
                                         _%e8159982553%_
                                         _%hd8159882557%_
                                         _%tl8159782560%_
                                         _%e8160282563%_
                                         _%hd8160182567%_
                                         _%tl8160082570%_
                                         _%e8160382573%_
                                         _%e8174782025%_
                                         _%hd8174682029%_
                                         _%tl8174582032%_
                                         _%__splice8759787598%_
                                         _%target8177081845%_
                                         _%tl8177281848%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8159081804%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8159081804%_))))))
                    (if (gx#stx-pair/null? _%hd8174682029%_)
                        (let ((_%__splice8759787598%_
                               (gx#syntax-split-splice _%hd8174682029%_ '0)))
                          (let ((_%tl8177281848%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8759787598%_ '1)))
                                (_%target8177081845%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8759787598%_ '0))))
                            (if (gx#stx-null? _%tl8177281848%_)
                                (_%__match8792587926%_
                                 _%e8159982553%_
                                 _%hd8159882557%_
                                 _%tl8159782560%_
                                 _%e8160282563%_
                                 _%hd8160182567%_
                                 _%tl8160082570%_
                                 _%e8160382573%_
                                 _%e8174782025%_
                                 _%hd8174682029%_
                                 _%tl8174582032%_
                                 _%__splice8759787598%_
                                 _%target8177081845%_
                                 _%tl8177281848%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8159081804%_)))))
                        (let () (declare (not safe)) (_%g8159081804%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8159081804%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8159081804%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g8159081804%_)))))
                          (let () (declare (not safe)) (_%g8159081804%_)))))
                  (let () (declare (not safe)) (_%g8159081804%_))))))))))
