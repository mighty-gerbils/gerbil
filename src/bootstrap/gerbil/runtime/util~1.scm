(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g92315_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g92325_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx85275%_)
        (let* ((_%g8527985297%_
                (lambda (_%g8528085293%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8528085293%_)))
               (_%g8527885353%_
                (lambda (_%g8528085301%_)
                  (if (gx#stx-pair? _%g8528085301%_)
                      (let ((_%e8528385304%_ (gx#syntax-e _%g8528085301%_)))
                        (let ((_%hd8528485308%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8528385304%_)))
                              (_%tl8528585311%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8528385304%_))))
                          (if (gx#stx-pair? _%tl8528585311%_)
                              (let ((_%e8528685314%_
                                     (gx#syntax-e _%tl8528585311%_)))
                                (let ((_%hd8528785318%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8528685314%_)))
                                      (_%tl8528885321%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8528685314%_))))
                                  (if (gx#stx-pair? _%tl8528885321%_)
                                      (let ((_%e8528985324%_
                                             (gx#syntax-e _%tl8528885321%_)))
                                        (let ((_%hd8529085328%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8528985324%_)))
                                              (_%tl8529185331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8528985324%_))))
                                          (if (gx#stx-null? _%tl8529185331%_)
                                              ((lambda (_%L85334%_ _%L85336%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L85336%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L85334%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8529085328%_
                                               _%hd8528785318%_)
                                              (_%g8527985297%_
                                               _%g8528085301%_))))
                                      (_%g8527985297%_ _%g8528085301%_))))
                              (_%g8527985297%_ _%g8528085301%_))))
                      (_%g8527985297%_ _%g8528085301%_)))))
          (_%g8527885353%_ _%$stx85275%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx85357%_)
        (let* ((_%g8536185375%_
                (lambda (_%g8536285371%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8536285371%_)))
               (_%g8536085416%_
                (lambda (_%g8536285379%_)
                  (if (gx#stx-pair? _%g8536285379%_)
                      (let ((_%e8536485382%_ (gx#syntax-e _%g8536285379%_)))
                        (let ((_%hd8536585386%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8536485382%_)))
                              (_%tl8536685389%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8536485382%_))))
                          (if (gx#stx-pair? _%tl8536685389%_)
                              (let ((_%e8536785392%_
                                     (gx#syntax-e _%tl8536685389%_)))
                                (let ((_%hd8536885396%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8536785392%_)))
                                      (_%tl8536985399%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8536785392%_))))
                                  (if (gx#stx-null? _%tl8536985399%_)
                                      ((lambda (_%L85402%_)
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
                                       (cons _%L85402%_
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
                                       _%hd8536885396%_)
                                      (_%g8536185375%_ _%g8536285379%_))))
                              (_%g8536185375%_ _%g8536285379%_))))
                      (_%g8536185375%_ _%g8536285379%_)))))
          (_%g8536085416%_ _%$stx85357%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx85420%_)
        (let* ((_%g8542485438%_
                (lambda (_%g8542585434%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8542585434%_)))
               (_%g8542385479%_
                (lambda (_%g8542585442%_)
                  (if (gx#stx-pair? _%g8542585442%_)
                      (let ((_%e8542785445%_ (gx#syntax-e _%g8542585442%_)))
                        (let ((_%hd8542885449%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8542785445%_)))
                              (_%tl8542985452%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8542785445%_))))
                          (if (gx#stx-pair? _%tl8542985452%_)
                              (let ((_%e8543085455%_
                                     (gx#syntax-e _%tl8542985452%_)))
                                (let ((_%hd8543185459%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8543085455%_)))
                                      (_%tl8543285462%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8543085455%_))))
                                  (if (gx#stx-null? _%tl8543285462%_)
                                      ((lambda (_%L85465%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L85465%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd8543185459%_)
                                      (_%g8542485438%_ _%g8542585442%_))))
                              (_%g8542485438%_ _%g8542585442%_))))
                      (_%g8542485438%_ _%g8542585442%_)))))
          (_%g8542385479%_ _%$stx85420%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx85483%_)
        (let* ((_%g8548785497%_
                (lambda (_%g8548885493%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8548885493%_)))
               (_%g8548685518%_
                (lambda (_%g8548885501%_)
                  (if (gx#stx-pair? _%g8548885501%_)
                      (let ((_%e8548985504%_ (gx#syntax-e _%g8548885501%_)))
                        (let ((_%hd8549085508%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8548985504%_)))
                              (_%tl8549185511%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8548985504%_))))
                          (if (gx#stx-null? _%tl8549185511%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g8548785497%_ _%g8548885501%_))))
                      (_%g8548785497%_ _%g8548885501%_)))))
          (_%g8548685518%_ _%$stx85483%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx85522%_)
        (let* ((_%g8552685544%_
                (lambda (_%g8552785540%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8552785540%_)))
               (_%g8552585599%_
                (lambda (_%g8552785548%_)
                  (if (gx#stx-pair? _%g8552785548%_)
                      (let ((_%e8553085551%_ (gx#syntax-e _%g8552785548%_)))
                        (let ((_%hd8553185555%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8553085551%_)))
                              (_%tl8553285558%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8553085551%_))))
                          (if (gx#stx-pair? _%tl8553285558%_)
                              (let ((_%e8553385561%_
                                     (gx#syntax-e _%tl8553285558%_)))
                                (let ((_%hd8553485565%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8553385561%_)))
                                      (_%tl8553585568%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8553385561%_))))
                                  (if (gx#stx-pair? _%tl8553585568%_)
                                      (let ((_%e8553685571%_
                                             (gx#syntax-e _%tl8553585568%_)))
                                        (let ((_%hd8553785575%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8553685571%_)))
                                              (_%tl8553885578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8553685571%_))))
                                          (if (gx#stx-null? _%tl8553885578%_)
                                              ((lambda (_%L85581%_ _%L85583%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L85583%_
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
                 (cons (cons _%L85581%_
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
                                               _%hd8553785575%_
                                               _%hd8553485565%_)
                                              (_%g8552685544%_
                                               _%g8552785548%_))))
                                      (_%g8552685544%_ _%g8552785548%_))))
                              (_%g8552685544%_ _%g8552785548%_))))
                      (_%g8552685544%_ _%g8552785548%_)))))
          (_%g8552585599%_ _%$stx85522%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx85603%_)
        (let* ((_%g8560785625%_
                (lambda (_%g8560885621%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8560885621%_)))
               (_%g8560685680%_
                (lambda (_%g8560885629%_)
                  (if (gx#stx-pair? _%g8560885629%_)
                      (let ((_%e8561185632%_ (gx#syntax-e _%g8560885629%_)))
                        (let ((_%hd8561285636%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8561185632%_)))
                              (_%tl8561385639%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8561185632%_))))
                          (if (gx#stx-pair? _%tl8561385639%_)
                              (let ((_%e8561485642%_
                                     (gx#syntax-e _%tl8561385639%_)))
                                (let ((_%hd8561585646%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8561485642%_)))
                                      (_%tl8561685649%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8561485642%_))))
                                  (if (gx#stx-pair? _%tl8561685649%_)
                                      (let ((_%e8561785652%_
                                             (gx#syntax-e _%tl8561685649%_)))
                                        (let ((_%hd8561885656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8561785652%_)))
                                              (_%tl8561985659%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8561785652%_))))
                                          (if (gx#stx-null? _%tl8561985659%_)
                                              ((lambda (_%L85662%_ _%L85664%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L85664%_
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
                                               (cons (cons _%L85662%_
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
                                               _%hd8561885656%_
                                               _%hd8561585646%_)
                                              (_%g8560785625%_
                                               _%g8560885629%_))))
                                      (_%g8560785625%_ _%g8560885629%_))))
                              (_%g8560785625%_ _%g8560885629%_))))
                      (_%g8560785625%_ _%g8560885629%_)))))
          (_%g8560685680%_ _%$stx85603%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx85684%_)
        (let* ((_%g8568885706%_
                (lambda (_%g8568985702%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8568985702%_)))
               (_%g8568785761%_
                (lambda (_%g8568985710%_)
                  (if (gx#stx-pair? _%g8568985710%_)
                      (let ((_%e8569285713%_ (gx#syntax-e _%g8568985710%_)))
                        (let ((_%hd8569385717%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8569285713%_)))
                              (_%tl8569485720%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8569285713%_))))
                          (if (gx#stx-pair? _%tl8569485720%_)
                              (let ((_%e8569585723%_
                                     (gx#syntax-e _%tl8569485720%_)))
                                (let ((_%hd8569685727%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8569585723%_)))
                                      (_%tl8569785730%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8569585723%_))))
                                  (if (gx#stx-pair? _%tl8569785730%_)
                                      (let ((_%e8569885733%_
                                             (gx#syntax-e _%tl8569785730%_)))
                                        (let ((_%hd8569985737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8569885733%_)))
                                              (_%tl8570085740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8569885733%_))))
                                          (if (gx#stx-null? _%tl8570085740%_)
                                              ((lambda (_%L85743%_ _%L85745%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L85745%_
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
                                               (cons (cons _%L85743%_
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
                                               _%hd8569985737%_
                                               _%hd8569685727%_)
                                              (_%g8568885706%_
                                               _%g8568985710%_))))
                                      (_%g8568885706%_ _%g8568985710%_))))
                              (_%g8568885706%_ _%g8568985710%_))))
                      (_%g8568885706%_ _%g8568985710%_)))))
          (_%g8568785761%_ _%$stx85684%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx85765%_)
        (let* ((_%g8576985780%_
                (lambda (_%g8577085776%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8577085776%_)))
               (_%g8576885809%_
                (lambda (_%g8577085784%_)
                  (if (gx#stx-pair? _%g8577085784%_)
                      (let ((_%e8577285787%_ (gx#syntax-e _%g8577085784%_)))
                        (let ((_%hd8577385791%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8577285787%_)))
                              (_%tl8577485794%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8577285787%_))))
                          ((lambda (_%L85797%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L85797%_)))
                           _%tl8577485794%_)))
                      (_%g8576985780%_ _%g8577085784%_)))))
          (_%g8576885809%_ _%$stx85765%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx85813%_)
        (let* ((_%__stx9186691867%_ _%$stx85813%_)
               (_%g8582486038%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9186691867%_))))
          (let ((_%__kont9186991870%_
                 (lambda (_%L86891%_
                          _%L86893%_
                          _%L86894%_
                          _%L86895%_
                          _%L86896%_)
                   (cons _%L86896%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8692686929%_
                                                     _%g8692786932%_)
                                              (cons _%g8692686929%_
                                                    _%g8692786932%_))
                                            '()
                                            _%L86894%_)
                                           (cons _%L86895%_
                                                 (cons _%L86893%_
                                                       (cons _%L86891%_
                                                             '())))))))))
                (_%__kont9187391874%_
                 (lambda (_%L86744%_ _%L86746%_ _%L86747%_ _%L86748%_)
                   (cons _%L86748%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8677186774%_
                                                     _%g8677286777%_)
                                              (cons _%g8677186774%_
                                                    _%g8677286777%_))
                                            '()
                                            _%L86746%_)
                                           (cons _%L86747%_
                                                 (cons _%L86744%_
                                                       (cons _%L86744%_
                                                             '())))))))))
                (_%__kont9187791878%_
                 (lambda (_%L86647%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L86647%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont9187991880%_
                 (lambda (_%L86570%_
                          _%L86572%_
                          _%L86573%_
                          _%L86574%_
                          _%L86575%_
                          _%L86576%_)
                   (cons _%L86576%_
                         (cons '2
                               (cons (cons (cons _%L86574%_
                                                 (cons _%L86573%_ '()))
                                           _%L86575%_)
                                     (cons _%L86572%_ _%L86570%_))))))
                (_%__kont9188191882%_
                 (lambda (_%L86451%_
                          _%L86453%_
                          _%L86454%_
                          _%L86455%_
                          _%L86456%_)
                   (cons _%L86456%_
                         (cons '2
                               (cons (cons (cons _%L86454%_
                                                 (cons _%L86454%_ '()))
                                           _%L86455%_)
                                     (cons _%L86453%_ _%L86451%_))))))
                (_%__kont9188391884%_
                 (lambda (_%L86368%_ _%L86370%_ _%L86371%_)
                   (cons _%L86371%_
                         (cons '3 (cons '() (cons _%L86370%_ _%L86368%_))))))
                (_%__kont9188591886%_
                 (lambda (_%L86289%_
                          _%L86291%_
                          _%L86292%_
                          _%L86293%_
                          _%L86294%_)
                   (cons _%L86294%_
                         (cons '3
                               (cons (cons _%L86292%_ _%L86293%_)
                                     (cons _%L86291%_ _%L86289%_))))))
                (_%__kont9188791888%_
                 (lambda (_%L86173%_
                          _%L86175%_
                          _%L86176%_
                          _%L86177%_
                          _%L86178%_
                          _%L86179%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L86176%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L86173%_ '())))
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
                                              (lambda (_%g8621386216%_
                                                       _%g8621486219%_)
                                                (cons _%g8621386216%_
                                                      _%g8621486219%_))
                                              '()
                                              _%L86178%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (__foldr1
                                              (lambda (_%g8621186222%_
                                                       _%g8621286225%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g8621186222%_ '())))
              _%g8621286225%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L86177%_))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L86175%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9221792218%_
                    (lambda (_%e8599486045%_
                             _%hd8599586049%_
                             _%tl8599686052%_
                             _%e8599786055%_
                             _%hd8599886059%_
                             _%tl8599986062%_
                             _%e8600086065%_
                             _%e8600186069%_
                             _%hd8600286073%_
                             _%tl8600386076%_
                             _%__splice9188991890%_
                             _%target8600486079%_
                             _%tl8600686082%_)
                      (letrec ((_%loop8600786085%_
                                (lambda (_%hd8600586089%_
                                         _%exprs8601186092%_
                                         _%names8601286094%_)
                                  (if (gx#stx-pair? _%hd8600586089%_)
                                      (let ((_%e8600886097%_
                                             (gx#syntax-e _%hd8600586089%_)))
                                        (let ((_%lp-tl8601086104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8600886097%_)))
                                              (_%lp-hd8600986101%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8600886097%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd8600986101%_)
                                              (let ((_%e8602786107%_
                                                     (gx#syntax-e
                                                      _%lp-hd8600986101%_)))
                                                (let ((_%tl8602986114%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8602786107%_)))
                                                      (_%hd8602886111%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8602786107%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8602986114%_)
                                                      (let ((_%e8603086117%_
                                                             (gx#syntax-e
                                                              _%tl8602986114%_)))
                                                        (let ((_%tl8603286124%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8603086117%_)))
                      (_%hd8603186121%_
                       (let () (declare (not safe)) (##car _%e8603086117%_))))
                  (if (gx#stx-null? _%tl8603286124%_)
                      (_%loop8600786085%_
                       _%lp-tl8601086104%_
                       (cons _%hd8603186121%_ _%exprs8601186092%_)
                       (cons _%hd8602886111%_ _%names8601286094%_))
                      (let () (declare (not safe)) (_%g8582486038%_)))))
              (let () (declare (not safe)) (_%g8582486038%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g8582486038%_)))))
                                      (let ((_%names8601486130%_
                                             (reverse _%names8601286094%_))
                                            (_%exprs8601386127%_
                                             (reverse _%exprs8601186092%_)))
                                        (if (gx#stx-pair? _%tl8600386076%_)
                                            (let ((_%e8601586133%_
                                                   (gx#syntax-e
                                                    _%tl8600386076%_)))
                                              (let ((_%tl8601786140%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8601586133%_)))
                                                    (_%hd8601686137%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8601586133%_))))
                                                (if (gx#stx-null?
                                                     _%hd8601686137%_)
                                                    (if (gx#stx-pair?
                                                         _%tl8601786140%_)
                                                        (let ((_%e8601886143%_
                                                               (gx#syntax-e
                                                                _%tl8601786140%_)))
                                                          (let ((_%tl8602086150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8601886143%_)))
                        (_%hd8601986147%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8601886143%_))))
                    (if (gx#stx-pair? _%tl8602086150%_)
                        (let ((_%e8602186153%_ (gx#syntax-e _%tl8602086150%_)))
                          (let ((_%tl8602386160%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8602186153%_)))
                                (_%hd8602286157%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8602186153%_))))
                            (if (gx#stx-pair? _%tl8602386160%_)
                                (let ((_%e8602486163%_
                                       (gx#syntax-e _%tl8602386160%_)))
                                  (let ((_%tl8602686170%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8602486163%_)))
                                        (_%hd8602586167%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8602486163%_))))
                                    (if (gx#stx-null? _%tl8602686170%_)
                                        (_%__kont9188791888%_
                                         _%hd8602586167%_
                                         _%hd8602286157%_
                                         _%hd8601986147%_
                                         _%exprs8601386127%_
                                         _%names8601486130%_
                                         _%hd8599586049%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8582486038%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8582486038%_)))))
                        (let () (declare (not safe)) (_%g8582486038%_)))))
                (let () (declare (not safe)) (_%g8582486038%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8582486038%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8582486038%_))))))))
                        (_%loop8600786085%_ _%target8600486079%_ '() '()))))
                   (_%__match9199591996%_
                    (lambda (_%e8586686670%_
                             _%hd8586786674%_
                             _%tl8586886677%_
                             _%e8586986680%_
                             _%hd8587086684%_
                             _%tl8587186687%_
                             _%e8587286690%_
                             _%e8587386694%_
                             _%hd8587486698%_
                             _%tl8587586701%_
                             _%__splice9187591876%_
                             _%target8587686704%_
                             _%tl8587886707%_
                             _%e8588586710%_
                             _%hd8588686714%_
                             _%tl8588786717%_)
                      (letrec ((_%loop8587986720%_
                                (lambda (_%hd8587786724%_ _%exprs8588386727%_)
                                  (if (gx#stx-pair? _%hd8587786724%_)
                                      (let ((_%e8588086730%_
                                             (gx#syntax-e _%hd8587786724%_)))
                                        (let ((_%lp-tl8588286737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8588086730%_)))
                                              (_%lp-hd8588186734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8588086730%_))))
                                          (_%loop8587986720%_
                                           _%lp-tl8588286737%_
                                           (cons _%lp-hd8588186734%_
                                                 _%exprs8588386727%_))))
                                      (let ((_%exprs8588486740%_
                                             (reverse _%exprs8588386727%_)))
                                        (_%__kont9187391874%_
                                         _%hd8588686714%_
                                         _%exprs8588486740%_
                                         _%hd8587486698%_
                                         _%hd8586786674%_))))))
                        (_%loop8587986720%_ _%target8587686704%_ '()))))
                   (_%__match9195591956%_
                    (lambda (_%e8583186787%_
                             _%hd8583286791%_
                             _%tl8583386794%_
                             _%e8583486797%_
                             _%hd8583586801%_
                             _%tl8583686804%_
                             _%e8583786807%_
                             _%e8583886811%_
                             _%hd8583986815%_
                             _%tl8584086818%_
                             _%__splice9187191872%_
                             _%target8584186821%_
                             _%tl8584386824%_
                             _%e8585086827%_
                             _%hd8585186831%_
                             _%tl8585286834%_
                             _%e8585386837%_
                             _%hd8585486841%_
                             _%tl8585586844%_
                             _%e8585686847%_
                             _%hd8585786851%_
                             _%tl8585886854%_
                             _%e8585986857%_
                             _%hd8586086861%_
                             _%tl8586186864%_)
                      (letrec ((_%loop8584486867%_
                                (lambda (_%hd8584286871%_ _%exprs8584886874%_)
                                  (if (gx#stx-pair? _%hd8584286871%_)
                                      (let ((_%e8584586877%_
                                             (gx#syntax-e _%hd8584286871%_)))
                                        (let ((_%lp-tl8584786884%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8584586877%_)))
                                              (_%lp-hd8584686881%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8584586877%_))))
                                          (_%loop8584486867%_
                                           _%lp-tl8584786884%_
                                           (cons _%lp-hd8584686881%_
                                                 _%exprs8584886874%_))))
                                      (let ((_%exprs8584986887%_
                                             (reverse _%exprs8584886874%_)))
                                        (_%__kont9186991870%_
                                         _%hd8586086861%_
                                         _%hd8585786851%_
                                         _%exprs8584986887%_
                                         _%hd8583986815%_
                                         _%hd8583286791%_))))))
                        (_%loop8584486867%_ _%target8584186821%_ '())))))
              (if (gx#stx-pair? _%__stx9186691867%_)
                  (let ((_%e8583186787%_ (gx#syntax-e _%__stx9186691867%_)))
                    (let ((_%tl8583386794%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e8583186787%_)))
                          (_%hd8583286791%_
                           (let ()
                             (declare (not safe))
                             (##car _%e8583186787%_))))
                      (if (gx#stx-pair? _%tl8583386794%_)
                          (let ((_%e8583486797%_
                                 (gx#syntax-e _%tl8583386794%_)))
                            (let ((_%tl8583686804%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e8583486797%_)))
                                  (_%hd8583586801%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e8583486797%_))))
                              (if (gx#stx-datum? _%hd8583586801%_)
                                  (let ((_%e8583786807%_
                                         (gx#stx-e _%hd8583586801%_)))
                                    (if (equal? _%e8583786807%_ '1)
                                        (if (gx#stx-pair? _%tl8583686804%_)
                                            (let ((_%e8583886811%_
                                                   (gx#syntax-e
                                                    _%tl8583686804%_)))
                                              (let ((_%tl8584086818%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8583886811%_)))
                                                    (_%hd8583986815%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8583886811%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl8584086818%_)
                                                    (if (let ((__tmp92314
                                                               (gx#stx-length
                                                                _%tl8584086818%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp92314
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice9187191872%_
                       (gx#syntax-split-splice->vector _%tl8584086818%_ '2)))
                  (let ((_%tl8584386824%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9187191872%_ '1)))
                        (_%target8584186821%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9187191872%_ '0))))
                    (if (gx#stx-pair? _%tl8584386824%_)
                        (let ((_%e8585086827%_ (gx#syntax-e _%tl8584386824%_)))
                          (let ((_%tl8585286834%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8585086827%_)))
                                (_%hd8585186831%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8585086827%_))))
                            (if (gx#stx-pair? _%hd8585186831%_)
                                (let ((_%e8585386837%_
                                       (gx#syntax-e _%hd8585186831%_)))
                                  (let ((_%tl8585586844%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8585386837%_)))
                                        (_%hd8585486841%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8585386837%_))))
                                    (if (gx#identifier? _%hd8585486841%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g92315_|
                                             _%hd8585486841%_)
                                            (if (gx#stx-pair? _%tl8585586844%_)
                                                (let ((_%e8585686847%_
                                                       (gx#syntax-e
                                                        _%tl8585586844%_)))
                                                  (let ((_%tl8585886854%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8585686847%_)))
                                                        (_%hd8585786851%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8585686847%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8585886854%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8585286834%_)
                                                            (let ((_%e8585986857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8585286834%_)))
                      (let ((_%tl8586186864%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8585986857%_)))
                            (_%hd8586086861%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8585986857%_))))
                        (if (gx#stx-null? _%tl8586186864%_)
                            (_%__match9195591956%_
                             _%e8583186787%_
                             _%hd8583286791%_
                             _%tl8583386794%_
                             _%e8583486797%_
                             _%hd8583586801%_
                             _%tl8583686804%_
                             _%e8583786807%_
                             _%e8583886811%_
                             _%hd8583986815%_
                             _%tl8584086818%_
                             _%__splice9187191872%_
                             _%target8584186821%_
                             _%tl8584386824%_
                             _%e8585086827%_
                             _%hd8585186831%_
                             _%tl8585286834%_
                             _%e8585386837%_
                             _%hd8585486841%_
                             _%tl8585586844%_
                             _%e8585686847%_
                             _%hd8585786851%_
                             _%tl8585886854%_
                             _%e8585986857%_
                             _%hd8586086861%_
                             _%tl8586186864%_)
                            (if (let ((__tmp92316
                                       (gx#stx-length _%tl8584086818%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp92316 '1))
                                (let ((_%__splice9187591876%_
                                       (gx#syntax-split-splice->vector
                                        _%tl8584086818%_
                                        '1)))
                                  (let ((_%tl8587886707%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9187591876%_
                                            '1)))
                                        (_%target8587686704%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9187591876%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl8587886707%_)
                                        (let ((_%e8588586710%_
                                               (gx#syntax-e _%tl8587886707%_)))
                                          (let ((_%tl8588786717%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e8588586710%_)))
                                                (_%hd8588686714%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e8588586710%_))))
                                            (if (gx#stx-null? _%tl8588786717%_)
                                                (_%__match9199591996%_
                                                 _%e8583186787%_
                                                 _%hd8583286791%_
                                                 _%tl8583386794%_
                                                 _%e8583486797%_
                                                 _%hd8583586801%_
                                                 _%tl8583686804%_
                                                 _%e8583786807%_
                                                 _%e8583886811%_
                                                 _%hd8583986815%_
                                                 _%tl8584086818%_
                                                 _%__splice9187591876%_
                                                 _%target8587686704%_
                                                 _%tl8587886707%_
                                                 _%e8588586710%_
                                                 _%hd8588686714%_
                                                 _%tl8588786717%_)
                                                (if (gx#stx-null?
                                                     _%tl8584086818%_)
                                                    (_%__kont9187791878%_
                                                     _%hd8583986815%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8582486038%_))))))
                                        (if (gx#stx-null? _%tl8584086818%_)
                                            (_%__kont9187791878%_
                                             _%hd8583986815%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8582486038%_))))))
                                (if (gx#stx-null? _%tl8584086818%_)
                                    (_%__kont9187791878%_ _%hd8583986815%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8582486038%_)))))))
                    (if (let ((__tmp92317 (gx#stx-length _%tl8584086818%_)))
                          (declare (not safe))
                          (##fx>= __tmp92317 '1))
                        (let ((_%__splice9187591876%_
                               (gx#syntax-split-splice->vector
                                _%tl8584086818%_
                                '1)))
                          (let ((_%tl8587886707%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9187591876%_ '1)))
                                (_%target8587686704%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9187591876%_ '0))))
                            (if (gx#stx-pair? _%tl8587886707%_)
                                (let ((_%e8588586710%_
                                       (gx#syntax-e _%tl8587886707%_)))
                                  (let ((_%tl8588786717%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8588586710%_)))
                                        (_%hd8588686714%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8588586710%_))))
                                    (if (gx#stx-null? _%tl8588786717%_)
                                        (_%__match9199591996%_
                                         _%e8583186787%_
                                         _%hd8583286791%_
                                         _%tl8583386794%_
                                         _%e8583486797%_
                                         _%hd8583586801%_
                                         _%tl8583686804%_
                                         _%e8583786807%_
                                         _%e8583886811%_
                                         _%hd8583986815%_
                                         _%tl8584086818%_
                                         _%__splice9187591876%_
                                         _%target8587686704%_
                                         _%tl8587886707%_
                                         _%e8588586710%_
                                         _%hd8588686714%_
                                         _%tl8588786717%_)
                                        (if (gx#stx-null? _%tl8584086818%_)
                                            (_%__kont9187791878%_
                                             _%hd8583986815%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8582486038%_))))))
                                (if (gx#stx-null? _%tl8584086818%_)
                                    (_%__kont9187791878%_ _%hd8583986815%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8582486038%_))))))
                        (if (gx#stx-null? _%tl8584086818%_)
                            (_%__kont9187791878%_ _%hd8583986815%_)
                            (let () (declare (not safe)) (_%g8582486038%_)))))
                (if (let ((__tmp92318 (gx#stx-length _%tl8584086818%_)))
                      (declare (not safe))
                      (##fx>= __tmp92318 '1))
                    (let ((_%__splice9187591876%_
                           (gx#syntax-split-splice->vector
                            _%tl8584086818%_
                            '1)))
                      (let ((_%tl8587886707%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9187591876%_ '1)))
                            (_%target8587686704%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9187591876%_ '0))))
                        (if (gx#stx-pair? _%tl8587886707%_)
                            (let ((_%e8588586710%_
                                   (gx#syntax-e _%tl8587886707%_)))
                              (let ((_%tl8588786717%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8588586710%_)))
                                    (_%hd8588686714%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8588586710%_))))
                                (if (gx#stx-null? _%tl8588786717%_)
                                    (_%__match9199591996%_
                                     _%e8583186787%_
                                     _%hd8583286791%_
                                     _%tl8583386794%_
                                     _%e8583486797%_
                                     _%hd8583586801%_
                                     _%tl8583686804%_
                                     _%e8583786807%_
                                     _%e8583886811%_
                                     _%hd8583986815%_
                                     _%tl8584086818%_
                                     _%__splice9187591876%_
                                     _%target8587686704%_
                                     _%tl8587886707%_
                                     _%e8588586710%_
                                     _%hd8588686714%_
                                     _%tl8588786717%_)
                                    (if (gx#stx-null? _%tl8584086818%_)
                                        (_%__kont9187791878%_ _%hd8583986815%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8582486038%_))))))
                            (if (gx#stx-null? _%tl8584086818%_)
                                (_%__kont9187791878%_ _%hd8583986815%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8582486038%_))))))
                    (if (gx#stx-null? _%tl8584086818%_)
                        (_%__kont9187791878%_ _%hd8583986815%_)
                        (let () (declare (not safe)) (_%g8582486038%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp92319
                                                           (gx#stx-length
                                                            _%tl8584086818%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp92319 '1))
                                                    (let ((_%__splice9187591876%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl8584086818%_
                                                            '1)))
                                                      (let ((_%tl8587886707%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9187591876%_ '1)))
                    (_%target8587686704%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9187591876%_ '0))))
                (if (gx#stx-pair? _%tl8587886707%_)
                    (let ((_%e8588586710%_ (gx#syntax-e _%tl8587886707%_)))
                      (let ((_%tl8588786717%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8588586710%_)))
                            (_%hd8588686714%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8588586710%_))))
                        (if (gx#stx-null? _%tl8588786717%_)
                            (_%__match9199591996%_
                             _%e8583186787%_
                             _%hd8583286791%_
                             _%tl8583386794%_
                             _%e8583486797%_
                             _%hd8583586801%_
                             _%tl8583686804%_
                             _%e8583786807%_
                             _%e8583886811%_
                             _%hd8583986815%_
                             _%tl8584086818%_
                             _%__splice9187591876%_
                             _%target8587686704%_
                             _%tl8587886707%_
                             _%e8588586710%_
                             _%hd8588686714%_
                             _%tl8588786717%_)
                            (if (gx#stx-null? _%tl8584086818%_)
                                (_%__kont9187791878%_ _%hd8583986815%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8582486038%_))))))
                    (if (gx#stx-null? _%tl8584086818%_)
                        (_%__kont9187791878%_ _%hd8583986815%_)
                        (let () (declare (not safe)) (_%g8582486038%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8584086818%_)
                                                        (_%__kont9187791878%_
                                                         _%hd8583986815%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8582486038%_)))))
                                            (if (let ((__tmp92320
                                                       (gx#stx-length
                                                        _%tl8584086818%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp92320 '1))
                                                (let ((_%__splice9187591876%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl8584086818%_
                                                        '1)))
                                                  (let ((_%tl8587886707%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9187591876%_
                                                            '1)))
                                                        (_%target8587686704%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9187591876%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl8587886707%_)
                                                        (let ((_%e8588586710%_
                                                               (gx#syntax-e
                                                                _%tl8587886707%_)))
                                                          (let ((_%tl8588786717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8588586710%_)))
                        (_%hd8588686714%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8588586710%_))))
                    (if (gx#stx-null? _%tl8588786717%_)
                        (_%__match9199591996%_
                         _%e8583186787%_
                         _%hd8583286791%_
                         _%tl8583386794%_
                         _%e8583486797%_
                         _%hd8583586801%_
                         _%tl8583686804%_
                         _%e8583786807%_
                         _%e8583886811%_
                         _%hd8583986815%_
                         _%tl8584086818%_
                         _%__splice9187591876%_
                         _%target8587686704%_
                         _%tl8587886707%_
                         _%e8588586710%_
                         _%hd8588686714%_
                         _%tl8588786717%_)
                        (if (gx#stx-null? _%tl8584086818%_)
                            (_%__kont9187791878%_ _%hd8583986815%_)
                            (let () (declare (not safe)) (_%g8582486038%_))))))
                (if (gx#stx-null? _%tl8584086818%_)
                    (_%__kont9187791878%_ _%hd8583986815%_)
                    (let () (declare (not safe)) (_%g8582486038%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl8584086818%_)
                                                    (_%__kont9187791878%_
                                                     _%hd8583986815%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8582486038%_)))))
                                        (if (let ((__tmp92321
                                                   (gx#stx-length
                                                    _%tl8584086818%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp92321 '1))
                                            (let ((_%__splice9187591876%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl8584086818%_
                                                    '1)))
                                              (let ((_%tl8587886707%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9187591876%_
                                                        '1)))
                                                    (_%target8587686704%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9187591876%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl8587886707%_)
                                                    (let ((_%e8588586710%_
                                                           (gx#syntax-e
                                                            _%tl8587886707%_)))
                                                      (let ((_%tl8588786717%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8588586710%_)))
                    (_%hd8588686714%_
                     (let () (declare (not safe)) (##car _%e8588586710%_))))
                (if (gx#stx-null? _%tl8588786717%_)
                    (_%__match9199591996%_
                     _%e8583186787%_
                     _%hd8583286791%_
                     _%tl8583386794%_
                     _%e8583486797%_
                     _%hd8583586801%_
                     _%tl8583686804%_
                     _%e8583786807%_
                     _%e8583886811%_
                     _%hd8583986815%_
                     _%tl8584086818%_
                     _%__splice9187591876%_
                     _%target8587686704%_
                     _%tl8587886707%_
                     _%e8588586710%_
                     _%hd8588686714%_
                     _%tl8588786717%_)
                    (if (gx#stx-null? _%tl8584086818%_)
                        (_%__kont9187791878%_ _%hd8583986815%_)
                        (let () (declare (not safe)) (_%g8582486038%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8584086818%_)
                                                        (_%__kont9187791878%_
                                                         _%hd8583986815%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8582486038%_))))))
                                            (if (gx#stx-null? _%tl8584086818%_)
                                                (_%__kont9187791878%_
                                                 _%hd8583986815%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8582486038%_)))))))
                                (if (let ((__tmp92322
                                           (gx#stx-length _%tl8584086818%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp92322 '1))
                                    (let ((_%__splice9187591876%_
                                           (gx#syntax-split-splice->vector
                                            _%tl8584086818%_
                                            '1)))
                                      (let ((_%tl8587886707%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9187591876%_
                                                '1)))
                                            (_%target8587686704%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9187591876%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl8587886707%_)
                                            (let ((_%e8588586710%_
                                                   (gx#syntax-e
                                                    _%tl8587886707%_)))
                                              (let ((_%tl8588786717%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8588586710%_)))
                                                    (_%hd8588686714%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8588586710%_))))
                                                (if (gx#stx-null?
                                                     _%tl8588786717%_)
                                                    (_%__match9199591996%_
                                                     _%e8583186787%_
                                                     _%hd8583286791%_
                                                     _%tl8583386794%_
                                                     _%e8583486797%_
                                                     _%hd8583586801%_
                                                     _%tl8583686804%_
                                                     _%e8583786807%_
                                                     _%e8583886811%_
                                                     _%hd8583986815%_
                                                     _%tl8584086818%_
                                                     _%__splice9187591876%_
                                                     _%target8587686704%_
                                                     _%tl8587886707%_
                                                     _%e8588586710%_
                                                     _%hd8588686714%_
                                                     _%tl8588786717%_)
                                                    (if (gx#stx-null?
                                                         _%tl8584086818%_)
                                                        (_%__kont9187791878%_
                                                         _%hd8583986815%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8582486038%_))))))
                                            (if (gx#stx-null? _%tl8584086818%_)
                                                (_%__kont9187791878%_
                                                 _%hd8583986815%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8582486038%_))))))
                                    (if (gx#stx-null? _%tl8584086818%_)
                                        (_%__kont9187791878%_ _%hd8583986815%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8582486038%_)))))))
                        (if (let ((__tmp92323
                                   (gx#stx-length _%tl8584086818%_)))
                              (declare (not safe))
                              (##fx>= __tmp92323 '1))
                            (let ((_%__splice9187591876%_
                                   (gx#syntax-split-splice->vector
                                    _%tl8584086818%_
                                    '1)))
                              (let ((_%tl8587886707%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9187591876%_
                                        '1)))
                                    (_%target8587686704%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9187591876%_
                                        '0))))
                                (if (gx#stx-pair? _%tl8587886707%_)
                                    (let ((_%e8588586710%_
                                           (gx#syntax-e _%tl8587886707%_)))
                                      (let ((_%tl8588786717%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8588586710%_)))
                                            (_%hd8588686714%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8588586710%_))))
                                        (if (gx#stx-null? _%tl8588786717%_)
                                            (_%__match9199591996%_
                                             _%e8583186787%_
                                             _%hd8583286791%_
                                             _%tl8583386794%_
                                             _%e8583486797%_
                                             _%hd8583586801%_
                                             _%tl8583686804%_
                                             _%e8583786807%_
                                             _%e8583886811%_
                                             _%hd8583986815%_
                                             _%tl8584086818%_
                                             _%__splice9187591876%_
                                             _%target8587686704%_
                                             _%tl8587886707%_
                                             _%e8588586710%_
                                             _%hd8588686714%_
                                             _%tl8588786717%_)
                                            (if (gx#stx-null? _%tl8584086818%_)
                                                (_%__kont9187791878%_
                                                 _%hd8583986815%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8582486038%_))))))
                                    (if (gx#stx-null? _%tl8584086818%_)
                                        (_%__kont9187791878%_ _%hd8583986815%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8582486038%_))))))
                            (if (gx#stx-null? _%tl8584086818%_)
                                (_%__kont9187791878%_ _%hd8583986815%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8582486038%_)))))))
                (if (let ((__tmp92324 (gx#stx-length _%tl8584086818%_)))
                      (declare (not safe))
                      (##fx>= __tmp92324 '1))
                    (let ((_%__splice9187591876%_
                           (gx#syntax-split-splice->vector
                            _%tl8584086818%_
                            '1)))
                      (let ((_%tl8587886707%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9187591876%_ '1)))
                            (_%target8587686704%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9187591876%_ '0))))
                        (if (gx#stx-pair? _%tl8587886707%_)
                            (let ((_%e8588586710%_
                                   (gx#syntax-e _%tl8587886707%_)))
                              (let ((_%tl8588786717%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8588586710%_)))
                                    (_%hd8588686714%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8588586710%_))))
                                (if (gx#stx-null? _%tl8588786717%_)
                                    (_%__match9199591996%_
                                     _%e8583186787%_
                                     _%hd8583286791%_
                                     _%tl8583386794%_
                                     _%e8583486797%_
                                     _%hd8583586801%_
                                     _%tl8583686804%_
                                     _%e8583786807%_
                                     _%e8583886811%_
                                     _%hd8583986815%_
                                     _%tl8584086818%_
                                     _%__splice9187591876%_
                                     _%target8587686704%_
                                     _%tl8587886707%_
                                     _%e8588586710%_
                                     _%hd8588686714%_
                                     _%tl8588786717%_)
                                    (if (gx#stx-null? _%tl8584086818%_)
                                        (_%__kont9187791878%_ _%hd8583986815%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8582486038%_))))))
                            (if (gx#stx-null? _%tl8584086818%_)
                                (_%__kont9187791878%_ _%hd8583986815%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8582486038%_))))))
                    (if (gx#stx-null? _%tl8584086818%_)
                        (_%__kont9187791878%_ _%hd8583986815%_)
                        (let () (declare (not safe)) (_%g8582486038%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8584086818%_)
                                                        (_%__kont9187791878%_
                                                         _%hd8583986815%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8582486038%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8582486038%_)))
                                        (if (equal? _%e8583786807%_ '2)
                                            (if (gx#stx-pair? _%tl8583686804%_)
                                                (let ((_%e8591286510%_
                                                       (gx#syntax-e
                                                        _%tl8583686804%_)))
                                                  (let ((_%tl8591486517%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8591286510%_)))
                                                        (_%hd8591386514%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8591286510%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl8591486517%_)
                                                        (let ((_%e8591586520%_
                                                               (gx#syntax-e
                                                                _%tl8591486517%_)))
                                                          (let ((_%tl8591786527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8591586520%_)))
                        (_%hd8591686524%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8591586520%_))))
                    (if (gx#stx-pair? _%hd8591686524%_)
                        (let ((_%e8591886530%_ (gx#syntax-e _%hd8591686524%_)))
                          (let ((_%tl8592086537%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8591886530%_)))
                                (_%hd8591986534%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8591886530%_))))
                            (if (gx#stx-pair? _%hd8591986534%_)
                                (let ((_%e8592186540%_
                                       (gx#syntax-e _%hd8591986534%_)))
                                  (let ((_%tl8592386547%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8592186540%_)))
                                        (_%hd8592286544%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8592186540%_))))
                                    (if (gx#identifier? _%hd8592286544%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g92325_|
                                             _%hd8592286544%_)
                                            (if (gx#stx-pair? _%tl8592386547%_)
                                                (let ((_%e8592486550%_
                                                       (gx#syntax-e
                                                        _%tl8592386547%_)))
                                                  (let ((_%tl8592686557%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8592486550%_)))
                                                        (_%hd8592586554%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8592486550%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8592686557%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8592086537%_)
                                                            (let ((_%e8592786560%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8592086537%_)))
                      (let ((_%tl8592986567%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8592786560%_)))
                            (_%hd8592886564%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8592786560%_))))
                        (_%__kont9187991880%_
                         _%tl8591786527%_
                         _%tl8592986567%_
                         _%hd8592886564%_
                         _%hd8592586554%_
                         _%hd8591386514%_
                         _%hd8583286791%_)))
                    (_%__kont9188191882%_
                     _%tl8591786527%_
                     _%tl8592086537%_
                     _%hd8591986534%_
                     _%hd8591386514%_
                     _%hd8583286791%_))
                (_%__kont9188191882%_
                 _%tl8591786527%_
                 _%tl8592086537%_
                 _%hd8591986534%_
                 _%hd8591386514%_
                 _%hd8583286791%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont9188191882%_
                                                 _%tl8591786527%_
                                                 _%tl8592086537%_
                                                 _%hd8591986534%_
                                                 _%hd8591386514%_
                                                 _%hd8583286791%_))
                                            (_%__kont9188191882%_
                                             _%tl8591786527%_
                                             _%tl8592086537%_
                                             _%hd8591986534%_
                                             _%hd8591386514%_
                                             _%hd8583286791%_))
                                        (_%__kont9188191882%_
                                         _%tl8591786527%_
                                         _%tl8592086537%_
                                         _%hd8591986534%_
                                         _%hd8591386514%_
                                         _%hd8583286791%_))))
                                (_%__kont9188191882%_
                                 _%tl8591786527%_
                                 _%tl8592086537%_
                                 _%hd8591986534%_
                                 _%hd8591386514%_
                                 _%hd8583286791%_))))
                        (if (gx#stx-null? _%hd8591686524%_)
                            (_%__kont9188391884%_
                             _%tl8591786527%_
                             _%hd8591386514%_
                             _%hd8583286791%_)
                            (let () (declare (not safe)) (_%g8582486038%_))))))
                (let () (declare (not safe)) (_%g8582486038%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8582486038%_)))
                                            (if (equal? _%e8583786807%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl8583686804%_)
                                                    (let ((_%e8597986259%_
                                                           (gx#syntax-e
                                                            _%tl8583686804%_)))
                                                      (let ((_%tl8598186266%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8597986259%_)))
                    (_%hd8598086263%_
                     (let () (declare (not safe)) (##car _%e8597986259%_))))
                (if (gx#stx-pair? _%tl8598186266%_)
                    (let ((_%e8598286269%_ (gx#syntax-e _%tl8598186266%_)))
                      (let ((_%tl8598486276%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8598286269%_)))
                            (_%hd8598386273%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8598286269%_))))
                        (if (gx#stx-pair? _%hd8598386273%_)
                            (let ((_%e8598586279%_
                                   (gx#syntax-e _%hd8598386273%_)))
                              (let ((_%tl8598786286%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8598586279%_)))
                                    (_%hd8598686283%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8598586279%_))))
                                (_%__kont9188591886%_
                                 _%tl8598486276%_
                                 _%tl8598786286%_
                                 _%hd8598686283%_
                                 _%hd8598086263%_
                                 _%hd8583286791%_)))
                            (if (gx#stx-pair/null? _%hd8598086263%_)
                                (let ((_%__splice9188991890%_
                                       (gx#syntax-split-splice->vector
                                        _%hd8598086263%_
                                        '0)))
                                  (let ((_%tl8600686082%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9188991890%_
                                            '1)))
                                        (_%target8600486079%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9188991890%_
                                            '0))))
                                    (if (gx#stx-null? _%tl8600686082%_)
                                        (_%__match9221792218%_
                                         _%e8583186787%_
                                         _%hd8583286791%_
                                         _%tl8583386794%_
                                         _%e8583486797%_
                                         _%hd8583586801%_
                                         _%tl8583686804%_
                                         _%e8583786807%_
                                         _%e8597986259%_
                                         _%hd8598086263%_
                                         _%tl8598186266%_
                                         _%__splice9188991890%_
                                         _%target8600486079%_
                                         _%tl8600686082%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8582486038%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8582486038%_))))))
                    (if (gx#stx-pair/null? _%hd8598086263%_)
                        (let ((_%__splice9188991890%_
                               (gx#syntax-split-splice->vector
                                _%hd8598086263%_
                                '0)))
                          (let ((_%tl8600686082%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9188991890%_ '1)))
                                (_%target8600486079%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9188991890%_ '0))))
                            (if (gx#stx-null? _%tl8600686082%_)
                                (_%__match9221792218%_
                                 _%e8583186787%_
                                 _%hd8583286791%_
                                 _%tl8583386794%_
                                 _%e8583486797%_
                                 _%hd8583586801%_
                                 _%tl8583686804%_
                                 _%e8583786807%_
                                 _%e8597986259%_
                                 _%hd8598086263%_
                                 _%tl8598186266%_
                                 _%__splice9188991890%_
                                 _%target8600486079%_
                                 _%tl8600686082%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8582486038%_)))))
                        (let () (declare (not safe)) (_%g8582486038%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8582486038%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8582486038%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g8582486038%_)))))
                          (let () (declare (not safe)) (_%g8582486038%_)))))
                  (let () (declare (not safe)) (_%g8582486038%_))))))))))
