(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g92296_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g92306_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx85256%_)
        (let* ((_%g8526085278%_
                (lambda (_%g8526185274%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8526185274%_)))
               (_%g8525985334%_
                (lambda (_%g8526185282%_)
                  (if (gx#stx-pair? _%g8526185282%_)
                      (let ((_%e8526485285%_ (gx#syntax-e _%g8526185282%_)))
                        (let ((_%hd8526585289%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8526485285%_)))
                              (_%tl8526685292%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8526485285%_))))
                          (if (gx#stx-pair? _%tl8526685292%_)
                              (let ((_%e8526785295%_
                                     (gx#syntax-e _%tl8526685292%_)))
                                (let ((_%hd8526885299%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8526785295%_)))
                                      (_%tl8526985302%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8526785295%_))))
                                  (if (gx#stx-pair? _%tl8526985302%_)
                                      (let ((_%e8527085305%_
                                             (gx#syntax-e _%tl8526985302%_)))
                                        (let ((_%hd8527185309%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8527085305%_)))
                                              (_%tl8527285312%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8527085305%_))))
                                          (if (gx#stx-null? _%tl8527285312%_)
                                              ((lambda (_%L85315%_ _%L85317%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L85317%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L85315%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8527185309%_
                                               _%hd8526885299%_)
                                              (_%g8526085278%_
                                               _%g8526185282%_))))
                                      (_%g8526085278%_ _%g8526185282%_))))
                              (_%g8526085278%_ _%g8526185282%_))))
                      (_%g8526085278%_ _%g8526185282%_)))))
          (_%g8525985334%_ _%$stx85256%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx85338%_)
        (let* ((_%g8534285356%_
                (lambda (_%g8534385352%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8534385352%_)))
               (_%g8534185397%_
                (lambda (_%g8534385360%_)
                  (if (gx#stx-pair? _%g8534385360%_)
                      (let ((_%e8534585363%_ (gx#syntax-e _%g8534385360%_)))
                        (let ((_%hd8534685367%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8534585363%_)))
                              (_%tl8534785370%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8534585363%_))))
                          (if (gx#stx-pair? _%tl8534785370%_)
                              (let ((_%e8534885373%_
                                     (gx#syntax-e _%tl8534785370%_)))
                                (let ((_%hd8534985377%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8534885373%_)))
                                      (_%tl8535085380%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8534885373%_))))
                                  (if (gx#stx-null? _%tl8535085380%_)
                                      ((lambda (_%L85383%_)
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
                                       (cons _%L85383%_
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
                                       _%hd8534985377%_)
                                      (_%g8534285356%_ _%g8534385360%_))))
                              (_%g8534285356%_ _%g8534385360%_))))
                      (_%g8534285356%_ _%g8534385360%_)))))
          (_%g8534185397%_ _%$stx85338%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx85401%_)
        (let* ((_%g8540585419%_
                (lambda (_%g8540685415%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8540685415%_)))
               (_%g8540485460%_
                (lambda (_%g8540685423%_)
                  (if (gx#stx-pair? _%g8540685423%_)
                      (let ((_%e8540885426%_ (gx#syntax-e _%g8540685423%_)))
                        (let ((_%hd8540985430%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8540885426%_)))
                              (_%tl8541085433%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8540885426%_))))
                          (if (gx#stx-pair? _%tl8541085433%_)
                              (let ((_%e8541185436%_
                                     (gx#syntax-e _%tl8541085433%_)))
                                (let ((_%hd8541285440%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8541185436%_)))
                                      (_%tl8541385443%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8541185436%_))))
                                  (if (gx#stx-null? _%tl8541385443%_)
                                      ((lambda (_%L85446%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L85446%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd8541285440%_)
                                      (_%g8540585419%_ _%g8540685423%_))))
                              (_%g8540585419%_ _%g8540685423%_))))
                      (_%g8540585419%_ _%g8540685423%_)))))
          (_%g8540485460%_ _%$stx85401%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx85464%_)
        (let* ((_%g8546885478%_
                (lambda (_%g8546985474%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8546985474%_)))
               (_%g8546785499%_
                (lambda (_%g8546985482%_)
                  (if (gx#stx-pair? _%g8546985482%_)
                      (let ((_%e8547085485%_ (gx#syntax-e _%g8546985482%_)))
                        (let ((_%hd8547185489%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8547085485%_)))
                              (_%tl8547285492%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8547085485%_))))
                          (if (gx#stx-null? _%tl8547285492%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g8546885478%_ _%g8546985482%_))))
                      (_%g8546885478%_ _%g8546985482%_)))))
          (_%g8546785499%_ _%$stx85464%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx85503%_)
        (let* ((_%g8550785525%_
                (lambda (_%g8550885521%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8550885521%_)))
               (_%g8550685580%_
                (lambda (_%g8550885529%_)
                  (if (gx#stx-pair? _%g8550885529%_)
                      (let ((_%e8551185532%_ (gx#syntax-e _%g8550885529%_)))
                        (let ((_%hd8551285536%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8551185532%_)))
                              (_%tl8551385539%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8551185532%_))))
                          (if (gx#stx-pair? _%tl8551385539%_)
                              (let ((_%e8551485542%_
                                     (gx#syntax-e _%tl8551385539%_)))
                                (let ((_%hd8551585546%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8551485542%_)))
                                      (_%tl8551685549%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8551485542%_))))
                                  (if (gx#stx-pair? _%tl8551685549%_)
                                      (let ((_%e8551785552%_
                                             (gx#syntax-e _%tl8551685549%_)))
                                        (let ((_%hd8551885556%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8551785552%_)))
                                              (_%tl8551985559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8551785552%_))))
                                          (if (gx#stx-null? _%tl8551985559%_)
                                              ((lambda (_%L85562%_ _%L85564%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L85564%_
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
                 (cons (cons _%L85562%_
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
                                               _%hd8551885556%_
                                               _%hd8551585546%_)
                                              (_%g8550785525%_
                                               _%g8550885529%_))))
                                      (_%g8550785525%_ _%g8550885529%_))))
                              (_%g8550785525%_ _%g8550885529%_))))
                      (_%g8550785525%_ _%g8550885529%_)))))
          (_%g8550685580%_ _%$stx85503%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx85584%_)
        (let* ((_%g8558885606%_
                (lambda (_%g8558985602%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8558985602%_)))
               (_%g8558785661%_
                (lambda (_%g8558985610%_)
                  (if (gx#stx-pair? _%g8558985610%_)
                      (let ((_%e8559285613%_ (gx#syntax-e _%g8558985610%_)))
                        (let ((_%hd8559385617%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8559285613%_)))
                              (_%tl8559485620%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8559285613%_))))
                          (if (gx#stx-pair? _%tl8559485620%_)
                              (let ((_%e8559585623%_
                                     (gx#syntax-e _%tl8559485620%_)))
                                (let ((_%hd8559685627%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8559585623%_)))
                                      (_%tl8559785630%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8559585623%_))))
                                  (if (gx#stx-pair? _%tl8559785630%_)
                                      (let ((_%e8559885633%_
                                             (gx#syntax-e _%tl8559785630%_)))
                                        (let ((_%hd8559985637%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8559885633%_)))
                                              (_%tl8560085640%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8559885633%_))))
                                          (if (gx#stx-null? _%tl8560085640%_)
                                              ((lambda (_%L85643%_ _%L85645%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L85645%_
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
                                               (cons (cons _%L85643%_
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
                                               _%hd8559985637%_
                                               _%hd8559685627%_)
                                              (_%g8558885606%_
                                               _%g8558985610%_))))
                                      (_%g8558885606%_ _%g8558985610%_))))
                              (_%g8558885606%_ _%g8558985610%_))))
                      (_%g8558885606%_ _%g8558985610%_)))))
          (_%g8558785661%_ _%$stx85584%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx85665%_)
        (let* ((_%g8566985687%_
                (lambda (_%g8567085683%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8567085683%_)))
               (_%g8566885742%_
                (lambda (_%g8567085691%_)
                  (if (gx#stx-pair? _%g8567085691%_)
                      (let ((_%e8567385694%_ (gx#syntax-e _%g8567085691%_)))
                        (let ((_%hd8567485698%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8567385694%_)))
                              (_%tl8567585701%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8567385694%_))))
                          (if (gx#stx-pair? _%tl8567585701%_)
                              (let ((_%e8567685704%_
                                     (gx#syntax-e _%tl8567585701%_)))
                                (let ((_%hd8567785708%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8567685704%_)))
                                      (_%tl8567885711%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8567685704%_))))
                                  (if (gx#stx-pair? _%tl8567885711%_)
                                      (let ((_%e8567985714%_
                                             (gx#syntax-e _%tl8567885711%_)))
                                        (let ((_%hd8568085718%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8567985714%_)))
                                              (_%tl8568185721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8567985714%_))))
                                          (if (gx#stx-null? _%tl8568185721%_)
                                              ((lambda (_%L85724%_ _%L85726%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L85726%_
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
                                               (cons (cons _%L85724%_
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
                                               _%hd8568085718%_
                                               _%hd8567785708%_)
                                              (_%g8566985687%_
                                               _%g8567085691%_))))
                                      (_%g8566985687%_ _%g8567085691%_))))
                              (_%g8566985687%_ _%g8567085691%_))))
                      (_%g8566985687%_ _%g8567085691%_)))))
          (_%g8566885742%_ _%$stx85665%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx85746%_)
        (let* ((_%g8575085761%_
                (lambda (_%g8575185757%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8575185757%_)))
               (_%g8574985790%_
                (lambda (_%g8575185765%_)
                  (if (gx#stx-pair? _%g8575185765%_)
                      (let ((_%e8575385768%_ (gx#syntax-e _%g8575185765%_)))
                        (let ((_%hd8575485772%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8575385768%_)))
                              (_%tl8575585775%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8575385768%_))))
                          ((lambda (_%L85778%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L85778%_)))
                           _%tl8575585775%_)))
                      (_%g8575085761%_ _%g8575185765%_)))))
          (_%g8574985790%_ _%$stx85746%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx85794%_)
        (let* ((_%__stx9184791848%_ _%$stx85794%_)
               (_%g8580586019%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9184791848%_))))
          (let ((_%__kont9185091851%_
                 (lambda (_%L86872%_
                          _%L86874%_
                          _%L86875%_
                          _%L86876%_
                          _%L86877%_)
                   (cons _%L86877%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8690786910%_
                                                     _%g8690886913%_)
                                              (cons _%g8690786910%_
                                                    _%g8690886913%_))
                                            '()
                                            _%L86875%_)
                                           (cons _%L86876%_
                                                 (cons _%L86874%_
                                                       (cons _%L86872%_
                                                             '())))))))))
                (_%__kont9185491855%_
                 (lambda (_%L86725%_ _%L86727%_ _%L86728%_ _%L86729%_)
                   (cons _%L86729%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8675286755%_
                                                     _%g8675386758%_)
                                              (cons _%g8675286755%_
                                                    _%g8675386758%_))
                                            '()
                                            _%L86727%_)
                                           (cons _%L86728%_
                                                 (cons _%L86725%_
                                                       (cons _%L86725%_
                                                             '())))))))))
                (_%__kont9185891859%_
                 (lambda (_%L86628%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L86628%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont9186091861%_
                 (lambda (_%L86551%_
                          _%L86553%_
                          _%L86554%_
                          _%L86555%_
                          _%L86556%_
                          _%L86557%_)
                   (cons _%L86557%_
                         (cons '2
                               (cons (cons (cons _%L86555%_
                                                 (cons _%L86554%_ '()))
                                           _%L86556%_)
                                     (cons _%L86553%_ _%L86551%_))))))
                (_%__kont9186291863%_
                 (lambda (_%L86432%_
                          _%L86434%_
                          _%L86435%_
                          _%L86436%_
                          _%L86437%_)
                   (cons _%L86437%_
                         (cons '2
                               (cons (cons (cons _%L86435%_
                                                 (cons _%L86435%_ '()))
                                           _%L86436%_)
                                     (cons _%L86434%_ _%L86432%_))))))
                (_%__kont9186491865%_
                 (lambda (_%L86349%_ _%L86351%_ _%L86352%_)
                   (cons _%L86352%_
                         (cons '3 (cons '() (cons _%L86351%_ _%L86349%_))))))
                (_%__kont9186691867%_
                 (lambda (_%L86270%_
                          _%L86272%_
                          _%L86273%_
                          _%L86274%_
                          _%L86275%_)
                   (cons _%L86275%_
                         (cons '3
                               (cons (cons _%L86273%_ _%L86274%_)
                                     (cons _%L86272%_ _%L86270%_))))))
                (_%__kont9186891869%_
                 (lambda (_%L86154%_
                          _%L86156%_
                          _%L86157%_
                          _%L86158%_
                          _%L86159%_
                          _%L86160%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L86157%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L86154%_ '())))
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
                                              (lambda (_%g8619486197%_
                                                       _%g8619586200%_)
                                                (cons _%g8619486197%_
                                                      _%g8619586200%_))
                                              '()
                                              _%L86159%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (__foldr1
                                              (lambda (_%g8619286203%_
                                                       _%g8619386206%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g8619286203%_ '())))
              _%g8619386206%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L86158%_))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L86156%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9219892199%_
                    (lambda (_%e8597586026%_
                             _%hd8597686030%_
                             _%tl8597786033%_
                             _%e8597886036%_
                             _%hd8597986040%_
                             _%tl8598086043%_
                             _%e8598186046%_
                             _%e8598286050%_
                             _%hd8598386054%_
                             _%tl8598486057%_
                             _%__splice9187091871%_
                             _%target8598586060%_
                             _%tl8598786063%_)
                      (letrec ((_%loop8598886066%_
                                (lambda (_%hd8598686070%_
                                         _%exprs8599286073%_
                                         _%names8599386075%_)
                                  (if (gx#stx-pair? _%hd8598686070%_)
                                      (let ((_%e8598986078%_
                                             (gx#syntax-e _%hd8598686070%_)))
                                        (let ((_%lp-tl8599186085%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8598986078%_)))
                                              (_%lp-hd8599086082%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8598986078%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd8599086082%_)
                                              (let ((_%e8600886088%_
                                                     (gx#syntax-e
                                                      _%lp-hd8599086082%_)))
                                                (let ((_%tl8601086095%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8600886088%_)))
                                                      (_%hd8600986092%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8600886088%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8601086095%_)
                                                      (let ((_%e8601186098%_
                                                             (gx#syntax-e
                                                              _%tl8601086095%_)))
                                                        (let ((_%tl8601386105%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8601186098%_)))
                      (_%hd8601286102%_
                       (let () (declare (not safe)) (##car _%e8601186098%_))))
                  (if (gx#stx-null? _%tl8601386105%_)
                      (_%loop8598886066%_
                       _%lp-tl8599186085%_
                       (cons _%hd8601286102%_ _%exprs8599286073%_)
                       (cons _%hd8600986092%_ _%names8599386075%_))
                      (let () (declare (not safe)) (_%g8580586019%_)))))
              (let () (declare (not safe)) (_%g8580586019%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g8580586019%_)))))
                                      (let ((_%names8599586111%_
                                             (reverse _%names8599386075%_))
                                            (_%exprs8599486108%_
                                             (reverse _%exprs8599286073%_)))
                                        (if (gx#stx-pair? _%tl8598486057%_)
                                            (let ((_%e8599686114%_
                                                   (gx#syntax-e
                                                    _%tl8598486057%_)))
                                              (let ((_%tl8599886121%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8599686114%_)))
                                                    (_%hd8599786118%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8599686114%_))))
                                                (if (gx#stx-null?
                                                     _%hd8599786118%_)
                                                    (if (gx#stx-pair?
                                                         _%tl8599886121%_)
                                                        (let ((_%e8599986124%_
                                                               (gx#syntax-e
                                                                _%tl8599886121%_)))
                                                          (let ((_%tl8600186131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8599986124%_)))
                        (_%hd8600086128%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8599986124%_))))
                    (if (gx#stx-pair? _%tl8600186131%_)
                        (let ((_%e8600286134%_ (gx#syntax-e _%tl8600186131%_)))
                          (let ((_%tl8600486141%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8600286134%_)))
                                (_%hd8600386138%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8600286134%_))))
                            (if (gx#stx-pair? _%tl8600486141%_)
                                (let ((_%e8600586144%_
                                       (gx#syntax-e _%tl8600486141%_)))
                                  (let ((_%tl8600786151%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8600586144%_)))
                                        (_%hd8600686148%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8600586144%_))))
                                    (if (gx#stx-null? _%tl8600786151%_)
                                        (_%__kont9186891869%_
                                         _%hd8600686148%_
                                         _%hd8600386138%_
                                         _%hd8600086128%_
                                         _%exprs8599486108%_
                                         _%names8599586111%_
                                         _%hd8597686030%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8580586019%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8580586019%_)))))
                        (let () (declare (not safe)) (_%g8580586019%_)))))
                (let () (declare (not safe)) (_%g8580586019%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8580586019%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8580586019%_))))))))
                        (_%loop8598886066%_ _%target8598586060%_ '() '()))))
                   (_%__match9197691977%_
                    (lambda (_%e8584786651%_
                             _%hd8584886655%_
                             _%tl8584986658%_
                             _%e8585086661%_
                             _%hd8585186665%_
                             _%tl8585286668%_
                             _%e8585386671%_
                             _%e8585486675%_
                             _%hd8585586679%_
                             _%tl8585686682%_
                             _%__splice9185691857%_
                             _%target8585786685%_
                             _%tl8585986688%_
                             _%e8586686691%_
                             _%hd8586786695%_
                             _%tl8586886698%_)
                      (letrec ((_%loop8586086701%_
                                (lambda (_%hd8585886705%_ _%exprs8586486708%_)
                                  (if (gx#stx-pair? _%hd8585886705%_)
                                      (let ((_%e8586186711%_
                                             (gx#syntax-e _%hd8585886705%_)))
                                        (let ((_%lp-tl8586386718%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8586186711%_)))
                                              (_%lp-hd8586286715%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8586186711%_))))
                                          (_%loop8586086701%_
                                           _%lp-tl8586386718%_
                                           (cons _%lp-hd8586286715%_
                                                 _%exprs8586486708%_))))
                                      (let ((_%exprs8586586721%_
                                             (reverse _%exprs8586486708%_)))
                                        (_%__kont9185491855%_
                                         _%hd8586786695%_
                                         _%exprs8586586721%_
                                         _%hd8585586679%_
                                         _%hd8584886655%_))))))
                        (_%loop8586086701%_ _%target8585786685%_ '()))))
                   (_%__match9193691937%_
                    (lambda (_%e8581286768%_
                             _%hd8581386772%_
                             _%tl8581486775%_
                             _%e8581586778%_
                             _%hd8581686782%_
                             _%tl8581786785%_
                             _%e8581886788%_
                             _%e8581986792%_
                             _%hd8582086796%_
                             _%tl8582186799%_
                             _%__splice9185291853%_
                             _%target8582286802%_
                             _%tl8582486805%_
                             _%e8583186808%_
                             _%hd8583286812%_
                             _%tl8583386815%_
                             _%e8583486818%_
                             _%hd8583586822%_
                             _%tl8583686825%_
                             _%e8583786828%_
                             _%hd8583886832%_
                             _%tl8583986835%_
                             _%e8584086838%_
                             _%hd8584186842%_
                             _%tl8584286845%_)
                      (letrec ((_%loop8582586848%_
                                (lambda (_%hd8582386852%_ _%exprs8582986855%_)
                                  (if (gx#stx-pair? _%hd8582386852%_)
                                      (let ((_%e8582686858%_
                                             (gx#syntax-e _%hd8582386852%_)))
                                        (let ((_%lp-tl8582886865%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8582686858%_)))
                                              (_%lp-hd8582786862%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8582686858%_))))
                                          (_%loop8582586848%_
                                           _%lp-tl8582886865%_
                                           (cons _%lp-hd8582786862%_
                                                 _%exprs8582986855%_))))
                                      (let ((_%exprs8583086868%_
                                             (reverse _%exprs8582986855%_)))
                                        (_%__kont9185091851%_
                                         _%hd8584186842%_
                                         _%hd8583886832%_
                                         _%exprs8583086868%_
                                         _%hd8582086796%_
                                         _%hd8581386772%_))))))
                        (_%loop8582586848%_ _%target8582286802%_ '())))))
              (if (gx#stx-pair? _%__stx9184791848%_)
                  (let ((_%e8581286768%_ (gx#syntax-e _%__stx9184791848%_)))
                    (let ((_%tl8581486775%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e8581286768%_)))
                          (_%hd8581386772%_
                           (let ()
                             (declare (not safe))
                             (##car _%e8581286768%_))))
                      (if (gx#stx-pair? _%tl8581486775%_)
                          (let ((_%e8581586778%_
                                 (gx#syntax-e _%tl8581486775%_)))
                            (let ((_%tl8581786785%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e8581586778%_)))
                                  (_%hd8581686782%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e8581586778%_))))
                              (if (gx#stx-datum? _%hd8581686782%_)
                                  (let ((_%e8581886788%_
                                         (gx#stx-e _%hd8581686782%_)))
                                    (if (equal? _%e8581886788%_ '1)
                                        (if (gx#stx-pair? _%tl8581786785%_)
                                            (let ((_%e8581986792%_
                                                   (gx#syntax-e
                                                    _%tl8581786785%_)))
                                              (let ((_%tl8582186799%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8581986792%_)))
                                                    (_%hd8582086796%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8581986792%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl8582186799%_)
                                                    (if (let ((__tmp92295
                                                               (gx#stx-length
                                                                _%tl8582186799%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp92295
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice9185291853%_
                       (gx#syntax-split-splice->vector _%tl8582186799%_ '2)))
                  (let ((_%tl8582486805%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9185291853%_ '1)))
                        (_%target8582286802%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9185291853%_ '0))))
                    (if (gx#stx-pair? _%tl8582486805%_)
                        (let ((_%e8583186808%_ (gx#syntax-e _%tl8582486805%_)))
                          (let ((_%tl8583386815%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8583186808%_)))
                                (_%hd8583286812%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8583186808%_))))
                            (if (gx#stx-pair? _%hd8583286812%_)
                                (let ((_%e8583486818%_
                                       (gx#syntax-e _%hd8583286812%_)))
                                  (let ((_%tl8583686825%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8583486818%_)))
                                        (_%hd8583586822%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8583486818%_))))
                                    (if (gx#identifier? _%hd8583586822%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g92296_|
                                             _%hd8583586822%_)
                                            (if (gx#stx-pair? _%tl8583686825%_)
                                                (let ((_%e8583786828%_
                                                       (gx#syntax-e
                                                        _%tl8583686825%_)))
                                                  (let ((_%tl8583986835%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8583786828%_)))
                                                        (_%hd8583886832%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8583786828%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8583986835%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8583386815%_)
                                                            (let ((_%e8584086838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8583386815%_)))
                      (let ((_%tl8584286845%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8584086838%_)))
                            (_%hd8584186842%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8584086838%_))))
                        (if (gx#stx-null? _%tl8584286845%_)
                            (_%__match9193691937%_
                             _%e8581286768%_
                             _%hd8581386772%_
                             _%tl8581486775%_
                             _%e8581586778%_
                             _%hd8581686782%_
                             _%tl8581786785%_
                             _%e8581886788%_
                             _%e8581986792%_
                             _%hd8582086796%_
                             _%tl8582186799%_
                             _%__splice9185291853%_
                             _%target8582286802%_
                             _%tl8582486805%_
                             _%e8583186808%_
                             _%hd8583286812%_
                             _%tl8583386815%_
                             _%e8583486818%_
                             _%hd8583586822%_
                             _%tl8583686825%_
                             _%e8583786828%_
                             _%hd8583886832%_
                             _%tl8583986835%_
                             _%e8584086838%_
                             _%hd8584186842%_
                             _%tl8584286845%_)
                            (if (let ((__tmp92297
                                       (gx#stx-length _%tl8582186799%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp92297 '1))
                                (let ((_%__splice9185691857%_
                                       (gx#syntax-split-splice->vector
                                        _%tl8582186799%_
                                        '1)))
                                  (let ((_%tl8585986688%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9185691857%_
                                            '1)))
                                        (_%target8585786685%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9185691857%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl8585986688%_)
                                        (let ((_%e8586686691%_
                                               (gx#syntax-e _%tl8585986688%_)))
                                          (let ((_%tl8586886698%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e8586686691%_)))
                                                (_%hd8586786695%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e8586686691%_))))
                                            (if (gx#stx-null? _%tl8586886698%_)
                                                (_%__match9197691977%_
                                                 _%e8581286768%_
                                                 _%hd8581386772%_
                                                 _%tl8581486775%_
                                                 _%e8581586778%_
                                                 _%hd8581686782%_
                                                 _%tl8581786785%_
                                                 _%e8581886788%_
                                                 _%e8581986792%_
                                                 _%hd8582086796%_
                                                 _%tl8582186799%_
                                                 _%__splice9185691857%_
                                                 _%target8585786685%_
                                                 _%tl8585986688%_
                                                 _%e8586686691%_
                                                 _%hd8586786695%_
                                                 _%tl8586886698%_)
                                                (if (gx#stx-null?
                                                     _%tl8582186799%_)
                                                    (_%__kont9185891859%_
                                                     _%hd8582086796%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8580586019%_))))))
                                        (if (gx#stx-null? _%tl8582186799%_)
                                            (_%__kont9185891859%_
                                             _%hd8582086796%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8580586019%_))))))
                                (if (gx#stx-null? _%tl8582186799%_)
                                    (_%__kont9185891859%_ _%hd8582086796%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8580586019%_)))))))
                    (if (let ((__tmp92298 (gx#stx-length _%tl8582186799%_)))
                          (declare (not safe))
                          (##fx>= __tmp92298 '1))
                        (let ((_%__splice9185691857%_
                               (gx#syntax-split-splice->vector
                                _%tl8582186799%_
                                '1)))
                          (let ((_%tl8585986688%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9185691857%_ '1)))
                                (_%target8585786685%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9185691857%_ '0))))
                            (if (gx#stx-pair? _%tl8585986688%_)
                                (let ((_%e8586686691%_
                                       (gx#syntax-e _%tl8585986688%_)))
                                  (let ((_%tl8586886698%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8586686691%_)))
                                        (_%hd8586786695%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8586686691%_))))
                                    (if (gx#stx-null? _%tl8586886698%_)
                                        (_%__match9197691977%_
                                         _%e8581286768%_
                                         _%hd8581386772%_
                                         _%tl8581486775%_
                                         _%e8581586778%_
                                         _%hd8581686782%_
                                         _%tl8581786785%_
                                         _%e8581886788%_
                                         _%e8581986792%_
                                         _%hd8582086796%_
                                         _%tl8582186799%_
                                         _%__splice9185691857%_
                                         _%target8585786685%_
                                         _%tl8585986688%_
                                         _%e8586686691%_
                                         _%hd8586786695%_
                                         _%tl8586886698%_)
                                        (if (gx#stx-null? _%tl8582186799%_)
                                            (_%__kont9185891859%_
                                             _%hd8582086796%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8580586019%_))))))
                                (if (gx#stx-null? _%tl8582186799%_)
                                    (_%__kont9185891859%_ _%hd8582086796%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8580586019%_))))))
                        (if (gx#stx-null? _%tl8582186799%_)
                            (_%__kont9185891859%_ _%hd8582086796%_)
                            (let () (declare (not safe)) (_%g8580586019%_)))))
                (if (let ((__tmp92299 (gx#stx-length _%tl8582186799%_)))
                      (declare (not safe))
                      (##fx>= __tmp92299 '1))
                    (let ((_%__splice9185691857%_
                           (gx#syntax-split-splice->vector
                            _%tl8582186799%_
                            '1)))
                      (let ((_%tl8585986688%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9185691857%_ '1)))
                            (_%target8585786685%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9185691857%_ '0))))
                        (if (gx#stx-pair? _%tl8585986688%_)
                            (let ((_%e8586686691%_
                                   (gx#syntax-e _%tl8585986688%_)))
                              (let ((_%tl8586886698%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8586686691%_)))
                                    (_%hd8586786695%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8586686691%_))))
                                (if (gx#stx-null? _%tl8586886698%_)
                                    (_%__match9197691977%_
                                     _%e8581286768%_
                                     _%hd8581386772%_
                                     _%tl8581486775%_
                                     _%e8581586778%_
                                     _%hd8581686782%_
                                     _%tl8581786785%_
                                     _%e8581886788%_
                                     _%e8581986792%_
                                     _%hd8582086796%_
                                     _%tl8582186799%_
                                     _%__splice9185691857%_
                                     _%target8585786685%_
                                     _%tl8585986688%_
                                     _%e8586686691%_
                                     _%hd8586786695%_
                                     _%tl8586886698%_)
                                    (if (gx#stx-null? _%tl8582186799%_)
                                        (_%__kont9185891859%_ _%hd8582086796%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8580586019%_))))))
                            (if (gx#stx-null? _%tl8582186799%_)
                                (_%__kont9185891859%_ _%hd8582086796%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8580586019%_))))))
                    (if (gx#stx-null? _%tl8582186799%_)
                        (_%__kont9185891859%_ _%hd8582086796%_)
                        (let () (declare (not safe)) (_%g8580586019%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp92300
                                                           (gx#stx-length
                                                            _%tl8582186799%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp92300 '1))
                                                    (let ((_%__splice9185691857%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl8582186799%_
                                                            '1)))
                                                      (let ((_%tl8585986688%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9185691857%_ '1)))
                    (_%target8585786685%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9185691857%_ '0))))
                (if (gx#stx-pair? _%tl8585986688%_)
                    (let ((_%e8586686691%_ (gx#syntax-e _%tl8585986688%_)))
                      (let ((_%tl8586886698%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8586686691%_)))
                            (_%hd8586786695%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8586686691%_))))
                        (if (gx#stx-null? _%tl8586886698%_)
                            (_%__match9197691977%_
                             _%e8581286768%_
                             _%hd8581386772%_
                             _%tl8581486775%_
                             _%e8581586778%_
                             _%hd8581686782%_
                             _%tl8581786785%_
                             _%e8581886788%_
                             _%e8581986792%_
                             _%hd8582086796%_
                             _%tl8582186799%_
                             _%__splice9185691857%_
                             _%target8585786685%_
                             _%tl8585986688%_
                             _%e8586686691%_
                             _%hd8586786695%_
                             _%tl8586886698%_)
                            (if (gx#stx-null? _%tl8582186799%_)
                                (_%__kont9185891859%_ _%hd8582086796%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8580586019%_))))))
                    (if (gx#stx-null? _%tl8582186799%_)
                        (_%__kont9185891859%_ _%hd8582086796%_)
                        (let () (declare (not safe)) (_%g8580586019%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8582186799%_)
                                                        (_%__kont9185891859%_
                                                         _%hd8582086796%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8580586019%_)))))
                                            (if (let ((__tmp92301
                                                       (gx#stx-length
                                                        _%tl8582186799%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp92301 '1))
                                                (let ((_%__splice9185691857%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl8582186799%_
                                                        '1)))
                                                  (let ((_%tl8585986688%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9185691857%_
                                                            '1)))
                                                        (_%target8585786685%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9185691857%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl8585986688%_)
                                                        (let ((_%e8586686691%_
                                                               (gx#syntax-e
                                                                _%tl8585986688%_)))
                                                          (let ((_%tl8586886698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8586686691%_)))
                        (_%hd8586786695%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8586686691%_))))
                    (if (gx#stx-null? _%tl8586886698%_)
                        (_%__match9197691977%_
                         _%e8581286768%_
                         _%hd8581386772%_
                         _%tl8581486775%_
                         _%e8581586778%_
                         _%hd8581686782%_
                         _%tl8581786785%_
                         _%e8581886788%_
                         _%e8581986792%_
                         _%hd8582086796%_
                         _%tl8582186799%_
                         _%__splice9185691857%_
                         _%target8585786685%_
                         _%tl8585986688%_
                         _%e8586686691%_
                         _%hd8586786695%_
                         _%tl8586886698%_)
                        (if (gx#stx-null? _%tl8582186799%_)
                            (_%__kont9185891859%_ _%hd8582086796%_)
                            (let () (declare (not safe)) (_%g8580586019%_))))))
                (if (gx#stx-null? _%tl8582186799%_)
                    (_%__kont9185891859%_ _%hd8582086796%_)
                    (let () (declare (not safe)) (_%g8580586019%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl8582186799%_)
                                                    (_%__kont9185891859%_
                                                     _%hd8582086796%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8580586019%_)))))
                                        (if (let ((__tmp92302
                                                   (gx#stx-length
                                                    _%tl8582186799%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp92302 '1))
                                            (let ((_%__splice9185691857%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl8582186799%_
                                                    '1)))
                                              (let ((_%tl8585986688%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9185691857%_
                                                        '1)))
                                                    (_%target8585786685%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9185691857%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl8585986688%_)
                                                    (let ((_%e8586686691%_
                                                           (gx#syntax-e
                                                            _%tl8585986688%_)))
                                                      (let ((_%tl8586886698%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8586686691%_)))
                    (_%hd8586786695%_
                     (let () (declare (not safe)) (##car _%e8586686691%_))))
                (if (gx#stx-null? _%tl8586886698%_)
                    (_%__match9197691977%_
                     _%e8581286768%_
                     _%hd8581386772%_
                     _%tl8581486775%_
                     _%e8581586778%_
                     _%hd8581686782%_
                     _%tl8581786785%_
                     _%e8581886788%_
                     _%e8581986792%_
                     _%hd8582086796%_
                     _%tl8582186799%_
                     _%__splice9185691857%_
                     _%target8585786685%_
                     _%tl8585986688%_
                     _%e8586686691%_
                     _%hd8586786695%_
                     _%tl8586886698%_)
                    (if (gx#stx-null? _%tl8582186799%_)
                        (_%__kont9185891859%_ _%hd8582086796%_)
                        (let () (declare (not safe)) (_%g8580586019%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8582186799%_)
                                                        (_%__kont9185891859%_
                                                         _%hd8582086796%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8580586019%_))))))
                                            (if (gx#stx-null? _%tl8582186799%_)
                                                (_%__kont9185891859%_
                                                 _%hd8582086796%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8580586019%_)))))))
                                (if (let ((__tmp92303
                                           (gx#stx-length _%tl8582186799%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp92303 '1))
                                    (let ((_%__splice9185691857%_
                                           (gx#syntax-split-splice->vector
                                            _%tl8582186799%_
                                            '1)))
                                      (let ((_%tl8585986688%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9185691857%_
                                                '1)))
                                            (_%target8585786685%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9185691857%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl8585986688%_)
                                            (let ((_%e8586686691%_
                                                   (gx#syntax-e
                                                    _%tl8585986688%_)))
                                              (let ((_%tl8586886698%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8586686691%_)))
                                                    (_%hd8586786695%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8586686691%_))))
                                                (if (gx#stx-null?
                                                     _%tl8586886698%_)
                                                    (_%__match9197691977%_
                                                     _%e8581286768%_
                                                     _%hd8581386772%_
                                                     _%tl8581486775%_
                                                     _%e8581586778%_
                                                     _%hd8581686782%_
                                                     _%tl8581786785%_
                                                     _%e8581886788%_
                                                     _%e8581986792%_
                                                     _%hd8582086796%_
                                                     _%tl8582186799%_
                                                     _%__splice9185691857%_
                                                     _%target8585786685%_
                                                     _%tl8585986688%_
                                                     _%e8586686691%_
                                                     _%hd8586786695%_
                                                     _%tl8586886698%_)
                                                    (if (gx#stx-null?
                                                         _%tl8582186799%_)
                                                        (_%__kont9185891859%_
                                                         _%hd8582086796%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8580586019%_))))))
                                            (if (gx#stx-null? _%tl8582186799%_)
                                                (_%__kont9185891859%_
                                                 _%hd8582086796%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8580586019%_))))))
                                    (if (gx#stx-null? _%tl8582186799%_)
                                        (_%__kont9185891859%_ _%hd8582086796%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8580586019%_)))))))
                        (if (let ((__tmp92304
                                   (gx#stx-length _%tl8582186799%_)))
                              (declare (not safe))
                              (##fx>= __tmp92304 '1))
                            (let ((_%__splice9185691857%_
                                   (gx#syntax-split-splice->vector
                                    _%tl8582186799%_
                                    '1)))
                              (let ((_%tl8585986688%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9185691857%_
                                        '1)))
                                    (_%target8585786685%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9185691857%_
                                        '0))))
                                (if (gx#stx-pair? _%tl8585986688%_)
                                    (let ((_%e8586686691%_
                                           (gx#syntax-e _%tl8585986688%_)))
                                      (let ((_%tl8586886698%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8586686691%_)))
                                            (_%hd8586786695%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8586686691%_))))
                                        (if (gx#stx-null? _%tl8586886698%_)
                                            (_%__match9197691977%_
                                             _%e8581286768%_
                                             _%hd8581386772%_
                                             _%tl8581486775%_
                                             _%e8581586778%_
                                             _%hd8581686782%_
                                             _%tl8581786785%_
                                             _%e8581886788%_
                                             _%e8581986792%_
                                             _%hd8582086796%_
                                             _%tl8582186799%_
                                             _%__splice9185691857%_
                                             _%target8585786685%_
                                             _%tl8585986688%_
                                             _%e8586686691%_
                                             _%hd8586786695%_
                                             _%tl8586886698%_)
                                            (if (gx#stx-null? _%tl8582186799%_)
                                                (_%__kont9185891859%_
                                                 _%hd8582086796%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8580586019%_))))))
                                    (if (gx#stx-null? _%tl8582186799%_)
                                        (_%__kont9185891859%_ _%hd8582086796%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8580586019%_))))))
                            (if (gx#stx-null? _%tl8582186799%_)
                                (_%__kont9185891859%_ _%hd8582086796%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8580586019%_)))))))
                (if (let ((__tmp92305 (gx#stx-length _%tl8582186799%_)))
                      (declare (not safe))
                      (##fx>= __tmp92305 '1))
                    (let ((_%__splice9185691857%_
                           (gx#syntax-split-splice->vector
                            _%tl8582186799%_
                            '1)))
                      (let ((_%tl8585986688%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9185691857%_ '1)))
                            (_%target8585786685%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9185691857%_ '0))))
                        (if (gx#stx-pair? _%tl8585986688%_)
                            (let ((_%e8586686691%_
                                   (gx#syntax-e _%tl8585986688%_)))
                              (let ((_%tl8586886698%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8586686691%_)))
                                    (_%hd8586786695%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8586686691%_))))
                                (if (gx#stx-null? _%tl8586886698%_)
                                    (_%__match9197691977%_
                                     _%e8581286768%_
                                     _%hd8581386772%_
                                     _%tl8581486775%_
                                     _%e8581586778%_
                                     _%hd8581686782%_
                                     _%tl8581786785%_
                                     _%e8581886788%_
                                     _%e8581986792%_
                                     _%hd8582086796%_
                                     _%tl8582186799%_
                                     _%__splice9185691857%_
                                     _%target8585786685%_
                                     _%tl8585986688%_
                                     _%e8586686691%_
                                     _%hd8586786695%_
                                     _%tl8586886698%_)
                                    (if (gx#stx-null? _%tl8582186799%_)
                                        (_%__kont9185891859%_ _%hd8582086796%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8580586019%_))))))
                            (if (gx#stx-null? _%tl8582186799%_)
                                (_%__kont9185891859%_ _%hd8582086796%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8580586019%_))))))
                    (if (gx#stx-null? _%tl8582186799%_)
                        (_%__kont9185891859%_ _%hd8582086796%_)
                        (let () (declare (not safe)) (_%g8580586019%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8582186799%_)
                                                        (_%__kont9185891859%_
                                                         _%hd8582086796%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8580586019%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8580586019%_)))
                                        (if (equal? _%e8581886788%_ '2)
                                            (if (gx#stx-pair? _%tl8581786785%_)
                                                (let ((_%e8589386491%_
                                                       (gx#syntax-e
                                                        _%tl8581786785%_)))
                                                  (let ((_%tl8589586498%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8589386491%_)))
                                                        (_%hd8589486495%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8589386491%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl8589586498%_)
                                                        (let ((_%e8589686501%_
                                                               (gx#syntax-e
                                                                _%tl8589586498%_)))
                                                          (let ((_%tl8589886508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8589686501%_)))
                        (_%hd8589786505%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8589686501%_))))
                    (if (gx#stx-pair? _%hd8589786505%_)
                        (let ((_%e8589986511%_ (gx#syntax-e _%hd8589786505%_)))
                          (let ((_%tl8590186518%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8589986511%_)))
                                (_%hd8590086515%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8589986511%_))))
                            (if (gx#stx-pair? _%hd8590086515%_)
                                (let ((_%e8590286521%_
                                       (gx#syntax-e _%hd8590086515%_)))
                                  (let ((_%tl8590486528%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8590286521%_)))
                                        (_%hd8590386525%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8590286521%_))))
                                    (if (gx#identifier? _%hd8590386525%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g92306_|
                                             _%hd8590386525%_)
                                            (if (gx#stx-pair? _%tl8590486528%_)
                                                (let ((_%e8590586531%_
                                                       (gx#syntax-e
                                                        _%tl8590486528%_)))
                                                  (let ((_%tl8590786538%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8590586531%_)))
                                                        (_%hd8590686535%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8590586531%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8590786538%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8590186518%_)
                                                            (let ((_%e8590886541%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8590186518%_)))
                      (let ((_%tl8591086548%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8590886541%_)))
                            (_%hd8590986545%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8590886541%_))))
                        (_%__kont9186091861%_
                         _%tl8589886508%_
                         _%tl8591086548%_
                         _%hd8590986545%_
                         _%hd8590686535%_
                         _%hd8589486495%_
                         _%hd8581386772%_)))
                    (_%__kont9186291863%_
                     _%tl8589886508%_
                     _%tl8590186518%_
                     _%hd8590086515%_
                     _%hd8589486495%_
                     _%hd8581386772%_))
                (_%__kont9186291863%_
                 _%tl8589886508%_
                 _%tl8590186518%_
                 _%hd8590086515%_
                 _%hd8589486495%_
                 _%hd8581386772%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont9186291863%_
                                                 _%tl8589886508%_
                                                 _%tl8590186518%_
                                                 _%hd8590086515%_
                                                 _%hd8589486495%_
                                                 _%hd8581386772%_))
                                            (_%__kont9186291863%_
                                             _%tl8589886508%_
                                             _%tl8590186518%_
                                             _%hd8590086515%_
                                             _%hd8589486495%_
                                             _%hd8581386772%_))
                                        (_%__kont9186291863%_
                                         _%tl8589886508%_
                                         _%tl8590186518%_
                                         _%hd8590086515%_
                                         _%hd8589486495%_
                                         _%hd8581386772%_))))
                                (_%__kont9186291863%_
                                 _%tl8589886508%_
                                 _%tl8590186518%_
                                 _%hd8590086515%_
                                 _%hd8589486495%_
                                 _%hd8581386772%_))))
                        (if (gx#stx-null? _%hd8589786505%_)
                            (_%__kont9186491865%_
                             _%tl8589886508%_
                             _%hd8589486495%_
                             _%hd8581386772%_)
                            (let () (declare (not safe)) (_%g8580586019%_))))))
                (let () (declare (not safe)) (_%g8580586019%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8580586019%_)))
                                            (if (equal? _%e8581886788%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl8581786785%_)
                                                    (let ((_%e8596086240%_
                                                           (gx#syntax-e
                                                            _%tl8581786785%_)))
                                                      (let ((_%tl8596286247%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8596086240%_)))
                    (_%hd8596186244%_
                     (let () (declare (not safe)) (##car _%e8596086240%_))))
                (if (gx#stx-pair? _%tl8596286247%_)
                    (let ((_%e8596386250%_ (gx#syntax-e _%tl8596286247%_)))
                      (let ((_%tl8596586257%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8596386250%_)))
                            (_%hd8596486254%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8596386250%_))))
                        (if (gx#stx-pair? _%hd8596486254%_)
                            (let ((_%e8596686260%_
                                   (gx#syntax-e _%hd8596486254%_)))
                              (let ((_%tl8596886267%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8596686260%_)))
                                    (_%hd8596786264%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8596686260%_))))
                                (_%__kont9186691867%_
                                 _%tl8596586257%_
                                 _%tl8596886267%_
                                 _%hd8596786264%_
                                 _%hd8596186244%_
                                 _%hd8581386772%_)))
                            (if (gx#stx-pair/null? _%hd8596186244%_)
                                (let ((_%__splice9187091871%_
                                       (gx#syntax-split-splice->vector
                                        _%hd8596186244%_
                                        '0)))
                                  (let ((_%tl8598786063%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9187091871%_
                                            '1)))
                                        (_%target8598586060%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9187091871%_
                                            '0))))
                                    (if (gx#stx-null? _%tl8598786063%_)
                                        (_%__match9219892199%_
                                         _%e8581286768%_
                                         _%hd8581386772%_
                                         _%tl8581486775%_
                                         _%e8581586778%_
                                         _%hd8581686782%_
                                         _%tl8581786785%_
                                         _%e8581886788%_
                                         _%e8596086240%_
                                         _%hd8596186244%_
                                         _%tl8596286247%_
                                         _%__splice9187091871%_
                                         _%target8598586060%_
                                         _%tl8598786063%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8580586019%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8580586019%_))))))
                    (if (gx#stx-pair/null? _%hd8596186244%_)
                        (let ((_%__splice9187091871%_
                               (gx#syntax-split-splice->vector
                                _%hd8596186244%_
                                '0)))
                          (let ((_%tl8598786063%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9187091871%_ '1)))
                                (_%target8598586060%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9187091871%_ '0))))
                            (if (gx#stx-null? _%tl8598786063%_)
                                (_%__match9219892199%_
                                 _%e8581286768%_
                                 _%hd8581386772%_
                                 _%tl8581486775%_
                                 _%e8581586778%_
                                 _%hd8581686782%_
                                 _%tl8581786785%_
                                 _%e8581886788%_
                                 _%e8596086240%_
                                 _%hd8596186244%_
                                 _%tl8596286247%_
                                 _%__splice9187091871%_
                                 _%target8598586060%_
                                 _%tl8598786063%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8580586019%_)))))
                        (let () (declare (not safe)) (_%g8580586019%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8580586019%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8580586019%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g8580586019%_)))))
                          (let () (declare (not safe)) (_%g8580586019%_)))))
                  (let () (declare (not safe)) (_%g8580586019%_))))))))))
