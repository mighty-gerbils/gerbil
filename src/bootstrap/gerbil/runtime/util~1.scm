(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g88058_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g88068_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx81049%_)
        (let* ((_%g8105381071%_
                (lambda (_%g8105481067%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8105481067%_)))
               (_%g8105281127%_
                (lambda (_%g8105481075%_)
                  (if (gx#stx-pair? _%g8105481075%_)
                      (let ((_%e8105981078%_ (gx#syntax-e _%g8105481075%_)))
                        (let ((_%hd8105881082%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8105981078%_)))
                              (_%tl8105781085%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8105981078%_))))
                          (if (gx#stx-pair? _%tl8105781085%_)
                              (let ((_%e8106281088%_
                                     (gx#syntax-e _%tl8105781085%_)))
                                (let ((_%hd8106181092%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8106281088%_)))
                                      (_%tl8106081095%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8106281088%_))))
                                  (if (gx#stx-pair? _%tl8106081095%_)
                                      (let ((_%e8106581098%_
                                             (gx#syntax-e _%tl8106081095%_)))
                                        (let ((_%hd8106481102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8106581098%_)))
                                              (_%tl8106381105%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8106581098%_))))
                                          (if (gx#stx-null? _%tl8106381105%_)
                                              ((lambda (_%L81108%_ _%L81110%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L81110%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L81108%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8106481102%_
                                               _%hd8106181092%_)
                                              (_%g8105381071%_
                                               _%g8105481075%_))))
                                      (_%g8105381071%_ _%g8105481075%_))))
                              (_%g8105381071%_ _%g8105481075%_))))
                      (_%g8105381071%_ _%g8105481075%_)))))
          (_%g8105281127%_ _%$stx81049%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx81131%_)
        (let* ((_%g8113581149%_
                (lambda (_%g8113681145%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8113681145%_)))
               (_%g8113481190%_
                (lambda (_%g8113681153%_)
                  (if (gx#stx-pair? _%g8113681153%_)
                      (let ((_%e8114081156%_ (gx#syntax-e _%g8113681153%_)))
                        (let ((_%hd8113981160%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8114081156%_)))
                              (_%tl8113881163%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8114081156%_))))
                          (if (gx#stx-pair? _%tl8113881163%_)
                              (let ((_%e8114381166%_
                                     (gx#syntax-e _%tl8113881163%_)))
                                (let ((_%hd8114281170%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8114381166%_)))
                                      (_%tl8114181173%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8114381166%_))))
                                  (if (gx#stx-null? _%tl8114181173%_)
                                      ((lambda (_%L81176%_)
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
                                       (cons _%L81176%_
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
                                       _%hd8114281170%_)
                                      (_%g8113581149%_ _%g8113681153%_))))
                              (_%g8113581149%_ _%g8113681153%_))))
                      (_%g8113581149%_ _%g8113681153%_)))))
          (_%g8113481190%_ _%$stx81131%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx81194%_)
        (let* ((_%g8119881212%_
                (lambda (_%g8119981208%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8119981208%_)))
               (_%g8119781253%_
                (lambda (_%g8119981216%_)
                  (if (gx#stx-pair? _%g8119981216%_)
                      (let ((_%e8120381219%_ (gx#syntax-e _%g8119981216%_)))
                        (let ((_%hd8120281223%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8120381219%_)))
                              (_%tl8120181226%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8120381219%_))))
                          (if (gx#stx-pair? _%tl8120181226%_)
                              (let ((_%e8120681229%_
                                     (gx#syntax-e _%tl8120181226%_)))
                                (let ((_%hd8120581233%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8120681229%_)))
                                      (_%tl8120481236%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8120681229%_))))
                                  (if (gx#stx-null? _%tl8120481236%_)
                                      ((lambda (_%L81239%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L81239%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd8120581233%_)
                                      (_%g8119881212%_ _%g8119981216%_))))
                              (_%g8119881212%_ _%g8119981216%_))))
                      (_%g8119881212%_ _%g8119981216%_)))))
          (_%g8119781253%_ _%$stx81194%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx81257%_)
        (let* ((_%g8126181271%_
                (lambda (_%g8126281267%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8126281267%_)))
               (_%g8126081292%_
                (lambda (_%g8126281275%_)
                  (if (gx#stx-pair? _%g8126281275%_)
                      (let ((_%e8126581278%_ (gx#syntax-e _%g8126281275%_)))
                        (let ((_%hd8126481282%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8126581278%_)))
                              (_%tl8126381285%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8126581278%_))))
                          (if (gx#stx-null? _%tl8126381285%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g8126181271%_ _%g8126281275%_))))
                      (_%g8126181271%_ _%g8126281275%_)))))
          (_%g8126081292%_ _%$stx81257%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx81296%_)
        (let* ((_%g8130081318%_
                (lambda (_%g8130181314%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8130181314%_)))
               (_%g8129981373%_
                (lambda (_%g8130181322%_)
                  (if (gx#stx-pair? _%g8130181322%_)
                      (let ((_%e8130681325%_ (gx#syntax-e _%g8130181322%_)))
                        (let ((_%hd8130581329%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8130681325%_)))
                              (_%tl8130481332%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8130681325%_))))
                          (if (gx#stx-pair? _%tl8130481332%_)
                              (let ((_%e8130981335%_
                                     (gx#syntax-e _%tl8130481332%_)))
                                (let ((_%hd8130881339%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8130981335%_)))
                                      (_%tl8130781342%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8130981335%_))))
                                  (if (gx#stx-pair? _%tl8130781342%_)
                                      (let ((_%e8131281345%_
                                             (gx#syntax-e _%tl8130781342%_)))
                                        (let ((_%hd8131181349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8131281345%_)))
                                              (_%tl8131081352%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8131281345%_))))
                                          (if (gx#stx-null? _%tl8131081352%_)
                                              ((lambda (_%L81355%_ _%L81357%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L81357%_
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
                 (cons (cons _%L81355%_
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
                                               _%hd8131181349%_
                                               _%hd8130881339%_)
                                              (_%g8130081318%_
                                               _%g8130181322%_))))
                                      (_%g8130081318%_ _%g8130181322%_))))
                              (_%g8130081318%_ _%g8130181322%_))))
                      (_%g8130081318%_ _%g8130181322%_)))))
          (_%g8129981373%_ _%$stx81296%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx81377%_)
        (let* ((_%g8138181399%_
                (lambda (_%g8138281395%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8138281395%_)))
               (_%g8138081454%_
                (lambda (_%g8138281403%_)
                  (if (gx#stx-pair? _%g8138281403%_)
                      (let ((_%e8138781406%_ (gx#syntax-e _%g8138281403%_)))
                        (let ((_%hd8138681410%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8138781406%_)))
                              (_%tl8138581413%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8138781406%_))))
                          (if (gx#stx-pair? _%tl8138581413%_)
                              (let ((_%e8139081416%_
                                     (gx#syntax-e _%tl8138581413%_)))
                                (let ((_%hd8138981420%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8139081416%_)))
                                      (_%tl8138881423%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8139081416%_))))
                                  (if (gx#stx-pair? _%tl8138881423%_)
                                      (let ((_%e8139381426%_
                                             (gx#syntax-e _%tl8138881423%_)))
                                        (let ((_%hd8139281430%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8139381426%_)))
                                              (_%tl8139181433%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8139381426%_))))
                                          (if (gx#stx-null? _%tl8139181433%_)
                                              ((lambda (_%L81436%_ _%L81438%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L81438%_
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
                                               (cons (cons _%L81436%_
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
                                               _%hd8139281430%_
                                               _%hd8138981420%_)
                                              (_%g8138181399%_
                                               _%g8138281403%_))))
                                      (_%g8138181399%_ _%g8138281403%_))))
                              (_%g8138181399%_ _%g8138281403%_))))
                      (_%g8138181399%_ _%g8138281403%_)))))
          (_%g8138081454%_ _%$stx81377%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx81458%_)
        (let* ((_%g8146281480%_
                (lambda (_%g8146381476%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8146381476%_)))
               (_%g8146181535%_
                (lambda (_%g8146381484%_)
                  (if (gx#stx-pair? _%g8146381484%_)
                      (let ((_%e8146881487%_ (gx#syntax-e _%g8146381484%_)))
                        (let ((_%hd8146781491%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8146881487%_)))
                              (_%tl8146681494%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8146881487%_))))
                          (if (gx#stx-pair? _%tl8146681494%_)
                              (let ((_%e8147181497%_
                                     (gx#syntax-e _%tl8146681494%_)))
                                (let ((_%hd8147081501%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8147181497%_)))
                                      (_%tl8146981504%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8147181497%_))))
                                  (if (gx#stx-pair? _%tl8146981504%_)
                                      (let ((_%e8147481507%_
                                             (gx#syntax-e _%tl8146981504%_)))
                                        (let ((_%hd8147381511%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8147481507%_)))
                                              (_%tl8147281514%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8147481507%_))))
                                          (if (gx#stx-null? _%tl8147281514%_)
                                              ((lambda (_%L81517%_ _%L81519%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L81519%_
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
                                               (cons (cons _%L81517%_
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
                                               _%hd8147381511%_
                                               _%hd8147081501%_)
                                              (_%g8146281480%_
                                               _%g8146381484%_))))
                                      (_%g8146281480%_ _%g8146381484%_))))
                              (_%g8146281480%_ _%g8146381484%_))))
                      (_%g8146281480%_ _%g8146381484%_)))))
          (_%g8146181535%_ _%$stx81458%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx81539%_)
        (let* ((_%g8154381554%_
                (lambda (_%g8154481550%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8154481550%_)))
               (_%g8154281583%_
                (lambda (_%g8154481558%_)
                  (if (gx#stx-pair? _%g8154481558%_)
                      (let ((_%e8154881561%_ (gx#syntax-e _%g8154481558%_)))
                        (let ((_%hd8154781565%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8154881561%_)))
                              (_%tl8154681568%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8154881561%_))))
                          ((lambda (_%L81571%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L81571%_)))
                           _%tl8154681568%_)))
                      (_%g8154381554%_ _%g8154481558%_)))))
          (_%g8154281583%_ _%$stx81539%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx81587%_)
        (let* ((_%__stx8758287583%_ _%$stx81587%_)
               (_%g8159881812%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8758287583%_))))
          (let ((_%__kont8758587586%_
                 (lambda (_%L82665%_
                          _%L82667%_
                          _%L82668%_
                          _%L82669%_
                          _%L82670%_)
                   (cons _%L82670%_
                         (cons '2
                               (cons '()
                                     (cons (let ((__tmp88053
                                                  (lambda (_%g8270082703%_
                                                           _%g8270182706%_)
                                                    (cons _%g8270082703%_
                                                          _%g8270182706%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp88053
                                              '()
                                              _%L82668%_))
                                           (cons _%L82669%_
                                                 (cons _%L82667%_
                                                       (cons _%L82665%_
                                                             '())))))))))
                (_%__kont8758987590%_
                 (lambda (_%L82518%_ _%L82520%_ _%L82521%_ _%L82522%_)
                   (cons _%L82522%_
                         (cons '2
                               (cons '()
                                     (cons (let ((__tmp88054
                                                  (lambda (_%g8254582548%_
                                                           _%g8254682551%_)
                                                    (cons _%g8254582548%_
                                                          _%g8254682551%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp88054
                                              '()
                                              _%L82520%_))
                                           (cons _%L82521%_
                                                 (cons _%L82518%_
                                                       (cons _%L82518%_
                                                             '())))))))))
                (_%__kont8759387594%_
                 (lambda (_%L82421%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L82421%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont8759587596%_
                 (lambda (_%L82344%_
                          _%L82346%_
                          _%L82347%_
                          _%L82348%_
                          _%L82349%_
                          _%L82350%_)
                   (cons _%L82350%_
                         (cons '2
                               (cons (cons (cons _%L82348%_
                                                 (cons _%L82347%_ '()))
                                           _%L82349%_)
                                     (cons _%L82346%_ _%L82344%_))))))
                (_%__kont8759787598%_
                 (lambda (_%L82225%_
                          _%L82227%_
                          _%L82228%_
                          _%L82229%_
                          _%L82230%_)
                   (cons _%L82230%_
                         (cons '2
                               (cons (cons (cons _%L82228%_
                                                 (cons _%L82228%_ '()))
                                           _%L82229%_)
                                     (cons _%L82227%_ _%L82225%_))))))
                (_%__kont8759987600%_
                 (lambda (_%L82142%_ _%L82144%_ _%L82145%_)
                   (cons _%L82145%_
                         (cons '3 (cons '() (cons _%L82144%_ _%L82142%_))))))
                (_%__kont8760187602%_
                 (lambda (_%L82063%_
                          _%L82065%_
                          _%L82066%_
                          _%L82067%_
                          _%L82068%_)
                   (cons _%L82068%_
                         (cons '3
                               (cons (cons _%L82066%_ _%L82067%_)
                                     (cons _%L82065%_ _%L82063%_))))))
                (_%__kont8760387604%_
                 (lambda (_%L81947%_
                          _%L81949%_
                          _%L81950%_
                          _%L81951%_
                          _%L81952%_
                          _%L81953%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L81950%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L81947%_ '())))
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
                                       (cons (let ((__tmp88055
                                                    (lambda (_%g8198781990%_
                                                             _%g8198881993%_)
                                                      (cons _%g8198781990%_
                                                            _%g8198881993%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp88055
                                                '()
                                                _%L81952%_))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (let ((__tmp88056
                                                    (lambda (_%g8198581996%_
                                                             _%g8198681999%_)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '() (cons _%g8198581996%_ '())))
                    _%g8198681999%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp88056
                                                '()
                                                _%L81951%_)))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L81949%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match8793387934%_
                    (lambda (_%e8177081819%_
                             _%hd8176981823%_
                             _%tl8176881826%_
                             _%e8177381829%_
                             _%hd8177281833%_
                             _%tl8177181836%_
                             _%e8177481839%_
                             _%e8177781843%_
                             _%hd8177681847%_
                             _%tl8177581850%_
                             _%__splice8760587606%_
                             _%target8177881853%_
                             _%tl8178081856%_)
                      (letrec ((_%loop8178181859%_
                                (lambda (_%hd8177981863%_
                                         _%exprs8178581866%_
                                         _%names8178681868%_)
                                  (if (gx#stx-pair? _%hd8177981863%_)
                                      (let ((_%e8178281871%_
                                             (gx#syntax-e _%hd8177981863%_)))
                                        (let ((_%lp-tl8178481878%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8178281871%_)))
                                              (_%lp-hd8178381875%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8178281871%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd8178381875%_)
                                              (let ((_%e8179181881%_
                                                     (gx#syntax-e
                                                      _%lp-hd8178381875%_)))
                                                (let ((_%tl8178981888%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8179181881%_)))
                                                      (_%hd8179081885%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8179181881%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8178981888%_)
                                                      (let ((_%e8179481891%_
                                                             (gx#syntax-e
                                                              _%tl8178981888%_)))
                                                        (let ((_%tl8179281898%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8179481891%_)))
                      (_%hd8179381895%_
                       (let () (declare (not safe)) (##car _%e8179481891%_))))
                  (if (gx#stx-null? _%tl8179281898%_)
                      (_%loop8178181859%_
                       _%lp-tl8178481878%_
                       (cons _%hd8179381895%_ _%exprs8178581866%_)
                       (cons _%hd8179081885%_ _%names8178681868%_))
                      (let () (declare (not safe)) (_%g8159881812%_)))))
              (let () (declare (not safe)) (_%g8159881812%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g8159881812%_)))))
                                      (let ((_%names8178881904%_
                                             (reverse _%names8178681868%_))
                                            (_%exprs8178781901%_
                                             (reverse _%exprs8178581866%_)))
                                        (if (gx#stx-pair? _%tl8177581850%_)
                                            (let ((_%e8179781907%_
                                                   (gx#syntax-e
                                                    _%tl8177581850%_)))
                                              (let ((_%tl8179581914%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8179781907%_)))
                                                    (_%hd8179681911%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8179781907%_))))
                                                (if (gx#stx-null?
                                                     _%hd8179681911%_)
                                                    (if (gx#stx-pair?
                                                         _%tl8179581914%_)
                                                        (let ((_%e8180081917%_
                                                               (gx#syntax-e
                                                                _%tl8179581914%_)))
                                                          (let ((_%tl8179881924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8180081917%_)))
                        (_%hd8179981921%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8180081917%_))))
                    (if (gx#stx-pair? _%tl8179881924%_)
                        (let ((_%e8180381927%_ (gx#syntax-e _%tl8179881924%_)))
                          (let ((_%tl8180181934%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8180381927%_)))
                                (_%hd8180281931%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8180381927%_))))
                            (if (gx#stx-pair? _%tl8180181934%_)
                                (let ((_%e8180681937%_
                                       (gx#syntax-e _%tl8180181934%_)))
                                  (let ((_%tl8180481944%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8180681937%_)))
                                        (_%hd8180581941%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8180681937%_))))
                                    (if (gx#stx-null? _%tl8180481944%_)
                                        (_%__kont8760387604%_
                                         _%hd8180581941%_
                                         _%hd8180281931%_
                                         _%hd8179981921%_
                                         _%exprs8178781901%_
                                         _%names8178881904%_
                                         _%hd8176981823%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8159881812%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8159881812%_)))))
                        (let () (declare (not safe)) (_%g8159881812%_)))))
                (let () (declare (not safe)) (_%g8159881812%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8159881812%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8159881812%_))))))))
                        (_%loop8178181859%_ _%target8177881853%_ '() '()))))
                   (_%__match8771187712%_
                    (lambda (_%e8164282444%_
                             _%hd8164182448%_
                             _%tl8164082451%_
                             _%e8164582454%_
                             _%hd8164482458%_
                             _%tl8164382461%_
                             _%e8164682464%_
                             _%e8164982468%_
                             _%hd8164882472%_
                             _%tl8164782475%_
                             _%__splice8759187592%_
                             _%target8165082478%_
                             _%tl8165282481%_
                             _%e8166182484%_
                             _%hd8166082488%_
                             _%tl8165982491%_)
                      (letrec ((_%loop8165382494%_
                                (lambda (_%hd8165182498%_ _%exprs8165782501%_)
                                  (if (gx#stx-pair? _%hd8165182498%_)
                                      (let ((_%e8165482504%_
                                             (gx#syntax-e _%hd8165182498%_)))
                                        (let ((_%lp-tl8165682511%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8165482504%_)))
                                              (_%lp-hd8165582508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8165482504%_))))
                                          (_%loop8165382494%_
                                           _%lp-tl8165682511%_
                                           (cons _%lp-hd8165582508%_
                                                 _%exprs8165782501%_))))
                                      (let ((_%exprs8165882514%_
                                             (reverse _%exprs8165782501%_)))
                                        (_%__kont8758987590%_
                                         _%hd8166082488%_
                                         _%exprs8165882514%_
                                         _%hd8164882472%_
                                         _%hd8164182448%_))))))
                        (_%loop8165382494%_ _%target8165082478%_ '()))))
                   (_%__match8767187672%_
                    (lambda (_%e8160782561%_
                             _%hd8160682565%_
                             _%tl8160582568%_
                             _%e8161082571%_
                             _%hd8160982575%_
                             _%tl8160882578%_
                             _%e8161182581%_
                             _%e8161482585%_
                             _%hd8161382589%_
                             _%tl8161282592%_
                             _%__splice8758787588%_
                             _%target8161582595%_
                             _%tl8161782598%_
                             _%e8162682601%_
                             _%hd8162582605%_
                             _%tl8162482608%_
                             _%e8162982611%_
                             _%hd8162882615%_
                             _%tl8162782618%_
                             _%e8163282621%_
                             _%hd8163182625%_
                             _%tl8163082628%_
                             _%e8163582631%_
                             _%hd8163482635%_
                             _%tl8163382638%_)
                      (letrec ((_%loop8161882641%_
                                (lambda (_%hd8161682645%_ _%exprs8162282648%_)
                                  (if (gx#stx-pair? _%hd8161682645%_)
                                      (let ((_%e8161982651%_
                                             (gx#syntax-e _%hd8161682645%_)))
                                        (let ((_%lp-tl8162182658%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8161982651%_)))
                                              (_%lp-hd8162082655%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8161982651%_))))
                                          (_%loop8161882641%_
                                           _%lp-tl8162182658%_
                                           (cons _%lp-hd8162082655%_
                                                 _%exprs8162282648%_))))
                                      (let ((_%exprs8162382661%_
                                             (reverse _%exprs8162282648%_)))
                                        (_%__kont8758587586%_
                                         _%hd8163482635%_
                                         _%hd8163182625%_
                                         _%exprs8162382661%_
                                         _%hd8161382589%_
                                         _%hd8160682565%_))))))
                        (_%loop8161882641%_ _%target8161582595%_ '())))))
              (if (gx#stx-pair? _%__stx8758287583%_)
                  (let ((_%e8160782561%_ (gx#syntax-e _%__stx8758287583%_)))
                    (let ((_%tl8160582568%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e8160782561%_)))
                          (_%hd8160682565%_
                           (let ()
                             (declare (not safe))
                             (##car _%e8160782561%_))))
                      (if (gx#stx-pair? _%tl8160582568%_)
                          (let ((_%e8161082571%_
                                 (gx#syntax-e _%tl8160582568%_)))
                            (let ((_%tl8160882578%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e8161082571%_)))
                                  (_%hd8160982575%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e8161082571%_))))
                              (if (gx#stx-datum? _%hd8160982575%_)
                                  (let ((_%e8161182581%_
                                         (gx#stx-e _%hd8160982575%_)))
                                    (if (equal? _%e8161182581%_ '1)
                                        (if (gx#stx-pair? _%tl8160882578%_)
                                            (let ((_%e8161482585%_
                                                   (gx#syntax-e
                                                    _%tl8160882578%_)))
                                              (let ((_%tl8161282592%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8161482585%_)))
                                                    (_%hd8161382589%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8161482585%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl8161282592%_)
                                                    (if (let ((__tmp88057
                                                               (gx#stx-length
                                                                _%tl8161282592%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp88057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice8758787588%_
                       (gx#syntax-split-splice _%tl8161282592%_ '2)))
                  (let ((_%tl8161782598%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8758787588%_ '1)))
                        (_%target8161582595%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8758787588%_ '0))))
                    (if (gx#stx-pair? _%tl8161782598%_)
                        (let ((_%e8162682601%_ (gx#syntax-e _%tl8161782598%_)))
                          (let ((_%tl8162482608%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8162682601%_)))
                                (_%hd8162582605%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8162682601%_))))
                            (if (gx#stx-pair? _%hd8162582605%_)
                                (let ((_%e8162982611%_
                                       (gx#syntax-e _%hd8162582605%_)))
                                  (let ((_%tl8162782618%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8162982611%_)))
                                        (_%hd8162882615%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8162982611%_))))
                                    (if (gx#identifier? _%hd8162882615%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g88058_|
                                             _%hd8162882615%_)
                                            (if (gx#stx-pair? _%tl8162782618%_)
                                                (let ((_%e8163282621%_
                                                       (gx#syntax-e
                                                        _%tl8162782618%_)))
                                                  (let ((_%tl8163082628%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8163282621%_)))
                                                        (_%hd8163182625%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8163282621%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8163082628%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8162482608%_)
                                                            (let ((_%e8163582631%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8162482608%_)))
                      (let ((_%tl8163382638%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8163582631%_)))
                            (_%hd8163482635%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8163582631%_))))
                        (if (gx#stx-null? _%tl8163382638%_)
                            (_%__match8767187672%_
                             _%e8160782561%_
                             _%hd8160682565%_
                             _%tl8160582568%_
                             _%e8161082571%_
                             _%hd8160982575%_
                             _%tl8160882578%_
                             _%e8161182581%_
                             _%e8161482585%_
                             _%hd8161382589%_
                             _%tl8161282592%_
                             _%__splice8758787588%_
                             _%target8161582595%_
                             _%tl8161782598%_
                             _%e8162682601%_
                             _%hd8162582605%_
                             _%tl8162482608%_
                             _%e8162982611%_
                             _%hd8162882615%_
                             _%tl8162782618%_
                             _%e8163282621%_
                             _%hd8163182625%_
                             _%tl8163082628%_
                             _%e8163582631%_
                             _%hd8163482635%_
                             _%tl8163382638%_)
                            (if (let ((__tmp88059
                                       (gx#stx-length _%tl8161282592%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp88059 '1))
                                (let ((_%__splice8759187592%_
                                       (gx#syntax-split-splice
                                        _%tl8161282592%_
                                        '1)))
                                  (let ((_%tl8165282481%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8759187592%_
                                            '1)))
                                        (_%target8165082478%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8759187592%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl8165282481%_)
                                        (let ((_%e8166182484%_
                                               (gx#syntax-e _%tl8165282481%_)))
                                          (let ((_%tl8165982491%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e8166182484%_)))
                                                (_%hd8166082488%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e8166182484%_))))
                                            (if (gx#stx-null? _%tl8165982491%_)
                                                (_%__match8771187712%_
                                                 _%e8160782561%_
                                                 _%hd8160682565%_
                                                 _%tl8160582568%_
                                                 _%e8161082571%_
                                                 _%hd8160982575%_
                                                 _%tl8160882578%_
                                                 _%e8161182581%_
                                                 _%e8161482585%_
                                                 _%hd8161382589%_
                                                 _%tl8161282592%_
                                                 _%__splice8759187592%_
                                                 _%target8165082478%_
                                                 _%tl8165282481%_
                                                 _%e8166182484%_
                                                 _%hd8166082488%_
                                                 _%tl8165982491%_)
                                                (if (gx#stx-null?
                                                     _%tl8161282592%_)
                                                    (_%__kont8759387594%_
                                                     _%hd8161382589%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8159881812%_))))))
                                        (if (gx#stx-null? _%tl8161282592%_)
                                            (_%__kont8759387594%_
                                             _%hd8161382589%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8159881812%_))))))
                                (if (gx#stx-null? _%tl8161282592%_)
                                    (_%__kont8759387594%_ _%hd8161382589%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8159881812%_)))))))
                    (if (let ((__tmp88060 (gx#stx-length _%tl8161282592%_)))
                          (declare (not safe))
                          (##fx>= __tmp88060 '1))
                        (let ((_%__splice8759187592%_
                               (gx#syntax-split-splice _%tl8161282592%_ '1)))
                          (let ((_%tl8165282481%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8759187592%_ '1)))
                                (_%target8165082478%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8759187592%_ '0))))
                            (if (gx#stx-pair? _%tl8165282481%_)
                                (let ((_%e8166182484%_
                                       (gx#syntax-e _%tl8165282481%_)))
                                  (let ((_%tl8165982491%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8166182484%_)))
                                        (_%hd8166082488%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8166182484%_))))
                                    (if (gx#stx-null? _%tl8165982491%_)
                                        (_%__match8771187712%_
                                         _%e8160782561%_
                                         _%hd8160682565%_
                                         _%tl8160582568%_
                                         _%e8161082571%_
                                         _%hd8160982575%_
                                         _%tl8160882578%_
                                         _%e8161182581%_
                                         _%e8161482585%_
                                         _%hd8161382589%_
                                         _%tl8161282592%_
                                         _%__splice8759187592%_
                                         _%target8165082478%_
                                         _%tl8165282481%_
                                         _%e8166182484%_
                                         _%hd8166082488%_
                                         _%tl8165982491%_)
                                        (if (gx#stx-null? _%tl8161282592%_)
                                            (_%__kont8759387594%_
                                             _%hd8161382589%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8159881812%_))))))
                                (if (gx#stx-null? _%tl8161282592%_)
                                    (_%__kont8759387594%_ _%hd8161382589%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8159881812%_))))))
                        (if (gx#stx-null? _%tl8161282592%_)
                            (_%__kont8759387594%_ _%hd8161382589%_)
                            (let () (declare (not safe)) (_%g8159881812%_)))))
                (if (let ((__tmp88061 (gx#stx-length _%tl8161282592%_)))
                      (declare (not safe))
                      (##fx>= __tmp88061 '1))
                    (let ((_%__splice8759187592%_
                           (gx#syntax-split-splice _%tl8161282592%_ '1)))
                      (let ((_%tl8165282481%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8759187592%_ '1)))
                            (_%target8165082478%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8759187592%_ '0))))
                        (if (gx#stx-pair? _%tl8165282481%_)
                            (let ((_%e8166182484%_
                                   (gx#syntax-e _%tl8165282481%_)))
                              (let ((_%tl8165982491%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8166182484%_)))
                                    (_%hd8166082488%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8166182484%_))))
                                (if (gx#stx-null? _%tl8165982491%_)
                                    (_%__match8771187712%_
                                     _%e8160782561%_
                                     _%hd8160682565%_
                                     _%tl8160582568%_
                                     _%e8161082571%_
                                     _%hd8160982575%_
                                     _%tl8160882578%_
                                     _%e8161182581%_
                                     _%e8161482585%_
                                     _%hd8161382589%_
                                     _%tl8161282592%_
                                     _%__splice8759187592%_
                                     _%target8165082478%_
                                     _%tl8165282481%_
                                     _%e8166182484%_
                                     _%hd8166082488%_
                                     _%tl8165982491%_)
                                    (if (gx#stx-null? _%tl8161282592%_)
                                        (_%__kont8759387594%_ _%hd8161382589%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8159881812%_))))))
                            (if (gx#stx-null? _%tl8161282592%_)
                                (_%__kont8759387594%_ _%hd8161382589%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8159881812%_))))))
                    (if (gx#stx-null? _%tl8161282592%_)
                        (_%__kont8759387594%_ _%hd8161382589%_)
                        (let () (declare (not safe)) (_%g8159881812%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp88062
                                                           (gx#stx-length
                                                            _%tl8161282592%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp88062 '1))
                                                    (let ((_%__splice8759187592%_
                                                           (gx#syntax-split-splice
                                                            _%tl8161282592%_
                                                            '1)))
                                                      (let ((_%tl8165282481%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8759187592%_ '1)))
                    (_%target8165082478%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8759187592%_ '0))))
                (if (gx#stx-pair? _%tl8165282481%_)
                    (let ((_%e8166182484%_ (gx#syntax-e _%tl8165282481%_)))
                      (let ((_%tl8165982491%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8166182484%_)))
                            (_%hd8166082488%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8166182484%_))))
                        (if (gx#stx-null? _%tl8165982491%_)
                            (_%__match8771187712%_
                             _%e8160782561%_
                             _%hd8160682565%_
                             _%tl8160582568%_
                             _%e8161082571%_
                             _%hd8160982575%_
                             _%tl8160882578%_
                             _%e8161182581%_
                             _%e8161482585%_
                             _%hd8161382589%_
                             _%tl8161282592%_
                             _%__splice8759187592%_
                             _%target8165082478%_
                             _%tl8165282481%_
                             _%e8166182484%_
                             _%hd8166082488%_
                             _%tl8165982491%_)
                            (if (gx#stx-null? _%tl8161282592%_)
                                (_%__kont8759387594%_ _%hd8161382589%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8159881812%_))))))
                    (if (gx#stx-null? _%tl8161282592%_)
                        (_%__kont8759387594%_ _%hd8161382589%_)
                        (let () (declare (not safe)) (_%g8159881812%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8161282592%_)
                                                        (_%__kont8759387594%_
                                                         _%hd8161382589%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8159881812%_)))))
                                            (if (let ((__tmp88063
                                                       (gx#stx-length
                                                        _%tl8161282592%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp88063 '1))
                                                (let ((_%__splice8759187592%_
                                                       (gx#syntax-split-splice
                                                        _%tl8161282592%_
                                                        '1)))
                                                  (let ((_%tl8165282481%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8759187592%_
                                                            '1)))
                                                        (_%target8165082478%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8759187592%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl8165282481%_)
                                                        (let ((_%e8166182484%_
                                                               (gx#syntax-e
                                                                _%tl8165282481%_)))
                                                          (let ((_%tl8165982491%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8166182484%_)))
                        (_%hd8166082488%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8166182484%_))))
                    (if (gx#stx-null? _%tl8165982491%_)
                        (_%__match8771187712%_
                         _%e8160782561%_
                         _%hd8160682565%_
                         _%tl8160582568%_
                         _%e8161082571%_
                         _%hd8160982575%_
                         _%tl8160882578%_
                         _%e8161182581%_
                         _%e8161482585%_
                         _%hd8161382589%_
                         _%tl8161282592%_
                         _%__splice8759187592%_
                         _%target8165082478%_
                         _%tl8165282481%_
                         _%e8166182484%_
                         _%hd8166082488%_
                         _%tl8165982491%_)
                        (if (gx#stx-null? _%tl8161282592%_)
                            (_%__kont8759387594%_ _%hd8161382589%_)
                            (let () (declare (not safe)) (_%g8159881812%_))))))
                (if (gx#stx-null? _%tl8161282592%_)
                    (_%__kont8759387594%_ _%hd8161382589%_)
                    (let () (declare (not safe)) (_%g8159881812%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl8161282592%_)
                                                    (_%__kont8759387594%_
                                                     _%hd8161382589%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8159881812%_)))))
                                        (if (let ((__tmp88064
                                                   (gx#stx-length
                                                    _%tl8161282592%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp88064 '1))
                                            (let ((_%__splice8759187592%_
                                                   (gx#syntax-split-splice
                                                    _%tl8161282592%_
                                                    '1)))
                                              (let ((_%tl8165282481%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8759187592%_
                                                        '1)))
                                                    (_%target8165082478%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8759187592%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl8165282481%_)
                                                    (let ((_%e8166182484%_
                                                           (gx#syntax-e
                                                            _%tl8165282481%_)))
                                                      (let ((_%tl8165982491%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8166182484%_)))
                    (_%hd8166082488%_
                     (let () (declare (not safe)) (##car _%e8166182484%_))))
                (if (gx#stx-null? _%tl8165982491%_)
                    (_%__match8771187712%_
                     _%e8160782561%_
                     _%hd8160682565%_
                     _%tl8160582568%_
                     _%e8161082571%_
                     _%hd8160982575%_
                     _%tl8160882578%_
                     _%e8161182581%_
                     _%e8161482585%_
                     _%hd8161382589%_
                     _%tl8161282592%_
                     _%__splice8759187592%_
                     _%target8165082478%_
                     _%tl8165282481%_
                     _%e8166182484%_
                     _%hd8166082488%_
                     _%tl8165982491%_)
                    (if (gx#stx-null? _%tl8161282592%_)
                        (_%__kont8759387594%_ _%hd8161382589%_)
                        (let () (declare (not safe)) (_%g8159881812%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8161282592%_)
                                                        (_%__kont8759387594%_
                                                         _%hd8161382589%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8159881812%_))))))
                                            (if (gx#stx-null? _%tl8161282592%_)
                                                (_%__kont8759387594%_
                                                 _%hd8161382589%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8159881812%_)))))))
                                (if (let ((__tmp88065
                                           (gx#stx-length _%tl8161282592%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp88065 '1))
                                    (let ((_%__splice8759187592%_
                                           (gx#syntax-split-splice
                                            _%tl8161282592%_
                                            '1)))
                                      (let ((_%tl8165282481%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8759187592%_
                                                '1)))
                                            (_%target8165082478%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8759187592%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl8165282481%_)
                                            (let ((_%e8166182484%_
                                                   (gx#syntax-e
                                                    _%tl8165282481%_)))
                                              (let ((_%tl8165982491%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8166182484%_)))
                                                    (_%hd8166082488%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8166182484%_))))
                                                (if (gx#stx-null?
                                                     _%tl8165982491%_)
                                                    (_%__match8771187712%_
                                                     _%e8160782561%_
                                                     _%hd8160682565%_
                                                     _%tl8160582568%_
                                                     _%e8161082571%_
                                                     _%hd8160982575%_
                                                     _%tl8160882578%_
                                                     _%e8161182581%_
                                                     _%e8161482585%_
                                                     _%hd8161382589%_
                                                     _%tl8161282592%_
                                                     _%__splice8759187592%_
                                                     _%target8165082478%_
                                                     _%tl8165282481%_
                                                     _%e8166182484%_
                                                     _%hd8166082488%_
                                                     _%tl8165982491%_)
                                                    (if (gx#stx-null?
                                                         _%tl8161282592%_)
                                                        (_%__kont8759387594%_
                                                         _%hd8161382589%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8159881812%_))))))
                                            (if (gx#stx-null? _%tl8161282592%_)
                                                (_%__kont8759387594%_
                                                 _%hd8161382589%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8159881812%_))))))
                                    (if (gx#stx-null? _%tl8161282592%_)
                                        (_%__kont8759387594%_ _%hd8161382589%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8159881812%_)))))))
                        (if (let ((__tmp88066
                                   (gx#stx-length _%tl8161282592%_)))
                              (declare (not safe))
                              (##fx>= __tmp88066 '1))
                            (let ((_%__splice8759187592%_
                                   (gx#syntax-split-splice
                                    _%tl8161282592%_
                                    '1)))
                              (let ((_%tl8165282481%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8759187592%_
                                        '1)))
                                    (_%target8165082478%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8759187592%_
                                        '0))))
                                (if (gx#stx-pair? _%tl8165282481%_)
                                    (let ((_%e8166182484%_
                                           (gx#syntax-e _%tl8165282481%_)))
                                      (let ((_%tl8165982491%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8166182484%_)))
                                            (_%hd8166082488%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8166182484%_))))
                                        (if (gx#stx-null? _%tl8165982491%_)
                                            (_%__match8771187712%_
                                             _%e8160782561%_
                                             _%hd8160682565%_
                                             _%tl8160582568%_
                                             _%e8161082571%_
                                             _%hd8160982575%_
                                             _%tl8160882578%_
                                             _%e8161182581%_
                                             _%e8161482585%_
                                             _%hd8161382589%_
                                             _%tl8161282592%_
                                             _%__splice8759187592%_
                                             _%target8165082478%_
                                             _%tl8165282481%_
                                             _%e8166182484%_
                                             _%hd8166082488%_
                                             _%tl8165982491%_)
                                            (if (gx#stx-null? _%tl8161282592%_)
                                                (_%__kont8759387594%_
                                                 _%hd8161382589%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8159881812%_))))))
                                    (if (gx#stx-null? _%tl8161282592%_)
                                        (_%__kont8759387594%_ _%hd8161382589%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8159881812%_))))))
                            (if (gx#stx-null? _%tl8161282592%_)
                                (_%__kont8759387594%_ _%hd8161382589%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8159881812%_)))))))
                (if (let ((__tmp88067 (gx#stx-length _%tl8161282592%_)))
                      (declare (not safe))
                      (##fx>= __tmp88067 '1))
                    (let ((_%__splice8759187592%_
                           (gx#syntax-split-splice _%tl8161282592%_ '1)))
                      (let ((_%tl8165282481%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8759187592%_ '1)))
                            (_%target8165082478%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8759187592%_ '0))))
                        (if (gx#stx-pair? _%tl8165282481%_)
                            (let ((_%e8166182484%_
                                   (gx#syntax-e _%tl8165282481%_)))
                              (let ((_%tl8165982491%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8166182484%_)))
                                    (_%hd8166082488%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8166182484%_))))
                                (if (gx#stx-null? _%tl8165982491%_)
                                    (_%__match8771187712%_
                                     _%e8160782561%_
                                     _%hd8160682565%_
                                     _%tl8160582568%_
                                     _%e8161082571%_
                                     _%hd8160982575%_
                                     _%tl8160882578%_
                                     _%e8161182581%_
                                     _%e8161482585%_
                                     _%hd8161382589%_
                                     _%tl8161282592%_
                                     _%__splice8759187592%_
                                     _%target8165082478%_
                                     _%tl8165282481%_
                                     _%e8166182484%_
                                     _%hd8166082488%_
                                     _%tl8165982491%_)
                                    (if (gx#stx-null? _%tl8161282592%_)
                                        (_%__kont8759387594%_ _%hd8161382589%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8159881812%_))))))
                            (if (gx#stx-null? _%tl8161282592%_)
                                (_%__kont8759387594%_ _%hd8161382589%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8159881812%_))))))
                    (if (gx#stx-null? _%tl8161282592%_)
                        (_%__kont8759387594%_ _%hd8161382589%_)
                        (let () (declare (not safe)) (_%g8159881812%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8161282592%_)
                                                        (_%__kont8759387594%_
                                                         _%hd8161382589%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8159881812%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8159881812%_)))
                                        (if (equal? _%e8161182581%_ '2)
                                            (if (gx#stx-pair? _%tl8160882578%_)
                                                (let ((_%e8168882284%_
                                                       (gx#syntax-e
                                                        _%tl8160882578%_)))
                                                  (let ((_%tl8168682291%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8168882284%_)))
                                                        (_%hd8168782288%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8168882284%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl8168682291%_)
                                                        (let ((_%e8169182294%_
                                                               (gx#syntax-e
                                                                _%tl8168682291%_)))
                                                          (let ((_%tl8168982301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8169182294%_)))
                        (_%hd8169082298%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8169182294%_))))
                    (if (gx#stx-pair? _%hd8169082298%_)
                        (let ((_%e8169482304%_ (gx#syntax-e _%hd8169082298%_)))
                          (let ((_%tl8169282311%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8169482304%_)))
                                (_%hd8169382308%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8169482304%_))))
                            (if (gx#stx-pair? _%hd8169382308%_)
                                (let ((_%e8169782314%_
                                       (gx#syntax-e _%hd8169382308%_)))
                                  (let ((_%tl8169582321%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8169782314%_)))
                                        (_%hd8169682318%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8169782314%_))))
                                    (if (gx#identifier? _%hd8169682318%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g88068_|
                                             _%hd8169682318%_)
                                            (if (gx#stx-pair? _%tl8169582321%_)
                                                (let ((_%e8170082324%_
                                                       (gx#syntax-e
                                                        _%tl8169582321%_)))
                                                  (let ((_%tl8169882331%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8170082324%_)))
                                                        (_%hd8169982328%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8170082324%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8169882331%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8169282311%_)
                                                            (let ((_%e8170382334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8169282311%_)))
                      (let ((_%tl8170182341%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8170382334%_)))
                            (_%hd8170282338%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8170382334%_))))
                        (_%__kont8759587596%_
                         _%tl8168982301%_
                         _%tl8170182341%_
                         _%hd8170282338%_
                         _%hd8169982328%_
                         _%hd8168782288%_
                         _%hd8160682565%_)))
                    (_%__kont8759787598%_
                     _%tl8168982301%_
                     _%tl8169282311%_
                     _%hd8169382308%_
                     _%hd8168782288%_
                     _%hd8160682565%_))
                (_%__kont8759787598%_
                 _%tl8168982301%_
                 _%tl8169282311%_
                 _%hd8169382308%_
                 _%hd8168782288%_
                 _%hd8160682565%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont8759787598%_
                                                 _%tl8168982301%_
                                                 _%tl8169282311%_
                                                 _%hd8169382308%_
                                                 _%hd8168782288%_
                                                 _%hd8160682565%_))
                                            (_%__kont8759787598%_
                                             _%tl8168982301%_
                                             _%tl8169282311%_
                                             _%hd8169382308%_
                                             _%hd8168782288%_
                                             _%hd8160682565%_))
                                        (_%__kont8759787598%_
                                         _%tl8168982301%_
                                         _%tl8169282311%_
                                         _%hd8169382308%_
                                         _%hd8168782288%_
                                         _%hd8160682565%_))))
                                (_%__kont8759787598%_
                                 _%tl8168982301%_
                                 _%tl8169282311%_
                                 _%hd8169382308%_
                                 _%hd8168782288%_
                                 _%hd8160682565%_))))
                        (if (gx#stx-null? _%hd8169082298%_)
                            (_%__kont8759987600%_
                             _%tl8168982301%_
                             _%hd8168782288%_
                             _%hd8160682565%_)
                            (let () (declare (not safe)) (_%g8159881812%_))))))
                (let () (declare (not safe)) (_%g8159881812%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8159881812%_)))
                                            (if (equal? _%e8161182581%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl8160882578%_)
                                                    (let ((_%e8175582033%_
                                                           (gx#syntax-e
                                                            _%tl8160882578%_)))
                                                      (let ((_%tl8175382040%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8175582033%_)))
                    (_%hd8175482037%_
                     (let () (declare (not safe)) (##car _%e8175582033%_))))
                (if (gx#stx-pair? _%tl8175382040%_)
                    (let ((_%e8175882043%_ (gx#syntax-e _%tl8175382040%_)))
                      (let ((_%tl8175682050%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8175882043%_)))
                            (_%hd8175782047%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8175882043%_))))
                        (if (gx#stx-pair? _%hd8175782047%_)
                            (let ((_%e8176182053%_
                                   (gx#syntax-e _%hd8175782047%_)))
                              (let ((_%tl8175982060%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8176182053%_)))
                                    (_%hd8176082057%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8176182053%_))))
                                (_%__kont8760187602%_
                                 _%tl8175682050%_
                                 _%tl8175982060%_
                                 _%hd8176082057%_
                                 _%hd8175482037%_
                                 _%hd8160682565%_)))
                            (if (gx#stx-pair/null? _%hd8175482037%_)
                                (let ((_%__splice8760587606%_
                                       (gx#syntax-split-splice
                                        _%hd8175482037%_
                                        '0)))
                                  (let ((_%tl8178081856%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8760587606%_
                                            '1)))
                                        (_%target8177881853%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8760587606%_
                                            '0))))
                                    (if (gx#stx-null? _%tl8178081856%_)
                                        (_%__match8793387934%_
                                         _%e8160782561%_
                                         _%hd8160682565%_
                                         _%tl8160582568%_
                                         _%e8161082571%_
                                         _%hd8160982575%_
                                         _%tl8160882578%_
                                         _%e8161182581%_
                                         _%e8175582033%_
                                         _%hd8175482037%_
                                         _%tl8175382040%_
                                         _%__splice8760587606%_
                                         _%target8177881853%_
                                         _%tl8178081856%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8159881812%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8159881812%_))))))
                    (if (gx#stx-pair/null? _%hd8175482037%_)
                        (let ((_%__splice8760587606%_
                               (gx#syntax-split-splice _%hd8175482037%_ '0)))
                          (let ((_%tl8178081856%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8760587606%_ '1)))
                                (_%target8177881853%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8760587606%_ '0))))
                            (if (gx#stx-null? _%tl8178081856%_)
                                (_%__match8793387934%_
                                 _%e8160782561%_
                                 _%hd8160682565%_
                                 _%tl8160582568%_
                                 _%e8161082571%_
                                 _%hd8160982575%_
                                 _%tl8160882578%_
                                 _%e8161182581%_
                                 _%e8175582033%_
                                 _%hd8175482037%_
                                 _%tl8175382040%_
                                 _%__splice8760587606%_
                                 _%target8177881853%_
                                 _%tl8178081856%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8159881812%_)))))
                        (let () (declare (not safe)) (_%g8159881812%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8159881812%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8159881812%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g8159881812%_)))))
                          (let () (declare (not safe)) (_%g8159881812%_)))))
                  (let () (declare (not safe)) (_%g8159881812%_))))))))))
