(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g92207_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g92217_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx85167%_)
        (let* ((_%g8517185189%_
                (lambda (_%g8517285185%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8517285185%_)))
               (_%g8517085245%_
                (lambda (_%g8517285193%_)
                  (if (gx#stx-pair? _%g8517285193%_)
                      (let ((_%e8517585196%_ (gx#syntax-e _%g8517285193%_)))
                        (let ((_%hd8517685200%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8517585196%_)))
                              (_%tl8517785203%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8517585196%_))))
                          (if (gx#stx-pair? _%tl8517785203%_)
                              (let ((_%e8517885206%_
                                     (gx#syntax-e _%tl8517785203%_)))
                                (let ((_%hd8517985210%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8517885206%_)))
                                      (_%tl8518085213%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8517885206%_))))
                                  (if (gx#stx-pair? _%tl8518085213%_)
                                      (let ((_%e8518185216%_
                                             (gx#syntax-e _%tl8518085213%_)))
                                        (let ((_%hd8518285220%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8518185216%_)))
                                              (_%tl8518385223%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8518185216%_))))
                                          (if (gx#stx-null? _%tl8518385223%_)
                                              ((lambda (_%L85226%_ _%L85228%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L85228%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L85226%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8518285220%_
                                               _%hd8517985210%_)
                                              (_%g8517185189%_
                                               _%g8517285193%_))))
                                      (_%g8517185189%_ _%g8517285193%_))))
                              (_%g8517185189%_ _%g8517285193%_))))
                      (_%g8517185189%_ _%g8517285193%_)))))
          (_%g8517085245%_ _%$stx85167%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx85249%_)
        (let* ((_%g8525385267%_
                (lambda (_%g8525485263%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8525485263%_)))
               (_%g8525285308%_
                (lambda (_%g8525485271%_)
                  (if (gx#stx-pair? _%g8525485271%_)
                      (let ((_%e8525685274%_ (gx#syntax-e _%g8525485271%_)))
                        (let ((_%hd8525785278%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8525685274%_)))
                              (_%tl8525885281%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8525685274%_))))
                          (if (gx#stx-pair? _%tl8525885281%_)
                              (let ((_%e8525985284%_
                                     (gx#syntax-e _%tl8525885281%_)))
                                (let ((_%hd8526085288%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8525985284%_)))
                                      (_%tl8526185291%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8525985284%_))))
                                  (if (gx#stx-null? _%tl8526185291%_)
                                      ((lambda (_%L85294%_)
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
                                       (cons _%L85294%_
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
                                       _%hd8526085288%_)
                                      (_%g8525385267%_ _%g8525485271%_))))
                              (_%g8525385267%_ _%g8525485271%_))))
                      (_%g8525385267%_ _%g8525485271%_)))))
          (_%g8525285308%_ _%$stx85249%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx85312%_)
        (let* ((_%g8531685330%_
                (lambda (_%g8531785326%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8531785326%_)))
               (_%g8531585371%_
                (lambda (_%g8531785334%_)
                  (if (gx#stx-pair? _%g8531785334%_)
                      (let ((_%e8531985337%_ (gx#syntax-e _%g8531785334%_)))
                        (let ((_%hd8532085341%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8531985337%_)))
                              (_%tl8532185344%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8531985337%_))))
                          (if (gx#stx-pair? _%tl8532185344%_)
                              (let ((_%e8532285347%_
                                     (gx#syntax-e _%tl8532185344%_)))
                                (let ((_%hd8532385351%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8532285347%_)))
                                      (_%tl8532485354%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8532285347%_))))
                                  (if (gx#stx-null? _%tl8532485354%_)
                                      ((lambda (_%L85357%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L85357%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd8532385351%_)
                                      (_%g8531685330%_ _%g8531785334%_))))
                              (_%g8531685330%_ _%g8531785334%_))))
                      (_%g8531685330%_ _%g8531785334%_)))))
          (_%g8531585371%_ _%$stx85312%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx85375%_)
        (let* ((_%g8537985389%_
                (lambda (_%g8538085385%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8538085385%_)))
               (_%g8537885410%_
                (lambda (_%g8538085393%_)
                  (if (gx#stx-pair? _%g8538085393%_)
                      (let ((_%e8538185396%_ (gx#syntax-e _%g8538085393%_)))
                        (let ((_%hd8538285400%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8538185396%_)))
                              (_%tl8538385403%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8538185396%_))))
                          (if (gx#stx-null? _%tl8538385403%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g8537985389%_ _%g8538085393%_))))
                      (_%g8537985389%_ _%g8538085393%_)))))
          (_%g8537885410%_ _%$stx85375%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx85414%_)
        (let* ((_%g8541885436%_
                (lambda (_%g8541985432%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8541985432%_)))
               (_%g8541785491%_
                (lambda (_%g8541985440%_)
                  (if (gx#stx-pair? _%g8541985440%_)
                      (let ((_%e8542285443%_ (gx#syntax-e _%g8541985440%_)))
                        (let ((_%hd8542385447%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8542285443%_)))
                              (_%tl8542485450%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8542285443%_))))
                          (if (gx#stx-pair? _%tl8542485450%_)
                              (let ((_%e8542585453%_
                                     (gx#syntax-e _%tl8542485450%_)))
                                (let ((_%hd8542685457%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8542585453%_)))
                                      (_%tl8542785460%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8542585453%_))))
                                  (if (gx#stx-pair? _%tl8542785460%_)
                                      (let ((_%e8542885463%_
                                             (gx#syntax-e _%tl8542785460%_)))
                                        (let ((_%hd8542985467%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8542885463%_)))
                                              (_%tl8543085470%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8542885463%_))))
                                          (if (gx#stx-null? _%tl8543085470%_)
                                              ((lambda (_%L85473%_ _%L85475%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L85475%_
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
                 (cons (cons _%L85473%_
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
                                               _%hd8542985467%_
                                               _%hd8542685457%_)
                                              (_%g8541885436%_
                                               _%g8541985440%_))))
                                      (_%g8541885436%_ _%g8541985440%_))))
                              (_%g8541885436%_ _%g8541985440%_))))
                      (_%g8541885436%_ _%g8541985440%_)))))
          (_%g8541785491%_ _%$stx85414%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx85495%_)
        (let* ((_%g8549985517%_
                (lambda (_%g8550085513%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8550085513%_)))
               (_%g8549885572%_
                (lambda (_%g8550085521%_)
                  (if (gx#stx-pair? _%g8550085521%_)
                      (let ((_%e8550385524%_ (gx#syntax-e _%g8550085521%_)))
                        (let ((_%hd8550485528%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8550385524%_)))
                              (_%tl8550585531%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8550385524%_))))
                          (if (gx#stx-pair? _%tl8550585531%_)
                              (let ((_%e8550685534%_
                                     (gx#syntax-e _%tl8550585531%_)))
                                (let ((_%hd8550785538%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8550685534%_)))
                                      (_%tl8550885541%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8550685534%_))))
                                  (if (gx#stx-pair? _%tl8550885541%_)
                                      (let ((_%e8550985544%_
                                             (gx#syntax-e _%tl8550885541%_)))
                                        (let ((_%hd8551085548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8550985544%_)))
                                              (_%tl8551185551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8550985544%_))))
                                          (if (gx#stx-null? _%tl8551185551%_)
                                              ((lambda (_%L85554%_ _%L85556%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L85556%_
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
                                               (cons (cons _%L85554%_
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
                                               _%hd8551085548%_
                                               _%hd8550785538%_)
                                              (_%g8549985517%_
                                               _%g8550085521%_))))
                                      (_%g8549985517%_ _%g8550085521%_))))
                              (_%g8549985517%_ _%g8550085521%_))))
                      (_%g8549985517%_ _%g8550085521%_)))))
          (_%g8549885572%_ _%$stx85495%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx85576%_)
        (let* ((_%g8558085598%_
                (lambda (_%g8558185594%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8558185594%_)))
               (_%g8557985653%_
                (lambda (_%g8558185602%_)
                  (if (gx#stx-pair? _%g8558185602%_)
                      (let ((_%e8558485605%_ (gx#syntax-e _%g8558185602%_)))
                        (let ((_%hd8558585609%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8558485605%_)))
                              (_%tl8558685612%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8558485605%_))))
                          (if (gx#stx-pair? _%tl8558685612%_)
                              (let ((_%e8558785615%_
                                     (gx#syntax-e _%tl8558685612%_)))
                                (let ((_%hd8558885619%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8558785615%_)))
                                      (_%tl8558985622%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8558785615%_))))
                                  (if (gx#stx-pair? _%tl8558985622%_)
                                      (let ((_%e8559085625%_
                                             (gx#syntax-e _%tl8558985622%_)))
                                        (let ((_%hd8559185629%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8559085625%_)))
                                              (_%tl8559285632%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8559085625%_))))
                                          (if (gx#stx-null? _%tl8559285632%_)
                                              ((lambda (_%L85635%_ _%L85637%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L85637%_
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
                                               (cons (cons _%L85635%_
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
                                               _%hd8559185629%_
                                               _%hd8558885619%_)
                                              (_%g8558085598%_
                                               _%g8558185602%_))))
                                      (_%g8558085598%_ _%g8558185602%_))))
                              (_%g8558085598%_ _%g8558185602%_))))
                      (_%g8558085598%_ _%g8558185602%_)))))
          (_%g8557985653%_ _%$stx85576%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx85657%_)
        (let* ((_%g8566185672%_
                (lambda (_%g8566285668%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8566285668%_)))
               (_%g8566085701%_
                (lambda (_%g8566285676%_)
                  (if (gx#stx-pair? _%g8566285676%_)
                      (let ((_%e8566485679%_ (gx#syntax-e _%g8566285676%_)))
                        (let ((_%hd8566585683%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8566485679%_)))
                              (_%tl8566685686%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8566485679%_))))
                          ((lambda (_%L85689%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L85689%_)))
                           _%tl8566685686%_)))
                      (_%g8566185672%_ _%g8566285676%_)))))
          (_%g8566085701%_ _%$stx85657%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx85705%_)
        (let* ((_%__stx9175891759%_ _%$stx85705%_)
               (_%g8571685930%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9175891759%_))))
          (let ((_%__kont9176191762%_
                 (lambda (_%L86783%_
                          _%L86785%_
                          _%L86786%_
                          _%L86787%_
                          _%L86788%_)
                   (cons _%L86788%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8681886821%_
                                                     _%g8681986824%_)
                                              (cons _%g8681886821%_
                                                    _%g8681986824%_))
                                            '()
                                            _%L86786%_)
                                           (cons _%L86787%_
                                                 (cons _%L86785%_
                                                       (cons _%L86783%_
                                                             '())))))))))
                (_%__kont9176591766%_
                 (lambda (_%L86636%_ _%L86638%_ _%L86639%_ _%L86640%_)
                   (cons _%L86640%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8666386666%_
                                                     _%g8666486669%_)
                                              (cons _%g8666386666%_
                                                    _%g8666486669%_))
                                            '()
                                            _%L86638%_)
                                           (cons _%L86639%_
                                                 (cons _%L86636%_
                                                       (cons _%L86636%_
                                                             '())))))))))
                (_%__kont9176991770%_
                 (lambda (_%L86539%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L86539%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont9177191772%_
                 (lambda (_%L86462%_
                          _%L86464%_
                          _%L86465%_
                          _%L86466%_
                          _%L86467%_
                          _%L86468%_)
                   (cons _%L86468%_
                         (cons '2
                               (cons (cons (cons _%L86466%_
                                                 (cons _%L86465%_ '()))
                                           _%L86467%_)
                                     (cons _%L86464%_ _%L86462%_))))))
                (_%__kont9177391774%_
                 (lambda (_%L86343%_
                          _%L86345%_
                          _%L86346%_
                          _%L86347%_
                          _%L86348%_)
                   (cons _%L86348%_
                         (cons '2
                               (cons (cons (cons _%L86346%_
                                                 (cons _%L86346%_ '()))
                                           _%L86347%_)
                                     (cons _%L86345%_ _%L86343%_))))))
                (_%__kont9177591776%_
                 (lambda (_%L86260%_ _%L86262%_ _%L86263%_)
                   (cons _%L86263%_
                         (cons '3 (cons '() (cons _%L86262%_ _%L86260%_))))))
                (_%__kont9177791778%_
                 (lambda (_%L86181%_
                          _%L86183%_
                          _%L86184%_
                          _%L86185%_
                          _%L86186%_)
                   (cons _%L86186%_
                         (cons '3
                               (cons (cons _%L86184%_ _%L86185%_)
                                     (cons _%L86183%_ _%L86181%_))))))
                (_%__kont9177991780%_
                 (lambda (_%L86065%_
                          _%L86067%_
                          _%L86068%_
                          _%L86069%_
                          _%L86070%_
                          _%L86071%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L86068%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L86065%_ '())))
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
                                              (lambda (_%g8610586108%_
                                                       _%g8610686111%_)
                                                (cons _%g8610586108%_
                                                      _%g8610686111%_))
                                              '()
                                              _%L86070%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (__foldr1
                                              (lambda (_%g8610386114%_
                                                       _%g8610486117%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g8610386114%_ '())))
              _%g8610486117%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L86069%_))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L86067%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9210992110%_
                    (lambda (_%e8588685937%_
                             _%hd8588785941%_
                             _%tl8588885944%_
                             _%e8588985947%_
                             _%hd8589085951%_
                             _%tl8589185954%_
                             _%e8589285957%_
                             _%e8589385961%_
                             _%hd8589485965%_
                             _%tl8589585968%_
                             _%__splice9178191782%_
                             _%target8589685971%_
                             _%tl8589885974%_)
                      (letrec ((_%loop8589985977%_
                                (lambda (_%hd8589785981%_
                                         _%exprs8590385984%_
                                         _%names8590485986%_)
                                  (if (gx#stx-pair? _%hd8589785981%_)
                                      (let ((_%e8590085989%_
                                             (gx#syntax-e _%hd8589785981%_)))
                                        (let ((_%lp-tl8590285996%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8590085989%_)))
                                              (_%lp-hd8590185993%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8590085989%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd8590185993%_)
                                              (let ((_%e8591985999%_
                                                     (gx#syntax-e
                                                      _%lp-hd8590185993%_)))
                                                (let ((_%tl8592186006%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8591985999%_)))
                                                      (_%hd8592086003%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8591985999%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8592186006%_)
                                                      (let ((_%e8592286009%_
                                                             (gx#syntax-e
                                                              _%tl8592186006%_)))
                                                        (let ((_%tl8592486016%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8592286009%_)))
                      (_%hd8592386013%_
                       (let () (declare (not safe)) (##car _%e8592286009%_))))
                  (if (gx#stx-null? _%tl8592486016%_)
                      (_%loop8589985977%_
                       _%lp-tl8590285996%_
                       (cons _%hd8592386013%_ _%exprs8590385984%_)
                       (cons _%hd8592086003%_ _%names8590485986%_))
                      (let () (declare (not safe)) (_%g8571685930%_)))))
              (let () (declare (not safe)) (_%g8571685930%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g8571685930%_)))))
                                      (let ((_%names8590686022%_
                                             (reverse _%names8590485986%_))
                                            (_%exprs8590586019%_
                                             (reverse _%exprs8590385984%_)))
                                        (if (gx#stx-pair? _%tl8589585968%_)
                                            (let ((_%e8590786025%_
                                                   (gx#syntax-e
                                                    _%tl8589585968%_)))
                                              (let ((_%tl8590986032%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8590786025%_)))
                                                    (_%hd8590886029%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8590786025%_))))
                                                (if (gx#stx-null?
                                                     _%hd8590886029%_)
                                                    (if (gx#stx-pair?
                                                         _%tl8590986032%_)
                                                        (let ((_%e8591086035%_
                                                               (gx#syntax-e
                                                                _%tl8590986032%_)))
                                                          (let ((_%tl8591286042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8591086035%_)))
                        (_%hd8591186039%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8591086035%_))))
                    (if (gx#stx-pair? _%tl8591286042%_)
                        (let ((_%e8591386045%_ (gx#syntax-e _%tl8591286042%_)))
                          (let ((_%tl8591586052%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8591386045%_)))
                                (_%hd8591486049%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8591386045%_))))
                            (if (gx#stx-pair? _%tl8591586052%_)
                                (let ((_%e8591686055%_
                                       (gx#syntax-e _%tl8591586052%_)))
                                  (let ((_%tl8591886062%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8591686055%_)))
                                        (_%hd8591786059%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8591686055%_))))
                                    (if (gx#stx-null? _%tl8591886062%_)
                                        (_%__kont9177991780%_
                                         _%hd8591786059%_
                                         _%hd8591486049%_
                                         _%hd8591186039%_
                                         _%exprs8590586019%_
                                         _%names8590686022%_
                                         _%hd8588785941%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8571685930%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8571685930%_)))))
                        (let () (declare (not safe)) (_%g8571685930%_)))))
                (let () (declare (not safe)) (_%g8571685930%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8571685930%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8571685930%_))))))))
                        (_%loop8589985977%_ _%target8589685971%_ '() '()))))
                   (_%__match9188791888%_
                    (lambda (_%e8575886562%_
                             _%hd8575986566%_
                             _%tl8576086569%_
                             _%e8576186572%_
                             _%hd8576286576%_
                             _%tl8576386579%_
                             _%e8576486582%_
                             _%e8576586586%_
                             _%hd8576686590%_
                             _%tl8576786593%_
                             _%__splice9176791768%_
                             _%target8576886596%_
                             _%tl8577086599%_
                             _%e8577786602%_
                             _%hd8577886606%_
                             _%tl8577986609%_)
                      (letrec ((_%loop8577186612%_
                                (lambda (_%hd8576986616%_ _%exprs8577586619%_)
                                  (if (gx#stx-pair? _%hd8576986616%_)
                                      (let ((_%e8577286622%_
                                             (gx#syntax-e _%hd8576986616%_)))
                                        (let ((_%lp-tl8577486629%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8577286622%_)))
                                              (_%lp-hd8577386626%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8577286622%_))))
                                          (_%loop8577186612%_
                                           _%lp-tl8577486629%_
                                           (cons _%lp-hd8577386626%_
                                                 _%exprs8577586619%_))))
                                      (let ((_%exprs8577686632%_
                                             (reverse _%exprs8577586619%_)))
                                        (_%__kont9176591766%_
                                         _%hd8577886606%_
                                         _%exprs8577686632%_
                                         _%hd8576686590%_
                                         _%hd8575986566%_))))))
                        (_%loop8577186612%_ _%target8576886596%_ '()))))
                   (_%__match9184791848%_
                    (lambda (_%e8572386679%_
                             _%hd8572486683%_
                             _%tl8572586686%_
                             _%e8572686689%_
                             _%hd8572786693%_
                             _%tl8572886696%_
                             _%e8572986699%_
                             _%e8573086703%_
                             _%hd8573186707%_
                             _%tl8573286710%_
                             _%__splice9176391764%_
                             _%target8573386713%_
                             _%tl8573586716%_
                             _%e8574286719%_
                             _%hd8574386723%_
                             _%tl8574486726%_
                             _%e8574586729%_
                             _%hd8574686733%_
                             _%tl8574786736%_
                             _%e8574886739%_
                             _%hd8574986743%_
                             _%tl8575086746%_
                             _%e8575186749%_
                             _%hd8575286753%_
                             _%tl8575386756%_)
                      (letrec ((_%loop8573686759%_
                                (lambda (_%hd8573486763%_ _%exprs8574086766%_)
                                  (if (gx#stx-pair? _%hd8573486763%_)
                                      (let ((_%e8573786769%_
                                             (gx#syntax-e _%hd8573486763%_)))
                                        (let ((_%lp-tl8573986776%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8573786769%_)))
                                              (_%lp-hd8573886773%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8573786769%_))))
                                          (_%loop8573686759%_
                                           _%lp-tl8573986776%_
                                           (cons _%lp-hd8573886773%_
                                                 _%exprs8574086766%_))))
                                      (let ((_%exprs8574186779%_
                                             (reverse _%exprs8574086766%_)))
                                        (_%__kont9176191762%_
                                         _%hd8575286753%_
                                         _%hd8574986743%_
                                         _%exprs8574186779%_
                                         _%hd8573186707%_
                                         _%hd8572486683%_))))))
                        (_%loop8573686759%_ _%target8573386713%_ '())))))
              (if (gx#stx-pair? _%__stx9175891759%_)
                  (let ((_%e8572386679%_ (gx#syntax-e _%__stx9175891759%_)))
                    (let ((_%tl8572586686%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e8572386679%_)))
                          (_%hd8572486683%_
                           (let ()
                             (declare (not safe))
                             (##car _%e8572386679%_))))
                      (if (gx#stx-pair? _%tl8572586686%_)
                          (let ((_%e8572686689%_
                                 (gx#syntax-e _%tl8572586686%_)))
                            (let ((_%tl8572886696%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e8572686689%_)))
                                  (_%hd8572786693%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e8572686689%_))))
                              (if (gx#stx-datum? _%hd8572786693%_)
                                  (let ((_%e8572986699%_
                                         (gx#stx-e _%hd8572786693%_)))
                                    (if (equal? _%e8572986699%_ '1)
                                        (if (gx#stx-pair? _%tl8572886696%_)
                                            (let ((_%e8573086703%_
                                                   (gx#syntax-e
                                                    _%tl8572886696%_)))
                                              (let ((_%tl8573286710%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8573086703%_)))
                                                    (_%hd8573186707%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8573086703%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl8573286710%_)
                                                    (if (let ((__tmp92206
                                                               (gx#stx-length
                                                                _%tl8573286710%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp92206
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice9176391764%_
                       (gx#syntax-split-splice _%tl8573286710%_ '2)))
                  (let ((_%tl8573586716%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9176391764%_ '1)))
                        (_%target8573386713%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9176391764%_ '0))))
                    (if (gx#stx-pair? _%tl8573586716%_)
                        (let ((_%e8574286719%_ (gx#syntax-e _%tl8573586716%_)))
                          (let ((_%tl8574486726%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8574286719%_)))
                                (_%hd8574386723%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8574286719%_))))
                            (if (gx#stx-pair? _%hd8574386723%_)
                                (let ((_%e8574586729%_
                                       (gx#syntax-e _%hd8574386723%_)))
                                  (let ((_%tl8574786736%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8574586729%_)))
                                        (_%hd8574686733%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8574586729%_))))
                                    (if (gx#identifier? _%hd8574686733%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g92207_|
                                             _%hd8574686733%_)
                                            (if (gx#stx-pair? _%tl8574786736%_)
                                                (let ((_%e8574886739%_
                                                       (gx#syntax-e
                                                        _%tl8574786736%_)))
                                                  (let ((_%tl8575086746%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8574886739%_)))
                                                        (_%hd8574986743%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8574886739%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8575086746%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8574486726%_)
                                                            (let ((_%e8575186749%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8574486726%_)))
                      (let ((_%tl8575386756%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8575186749%_)))
                            (_%hd8575286753%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8575186749%_))))
                        (if (gx#stx-null? _%tl8575386756%_)
                            (_%__match9184791848%_
                             _%e8572386679%_
                             _%hd8572486683%_
                             _%tl8572586686%_
                             _%e8572686689%_
                             _%hd8572786693%_
                             _%tl8572886696%_
                             _%e8572986699%_
                             _%e8573086703%_
                             _%hd8573186707%_
                             _%tl8573286710%_
                             _%__splice9176391764%_
                             _%target8573386713%_
                             _%tl8573586716%_
                             _%e8574286719%_
                             _%hd8574386723%_
                             _%tl8574486726%_
                             _%e8574586729%_
                             _%hd8574686733%_
                             _%tl8574786736%_
                             _%e8574886739%_
                             _%hd8574986743%_
                             _%tl8575086746%_
                             _%e8575186749%_
                             _%hd8575286753%_
                             _%tl8575386756%_)
                            (if (let ((__tmp92208
                                       (gx#stx-length _%tl8573286710%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp92208 '1))
                                (let ((_%__splice9176791768%_
                                       (gx#syntax-split-splice
                                        _%tl8573286710%_
                                        '1)))
                                  (let ((_%tl8577086599%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9176791768%_
                                            '1)))
                                        (_%target8576886596%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9176791768%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl8577086599%_)
                                        (let ((_%e8577786602%_
                                               (gx#syntax-e _%tl8577086599%_)))
                                          (let ((_%tl8577986609%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e8577786602%_)))
                                                (_%hd8577886606%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e8577786602%_))))
                                            (if (gx#stx-null? _%tl8577986609%_)
                                                (_%__match9188791888%_
                                                 _%e8572386679%_
                                                 _%hd8572486683%_
                                                 _%tl8572586686%_
                                                 _%e8572686689%_
                                                 _%hd8572786693%_
                                                 _%tl8572886696%_
                                                 _%e8572986699%_
                                                 _%e8573086703%_
                                                 _%hd8573186707%_
                                                 _%tl8573286710%_
                                                 _%__splice9176791768%_
                                                 _%target8576886596%_
                                                 _%tl8577086599%_
                                                 _%e8577786602%_
                                                 _%hd8577886606%_
                                                 _%tl8577986609%_)
                                                (if (gx#stx-null?
                                                     _%tl8573286710%_)
                                                    (_%__kont9176991770%_
                                                     _%hd8573186707%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8571685930%_))))))
                                        (if (gx#stx-null? _%tl8573286710%_)
                                            (_%__kont9176991770%_
                                             _%hd8573186707%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8571685930%_))))))
                                (if (gx#stx-null? _%tl8573286710%_)
                                    (_%__kont9176991770%_ _%hd8573186707%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8571685930%_)))))))
                    (if (let ((__tmp92209 (gx#stx-length _%tl8573286710%_)))
                          (declare (not safe))
                          (##fx>= __tmp92209 '1))
                        (let ((_%__splice9176791768%_
                               (gx#syntax-split-splice _%tl8573286710%_ '1)))
                          (let ((_%tl8577086599%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9176791768%_ '1)))
                                (_%target8576886596%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9176791768%_ '0))))
                            (if (gx#stx-pair? _%tl8577086599%_)
                                (let ((_%e8577786602%_
                                       (gx#syntax-e _%tl8577086599%_)))
                                  (let ((_%tl8577986609%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8577786602%_)))
                                        (_%hd8577886606%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8577786602%_))))
                                    (if (gx#stx-null? _%tl8577986609%_)
                                        (_%__match9188791888%_
                                         _%e8572386679%_
                                         _%hd8572486683%_
                                         _%tl8572586686%_
                                         _%e8572686689%_
                                         _%hd8572786693%_
                                         _%tl8572886696%_
                                         _%e8572986699%_
                                         _%e8573086703%_
                                         _%hd8573186707%_
                                         _%tl8573286710%_
                                         _%__splice9176791768%_
                                         _%target8576886596%_
                                         _%tl8577086599%_
                                         _%e8577786602%_
                                         _%hd8577886606%_
                                         _%tl8577986609%_)
                                        (if (gx#stx-null? _%tl8573286710%_)
                                            (_%__kont9176991770%_
                                             _%hd8573186707%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8571685930%_))))))
                                (if (gx#stx-null? _%tl8573286710%_)
                                    (_%__kont9176991770%_ _%hd8573186707%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8571685930%_))))))
                        (if (gx#stx-null? _%tl8573286710%_)
                            (_%__kont9176991770%_ _%hd8573186707%_)
                            (let () (declare (not safe)) (_%g8571685930%_)))))
                (if (let ((__tmp92210 (gx#stx-length _%tl8573286710%_)))
                      (declare (not safe))
                      (##fx>= __tmp92210 '1))
                    (let ((_%__splice9176791768%_
                           (gx#syntax-split-splice _%tl8573286710%_ '1)))
                      (let ((_%tl8577086599%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9176791768%_ '1)))
                            (_%target8576886596%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9176791768%_ '0))))
                        (if (gx#stx-pair? _%tl8577086599%_)
                            (let ((_%e8577786602%_
                                   (gx#syntax-e _%tl8577086599%_)))
                              (let ((_%tl8577986609%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8577786602%_)))
                                    (_%hd8577886606%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8577786602%_))))
                                (if (gx#stx-null? _%tl8577986609%_)
                                    (_%__match9188791888%_
                                     _%e8572386679%_
                                     _%hd8572486683%_
                                     _%tl8572586686%_
                                     _%e8572686689%_
                                     _%hd8572786693%_
                                     _%tl8572886696%_
                                     _%e8572986699%_
                                     _%e8573086703%_
                                     _%hd8573186707%_
                                     _%tl8573286710%_
                                     _%__splice9176791768%_
                                     _%target8576886596%_
                                     _%tl8577086599%_
                                     _%e8577786602%_
                                     _%hd8577886606%_
                                     _%tl8577986609%_)
                                    (if (gx#stx-null? _%tl8573286710%_)
                                        (_%__kont9176991770%_ _%hd8573186707%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8571685930%_))))))
                            (if (gx#stx-null? _%tl8573286710%_)
                                (_%__kont9176991770%_ _%hd8573186707%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8571685930%_))))))
                    (if (gx#stx-null? _%tl8573286710%_)
                        (_%__kont9176991770%_ _%hd8573186707%_)
                        (let () (declare (not safe)) (_%g8571685930%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp92211
                                                           (gx#stx-length
                                                            _%tl8573286710%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp92211 '1))
                                                    (let ((_%__splice9176791768%_
                                                           (gx#syntax-split-splice
                                                            _%tl8573286710%_
                                                            '1)))
                                                      (let ((_%tl8577086599%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9176791768%_ '1)))
                    (_%target8576886596%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9176791768%_ '0))))
                (if (gx#stx-pair? _%tl8577086599%_)
                    (let ((_%e8577786602%_ (gx#syntax-e _%tl8577086599%_)))
                      (let ((_%tl8577986609%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8577786602%_)))
                            (_%hd8577886606%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8577786602%_))))
                        (if (gx#stx-null? _%tl8577986609%_)
                            (_%__match9188791888%_
                             _%e8572386679%_
                             _%hd8572486683%_
                             _%tl8572586686%_
                             _%e8572686689%_
                             _%hd8572786693%_
                             _%tl8572886696%_
                             _%e8572986699%_
                             _%e8573086703%_
                             _%hd8573186707%_
                             _%tl8573286710%_
                             _%__splice9176791768%_
                             _%target8576886596%_
                             _%tl8577086599%_
                             _%e8577786602%_
                             _%hd8577886606%_
                             _%tl8577986609%_)
                            (if (gx#stx-null? _%tl8573286710%_)
                                (_%__kont9176991770%_ _%hd8573186707%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8571685930%_))))))
                    (if (gx#stx-null? _%tl8573286710%_)
                        (_%__kont9176991770%_ _%hd8573186707%_)
                        (let () (declare (not safe)) (_%g8571685930%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8573286710%_)
                                                        (_%__kont9176991770%_
                                                         _%hd8573186707%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8571685930%_)))))
                                            (if (let ((__tmp92212
                                                       (gx#stx-length
                                                        _%tl8573286710%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp92212 '1))
                                                (let ((_%__splice9176791768%_
                                                       (gx#syntax-split-splice
                                                        _%tl8573286710%_
                                                        '1)))
                                                  (let ((_%tl8577086599%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9176791768%_
                                                            '1)))
                                                        (_%target8576886596%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9176791768%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl8577086599%_)
                                                        (let ((_%e8577786602%_
                                                               (gx#syntax-e
                                                                _%tl8577086599%_)))
                                                          (let ((_%tl8577986609%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8577786602%_)))
                        (_%hd8577886606%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8577786602%_))))
                    (if (gx#stx-null? _%tl8577986609%_)
                        (_%__match9188791888%_
                         _%e8572386679%_
                         _%hd8572486683%_
                         _%tl8572586686%_
                         _%e8572686689%_
                         _%hd8572786693%_
                         _%tl8572886696%_
                         _%e8572986699%_
                         _%e8573086703%_
                         _%hd8573186707%_
                         _%tl8573286710%_
                         _%__splice9176791768%_
                         _%target8576886596%_
                         _%tl8577086599%_
                         _%e8577786602%_
                         _%hd8577886606%_
                         _%tl8577986609%_)
                        (if (gx#stx-null? _%tl8573286710%_)
                            (_%__kont9176991770%_ _%hd8573186707%_)
                            (let () (declare (not safe)) (_%g8571685930%_))))))
                (if (gx#stx-null? _%tl8573286710%_)
                    (_%__kont9176991770%_ _%hd8573186707%_)
                    (let () (declare (not safe)) (_%g8571685930%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl8573286710%_)
                                                    (_%__kont9176991770%_
                                                     _%hd8573186707%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8571685930%_)))))
                                        (if (let ((__tmp92213
                                                   (gx#stx-length
                                                    _%tl8573286710%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp92213 '1))
                                            (let ((_%__splice9176791768%_
                                                   (gx#syntax-split-splice
                                                    _%tl8573286710%_
                                                    '1)))
                                              (let ((_%tl8577086599%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9176791768%_
                                                        '1)))
                                                    (_%target8576886596%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9176791768%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl8577086599%_)
                                                    (let ((_%e8577786602%_
                                                           (gx#syntax-e
                                                            _%tl8577086599%_)))
                                                      (let ((_%tl8577986609%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8577786602%_)))
                    (_%hd8577886606%_
                     (let () (declare (not safe)) (##car _%e8577786602%_))))
                (if (gx#stx-null? _%tl8577986609%_)
                    (_%__match9188791888%_
                     _%e8572386679%_
                     _%hd8572486683%_
                     _%tl8572586686%_
                     _%e8572686689%_
                     _%hd8572786693%_
                     _%tl8572886696%_
                     _%e8572986699%_
                     _%e8573086703%_
                     _%hd8573186707%_
                     _%tl8573286710%_
                     _%__splice9176791768%_
                     _%target8576886596%_
                     _%tl8577086599%_
                     _%e8577786602%_
                     _%hd8577886606%_
                     _%tl8577986609%_)
                    (if (gx#stx-null? _%tl8573286710%_)
                        (_%__kont9176991770%_ _%hd8573186707%_)
                        (let () (declare (not safe)) (_%g8571685930%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8573286710%_)
                                                        (_%__kont9176991770%_
                                                         _%hd8573186707%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8571685930%_))))))
                                            (if (gx#stx-null? _%tl8573286710%_)
                                                (_%__kont9176991770%_
                                                 _%hd8573186707%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8571685930%_)))))))
                                (if (let ((__tmp92214
                                           (gx#stx-length _%tl8573286710%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp92214 '1))
                                    (let ((_%__splice9176791768%_
                                           (gx#syntax-split-splice
                                            _%tl8573286710%_
                                            '1)))
                                      (let ((_%tl8577086599%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9176791768%_
                                                '1)))
                                            (_%target8576886596%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9176791768%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl8577086599%_)
                                            (let ((_%e8577786602%_
                                                   (gx#syntax-e
                                                    _%tl8577086599%_)))
                                              (let ((_%tl8577986609%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8577786602%_)))
                                                    (_%hd8577886606%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8577786602%_))))
                                                (if (gx#stx-null?
                                                     _%tl8577986609%_)
                                                    (_%__match9188791888%_
                                                     _%e8572386679%_
                                                     _%hd8572486683%_
                                                     _%tl8572586686%_
                                                     _%e8572686689%_
                                                     _%hd8572786693%_
                                                     _%tl8572886696%_
                                                     _%e8572986699%_
                                                     _%e8573086703%_
                                                     _%hd8573186707%_
                                                     _%tl8573286710%_
                                                     _%__splice9176791768%_
                                                     _%target8576886596%_
                                                     _%tl8577086599%_
                                                     _%e8577786602%_
                                                     _%hd8577886606%_
                                                     _%tl8577986609%_)
                                                    (if (gx#stx-null?
                                                         _%tl8573286710%_)
                                                        (_%__kont9176991770%_
                                                         _%hd8573186707%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8571685930%_))))))
                                            (if (gx#stx-null? _%tl8573286710%_)
                                                (_%__kont9176991770%_
                                                 _%hd8573186707%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8571685930%_))))))
                                    (if (gx#stx-null? _%tl8573286710%_)
                                        (_%__kont9176991770%_ _%hd8573186707%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8571685930%_)))))))
                        (if (let ((__tmp92215
                                   (gx#stx-length _%tl8573286710%_)))
                              (declare (not safe))
                              (##fx>= __tmp92215 '1))
                            (let ((_%__splice9176791768%_
                                   (gx#syntax-split-splice
                                    _%tl8573286710%_
                                    '1)))
                              (let ((_%tl8577086599%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9176791768%_
                                        '1)))
                                    (_%target8576886596%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9176791768%_
                                        '0))))
                                (if (gx#stx-pair? _%tl8577086599%_)
                                    (let ((_%e8577786602%_
                                           (gx#syntax-e _%tl8577086599%_)))
                                      (let ((_%tl8577986609%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8577786602%_)))
                                            (_%hd8577886606%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8577786602%_))))
                                        (if (gx#stx-null? _%tl8577986609%_)
                                            (_%__match9188791888%_
                                             _%e8572386679%_
                                             _%hd8572486683%_
                                             _%tl8572586686%_
                                             _%e8572686689%_
                                             _%hd8572786693%_
                                             _%tl8572886696%_
                                             _%e8572986699%_
                                             _%e8573086703%_
                                             _%hd8573186707%_
                                             _%tl8573286710%_
                                             _%__splice9176791768%_
                                             _%target8576886596%_
                                             _%tl8577086599%_
                                             _%e8577786602%_
                                             _%hd8577886606%_
                                             _%tl8577986609%_)
                                            (if (gx#stx-null? _%tl8573286710%_)
                                                (_%__kont9176991770%_
                                                 _%hd8573186707%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8571685930%_))))))
                                    (if (gx#stx-null? _%tl8573286710%_)
                                        (_%__kont9176991770%_ _%hd8573186707%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8571685930%_))))))
                            (if (gx#stx-null? _%tl8573286710%_)
                                (_%__kont9176991770%_ _%hd8573186707%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8571685930%_)))))))
                (if (let ((__tmp92216 (gx#stx-length _%tl8573286710%_)))
                      (declare (not safe))
                      (##fx>= __tmp92216 '1))
                    (let ((_%__splice9176791768%_
                           (gx#syntax-split-splice _%tl8573286710%_ '1)))
                      (let ((_%tl8577086599%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9176791768%_ '1)))
                            (_%target8576886596%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9176791768%_ '0))))
                        (if (gx#stx-pair? _%tl8577086599%_)
                            (let ((_%e8577786602%_
                                   (gx#syntax-e _%tl8577086599%_)))
                              (let ((_%tl8577986609%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8577786602%_)))
                                    (_%hd8577886606%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8577786602%_))))
                                (if (gx#stx-null? _%tl8577986609%_)
                                    (_%__match9188791888%_
                                     _%e8572386679%_
                                     _%hd8572486683%_
                                     _%tl8572586686%_
                                     _%e8572686689%_
                                     _%hd8572786693%_
                                     _%tl8572886696%_
                                     _%e8572986699%_
                                     _%e8573086703%_
                                     _%hd8573186707%_
                                     _%tl8573286710%_
                                     _%__splice9176791768%_
                                     _%target8576886596%_
                                     _%tl8577086599%_
                                     _%e8577786602%_
                                     _%hd8577886606%_
                                     _%tl8577986609%_)
                                    (if (gx#stx-null? _%tl8573286710%_)
                                        (_%__kont9176991770%_ _%hd8573186707%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8571685930%_))))))
                            (if (gx#stx-null? _%tl8573286710%_)
                                (_%__kont9176991770%_ _%hd8573186707%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8571685930%_))))))
                    (if (gx#stx-null? _%tl8573286710%_)
                        (_%__kont9176991770%_ _%hd8573186707%_)
                        (let () (declare (not safe)) (_%g8571685930%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8573286710%_)
                                                        (_%__kont9176991770%_
                                                         _%hd8573186707%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8571685930%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8571685930%_)))
                                        (if (equal? _%e8572986699%_ '2)
                                            (if (gx#stx-pair? _%tl8572886696%_)
                                                (let ((_%e8580486402%_
                                                       (gx#syntax-e
                                                        _%tl8572886696%_)))
                                                  (let ((_%tl8580686409%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8580486402%_)))
                                                        (_%hd8580586406%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8580486402%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl8580686409%_)
                                                        (let ((_%e8580786412%_
                                                               (gx#syntax-e
                                                                _%tl8580686409%_)))
                                                          (let ((_%tl8580986419%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8580786412%_)))
                        (_%hd8580886416%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8580786412%_))))
                    (if (gx#stx-pair? _%hd8580886416%_)
                        (let ((_%e8581086422%_ (gx#syntax-e _%hd8580886416%_)))
                          (let ((_%tl8581286429%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8581086422%_)))
                                (_%hd8581186426%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8581086422%_))))
                            (if (gx#stx-pair? _%hd8581186426%_)
                                (let ((_%e8581386432%_
                                       (gx#syntax-e _%hd8581186426%_)))
                                  (let ((_%tl8581586439%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8581386432%_)))
                                        (_%hd8581486436%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8581386432%_))))
                                    (if (gx#identifier? _%hd8581486436%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g92217_|
                                             _%hd8581486436%_)
                                            (if (gx#stx-pair? _%tl8581586439%_)
                                                (let ((_%e8581686442%_
                                                       (gx#syntax-e
                                                        _%tl8581586439%_)))
                                                  (let ((_%tl8581886449%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8581686442%_)))
                                                        (_%hd8581786446%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8581686442%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8581886449%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8581286429%_)
                                                            (let ((_%e8581986452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8581286429%_)))
                      (let ((_%tl8582186459%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8581986452%_)))
                            (_%hd8582086456%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8581986452%_))))
                        (_%__kont9177191772%_
                         _%tl8580986419%_
                         _%tl8582186459%_
                         _%hd8582086456%_
                         _%hd8581786446%_
                         _%hd8580586406%_
                         _%hd8572486683%_)))
                    (_%__kont9177391774%_
                     _%tl8580986419%_
                     _%tl8581286429%_
                     _%hd8581186426%_
                     _%hd8580586406%_
                     _%hd8572486683%_))
                (_%__kont9177391774%_
                 _%tl8580986419%_
                 _%tl8581286429%_
                 _%hd8581186426%_
                 _%hd8580586406%_
                 _%hd8572486683%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont9177391774%_
                                                 _%tl8580986419%_
                                                 _%tl8581286429%_
                                                 _%hd8581186426%_
                                                 _%hd8580586406%_
                                                 _%hd8572486683%_))
                                            (_%__kont9177391774%_
                                             _%tl8580986419%_
                                             _%tl8581286429%_
                                             _%hd8581186426%_
                                             _%hd8580586406%_
                                             _%hd8572486683%_))
                                        (_%__kont9177391774%_
                                         _%tl8580986419%_
                                         _%tl8581286429%_
                                         _%hd8581186426%_
                                         _%hd8580586406%_
                                         _%hd8572486683%_))))
                                (_%__kont9177391774%_
                                 _%tl8580986419%_
                                 _%tl8581286429%_
                                 _%hd8581186426%_
                                 _%hd8580586406%_
                                 _%hd8572486683%_))))
                        (if (gx#stx-null? _%hd8580886416%_)
                            (_%__kont9177591776%_
                             _%tl8580986419%_
                             _%hd8580586406%_
                             _%hd8572486683%_)
                            (let () (declare (not safe)) (_%g8571685930%_))))))
                (let () (declare (not safe)) (_%g8571685930%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8571685930%_)))
                                            (if (equal? _%e8572986699%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl8572886696%_)
                                                    (let ((_%e8587186151%_
                                                           (gx#syntax-e
                                                            _%tl8572886696%_)))
                                                      (let ((_%tl8587386158%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8587186151%_)))
                    (_%hd8587286155%_
                     (let () (declare (not safe)) (##car _%e8587186151%_))))
                (if (gx#stx-pair? _%tl8587386158%_)
                    (let ((_%e8587486161%_ (gx#syntax-e _%tl8587386158%_)))
                      (let ((_%tl8587686168%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8587486161%_)))
                            (_%hd8587586165%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8587486161%_))))
                        (if (gx#stx-pair? _%hd8587586165%_)
                            (let ((_%e8587786171%_
                                   (gx#syntax-e _%hd8587586165%_)))
                              (let ((_%tl8587986178%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8587786171%_)))
                                    (_%hd8587886175%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8587786171%_))))
                                (_%__kont9177791778%_
                                 _%tl8587686168%_
                                 _%tl8587986178%_
                                 _%hd8587886175%_
                                 _%hd8587286155%_
                                 _%hd8572486683%_)))
                            (if (gx#stx-pair/null? _%hd8587286155%_)
                                (let ((_%__splice9178191782%_
                                       (gx#syntax-split-splice
                                        _%hd8587286155%_
                                        '0)))
                                  (let ((_%tl8589885974%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9178191782%_
                                            '1)))
                                        (_%target8589685971%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9178191782%_
                                            '0))))
                                    (if (gx#stx-null? _%tl8589885974%_)
                                        (_%__match9210992110%_
                                         _%e8572386679%_
                                         _%hd8572486683%_
                                         _%tl8572586686%_
                                         _%e8572686689%_
                                         _%hd8572786693%_
                                         _%tl8572886696%_
                                         _%e8572986699%_
                                         _%e8587186151%_
                                         _%hd8587286155%_
                                         _%tl8587386158%_
                                         _%__splice9178191782%_
                                         _%target8589685971%_
                                         _%tl8589885974%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8571685930%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8571685930%_))))))
                    (if (gx#stx-pair/null? _%hd8587286155%_)
                        (let ((_%__splice9178191782%_
                               (gx#syntax-split-splice _%hd8587286155%_ '0)))
                          (let ((_%tl8589885974%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9178191782%_ '1)))
                                (_%target8589685971%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9178191782%_ '0))))
                            (if (gx#stx-null? _%tl8589885974%_)
                                (_%__match9210992110%_
                                 _%e8572386679%_
                                 _%hd8572486683%_
                                 _%tl8572586686%_
                                 _%e8572686689%_
                                 _%hd8572786693%_
                                 _%tl8572886696%_
                                 _%e8572986699%_
                                 _%e8587186151%_
                                 _%hd8587286155%_
                                 _%tl8587386158%_
                                 _%__splice9178191782%_
                                 _%target8589685971%_
                                 _%tl8589885974%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8571685930%_)))))
                        (let () (declare (not safe)) (_%g8571685930%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8571685930%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8571685930%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g8571685930%_)))))
                          (let () (declare (not safe)) (_%g8571685930%_)))))
                  (let () (declare (not safe)) (_%g8571685930%_))))))))))
