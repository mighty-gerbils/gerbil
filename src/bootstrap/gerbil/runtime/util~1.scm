(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g92197_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g92207_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx85157%_)
        (let* ((_%g8516185179%_
                (lambda (_%g8516285175%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8516285175%_)))
               (_%g8516085235%_
                (lambda (_%g8516285183%_)
                  (if (gx#stx-pair? _%g8516285183%_)
                      (let ((_%e8516585186%_ (gx#syntax-e _%g8516285183%_)))
                        (let ((_%hd8516685190%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8516585186%_)))
                              (_%tl8516785193%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8516585186%_))))
                          (if (gx#stx-pair? _%tl8516785193%_)
                              (let ((_%e8516885196%_
                                     (gx#syntax-e _%tl8516785193%_)))
                                (let ((_%hd8516985200%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8516885196%_)))
                                      (_%tl8517085203%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8516885196%_))))
                                  (if (gx#stx-pair? _%tl8517085203%_)
                                      (let ((_%e8517185206%_
                                             (gx#syntax-e _%tl8517085203%_)))
                                        (let ((_%hd8517285210%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8517185206%_)))
                                              (_%tl8517385213%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8517185206%_))))
                                          (if (gx#stx-null? _%tl8517385213%_)
                                              ((lambda (_%L85216%_ _%L85218%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L85218%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L85216%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8517285210%_
                                               _%hd8516985200%_)
                                              (_%g8516185179%_
                                               _%g8516285183%_))))
                                      (_%g8516185179%_ _%g8516285183%_))))
                              (_%g8516185179%_ _%g8516285183%_))))
                      (_%g8516185179%_ _%g8516285183%_)))))
          (_%g8516085235%_ _%$stx85157%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx85239%_)
        (let* ((_%g8524385257%_
                (lambda (_%g8524485253%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8524485253%_)))
               (_%g8524285298%_
                (lambda (_%g8524485261%_)
                  (if (gx#stx-pair? _%g8524485261%_)
                      (let ((_%e8524685264%_ (gx#syntax-e _%g8524485261%_)))
                        (let ((_%hd8524785268%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8524685264%_)))
                              (_%tl8524885271%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8524685264%_))))
                          (if (gx#stx-pair? _%tl8524885271%_)
                              (let ((_%e8524985274%_
                                     (gx#syntax-e _%tl8524885271%_)))
                                (let ((_%hd8525085278%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8524985274%_)))
                                      (_%tl8525185281%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8524985274%_))))
                                  (if (gx#stx-null? _%tl8525185281%_)
                                      ((lambda (_%L85284%_)
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
                                       (cons _%L85284%_
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
                                       _%hd8525085278%_)
                                      (_%g8524385257%_ _%g8524485261%_))))
                              (_%g8524385257%_ _%g8524485261%_))))
                      (_%g8524385257%_ _%g8524485261%_)))))
          (_%g8524285298%_ _%$stx85239%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx85302%_)
        (let* ((_%g8530685320%_
                (lambda (_%g8530785316%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8530785316%_)))
               (_%g8530585361%_
                (lambda (_%g8530785324%_)
                  (if (gx#stx-pair? _%g8530785324%_)
                      (let ((_%e8530985327%_ (gx#syntax-e _%g8530785324%_)))
                        (let ((_%hd8531085331%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8530985327%_)))
                              (_%tl8531185334%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8530985327%_))))
                          (if (gx#stx-pair? _%tl8531185334%_)
                              (let ((_%e8531285337%_
                                     (gx#syntax-e _%tl8531185334%_)))
                                (let ((_%hd8531385341%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8531285337%_)))
                                      (_%tl8531485344%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8531285337%_))))
                                  (if (gx#stx-null? _%tl8531485344%_)
                                      ((lambda (_%L85347%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L85347%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd8531385341%_)
                                      (_%g8530685320%_ _%g8530785324%_))))
                              (_%g8530685320%_ _%g8530785324%_))))
                      (_%g8530685320%_ _%g8530785324%_)))))
          (_%g8530585361%_ _%$stx85302%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx85365%_)
        (let* ((_%g8536985379%_
                (lambda (_%g8537085375%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8537085375%_)))
               (_%g8536885400%_
                (lambda (_%g8537085383%_)
                  (if (gx#stx-pair? _%g8537085383%_)
                      (let ((_%e8537185386%_ (gx#syntax-e _%g8537085383%_)))
                        (let ((_%hd8537285390%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8537185386%_)))
                              (_%tl8537385393%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8537185386%_))))
                          (if (gx#stx-null? _%tl8537385393%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g8536985379%_ _%g8537085383%_))))
                      (_%g8536985379%_ _%g8537085383%_)))))
          (_%g8536885400%_ _%$stx85365%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx85404%_)
        (let* ((_%g8540885426%_
                (lambda (_%g8540985422%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8540985422%_)))
               (_%g8540785481%_
                (lambda (_%g8540985430%_)
                  (if (gx#stx-pair? _%g8540985430%_)
                      (let ((_%e8541285433%_ (gx#syntax-e _%g8540985430%_)))
                        (let ((_%hd8541385437%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8541285433%_)))
                              (_%tl8541485440%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8541285433%_))))
                          (if (gx#stx-pair? _%tl8541485440%_)
                              (let ((_%e8541585443%_
                                     (gx#syntax-e _%tl8541485440%_)))
                                (let ((_%hd8541685447%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8541585443%_)))
                                      (_%tl8541785450%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8541585443%_))))
                                  (if (gx#stx-pair? _%tl8541785450%_)
                                      (let ((_%e8541885453%_
                                             (gx#syntax-e _%tl8541785450%_)))
                                        (let ((_%hd8541985457%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8541885453%_)))
                                              (_%tl8542085460%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8541885453%_))))
                                          (if (gx#stx-null? _%tl8542085460%_)
                                              ((lambda (_%L85463%_ _%L85465%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L85465%_
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
                 (cons (cons _%L85463%_
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
                                               _%hd8541985457%_
                                               _%hd8541685447%_)
                                              (_%g8540885426%_
                                               _%g8540985430%_))))
                                      (_%g8540885426%_ _%g8540985430%_))))
                              (_%g8540885426%_ _%g8540985430%_))))
                      (_%g8540885426%_ _%g8540985430%_)))))
          (_%g8540785481%_ _%$stx85404%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx85485%_)
        (let* ((_%g8548985507%_
                (lambda (_%g8549085503%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8549085503%_)))
               (_%g8548885562%_
                (lambda (_%g8549085511%_)
                  (if (gx#stx-pair? _%g8549085511%_)
                      (let ((_%e8549385514%_ (gx#syntax-e _%g8549085511%_)))
                        (let ((_%hd8549485518%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8549385514%_)))
                              (_%tl8549585521%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8549385514%_))))
                          (if (gx#stx-pair? _%tl8549585521%_)
                              (let ((_%e8549685524%_
                                     (gx#syntax-e _%tl8549585521%_)))
                                (let ((_%hd8549785528%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8549685524%_)))
                                      (_%tl8549885531%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8549685524%_))))
                                  (if (gx#stx-pair? _%tl8549885531%_)
                                      (let ((_%e8549985534%_
                                             (gx#syntax-e _%tl8549885531%_)))
                                        (let ((_%hd8550085538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8549985534%_)))
                                              (_%tl8550185541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8549985534%_))))
                                          (if (gx#stx-null? _%tl8550185541%_)
                                              ((lambda (_%L85544%_ _%L85546%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L85546%_
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
                                               (cons (cons _%L85544%_
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
                                               _%hd8550085538%_
                                               _%hd8549785528%_)
                                              (_%g8548985507%_
                                               _%g8549085511%_))))
                                      (_%g8548985507%_ _%g8549085511%_))))
                              (_%g8548985507%_ _%g8549085511%_))))
                      (_%g8548985507%_ _%g8549085511%_)))))
          (_%g8548885562%_ _%$stx85485%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx85566%_)
        (let* ((_%g8557085588%_
                (lambda (_%g8557185584%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8557185584%_)))
               (_%g8556985643%_
                (lambda (_%g8557185592%_)
                  (if (gx#stx-pair? _%g8557185592%_)
                      (let ((_%e8557485595%_ (gx#syntax-e _%g8557185592%_)))
                        (let ((_%hd8557585599%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8557485595%_)))
                              (_%tl8557685602%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8557485595%_))))
                          (if (gx#stx-pair? _%tl8557685602%_)
                              (let ((_%e8557785605%_
                                     (gx#syntax-e _%tl8557685602%_)))
                                (let ((_%hd8557885609%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8557785605%_)))
                                      (_%tl8557985612%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8557785605%_))))
                                  (if (gx#stx-pair? _%tl8557985612%_)
                                      (let ((_%e8558085615%_
                                             (gx#syntax-e _%tl8557985612%_)))
                                        (let ((_%hd8558185619%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8558085615%_)))
                                              (_%tl8558285622%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8558085615%_))))
                                          (if (gx#stx-null? _%tl8558285622%_)
                                              ((lambda (_%L85625%_ _%L85627%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L85627%_
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
                                               (cons (cons _%L85625%_
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
                                               _%hd8558185619%_
                                               _%hd8557885609%_)
                                              (_%g8557085588%_
                                               _%g8557185592%_))))
                                      (_%g8557085588%_ _%g8557185592%_))))
                              (_%g8557085588%_ _%g8557185592%_))))
                      (_%g8557085588%_ _%g8557185592%_)))))
          (_%g8556985643%_ _%$stx85566%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx85647%_)
        (let* ((_%g8565185662%_
                (lambda (_%g8565285658%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8565285658%_)))
               (_%g8565085691%_
                (lambda (_%g8565285666%_)
                  (if (gx#stx-pair? _%g8565285666%_)
                      (let ((_%e8565485669%_ (gx#syntax-e _%g8565285666%_)))
                        (let ((_%hd8565585673%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8565485669%_)))
                              (_%tl8565685676%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8565485669%_))))
                          ((lambda (_%L85679%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L85679%_)))
                           _%tl8565685676%_)))
                      (_%g8565185662%_ _%g8565285666%_)))))
          (_%g8565085691%_ _%$stx85647%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx85695%_)
        (let* ((_%__stx9174891749%_ _%$stx85695%_)
               (_%g8570685920%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9174891749%_))))
          (let ((_%__kont9175191752%_
                 (lambda (_%L86773%_
                          _%L86775%_
                          _%L86776%_
                          _%L86777%_
                          _%L86778%_)
                   (cons _%L86778%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8680886811%_
                                                     _%g8680986814%_)
                                              (cons _%g8680886811%_
                                                    _%g8680986814%_))
                                            '()
                                            _%L86776%_)
                                           (cons _%L86777%_
                                                 (cons _%L86775%_
                                                       (cons _%L86773%_
                                                             '())))))))))
                (_%__kont9175591756%_
                 (lambda (_%L86626%_ _%L86628%_ _%L86629%_ _%L86630%_)
                   (cons _%L86630%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8665386656%_
                                                     _%g8665486659%_)
                                              (cons _%g8665386656%_
                                                    _%g8665486659%_))
                                            '()
                                            _%L86628%_)
                                           (cons _%L86629%_
                                                 (cons _%L86626%_
                                                       (cons _%L86626%_
                                                             '())))))))))
                (_%__kont9175991760%_
                 (lambda (_%L86529%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L86529%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont9176191762%_
                 (lambda (_%L86452%_
                          _%L86454%_
                          _%L86455%_
                          _%L86456%_
                          _%L86457%_
                          _%L86458%_)
                   (cons _%L86458%_
                         (cons '2
                               (cons (cons (cons _%L86456%_
                                                 (cons _%L86455%_ '()))
                                           _%L86457%_)
                                     (cons _%L86454%_ _%L86452%_))))))
                (_%__kont9176391764%_
                 (lambda (_%L86333%_
                          _%L86335%_
                          _%L86336%_
                          _%L86337%_
                          _%L86338%_)
                   (cons _%L86338%_
                         (cons '2
                               (cons (cons (cons _%L86336%_
                                                 (cons _%L86336%_ '()))
                                           _%L86337%_)
                                     (cons _%L86335%_ _%L86333%_))))))
                (_%__kont9176591766%_
                 (lambda (_%L86250%_ _%L86252%_ _%L86253%_)
                   (cons _%L86253%_
                         (cons '3 (cons '() (cons _%L86252%_ _%L86250%_))))))
                (_%__kont9176791768%_
                 (lambda (_%L86171%_
                          _%L86173%_
                          _%L86174%_
                          _%L86175%_
                          _%L86176%_)
                   (cons _%L86176%_
                         (cons '3
                               (cons (cons _%L86174%_ _%L86175%_)
                                     (cons _%L86173%_ _%L86171%_))))))
                (_%__kont9176991770%_
                 (lambda (_%L86055%_
                          _%L86057%_
                          _%L86058%_
                          _%L86059%_
                          _%L86060%_
                          _%L86061%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L86058%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L86055%_ '())))
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
                                              (lambda (_%g8609586098%_
                                                       _%g8609686101%_)
                                                (cons _%g8609586098%_
                                                      _%g8609686101%_))
                                              '()
                                              _%L86060%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (__foldr1
                                              (lambda (_%g8609386104%_
                                                       _%g8609486107%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g8609386104%_ '())))
              _%g8609486107%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L86059%_))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L86057%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9209992100%_
                    (lambda (_%e8587685927%_
                             _%hd8587785931%_
                             _%tl8587885934%_
                             _%e8587985937%_
                             _%hd8588085941%_
                             _%tl8588185944%_
                             _%e8588285947%_
                             _%e8588385951%_
                             _%hd8588485955%_
                             _%tl8588585958%_
                             _%__splice9177191772%_
                             _%target8588685961%_
                             _%tl8588885964%_)
                      (letrec ((_%loop8588985967%_
                                (lambda (_%hd8588785971%_
                                         _%exprs8589385974%_
                                         _%names8589485976%_)
                                  (if (gx#stx-pair? _%hd8588785971%_)
                                      (let ((_%e8589085979%_
                                             (gx#syntax-e _%hd8588785971%_)))
                                        (let ((_%lp-tl8589285986%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8589085979%_)))
                                              (_%lp-hd8589185983%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8589085979%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd8589185983%_)
                                              (let ((_%e8590985989%_
                                                     (gx#syntax-e
                                                      _%lp-hd8589185983%_)))
                                                (let ((_%tl8591185996%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8590985989%_)))
                                                      (_%hd8591085993%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8590985989%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8591185996%_)
                                                      (let ((_%e8591285999%_
                                                             (gx#syntax-e
                                                              _%tl8591185996%_)))
                                                        (let ((_%tl8591486006%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8591285999%_)))
                      (_%hd8591386003%_
                       (let () (declare (not safe)) (##car _%e8591285999%_))))
                  (if (gx#stx-null? _%tl8591486006%_)
                      (_%loop8588985967%_
                       _%lp-tl8589285986%_
                       (cons _%hd8591386003%_ _%exprs8589385974%_)
                       (cons _%hd8591085993%_ _%names8589485976%_))
                      (let () (declare (not safe)) (_%g8570685920%_)))))
              (let () (declare (not safe)) (_%g8570685920%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g8570685920%_)))))
                                      (let ((_%names8589686012%_
                                             (reverse _%names8589485976%_))
                                            (_%exprs8589586009%_
                                             (reverse _%exprs8589385974%_)))
                                        (if (gx#stx-pair? _%tl8588585958%_)
                                            (let ((_%e8589786015%_
                                                   (gx#syntax-e
                                                    _%tl8588585958%_)))
                                              (let ((_%tl8589986022%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8589786015%_)))
                                                    (_%hd8589886019%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8589786015%_))))
                                                (if (gx#stx-null?
                                                     _%hd8589886019%_)
                                                    (if (gx#stx-pair?
                                                         _%tl8589986022%_)
                                                        (let ((_%e8590086025%_
                                                               (gx#syntax-e
                                                                _%tl8589986022%_)))
                                                          (let ((_%tl8590286032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8590086025%_)))
                        (_%hd8590186029%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8590086025%_))))
                    (if (gx#stx-pair? _%tl8590286032%_)
                        (let ((_%e8590386035%_ (gx#syntax-e _%tl8590286032%_)))
                          (let ((_%tl8590586042%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8590386035%_)))
                                (_%hd8590486039%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8590386035%_))))
                            (if (gx#stx-pair? _%tl8590586042%_)
                                (let ((_%e8590686045%_
                                       (gx#syntax-e _%tl8590586042%_)))
                                  (let ((_%tl8590886052%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8590686045%_)))
                                        (_%hd8590786049%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8590686045%_))))
                                    (if (gx#stx-null? _%tl8590886052%_)
                                        (_%__kont9176991770%_
                                         _%hd8590786049%_
                                         _%hd8590486039%_
                                         _%hd8590186029%_
                                         _%exprs8589586009%_
                                         _%names8589686012%_
                                         _%hd8587785931%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8570685920%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8570685920%_)))))
                        (let () (declare (not safe)) (_%g8570685920%_)))))
                (let () (declare (not safe)) (_%g8570685920%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8570685920%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8570685920%_))))))))
                        (_%loop8588985967%_ _%target8588685961%_ '() '()))))
                   (_%__match9187791878%_
                    (lambda (_%e8574886552%_
                             _%hd8574986556%_
                             _%tl8575086559%_
                             _%e8575186562%_
                             _%hd8575286566%_
                             _%tl8575386569%_
                             _%e8575486572%_
                             _%e8575586576%_
                             _%hd8575686580%_
                             _%tl8575786583%_
                             _%__splice9175791758%_
                             _%target8575886586%_
                             _%tl8576086589%_
                             _%e8576786592%_
                             _%hd8576886596%_
                             _%tl8576986599%_)
                      (letrec ((_%loop8576186602%_
                                (lambda (_%hd8575986606%_ _%exprs8576586609%_)
                                  (if (gx#stx-pair? _%hd8575986606%_)
                                      (let ((_%e8576286612%_
                                             (gx#syntax-e _%hd8575986606%_)))
                                        (let ((_%lp-tl8576486619%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8576286612%_)))
                                              (_%lp-hd8576386616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8576286612%_))))
                                          (_%loop8576186602%_
                                           _%lp-tl8576486619%_
                                           (cons _%lp-hd8576386616%_
                                                 _%exprs8576586609%_))))
                                      (let ((_%exprs8576686622%_
                                             (reverse _%exprs8576586609%_)))
                                        (_%__kont9175591756%_
                                         _%hd8576886596%_
                                         _%exprs8576686622%_
                                         _%hd8575686580%_
                                         _%hd8574986556%_))))))
                        (_%loop8576186602%_ _%target8575886586%_ '()))))
                   (_%__match9183791838%_
                    (lambda (_%e8571386669%_
                             _%hd8571486673%_
                             _%tl8571586676%_
                             _%e8571686679%_
                             _%hd8571786683%_
                             _%tl8571886686%_
                             _%e8571986689%_
                             _%e8572086693%_
                             _%hd8572186697%_
                             _%tl8572286700%_
                             _%__splice9175391754%_
                             _%target8572386703%_
                             _%tl8572586706%_
                             _%e8573286709%_
                             _%hd8573386713%_
                             _%tl8573486716%_
                             _%e8573586719%_
                             _%hd8573686723%_
                             _%tl8573786726%_
                             _%e8573886729%_
                             _%hd8573986733%_
                             _%tl8574086736%_
                             _%e8574186739%_
                             _%hd8574286743%_
                             _%tl8574386746%_)
                      (letrec ((_%loop8572686749%_
                                (lambda (_%hd8572486753%_ _%exprs8573086756%_)
                                  (if (gx#stx-pair? _%hd8572486753%_)
                                      (let ((_%e8572786759%_
                                             (gx#syntax-e _%hd8572486753%_)))
                                        (let ((_%lp-tl8572986766%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8572786759%_)))
                                              (_%lp-hd8572886763%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8572786759%_))))
                                          (_%loop8572686749%_
                                           _%lp-tl8572986766%_
                                           (cons _%lp-hd8572886763%_
                                                 _%exprs8573086756%_))))
                                      (let ((_%exprs8573186769%_
                                             (reverse _%exprs8573086756%_)))
                                        (_%__kont9175191752%_
                                         _%hd8574286743%_
                                         _%hd8573986733%_
                                         _%exprs8573186769%_
                                         _%hd8572186697%_
                                         _%hd8571486673%_))))))
                        (_%loop8572686749%_ _%target8572386703%_ '())))))
              (if (gx#stx-pair? _%__stx9174891749%_)
                  (let ((_%e8571386669%_ (gx#syntax-e _%__stx9174891749%_)))
                    (let ((_%tl8571586676%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e8571386669%_)))
                          (_%hd8571486673%_
                           (let ()
                             (declare (not safe))
                             (##car _%e8571386669%_))))
                      (if (gx#stx-pair? _%tl8571586676%_)
                          (let ((_%e8571686679%_
                                 (gx#syntax-e _%tl8571586676%_)))
                            (let ((_%tl8571886686%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e8571686679%_)))
                                  (_%hd8571786683%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e8571686679%_))))
                              (if (gx#stx-datum? _%hd8571786683%_)
                                  (let ((_%e8571986689%_
                                         (gx#stx-e _%hd8571786683%_)))
                                    (if (equal? _%e8571986689%_ '1)
                                        (if (gx#stx-pair? _%tl8571886686%_)
                                            (let ((_%e8572086693%_
                                                   (gx#syntax-e
                                                    _%tl8571886686%_)))
                                              (let ((_%tl8572286700%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8572086693%_)))
                                                    (_%hd8572186697%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8572086693%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl8572286700%_)
                                                    (if (let ((__tmp92196
                                                               (gx#stx-length
                                                                _%tl8572286700%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp92196
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice9175391754%_
                       (gx#syntax-split-splice _%tl8572286700%_ '2)))
                  (let ((_%tl8572586706%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9175391754%_ '1)))
                        (_%target8572386703%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9175391754%_ '0))))
                    (if (gx#stx-pair? _%tl8572586706%_)
                        (let ((_%e8573286709%_ (gx#syntax-e _%tl8572586706%_)))
                          (let ((_%tl8573486716%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8573286709%_)))
                                (_%hd8573386713%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8573286709%_))))
                            (if (gx#stx-pair? _%hd8573386713%_)
                                (let ((_%e8573586719%_
                                       (gx#syntax-e _%hd8573386713%_)))
                                  (let ((_%tl8573786726%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8573586719%_)))
                                        (_%hd8573686723%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8573586719%_))))
                                    (if (gx#identifier? _%hd8573686723%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g92197_|
                                             _%hd8573686723%_)
                                            (if (gx#stx-pair? _%tl8573786726%_)
                                                (let ((_%e8573886729%_
                                                       (gx#syntax-e
                                                        _%tl8573786726%_)))
                                                  (let ((_%tl8574086736%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8573886729%_)))
                                                        (_%hd8573986733%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8573886729%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8574086736%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8573486716%_)
                                                            (let ((_%e8574186739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8573486716%_)))
                      (let ((_%tl8574386746%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8574186739%_)))
                            (_%hd8574286743%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8574186739%_))))
                        (if (gx#stx-null? _%tl8574386746%_)
                            (_%__match9183791838%_
                             _%e8571386669%_
                             _%hd8571486673%_
                             _%tl8571586676%_
                             _%e8571686679%_
                             _%hd8571786683%_
                             _%tl8571886686%_
                             _%e8571986689%_
                             _%e8572086693%_
                             _%hd8572186697%_
                             _%tl8572286700%_
                             _%__splice9175391754%_
                             _%target8572386703%_
                             _%tl8572586706%_
                             _%e8573286709%_
                             _%hd8573386713%_
                             _%tl8573486716%_
                             _%e8573586719%_
                             _%hd8573686723%_
                             _%tl8573786726%_
                             _%e8573886729%_
                             _%hd8573986733%_
                             _%tl8574086736%_
                             _%e8574186739%_
                             _%hd8574286743%_
                             _%tl8574386746%_)
                            (if (let ((__tmp92198
                                       (gx#stx-length _%tl8572286700%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp92198 '1))
                                (let ((_%__splice9175791758%_
                                       (gx#syntax-split-splice
                                        _%tl8572286700%_
                                        '1)))
                                  (let ((_%tl8576086589%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9175791758%_
                                            '1)))
                                        (_%target8575886586%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9175791758%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl8576086589%_)
                                        (let ((_%e8576786592%_
                                               (gx#syntax-e _%tl8576086589%_)))
                                          (let ((_%tl8576986599%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e8576786592%_)))
                                                (_%hd8576886596%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e8576786592%_))))
                                            (if (gx#stx-null? _%tl8576986599%_)
                                                (_%__match9187791878%_
                                                 _%e8571386669%_
                                                 _%hd8571486673%_
                                                 _%tl8571586676%_
                                                 _%e8571686679%_
                                                 _%hd8571786683%_
                                                 _%tl8571886686%_
                                                 _%e8571986689%_
                                                 _%e8572086693%_
                                                 _%hd8572186697%_
                                                 _%tl8572286700%_
                                                 _%__splice9175791758%_
                                                 _%target8575886586%_
                                                 _%tl8576086589%_
                                                 _%e8576786592%_
                                                 _%hd8576886596%_
                                                 _%tl8576986599%_)
                                                (if (gx#stx-null?
                                                     _%tl8572286700%_)
                                                    (_%__kont9175991760%_
                                                     _%hd8572186697%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8570685920%_))))))
                                        (if (gx#stx-null? _%tl8572286700%_)
                                            (_%__kont9175991760%_
                                             _%hd8572186697%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8570685920%_))))))
                                (if (gx#stx-null? _%tl8572286700%_)
                                    (_%__kont9175991760%_ _%hd8572186697%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8570685920%_)))))))
                    (if (let ((__tmp92199 (gx#stx-length _%tl8572286700%_)))
                          (declare (not safe))
                          (##fx>= __tmp92199 '1))
                        (let ((_%__splice9175791758%_
                               (gx#syntax-split-splice _%tl8572286700%_ '1)))
                          (let ((_%tl8576086589%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9175791758%_ '1)))
                                (_%target8575886586%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9175791758%_ '0))))
                            (if (gx#stx-pair? _%tl8576086589%_)
                                (let ((_%e8576786592%_
                                       (gx#syntax-e _%tl8576086589%_)))
                                  (let ((_%tl8576986599%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8576786592%_)))
                                        (_%hd8576886596%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8576786592%_))))
                                    (if (gx#stx-null? _%tl8576986599%_)
                                        (_%__match9187791878%_
                                         _%e8571386669%_
                                         _%hd8571486673%_
                                         _%tl8571586676%_
                                         _%e8571686679%_
                                         _%hd8571786683%_
                                         _%tl8571886686%_
                                         _%e8571986689%_
                                         _%e8572086693%_
                                         _%hd8572186697%_
                                         _%tl8572286700%_
                                         _%__splice9175791758%_
                                         _%target8575886586%_
                                         _%tl8576086589%_
                                         _%e8576786592%_
                                         _%hd8576886596%_
                                         _%tl8576986599%_)
                                        (if (gx#stx-null? _%tl8572286700%_)
                                            (_%__kont9175991760%_
                                             _%hd8572186697%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8570685920%_))))))
                                (if (gx#stx-null? _%tl8572286700%_)
                                    (_%__kont9175991760%_ _%hd8572186697%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8570685920%_))))))
                        (if (gx#stx-null? _%tl8572286700%_)
                            (_%__kont9175991760%_ _%hd8572186697%_)
                            (let () (declare (not safe)) (_%g8570685920%_)))))
                (if (let ((__tmp92200 (gx#stx-length _%tl8572286700%_)))
                      (declare (not safe))
                      (##fx>= __tmp92200 '1))
                    (let ((_%__splice9175791758%_
                           (gx#syntax-split-splice _%tl8572286700%_ '1)))
                      (let ((_%tl8576086589%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9175791758%_ '1)))
                            (_%target8575886586%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9175791758%_ '0))))
                        (if (gx#stx-pair? _%tl8576086589%_)
                            (let ((_%e8576786592%_
                                   (gx#syntax-e _%tl8576086589%_)))
                              (let ((_%tl8576986599%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8576786592%_)))
                                    (_%hd8576886596%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8576786592%_))))
                                (if (gx#stx-null? _%tl8576986599%_)
                                    (_%__match9187791878%_
                                     _%e8571386669%_
                                     _%hd8571486673%_
                                     _%tl8571586676%_
                                     _%e8571686679%_
                                     _%hd8571786683%_
                                     _%tl8571886686%_
                                     _%e8571986689%_
                                     _%e8572086693%_
                                     _%hd8572186697%_
                                     _%tl8572286700%_
                                     _%__splice9175791758%_
                                     _%target8575886586%_
                                     _%tl8576086589%_
                                     _%e8576786592%_
                                     _%hd8576886596%_
                                     _%tl8576986599%_)
                                    (if (gx#stx-null? _%tl8572286700%_)
                                        (_%__kont9175991760%_ _%hd8572186697%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8570685920%_))))))
                            (if (gx#stx-null? _%tl8572286700%_)
                                (_%__kont9175991760%_ _%hd8572186697%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8570685920%_))))))
                    (if (gx#stx-null? _%tl8572286700%_)
                        (_%__kont9175991760%_ _%hd8572186697%_)
                        (let () (declare (not safe)) (_%g8570685920%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp92201
                                                           (gx#stx-length
                                                            _%tl8572286700%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp92201 '1))
                                                    (let ((_%__splice9175791758%_
                                                           (gx#syntax-split-splice
                                                            _%tl8572286700%_
                                                            '1)))
                                                      (let ((_%tl8576086589%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9175791758%_ '1)))
                    (_%target8575886586%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9175791758%_ '0))))
                (if (gx#stx-pair? _%tl8576086589%_)
                    (let ((_%e8576786592%_ (gx#syntax-e _%tl8576086589%_)))
                      (let ((_%tl8576986599%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8576786592%_)))
                            (_%hd8576886596%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8576786592%_))))
                        (if (gx#stx-null? _%tl8576986599%_)
                            (_%__match9187791878%_
                             _%e8571386669%_
                             _%hd8571486673%_
                             _%tl8571586676%_
                             _%e8571686679%_
                             _%hd8571786683%_
                             _%tl8571886686%_
                             _%e8571986689%_
                             _%e8572086693%_
                             _%hd8572186697%_
                             _%tl8572286700%_
                             _%__splice9175791758%_
                             _%target8575886586%_
                             _%tl8576086589%_
                             _%e8576786592%_
                             _%hd8576886596%_
                             _%tl8576986599%_)
                            (if (gx#stx-null? _%tl8572286700%_)
                                (_%__kont9175991760%_ _%hd8572186697%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8570685920%_))))))
                    (if (gx#stx-null? _%tl8572286700%_)
                        (_%__kont9175991760%_ _%hd8572186697%_)
                        (let () (declare (not safe)) (_%g8570685920%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8572286700%_)
                                                        (_%__kont9175991760%_
                                                         _%hd8572186697%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8570685920%_)))))
                                            (if (let ((__tmp92202
                                                       (gx#stx-length
                                                        _%tl8572286700%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp92202 '1))
                                                (let ((_%__splice9175791758%_
                                                       (gx#syntax-split-splice
                                                        _%tl8572286700%_
                                                        '1)))
                                                  (let ((_%tl8576086589%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9175791758%_
                                                            '1)))
                                                        (_%target8575886586%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9175791758%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl8576086589%_)
                                                        (let ((_%e8576786592%_
                                                               (gx#syntax-e
                                                                _%tl8576086589%_)))
                                                          (let ((_%tl8576986599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8576786592%_)))
                        (_%hd8576886596%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8576786592%_))))
                    (if (gx#stx-null? _%tl8576986599%_)
                        (_%__match9187791878%_
                         _%e8571386669%_
                         _%hd8571486673%_
                         _%tl8571586676%_
                         _%e8571686679%_
                         _%hd8571786683%_
                         _%tl8571886686%_
                         _%e8571986689%_
                         _%e8572086693%_
                         _%hd8572186697%_
                         _%tl8572286700%_
                         _%__splice9175791758%_
                         _%target8575886586%_
                         _%tl8576086589%_
                         _%e8576786592%_
                         _%hd8576886596%_
                         _%tl8576986599%_)
                        (if (gx#stx-null? _%tl8572286700%_)
                            (_%__kont9175991760%_ _%hd8572186697%_)
                            (let () (declare (not safe)) (_%g8570685920%_))))))
                (if (gx#stx-null? _%tl8572286700%_)
                    (_%__kont9175991760%_ _%hd8572186697%_)
                    (let () (declare (not safe)) (_%g8570685920%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl8572286700%_)
                                                    (_%__kont9175991760%_
                                                     _%hd8572186697%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8570685920%_)))))
                                        (if (let ((__tmp92203
                                                   (gx#stx-length
                                                    _%tl8572286700%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp92203 '1))
                                            (let ((_%__splice9175791758%_
                                                   (gx#syntax-split-splice
                                                    _%tl8572286700%_
                                                    '1)))
                                              (let ((_%tl8576086589%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9175791758%_
                                                        '1)))
                                                    (_%target8575886586%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9175791758%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl8576086589%_)
                                                    (let ((_%e8576786592%_
                                                           (gx#syntax-e
                                                            _%tl8576086589%_)))
                                                      (let ((_%tl8576986599%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8576786592%_)))
                    (_%hd8576886596%_
                     (let () (declare (not safe)) (##car _%e8576786592%_))))
                (if (gx#stx-null? _%tl8576986599%_)
                    (_%__match9187791878%_
                     _%e8571386669%_
                     _%hd8571486673%_
                     _%tl8571586676%_
                     _%e8571686679%_
                     _%hd8571786683%_
                     _%tl8571886686%_
                     _%e8571986689%_
                     _%e8572086693%_
                     _%hd8572186697%_
                     _%tl8572286700%_
                     _%__splice9175791758%_
                     _%target8575886586%_
                     _%tl8576086589%_
                     _%e8576786592%_
                     _%hd8576886596%_
                     _%tl8576986599%_)
                    (if (gx#stx-null? _%tl8572286700%_)
                        (_%__kont9175991760%_ _%hd8572186697%_)
                        (let () (declare (not safe)) (_%g8570685920%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8572286700%_)
                                                        (_%__kont9175991760%_
                                                         _%hd8572186697%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8570685920%_))))))
                                            (if (gx#stx-null? _%tl8572286700%_)
                                                (_%__kont9175991760%_
                                                 _%hd8572186697%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8570685920%_)))))))
                                (if (let ((__tmp92204
                                           (gx#stx-length _%tl8572286700%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp92204 '1))
                                    (let ((_%__splice9175791758%_
                                           (gx#syntax-split-splice
                                            _%tl8572286700%_
                                            '1)))
                                      (let ((_%tl8576086589%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9175791758%_
                                                '1)))
                                            (_%target8575886586%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9175791758%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl8576086589%_)
                                            (let ((_%e8576786592%_
                                                   (gx#syntax-e
                                                    _%tl8576086589%_)))
                                              (let ((_%tl8576986599%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8576786592%_)))
                                                    (_%hd8576886596%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8576786592%_))))
                                                (if (gx#stx-null?
                                                     _%tl8576986599%_)
                                                    (_%__match9187791878%_
                                                     _%e8571386669%_
                                                     _%hd8571486673%_
                                                     _%tl8571586676%_
                                                     _%e8571686679%_
                                                     _%hd8571786683%_
                                                     _%tl8571886686%_
                                                     _%e8571986689%_
                                                     _%e8572086693%_
                                                     _%hd8572186697%_
                                                     _%tl8572286700%_
                                                     _%__splice9175791758%_
                                                     _%target8575886586%_
                                                     _%tl8576086589%_
                                                     _%e8576786592%_
                                                     _%hd8576886596%_
                                                     _%tl8576986599%_)
                                                    (if (gx#stx-null?
                                                         _%tl8572286700%_)
                                                        (_%__kont9175991760%_
                                                         _%hd8572186697%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8570685920%_))))))
                                            (if (gx#stx-null? _%tl8572286700%_)
                                                (_%__kont9175991760%_
                                                 _%hd8572186697%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8570685920%_))))))
                                    (if (gx#stx-null? _%tl8572286700%_)
                                        (_%__kont9175991760%_ _%hd8572186697%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8570685920%_)))))))
                        (if (let ((__tmp92205
                                   (gx#stx-length _%tl8572286700%_)))
                              (declare (not safe))
                              (##fx>= __tmp92205 '1))
                            (let ((_%__splice9175791758%_
                                   (gx#syntax-split-splice
                                    _%tl8572286700%_
                                    '1)))
                              (let ((_%tl8576086589%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9175791758%_
                                        '1)))
                                    (_%target8575886586%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9175791758%_
                                        '0))))
                                (if (gx#stx-pair? _%tl8576086589%_)
                                    (let ((_%e8576786592%_
                                           (gx#syntax-e _%tl8576086589%_)))
                                      (let ((_%tl8576986599%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8576786592%_)))
                                            (_%hd8576886596%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8576786592%_))))
                                        (if (gx#stx-null? _%tl8576986599%_)
                                            (_%__match9187791878%_
                                             _%e8571386669%_
                                             _%hd8571486673%_
                                             _%tl8571586676%_
                                             _%e8571686679%_
                                             _%hd8571786683%_
                                             _%tl8571886686%_
                                             _%e8571986689%_
                                             _%e8572086693%_
                                             _%hd8572186697%_
                                             _%tl8572286700%_
                                             _%__splice9175791758%_
                                             _%target8575886586%_
                                             _%tl8576086589%_
                                             _%e8576786592%_
                                             _%hd8576886596%_
                                             _%tl8576986599%_)
                                            (if (gx#stx-null? _%tl8572286700%_)
                                                (_%__kont9175991760%_
                                                 _%hd8572186697%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8570685920%_))))))
                                    (if (gx#stx-null? _%tl8572286700%_)
                                        (_%__kont9175991760%_ _%hd8572186697%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8570685920%_))))))
                            (if (gx#stx-null? _%tl8572286700%_)
                                (_%__kont9175991760%_ _%hd8572186697%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8570685920%_)))))))
                (if (let ((__tmp92206 (gx#stx-length _%tl8572286700%_)))
                      (declare (not safe))
                      (##fx>= __tmp92206 '1))
                    (let ((_%__splice9175791758%_
                           (gx#syntax-split-splice _%tl8572286700%_ '1)))
                      (let ((_%tl8576086589%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9175791758%_ '1)))
                            (_%target8575886586%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9175791758%_ '0))))
                        (if (gx#stx-pair? _%tl8576086589%_)
                            (let ((_%e8576786592%_
                                   (gx#syntax-e _%tl8576086589%_)))
                              (let ((_%tl8576986599%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8576786592%_)))
                                    (_%hd8576886596%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8576786592%_))))
                                (if (gx#stx-null? _%tl8576986599%_)
                                    (_%__match9187791878%_
                                     _%e8571386669%_
                                     _%hd8571486673%_
                                     _%tl8571586676%_
                                     _%e8571686679%_
                                     _%hd8571786683%_
                                     _%tl8571886686%_
                                     _%e8571986689%_
                                     _%e8572086693%_
                                     _%hd8572186697%_
                                     _%tl8572286700%_
                                     _%__splice9175791758%_
                                     _%target8575886586%_
                                     _%tl8576086589%_
                                     _%e8576786592%_
                                     _%hd8576886596%_
                                     _%tl8576986599%_)
                                    (if (gx#stx-null? _%tl8572286700%_)
                                        (_%__kont9175991760%_ _%hd8572186697%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8570685920%_))))))
                            (if (gx#stx-null? _%tl8572286700%_)
                                (_%__kont9175991760%_ _%hd8572186697%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8570685920%_))))))
                    (if (gx#stx-null? _%tl8572286700%_)
                        (_%__kont9175991760%_ _%hd8572186697%_)
                        (let () (declare (not safe)) (_%g8570685920%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8572286700%_)
                                                        (_%__kont9175991760%_
                                                         _%hd8572186697%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8570685920%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8570685920%_)))
                                        (if (equal? _%e8571986689%_ '2)
                                            (if (gx#stx-pair? _%tl8571886686%_)
                                                (let ((_%e8579486392%_
                                                       (gx#syntax-e
                                                        _%tl8571886686%_)))
                                                  (let ((_%tl8579686399%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8579486392%_)))
                                                        (_%hd8579586396%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8579486392%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl8579686399%_)
                                                        (let ((_%e8579786402%_
                                                               (gx#syntax-e
                                                                _%tl8579686399%_)))
                                                          (let ((_%tl8579986409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8579786402%_)))
                        (_%hd8579886406%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8579786402%_))))
                    (if (gx#stx-pair? _%hd8579886406%_)
                        (let ((_%e8580086412%_ (gx#syntax-e _%hd8579886406%_)))
                          (let ((_%tl8580286419%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8580086412%_)))
                                (_%hd8580186416%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8580086412%_))))
                            (if (gx#stx-pair? _%hd8580186416%_)
                                (let ((_%e8580386422%_
                                       (gx#syntax-e _%hd8580186416%_)))
                                  (let ((_%tl8580586429%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8580386422%_)))
                                        (_%hd8580486426%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8580386422%_))))
                                    (if (gx#identifier? _%hd8580486426%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g92207_|
                                             _%hd8580486426%_)
                                            (if (gx#stx-pair? _%tl8580586429%_)
                                                (let ((_%e8580686432%_
                                                       (gx#syntax-e
                                                        _%tl8580586429%_)))
                                                  (let ((_%tl8580886439%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8580686432%_)))
                                                        (_%hd8580786436%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8580686432%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8580886439%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8580286419%_)
                                                            (let ((_%e8580986442%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8580286419%_)))
                      (let ((_%tl8581186449%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8580986442%_)))
                            (_%hd8581086446%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8580986442%_))))
                        (_%__kont9176191762%_
                         _%tl8579986409%_
                         _%tl8581186449%_
                         _%hd8581086446%_
                         _%hd8580786436%_
                         _%hd8579586396%_
                         _%hd8571486673%_)))
                    (_%__kont9176391764%_
                     _%tl8579986409%_
                     _%tl8580286419%_
                     _%hd8580186416%_
                     _%hd8579586396%_
                     _%hd8571486673%_))
                (_%__kont9176391764%_
                 _%tl8579986409%_
                 _%tl8580286419%_
                 _%hd8580186416%_
                 _%hd8579586396%_
                 _%hd8571486673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont9176391764%_
                                                 _%tl8579986409%_
                                                 _%tl8580286419%_
                                                 _%hd8580186416%_
                                                 _%hd8579586396%_
                                                 _%hd8571486673%_))
                                            (_%__kont9176391764%_
                                             _%tl8579986409%_
                                             _%tl8580286419%_
                                             _%hd8580186416%_
                                             _%hd8579586396%_
                                             _%hd8571486673%_))
                                        (_%__kont9176391764%_
                                         _%tl8579986409%_
                                         _%tl8580286419%_
                                         _%hd8580186416%_
                                         _%hd8579586396%_
                                         _%hd8571486673%_))))
                                (_%__kont9176391764%_
                                 _%tl8579986409%_
                                 _%tl8580286419%_
                                 _%hd8580186416%_
                                 _%hd8579586396%_
                                 _%hd8571486673%_))))
                        (if (gx#stx-null? _%hd8579886406%_)
                            (_%__kont9176591766%_
                             _%tl8579986409%_
                             _%hd8579586396%_
                             _%hd8571486673%_)
                            (let () (declare (not safe)) (_%g8570685920%_))))))
                (let () (declare (not safe)) (_%g8570685920%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8570685920%_)))
                                            (if (equal? _%e8571986689%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl8571886686%_)
                                                    (let ((_%e8586186141%_
                                                           (gx#syntax-e
                                                            _%tl8571886686%_)))
                                                      (let ((_%tl8586386148%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8586186141%_)))
                    (_%hd8586286145%_
                     (let () (declare (not safe)) (##car _%e8586186141%_))))
                (if (gx#stx-pair? _%tl8586386148%_)
                    (let ((_%e8586486151%_ (gx#syntax-e _%tl8586386148%_)))
                      (let ((_%tl8586686158%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8586486151%_)))
                            (_%hd8586586155%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8586486151%_))))
                        (if (gx#stx-pair? _%hd8586586155%_)
                            (let ((_%e8586786161%_
                                   (gx#syntax-e _%hd8586586155%_)))
                              (let ((_%tl8586986168%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8586786161%_)))
                                    (_%hd8586886165%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8586786161%_))))
                                (_%__kont9176791768%_
                                 _%tl8586686158%_
                                 _%tl8586986168%_
                                 _%hd8586886165%_
                                 _%hd8586286145%_
                                 _%hd8571486673%_)))
                            (if (gx#stx-pair/null? _%hd8586286145%_)
                                (let ((_%__splice9177191772%_
                                       (gx#syntax-split-splice
                                        _%hd8586286145%_
                                        '0)))
                                  (let ((_%tl8588885964%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9177191772%_
                                            '1)))
                                        (_%target8588685961%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9177191772%_
                                            '0))))
                                    (if (gx#stx-null? _%tl8588885964%_)
                                        (_%__match9209992100%_
                                         _%e8571386669%_
                                         _%hd8571486673%_
                                         _%tl8571586676%_
                                         _%e8571686679%_
                                         _%hd8571786683%_
                                         _%tl8571886686%_
                                         _%e8571986689%_
                                         _%e8586186141%_
                                         _%hd8586286145%_
                                         _%tl8586386148%_
                                         _%__splice9177191772%_
                                         _%target8588685961%_
                                         _%tl8588885964%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8570685920%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8570685920%_))))))
                    (if (gx#stx-pair/null? _%hd8586286145%_)
                        (let ((_%__splice9177191772%_
                               (gx#syntax-split-splice _%hd8586286145%_ '0)))
                          (let ((_%tl8588885964%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9177191772%_ '1)))
                                (_%target8588685961%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9177191772%_ '0))))
                            (if (gx#stx-null? _%tl8588885964%_)
                                (_%__match9209992100%_
                                 _%e8571386669%_
                                 _%hd8571486673%_
                                 _%tl8571586676%_
                                 _%e8571686679%_
                                 _%hd8571786683%_
                                 _%tl8571886686%_
                                 _%e8571986689%_
                                 _%e8586186141%_
                                 _%hd8586286145%_
                                 _%tl8586386148%_
                                 _%__splice9177191772%_
                                 _%target8588685961%_
                                 _%tl8588885964%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8570685920%_)))))
                        (let () (declare (not safe)) (_%g8570685920%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8570685920%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8570685920%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g8570685920%_)))))
                          (let () (declare (not safe)) (_%g8570685920%_)))))
                  (let () (declare (not safe)) (_%g8570685920%_))))))))))
