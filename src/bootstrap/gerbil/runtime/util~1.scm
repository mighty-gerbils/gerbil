(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g100193_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g100203_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx92985%_)
        (let* ((_%g9298993007%_
                (lambda (_%g9299093003%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9299093003%_)))
               (_%g9298893063%_
                (lambda (_%g9299093011%_)
                  (if (gx#stx-pair? _%g9299093011%_)
                      (let ((_%e9299393014%_ (gx#syntax-e _%g9299093011%_)))
                        (let ((_%hd9299493018%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9299393014%_)))
                              (_%tl9299593021%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9299393014%_))))
                          (if (gx#stx-pair? _%tl9299593021%_)
                              (let ((_%e9299693024%_
                                     (gx#syntax-e _%tl9299593021%_)))
                                (let ((_%hd9299793028%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9299693024%_)))
                                      (_%tl9299893031%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9299693024%_))))
                                  (if (gx#stx-pair? _%tl9299893031%_)
                                      (let ((_%e9299993034%_
                                             (gx#syntax-e _%tl9299893031%_)))
                                        (let ((_%hd9300093038%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9299993034%_)))
                                              (_%tl9300193041%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9299993034%_))))
                                          (if (gx#stx-null? _%tl9300193041%_)
                                              ((lambda (_%g9299193044%_
                                                        _%g9299293046%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%g9299293046%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%g9299193044%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd9300093038%_
                                               _%hd9299793028%_)
                                              (_%g9298993007%_
                                               _%g9299093011%_))))
                                      (_%g9298993007%_ _%g9299093011%_))))
                              (_%g9298993007%_ _%g9299093011%_))))
                      (_%g9298993007%_ _%g9299093011%_)))))
          (_%g9298893063%_ _%$stx92985%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx93067%_)
        (let* ((_%g9307193081%_
                (lambda (_%g9307293077%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9307293077%_)))
               (_%g9307093102%_
                (lambda (_%g9307293085%_)
                  (if (gx#stx-pair? _%g9307293085%_)
                      (let ((_%e9307393088%_ (gx#syntax-e _%g9307293085%_)))
                        (let ((_%hd9307493092%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9307393088%_)))
                              (_%tl9307593095%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9307393088%_))))
                          (if (gx#stx-null? _%tl9307593095%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 (cons '#f '())))))
                              (_%g9307193081%_ _%g9307293085%_))))
                      (_%g9307193081%_ _%g9307293085%_)))))
          (_%g9307093102%_ _%$stx93067%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx93106%_)
        (let* ((_%__stx9967099671%_ _%$stx93106%_)
               (_%g9311193136%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9967099671%_))))
          (let ((_%__kont9967399674%_
                 (lambda (_%g9311393214%_ _%g9311493216%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (cons (cons (gx#datum->syntax '#f 'declare)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'not)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'interrupts-enabled)
                                                             '()))
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'let)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'again)
                                                       (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'spin)
                                 (cons '0 '()))
                           '())
                     (cons (cons (gx#datum->syntax '#f 'cond)
                                 (cons (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##fx=)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##vector-cas!)
                                                               (cons _%g9311493216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '0 (cons '1 (cons '0 '())))))
                 (cons '0 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-set!)
                                                         (cons _%g9311493216%_
                                                               (cons '1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'current-thread)
                                         '())
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       (cons (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##fx<)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'spin)
                                                               (cons _%g9311393214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##thread-yield!)
                                                               '())
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'again)
                             (cons (cons (gx#datum->syntax '#f '##fx+)
                                         (cons (gx#datum->syntax '#f 'spin)
                                               (cons '1 '())))
                                   '()))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'else)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'let)
                             (cons (cons (gx#datum->syntax '#f 'owner)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##vector-ref)
                                                     (cons _%g9311493216%_
                                                           (cons '1 '())))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'eq?)
                         (cons (gx#datum->syntax '#f 'owner)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            'macro-current-thread)
                                           '())
                                     '())))
                   (cons (cons (gx#datum->syntax
                                '#f
                                '##thread-deadlock-action!)
                               '())
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'not)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            'macro-thread-end-condvar)
                                           (cons (gx#datum->syntax '#f 'owner)
                                                 '()))
                                     '()))
                         (cons (cons (gx#datum->syntax
                                      '#f
                                      '##thread-deadlock-action!)
                                     '())
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'else)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '##thread-yield!)
                                           '())
                                     (cons (cons (gx#datum->syntax '#f 'again)
                                                 (cons '0 '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont9967599676%_
                 (lambda (_%g9312493163%_)
                   (cons (gx#datum->syntax '#f '__lock-inline!)
                         (cons _%g9312493163%_ (cons '10 '()))))))
            (if (gx#stx-pair? _%__stx9967099671%_)
                (let ((_%e9311593184%_ (gx#syntax-e _%__stx9967099671%_)))
                  (let ((_%tl9311793191%_
                         (let () (declare (not safe)) (##cdr _%e9311593184%_)))
                        (_%hd9311693188%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9311593184%_))))
                    (if (gx#stx-pair? _%tl9311793191%_)
                        (let ((_%e9311893194%_ (gx#syntax-e _%tl9311793191%_)))
                          (let ((_%tl9312093201%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9311893194%_)))
                                (_%hd9311993198%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9311893194%_))))
                            (if (gx#stx-pair? _%tl9312093201%_)
                                (let ((_%e9312193204%_
                                       (gx#syntax-e _%tl9312093201%_)))
                                  (let ((_%tl9312393211%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9312193204%_)))
                                        (_%hd9312293208%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9312193204%_))))
                                    (if (gx#stx-null? _%tl9312393211%_)
                                        (_%__kont9967399674%_
                                         _%hd9312293208%_
                                         _%hd9311993198%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9311193136%_)))))
                                (if (gx#stx-null? _%tl9312093201%_)
                                    (_%__kont9967599676%_ _%hd9311993198%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g9311193136%_))))))
                        (let () (declare (not safe)) (_%g9311193136%_)))))
                (let () (declare (not safe)) (_%g9311193136%_)))))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx93235%_)
        (let* ((_%g9323993253%_
                (lambda (_%g9324093249%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9324093249%_)))
               (_%g9323893294%_
                (lambda (_%g9324093257%_)
                  (if (gx#stx-pair? _%g9324093257%_)
                      (let ((_%e9324293260%_ (gx#syntax-e _%g9324093257%_)))
                        (let ((_%hd9324393264%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9324293260%_)))
                              (_%tl9324493267%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9324293260%_))))
                          (if (gx#stx-pair? _%tl9324493267%_)
                              (let ((_%e9324593270%_
                                     (gx#syntax-e _%tl9324493267%_)))
                                (let ((_%hd9324693274%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9324593270%_)))
                                      (_%tl9324793277%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9324593270%_))))
                                  (if (gx#stx-null? _%tl9324793277%_)
                                      ((lambda (_%g9324193280%_)
                                         (cons (gx#datum->syntax '#f 'begin)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##vector-set!)
                                                           (cons _%g9324193280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 (cons '#f '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##vector-cas!)
                         (cons _%g9324193280%_
                               (cons '0 (cons '0 (cons '1 '())))))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd9324693274%_)
                                      (_%g9323993253%_ _%g9324093257%_))))
                              (_%g9323993253%_ _%g9324093257%_))))
                      (_%g9323993253%_ _%g9324093257%_)))))
          (_%g9323893294%_ _%$stx93235%_))))
    (define |[:0:]#__do-inline-lock!|
      (lambda (_%$stx93298%_)
        (let* ((_%g9330293320%_
                (lambda (_%g9330393316%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9330393316%_)))
               (_%g9330193375%_
                (lambda (_%g9330393324%_)
                  (if (gx#stx-pair? _%g9330393324%_)
                      (let ((_%e9330693327%_ (gx#syntax-e _%g9330393324%_)))
                        (let ((_%hd9330793331%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9330693327%_)))
                              (_%tl9330893334%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9330693327%_))))
                          (if (gx#stx-pair? _%tl9330893334%_)
                              (let ((_%e9330993337%_
                                     (gx#syntax-e _%tl9330893334%_)))
                                (let ((_%hd9331093341%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9330993337%_)))
                                      (_%tl9331193344%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9330993337%_))))
                                  (if (gx#stx-pair? _%tl9331193344%_)
                                      (let ((_%e9331293347%_
                                             (gx#syntax-e _%tl9331193344%_)))
                                        (let ((_%hd9331393351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9331293347%_)))
                                              (_%tl9331493354%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9331293347%_))))
                                          (if (gx#stx-null? _%tl9331493354%_)
                                              ((lambda (_%g9330493357%_
                                                        _%g9330593359%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '__lock-inline!)
                           (cons _%g9330593359%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'begin0)
                                 (cons _%g9330493357%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '__unlock-inline!)
                                                   (cons _%g9330593359%_ '()))
                                             '())))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd9331393351%_
                                               _%hd9331093341%_)
                                              (_%g9330293320%_
                                               _%g9330393324%_))))
                                      (_%g9330293320%_ _%g9330393324%_))))
                              (_%g9330293320%_ _%g9330393324%_))))
                      (_%g9330293320%_ _%g9330393324%_)))))
          (_%g9330193375%_ _%$stx93298%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx93379%_)
        (let* ((_%g9338393401%_
                (lambda (_%g9338493397%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9338493397%_)))
               (_%g9338293456%_
                (lambda (_%g9338493405%_)
                  (if (gx#stx-pair? _%g9338493405%_)
                      (let ((_%e9338793408%_ (gx#syntax-e _%g9338493405%_)))
                        (let ((_%hd9338893412%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9338793408%_)))
                              (_%tl9338993415%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9338793408%_))))
                          (if (gx#stx-pair? _%tl9338993415%_)
                              (let ((_%e9339093418%_
                                     (gx#syntax-e _%tl9338993415%_)))
                                (let ((_%hd9339193422%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9339093418%_)))
                                      (_%tl9339293425%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9339093418%_))))
                                  (if (gx#stx-pair? _%tl9339293425%_)
                                      (let ((_%e9339393428%_
                                             (gx#syntax-e _%tl9339293425%_)))
                                        (let ((_%hd9339493432%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9339393428%_)))
                                              (_%tl9339593435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9339393428%_))))
                                          (if (gx#stx-null? _%tl9339593435%_)
                                              ((lambda (_%g9338593438%_
                                                        _%g9338693440%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%g9338693440%_
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
                 (cons (cons _%g9338593438%_
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
                                               _%hd9339493432%_
                                               _%hd9339193422%_)
                                              (_%g9338393401%_
                                               _%g9338493405%_))))
                                      (_%g9338393401%_ _%g9338493405%_))))
                              (_%g9338393401%_ _%g9338493405%_))))
                      (_%g9338393401%_ _%g9338493405%_)))))
          (_%g9338293456%_ _%$stx93379%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx93460%_)
        (let* ((_%g9346493482%_
                (lambda (_%g9346593478%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9346593478%_)))
               (_%g9346393537%_
                (lambda (_%g9346593486%_)
                  (if (gx#stx-pair? _%g9346593486%_)
                      (let ((_%e9346893489%_ (gx#syntax-e _%g9346593486%_)))
                        (let ((_%hd9346993493%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9346893489%_)))
                              (_%tl9347093496%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9346893489%_))))
                          (if (gx#stx-pair? _%tl9347093496%_)
                              (let ((_%e9347193499%_
                                     (gx#syntax-e _%tl9347093496%_)))
                                (let ((_%hd9347293503%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9347193499%_)))
                                      (_%tl9347393506%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9347193499%_))))
                                  (if (gx#stx-pair? _%tl9347393506%_)
                                      (let ((_%e9347493509%_
                                             (gx#syntax-e _%tl9347393506%_)))
                                        (let ((_%hd9347593513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9347493509%_)))
                                              (_%tl9347693516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9347493509%_))))
                                          (if (gx#stx-null? _%tl9347693516%_)
                                              ((lambda (_%g9346693519%_
                                                        _%g9346793521%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%g9346793521%_
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
                                               (cons (cons _%g9346693519%_
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
                                               _%hd9347593513%_
                                               _%hd9347293503%_)
                                              (_%g9346493482%_
                                               _%g9346593486%_))))
                                      (_%g9346493482%_ _%g9346593486%_))))
                              (_%g9346493482%_ _%g9346593486%_))))
                      (_%g9346493482%_ _%g9346593486%_)))))
          (_%g9346393537%_ _%$stx93460%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx93541%_)
        (let* ((_%g9354593563%_
                (lambda (_%g9354693559%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9354693559%_)))
               (_%g9354493618%_
                (lambda (_%g9354693567%_)
                  (if (gx#stx-pair? _%g9354693567%_)
                      (let ((_%e9354993570%_ (gx#syntax-e _%g9354693567%_)))
                        (let ((_%hd9355093574%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9354993570%_)))
                              (_%tl9355193577%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9354993570%_))))
                          (if (gx#stx-pair? _%tl9355193577%_)
                              (let ((_%e9355293580%_
                                     (gx#syntax-e _%tl9355193577%_)))
                                (let ((_%hd9355393584%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9355293580%_)))
                                      (_%tl9355493587%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9355293580%_))))
                                  (if (gx#stx-pair? _%tl9355493587%_)
                                      (let ((_%e9355593590%_
                                             (gx#syntax-e _%tl9355493587%_)))
                                        (let ((_%hd9355693594%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9355593590%_)))
                                              (_%tl9355793597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9355593590%_))))
                                          (if (gx#stx-null? _%tl9355793597%_)
                                              ((lambda (_%g9354793600%_
                                                        _%g9354893602%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%g9354893602%_
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
                                               (cons (cons _%g9354793600%_
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
                                               _%hd9355693594%_
                                               _%hd9355393584%_)
                                              (_%g9354593563%_
                                               _%g9354693567%_))))
                                      (_%g9354593563%_ _%g9354693567%_))))
                              (_%g9354593563%_ _%g9354693567%_))))
                      (_%g9354593563%_ _%g9354693567%_)))))
          (_%g9354493618%_ _%$stx93541%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx93622%_)
        (let* ((_%g9362693637%_
                (lambda (_%g9362793633%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9362793633%_)))
               (_%g9362593666%_
                (lambda (_%g9362793641%_)
                  (if (gx#stx-pair? _%g9362793641%_)
                      (let ((_%e9362993644%_ (gx#syntax-e _%g9362793641%_)))
                        (let ((_%hd9363093648%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9362993644%_)))
                              (_%tl9363193651%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9362993644%_))))
                          ((lambda (_%g9362893654%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%g9362893654%_)))
                           _%tl9363193651%_)))
                      (_%g9362693637%_ _%g9362793641%_)))))
          (_%g9362593666%_ _%$stx93622%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx93670%_)
        (let* ((_%__stx9974599746%_ _%$stx93670%_)
               (_%g9368193895%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9974599746%_))))
          (let ((_%__kont9974899749%_
                 (lambda (_%g9368394740%_
                          _%g9368494742%_
                          _%g9368594743%_
                          _%g9368694744%_
                          _%g9368794745%_)
                   (cons _%g9368794745%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g9477594778%_
                                                     _%g9477694781%_)
                                              (cons _%g9477594778%_
                                                    _%g9477694781%_))
                                            '()
                                            _%g9368594743%_)
                                           (cons _%g9368694744%_
                                                 (cons _%g9368494742%_
                                                       (cons _%g9368394740%_
                                                             '())))))))))
                (_%__kont9975299753%_
                 (lambda (_%g9371994595%_
                          _%g9372094597%_
                          _%g9372194598%_
                          _%g9372294599%_)
                   (cons _%g9372294599%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g9462294625%_
                                                     _%g9462394628%_)
                                              (cons _%g9462294625%_
                                                    _%g9462394628%_))
                                            '()
                                            _%g9372094597%_)
                                           (cons _%g9372194598%_
                                                 (cons _%g9371994595%_
                                                       (cons _%g9371994595%_
                                                             '())))))))))
                (_%__kont9975699757%_
                 (lambda (_%g9374594500%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%g9374594500%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont9975899759%_
                 (lambda (_%g9375694423%_
                          _%g9375794425%_
                          _%g9375894426%_
                          _%g9375994427%_
                          _%g9376094428%_
                          _%g9376194429%_)
                   (cons _%g9376194429%_
                         (cons '2
                               (cons (cons (cons _%g9375994427%_
                                                 (cons _%g9375894426%_ '()))
                                           _%g9376094428%_)
                                     (cons _%g9375794425%_
                                           _%g9375694423%_))))))
                (_%__kont9976099761%_
                 (lambda (_%g9378794304%_
                          _%g9378894306%_
                          _%g9378994307%_
                          _%g9379094308%_
                          _%g9379194309%_)
                   (cons _%g9379194309%_
                         (cons '2
                               (cons (cons (cons _%g9378994307%_
                                                 (cons _%g9378994307%_ '()))
                                           _%g9379094308%_)
                                     (cons _%g9378894306%_
                                           _%g9378794304%_))))))
                (_%__kont9976299763%_
                 (lambda (_%g9380894221%_ _%g9380994223%_ _%g9381094224%_)
                   (cons _%g9381094224%_
                         (cons '3
                               (cons '()
                                     (cons _%g9380994223%_
                                           _%g9380894221%_))))))
                (_%__kont9976499765%_
                 (lambda (_%g9382494142%_
                          _%g9382594144%_
                          _%g9382694145%_
                          _%g9382794146%_
                          _%g9382894147%_)
                   (cons _%g9382894147%_
                         (cons '3
                               (cons (cons _%g9382694145%_ _%g9382794146%_)
                                     (cons _%g9382594144%_
                                           _%g9382494142%_))))))
                (_%__kont9976699767%_
                 (lambda (_%g9384594026%_
                          _%g9384694028%_
                          _%g9384794029%_
                          _%g9384894030%_
                          _%g9384994031%_
                          _%g9385094032%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%g9384794029%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g9384594026%_ '())))
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
                                              (lambda (_%g9406494069%_
                                                       _%g9406594072%_)
                                                (cons _%g9406494069%_
                                                      _%g9406594072%_))
                                              '()
                                              _%g9384994031%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (__foldr1
                                              (lambda (_%g9406694075%_
                                                       _%g9406794078%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g9406694075%_ '())))
              _%g9406794078%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%g9384894030%_))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%g9384694028%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match100096100097%_
                    (lambda (_%e9385193902%_
                             _%hd9385293906%_
                             _%tl9385393909%_
                             _%e9385493912%_
                             _%hd9385593916%_
                             _%tl9385693919%_
                             _%e9385793922%_
                             _%e9385893926%_
                             _%hd9385993930%_
                             _%tl9386093933%_
                             _%__splice9976899769%_
                             _%target9386193936%_
                             _%tl9386393939%_)
                      (letrec ((_%loop9386493942%_
                                (lambda (_%hd9386293946%_
                                         _%exprs9386893949%_
                                         _%names9386993950%_)
                                  (if (gx#stx-pair? _%hd9386293946%_)
                                      (let ((_%e9386593952%_
                                             (gx#syntax-e _%hd9386293946%_)))
                                        (let ((_%lp-tl9386793959%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9386593952%_)))
                                              (_%lp-hd9386693956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9386593952%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd9386693956%_)
                                              (let ((_%e9387293962%_
                                                     (gx#syntax-e
                                                      _%lp-hd9386693956%_)))
                                                (let ((_%tl9387493969%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e9387293962%_)))
                                                      (_%hd9387393966%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e9387293962%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl9387493969%_)
                                                      (let ((_%e9387593972%_
                                                             (gx#syntax-e
                                                              _%tl9387493969%_)))
                                                        (let ((_%tl9387793979%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e9387593972%_)))
                      (_%hd9387693976%_
                       (let () (declare (not safe)) (##car _%e9387593972%_))))
                  (if (gx#stx-null? _%tl9387793979%_)
                      (_%loop9386493942%_
                       _%lp-tl9386793959%_
                       (cons _%hd9387693976%_ _%exprs9386893949%_)
                       (cons _%hd9387393966%_ _%names9386993950%_))
                      (let () (declare (not safe)) (_%g9368193895%_)))))
              (let () (declare (not safe)) (_%g9368193895%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g9368193895%_)))))
                                      (let ((_%names9387193984%_
                                             (reverse _%names9386993950%_))
                                            (_%exprs9387093982%_
                                             (reverse _%exprs9386893949%_)))
                                        (if (gx#stx-pair? _%tl9386093933%_)
                                            (let ((_%e9387893986%_
                                                   (gx#syntax-e
                                                    _%tl9386093933%_)))
                                              (let ((_%tl9388093993%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9387893986%_)))
                                                    (_%hd9387993990%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9387893986%_))))
                                                (if (gx#stx-null?
                                                     _%hd9387993990%_)
                                                    (if (gx#stx-pair?
                                                         _%tl9388093993%_)
                                                        (let ((_%e9388193996%_
                                                               (gx#syntax-e
                                                                _%tl9388093993%_)))
                                                          (let ((_%tl9388394003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e9388193996%_)))
                        (_%hd9388294000%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9388193996%_))))
                    (if (gx#stx-pair? _%tl9388394003%_)
                        (let ((_%e9388494006%_ (gx#syntax-e _%tl9388394003%_)))
                          (let ((_%tl9388694013%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9388494006%_)))
                                (_%hd9388594010%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9388494006%_))))
                            (if (gx#stx-pair? _%tl9388694013%_)
                                (let ((_%e9388794016%_
                                       (gx#syntax-e _%tl9388694013%_)))
                                  (let ((_%tl9388994023%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9388794016%_)))
                                        (_%hd9388894020%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9388794016%_))))
                                    (if (gx#stx-null? _%tl9388994023%_)
                                        (_%__kont9976699767%_
                                         _%hd9388894020%_
                                         _%hd9388594010%_
                                         _%hd9388294000%_
                                         _%exprs9387093982%_
                                         _%names9387193984%_
                                         _%hd9385293906%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9368193895%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9368193895%_)))))
                        (let () (declare (not safe)) (_%g9368193895%_)))))
                (let () (declare (not safe)) (_%g9368193895%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9368193895%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g9368193895%_))))))))
                        (_%loop9386493942%_ _%target9386193936%_ '() '()))))
                   (_%__match9987499875%_
                    (lambda (_%e9372394523%_
                             _%hd9372494527%_
                             _%tl9372594530%_
                             _%e9372694533%_
                             _%hd9372794537%_
                             _%tl9372894540%_
                             _%e9372994543%_
                             _%e9373094547%_
                             _%hd9373194551%_
                             _%tl9373294554%_
                             _%__splice9975499755%_
                             _%target9373394557%_
                             _%tl9373594560%_
                             _%e9374294563%_
                             _%hd9374394567%_
                             _%tl9374494570%_)
                      (letrec ((_%loop9373694573%_
                                (lambda (_%hd9373494577%_ _%exprs9374094580%_)
                                  (if (gx#stx-pair? _%hd9373494577%_)
                                      (let ((_%e9373794582%_
                                             (gx#syntax-e _%hd9373494577%_)))
                                        (let ((_%lp-tl9373994589%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9373794582%_)))
                                              (_%lp-hd9373894586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9373794582%_))))
                                          (_%loop9373694573%_
                                           _%lp-tl9373994589%_
                                           (cons _%lp-hd9373894586%_
                                                 _%exprs9374094580%_))))
                                      (let ((_%exprs9374194592%_
                                             (reverse _%exprs9374094580%_)))
                                        (_%__kont9975299753%_
                                         _%hd9374394567%_
                                         _%exprs9374194592%_
                                         _%hd9373194551%_
                                         _%hd9372494527%_))))))
                        (_%loop9373694573%_ _%target9373394557%_ '()))))
                   (_%__match9983499835%_
                    (lambda (_%e9368894638%_
                             _%hd9368994642%_
                             _%tl9369094645%_
                             _%e9369194648%_
                             _%hd9369294652%_
                             _%tl9369394655%_
                             _%e9369494658%_
                             _%e9369594662%_
                             _%hd9369694666%_
                             _%tl9369794669%_
                             _%__splice9975099751%_
                             _%target9369894672%_
                             _%tl9370094675%_
                             _%e9370794678%_
                             _%hd9370894682%_
                             _%tl9370994685%_
                             _%e9371094688%_
                             _%hd9371194692%_
                             _%tl9371294695%_
                             _%e9371394698%_
                             _%hd9371494702%_
                             _%tl9371594705%_
                             _%e9371694708%_
                             _%hd9371794712%_
                             _%tl9371894715%_)
                      (letrec ((_%loop9370194718%_
                                (lambda (_%hd9369994722%_ _%exprs9370594725%_)
                                  (if (gx#stx-pair? _%hd9369994722%_)
                                      (let ((_%e9370294727%_
                                             (gx#syntax-e _%hd9369994722%_)))
                                        (let ((_%lp-tl9370494734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9370294727%_)))
                                              (_%lp-hd9370394731%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9370294727%_))))
                                          (_%loop9370194718%_
                                           _%lp-tl9370494734%_
                                           (cons _%lp-hd9370394731%_
                                                 _%exprs9370594725%_))))
                                      (let ((_%exprs9370694737%_
                                             (reverse _%exprs9370594725%_)))
                                        (_%__kont9974899749%_
                                         _%hd9371794712%_
                                         _%hd9371494702%_
                                         _%exprs9370694737%_
                                         _%hd9369694666%_
                                         _%hd9368994642%_))))))
                        (_%loop9370194718%_ _%target9369894672%_ '())))))
              (if (gx#stx-pair? _%__stx9974599746%_)
                  (let ((_%e9368894638%_ (gx#syntax-e _%__stx9974599746%_)))
                    (let ((_%tl9369094645%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e9368894638%_)))
                          (_%hd9368994642%_
                           (let ()
                             (declare (not safe))
                             (##car _%e9368894638%_))))
                      (if (gx#stx-pair? _%tl9369094645%_)
                          (let ((_%e9369194648%_
                                 (gx#syntax-e _%tl9369094645%_)))
                            (let ((_%tl9369394655%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e9369194648%_)))
                                  (_%hd9369294652%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e9369194648%_))))
                              (if (gx#stx-datum? _%hd9369294652%_)
                                  (let ((_%e9369494658%_
                                         (gx#stx-e _%hd9369294652%_)))
                                    (if (equal? _%e9369494658%_ '1)
                                        (if (gx#stx-pair? _%tl9369394655%_)
                                            (let ((_%e9369594662%_
                                                   (gx#syntax-e
                                                    _%tl9369394655%_)))
                                              (let ((_%tl9369794669%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9369594662%_)))
                                                    (_%hd9369694666%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9369594662%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl9369794669%_)
                                                    (if (let ((__tmp100192
                                                               (gx#stx-length
                                                                _%tl9369794669%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp100192
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice9975099751%_
                       (gx#syntax-split-splice->vector _%tl9369794669%_ '2)))
                  (let ((_%tl9370094675%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9975099751%_ '1)))
                        (_%target9369894672%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9975099751%_ '0))))
                    (if (gx#stx-pair? _%tl9370094675%_)
                        (let ((_%e9370794678%_ (gx#syntax-e _%tl9370094675%_)))
                          (let ((_%tl9370994685%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9370794678%_)))
                                (_%hd9370894682%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9370794678%_))))
                            (if (gx#stx-pair? _%hd9370894682%_)
                                (let ((_%e9371094688%_
                                       (gx#syntax-e _%hd9370894682%_)))
                                  (let ((_%tl9371294695%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9371094688%_)))
                                        (_%hd9371194692%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9371094688%_))))
                                    (if (gx#identifier? _%hd9371194692%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g100193_|
                                             _%hd9371194692%_)
                                            (if (gx#stx-pair? _%tl9371294695%_)
                                                (let ((_%e9371394698%_
                                                       (gx#syntax-e
                                                        _%tl9371294695%_)))
                                                  (let ((_%tl9371594705%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e9371394698%_)))
                                                        (_%hd9371494702%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e9371394698%_))))
                                                    (if (gx#stx-null?
                                                         _%tl9371594705%_)
                                                        (if (gx#stx-pair?
                                                             _%tl9370994685%_)
                                                            (let ((_%e9371694708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl9370994685%_)))
                      (let ((_%tl9371894715%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9371694708%_)))
                            (_%hd9371794712%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9371694708%_))))
                        (if (gx#stx-null? _%tl9371894715%_)
                            (_%__match9983499835%_
                             _%e9368894638%_
                             _%hd9368994642%_
                             _%tl9369094645%_
                             _%e9369194648%_
                             _%hd9369294652%_
                             _%tl9369394655%_
                             _%e9369494658%_
                             _%e9369594662%_
                             _%hd9369694666%_
                             _%tl9369794669%_
                             _%__splice9975099751%_
                             _%target9369894672%_
                             _%tl9370094675%_
                             _%e9370794678%_
                             _%hd9370894682%_
                             _%tl9370994685%_
                             _%e9371094688%_
                             _%hd9371194692%_
                             _%tl9371294695%_
                             _%e9371394698%_
                             _%hd9371494702%_
                             _%tl9371594705%_
                             _%e9371694708%_
                             _%hd9371794712%_
                             _%tl9371894715%_)
                            (if (let ((__tmp100194
                                       (gx#stx-length _%tl9369794669%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp100194 '1))
                                (let ((_%__splice9975499755%_
                                       (gx#syntax-split-splice->vector
                                        _%tl9369794669%_
                                        '1)))
                                  (let ((_%tl9373594560%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9975499755%_
                                            '1)))
                                        (_%target9373394557%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9975499755%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl9373594560%_)
                                        (let ((_%e9374294563%_
                                               (gx#syntax-e _%tl9373594560%_)))
                                          (let ((_%tl9374494570%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e9374294563%_)))
                                                (_%hd9374394567%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e9374294563%_))))
                                            (if (gx#stx-null? _%tl9374494570%_)
                                                (_%__match9987499875%_
                                                 _%e9368894638%_
                                                 _%hd9368994642%_
                                                 _%tl9369094645%_
                                                 _%e9369194648%_
                                                 _%hd9369294652%_
                                                 _%tl9369394655%_
                                                 _%e9369494658%_
                                                 _%e9369594662%_
                                                 _%hd9369694666%_
                                                 _%tl9369794669%_
                                                 _%__splice9975499755%_
                                                 _%target9373394557%_
                                                 _%tl9373594560%_
                                                 _%e9374294563%_
                                                 _%hd9374394567%_
                                                 _%tl9374494570%_)
                                                (if (gx#stx-null?
                                                     _%tl9369794669%_)
                                                    (_%__kont9975699757%_
                                                     _%hd9369694666%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9368193895%_))))))
                                        (if (gx#stx-null? _%tl9369794669%_)
                                            (_%__kont9975699757%_
                                             _%hd9369694666%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g9368193895%_))))))
                                (if (gx#stx-null? _%tl9369794669%_)
                                    (_%__kont9975699757%_ _%hd9369694666%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g9368193895%_)))))))
                    (if (let ((__tmp100195 (gx#stx-length _%tl9369794669%_)))
                          (declare (not safe))
                          (##fx>= __tmp100195 '1))
                        (let ((_%__splice9975499755%_
                               (gx#syntax-split-splice->vector
                                _%tl9369794669%_
                                '1)))
                          (let ((_%tl9373594560%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9975499755%_ '1)))
                                (_%target9373394557%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9975499755%_ '0))))
                            (if (gx#stx-pair? _%tl9373594560%_)
                                (let ((_%e9374294563%_
                                       (gx#syntax-e _%tl9373594560%_)))
                                  (let ((_%tl9374494570%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9374294563%_)))
                                        (_%hd9374394567%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9374294563%_))))
                                    (if (gx#stx-null? _%tl9374494570%_)
                                        (_%__match9987499875%_
                                         _%e9368894638%_
                                         _%hd9368994642%_
                                         _%tl9369094645%_
                                         _%e9369194648%_
                                         _%hd9369294652%_
                                         _%tl9369394655%_
                                         _%e9369494658%_
                                         _%e9369594662%_
                                         _%hd9369694666%_
                                         _%tl9369794669%_
                                         _%__splice9975499755%_
                                         _%target9373394557%_
                                         _%tl9373594560%_
                                         _%e9374294563%_
                                         _%hd9374394567%_
                                         _%tl9374494570%_)
                                        (if (gx#stx-null? _%tl9369794669%_)
                                            (_%__kont9975699757%_
                                             _%hd9369694666%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g9368193895%_))))))
                                (if (gx#stx-null? _%tl9369794669%_)
                                    (_%__kont9975699757%_ _%hd9369694666%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g9368193895%_))))))
                        (if (gx#stx-null? _%tl9369794669%_)
                            (_%__kont9975699757%_ _%hd9369694666%_)
                            (let () (declare (not safe)) (_%g9368193895%_)))))
                (if (let ((__tmp100196 (gx#stx-length _%tl9369794669%_)))
                      (declare (not safe))
                      (##fx>= __tmp100196 '1))
                    (let ((_%__splice9975499755%_
                           (gx#syntax-split-splice->vector
                            _%tl9369794669%_
                            '1)))
                      (let ((_%tl9373594560%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9975499755%_ '1)))
                            (_%target9373394557%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9975499755%_ '0))))
                        (if (gx#stx-pair? _%tl9373594560%_)
                            (let ((_%e9374294563%_
                                   (gx#syntax-e _%tl9373594560%_)))
                              (let ((_%tl9374494570%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9374294563%_)))
                                    (_%hd9374394567%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9374294563%_))))
                                (if (gx#stx-null? _%tl9374494570%_)
                                    (_%__match9987499875%_
                                     _%e9368894638%_
                                     _%hd9368994642%_
                                     _%tl9369094645%_
                                     _%e9369194648%_
                                     _%hd9369294652%_
                                     _%tl9369394655%_
                                     _%e9369494658%_
                                     _%e9369594662%_
                                     _%hd9369694666%_
                                     _%tl9369794669%_
                                     _%__splice9975499755%_
                                     _%target9373394557%_
                                     _%tl9373594560%_
                                     _%e9374294563%_
                                     _%hd9374394567%_
                                     _%tl9374494570%_)
                                    (if (gx#stx-null? _%tl9369794669%_)
                                        (_%__kont9975699757%_ _%hd9369694666%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9368193895%_))))))
                            (if (gx#stx-null? _%tl9369794669%_)
                                (_%__kont9975699757%_ _%hd9369694666%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9368193895%_))))))
                    (if (gx#stx-null? _%tl9369794669%_)
                        (_%__kont9975699757%_ _%hd9369694666%_)
                        (let () (declare (not safe)) (_%g9368193895%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp100197
                                                           (gx#stx-length
                                                            _%tl9369794669%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp100197 '1))
                                                    (let ((_%__splice9975499755%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl9369794669%_
                                                            '1)))
                                                      (let ((_%tl9373594560%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9975499755%_ '1)))
                    (_%target9373394557%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9975499755%_ '0))))
                (if (gx#stx-pair? _%tl9373594560%_)
                    (let ((_%e9374294563%_ (gx#syntax-e _%tl9373594560%_)))
                      (let ((_%tl9374494570%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9374294563%_)))
                            (_%hd9374394567%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9374294563%_))))
                        (if (gx#stx-null? _%tl9374494570%_)
                            (_%__match9987499875%_
                             _%e9368894638%_
                             _%hd9368994642%_
                             _%tl9369094645%_
                             _%e9369194648%_
                             _%hd9369294652%_
                             _%tl9369394655%_
                             _%e9369494658%_
                             _%e9369594662%_
                             _%hd9369694666%_
                             _%tl9369794669%_
                             _%__splice9975499755%_
                             _%target9373394557%_
                             _%tl9373594560%_
                             _%e9374294563%_
                             _%hd9374394567%_
                             _%tl9374494570%_)
                            (if (gx#stx-null? _%tl9369794669%_)
                                (_%__kont9975699757%_ _%hd9369694666%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9368193895%_))))))
                    (if (gx#stx-null? _%tl9369794669%_)
                        (_%__kont9975699757%_ _%hd9369694666%_)
                        (let () (declare (not safe)) (_%g9368193895%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl9369794669%_)
                                                        (_%__kont9975699757%_
                                                         _%hd9369694666%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9368193895%_)))))
                                            (if (let ((__tmp100198
                                                       (gx#stx-length
                                                        _%tl9369794669%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp100198 '1))
                                                (let ((_%__splice9975499755%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl9369794669%_
                                                        '1)))
                                                  (let ((_%tl9373594560%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9975499755%_
                                                            '1)))
                                                        (_%target9373394557%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9975499755%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl9373594560%_)
                                                        (let ((_%e9374294563%_
                                                               (gx#syntax-e
                                                                _%tl9373594560%_)))
                                                          (let ((_%tl9374494570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e9374294563%_)))
                        (_%hd9374394567%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9374294563%_))))
                    (if (gx#stx-null? _%tl9374494570%_)
                        (_%__match9987499875%_
                         _%e9368894638%_
                         _%hd9368994642%_
                         _%tl9369094645%_
                         _%e9369194648%_
                         _%hd9369294652%_
                         _%tl9369394655%_
                         _%e9369494658%_
                         _%e9369594662%_
                         _%hd9369694666%_
                         _%tl9369794669%_
                         _%__splice9975499755%_
                         _%target9373394557%_
                         _%tl9373594560%_
                         _%e9374294563%_
                         _%hd9374394567%_
                         _%tl9374494570%_)
                        (if (gx#stx-null? _%tl9369794669%_)
                            (_%__kont9975699757%_ _%hd9369694666%_)
                            (let () (declare (not safe)) (_%g9368193895%_))))))
                (if (gx#stx-null? _%tl9369794669%_)
                    (_%__kont9975699757%_ _%hd9369694666%_)
                    (let () (declare (not safe)) (_%g9368193895%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl9369794669%_)
                                                    (_%__kont9975699757%_
                                                     _%hd9369694666%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9368193895%_)))))
                                        (if (let ((__tmp100199
                                                   (gx#stx-length
                                                    _%tl9369794669%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp100199 '1))
                                            (let ((_%__splice9975499755%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl9369794669%_
                                                    '1)))
                                              (let ((_%tl9373594560%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9975499755%_
                                                        '1)))
                                                    (_%target9373394557%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9975499755%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl9373594560%_)
                                                    (let ((_%e9374294563%_
                                                           (gx#syntax-e
                                                            _%tl9373594560%_)))
                                                      (let ((_%tl9374494570%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e9374294563%_)))
                    (_%hd9374394567%_
                     (let () (declare (not safe)) (##car _%e9374294563%_))))
                (if (gx#stx-null? _%tl9374494570%_)
                    (_%__match9987499875%_
                     _%e9368894638%_
                     _%hd9368994642%_
                     _%tl9369094645%_
                     _%e9369194648%_
                     _%hd9369294652%_
                     _%tl9369394655%_
                     _%e9369494658%_
                     _%e9369594662%_
                     _%hd9369694666%_
                     _%tl9369794669%_
                     _%__splice9975499755%_
                     _%target9373394557%_
                     _%tl9373594560%_
                     _%e9374294563%_
                     _%hd9374394567%_
                     _%tl9374494570%_)
                    (if (gx#stx-null? _%tl9369794669%_)
                        (_%__kont9975699757%_ _%hd9369694666%_)
                        (let () (declare (not safe)) (_%g9368193895%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl9369794669%_)
                                                        (_%__kont9975699757%_
                                                         _%hd9369694666%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9368193895%_))))))
                                            (if (gx#stx-null? _%tl9369794669%_)
                                                (_%__kont9975699757%_
                                                 _%hd9369694666%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9368193895%_)))))))
                                (if (let ((__tmp100200
                                           (gx#stx-length _%tl9369794669%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp100200 '1))
                                    (let ((_%__splice9975499755%_
                                           (gx#syntax-split-splice->vector
                                            _%tl9369794669%_
                                            '1)))
                                      (let ((_%tl9373594560%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9975499755%_
                                                '1)))
                                            (_%target9373394557%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9975499755%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl9373594560%_)
                                            (let ((_%e9374294563%_
                                                   (gx#syntax-e
                                                    _%tl9373594560%_)))
                                              (let ((_%tl9374494570%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9374294563%_)))
                                                    (_%hd9374394567%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9374294563%_))))
                                                (if (gx#stx-null?
                                                     _%tl9374494570%_)
                                                    (_%__match9987499875%_
                                                     _%e9368894638%_
                                                     _%hd9368994642%_
                                                     _%tl9369094645%_
                                                     _%e9369194648%_
                                                     _%hd9369294652%_
                                                     _%tl9369394655%_
                                                     _%e9369494658%_
                                                     _%e9369594662%_
                                                     _%hd9369694666%_
                                                     _%tl9369794669%_
                                                     _%__splice9975499755%_
                                                     _%target9373394557%_
                                                     _%tl9373594560%_
                                                     _%e9374294563%_
                                                     _%hd9374394567%_
                                                     _%tl9374494570%_)
                                                    (if (gx#stx-null?
                                                         _%tl9369794669%_)
                                                        (_%__kont9975699757%_
                                                         _%hd9369694666%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9368193895%_))))))
                                            (if (gx#stx-null? _%tl9369794669%_)
                                                (_%__kont9975699757%_
                                                 _%hd9369694666%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9368193895%_))))))
                                    (if (gx#stx-null? _%tl9369794669%_)
                                        (_%__kont9975699757%_ _%hd9369694666%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9368193895%_)))))))
                        (if (let ((__tmp100201
                                   (gx#stx-length _%tl9369794669%_)))
                              (declare (not safe))
                              (##fx>= __tmp100201 '1))
                            (let ((_%__splice9975499755%_
                                   (gx#syntax-split-splice->vector
                                    _%tl9369794669%_
                                    '1)))
                              (let ((_%tl9373594560%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9975499755%_
                                        '1)))
                                    (_%target9373394557%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9975499755%_
                                        '0))))
                                (if (gx#stx-pair? _%tl9373594560%_)
                                    (let ((_%e9374294563%_
                                           (gx#syntax-e _%tl9373594560%_)))
                                      (let ((_%tl9374494570%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9374294563%_)))
                                            (_%hd9374394567%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9374294563%_))))
                                        (if (gx#stx-null? _%tl9374494570%_)
                                            (_%__match9987499875%_
                                             _%e9368894638%_
                                             _%hd9368994642%_
                                             _%tl9369094645%_
                                             _%e9369194648%_
                                             _%hd9369294652%_
                                             _%tl9369394655%_
                                             _%e9369494658%_
                                             _%e9369594662%_
                                             _%hd9369694666%_
                                             _%tl9369794669%_
                                             _%__splice9975499755%_
                                             _%target9373394557%_
                                             _%tl9373594560%_
                                             _%e9374294563%_
                                             _%hd9374394567%_
                                             _%tl9374494570%_)
                                            (if (gx#stx-null? _%tl9369794669%_)
                                                (_%__kont9975699757%_
                                                 _%hd9369694666%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9368193895%_))))))
                                    (if (gx#stx-null? _%tl9369794669%_)
                                        (_%__kont9975699757%_ _%hd9369694666%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9368193895%_))))))
                            (if (gx#stx-null? _%tl9369794669%_)
                                (_%__kont9975699757%_ _%hd9369694666%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9368193895%_)))))))
                (if (let ((__tmp100202 (gx#stx-length _%tl9369794669%_)))
                      (declare (not safe))
                      (##fx>= __tmp100202 '1))
                    (let ((_%__splice9975499755%_
                           (gx#syntax-split-splice->vector
                            _%tl9369794669%_
                            '1)))
                      (let ((_%tl9373594560%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9975499755%_ '1)))
                            (_%target9373394557%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9975499755%_ '0))))
                        (if (gx#stx-pair? _%tl9373594560%_)
                            (let ((_%e9374294563%_
                                   (gx#syntax-e _%tl9373594560%_)))
                              (let ((_%tl9374494570%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9374294563%_)))
                                    (_%hd9374394567%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9374294563%_))))
                                (if (gx#stx-null? _%tl9374494570%_)
                                    (_%__match9987499875%_
                                     _%e9368894638%_
                                     _%hd9368994642%_
                                     _%tl9369094645%_
                                     _%e9369194648%_
                                     _%hd9369294652%_
                                     _%tl9369394655%_
                                     _%e9369494658%_
                                     _%e9369594662%_
                                     _%hd9369694666%_
                                     _%tl9369794669%_
                                     _%__splice9975499755%_
                                     _%target9373394557%_
                                     _%tl9373594560%_
                                     _%e9374294563%_
                                     _%hd9374394567%_
                                     _%tl9374494570%_)
                                    (if (gx#stx-null? _%tl9369794669%_)
                                        (_%__kont9975699757%_ _%hd9369694666%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9368193895%_))))))
                            (if (gx#stx-null? _%tl9369794669%_)
                                (_%__kont9975699757%_ _%hd9369694666%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9368193895%_))))))
                    (if (gx#stx-null? _%tl9369794669%_)
                        (_%__kont9975699757%_ _%hd9369694666%_)
                        (let () (declare (not safe)) (_%g9368193895%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl9369794669%_)
                                                        (_%__kont9975699757%_
                                                         _%hd9369694666%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9368193895%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g9368193895%_)))
                                        (if (equal? _%e9369494658%_ '2)
                                            (if (gx#stx-pair? _%tl9369394655%_)
                                                (let ((_%e9376994363%_
                                                       (gx#syntax-e
                                                        _%tl9369394655%_)))
                                                  (let ((_%tl9377194370%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e9376994363%_)))
                                                        (_%hd9377094367%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e9376994363%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl9377194370%_)
                                                        (let ((_%e9377294373%_
                                                               (gx#syntax-e
                                                                _%tl9377194370%_)))
                                                          (let ((_%tl9377494380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e9377294373%_)))
                        (_%hd9377394377%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9377294373%_))))
                    (if (gx#stx-pair? _%hd9377394377%_)
                        (let ((_%e9377594383%_ (gx#syntax-e _%hd9377394377%_)))
                          (let ((_%tl9377794390%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9377594383%_)))
                                (_%hd9377694387%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9377594383%_))))
                            (if (gx#stx-pair? _%hd9377694387%_)
                                (let ((_%e9377894393%_
                                       (gx#syntax-e _%hd9377694387%_)))
                                  (let ((_%tl9378094400%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9377894393%_)))
                                        (_%hd9377994397%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9377894393%_))))
                                    (if (gx#identifier? _%hd9377994397%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g100203_|
                                             _%hd9377994397%_)
                                            (if (gx#stx-pair? _%tl9378094400%_)
                                                (let ((_%e9378194403%_
                                                       (gx#syntax-e
                                                        _%tl9378094400%_)))
                                                  (let ((_%tl9378394410%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e9378194403%_)))
                                                        (_%hd9378294407%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e9378194403%_))))
                                                    (if (gx#stx-null?
                                                         _%tl9378394410%_)
                                                        (if (gx#stx-pair?
                                                             _%tl9377794390%_)
                                                            (let ((_%e9378494413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl9377794390%_)))
                      (let ((_%tl9378694420%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9378494413%_)))
                            (_%hd9378594417%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9378494413%_))))
                        (_%__kont9975899759%_
                         _%tl9377494380%_
                         _%tl9378694420%_
                         _%hd9378594417%_
                         _%hd9378294407%_
                         _%hd9377094367%_
                         _%hd9368994642%_)))
                    (_%__kont9976099761%_
                     _%tl9377494380%_
                     _%tl9377794390%_
                     _%hd9377694387%_
                     _%hd9377094367%_
                     _%hd9368994642%_))
                (_%__kont9976099761%_
                 _%tl9377494380%_
                 _%tl9377794390%_
                 _%hd9377694387%_
                 _%hd9377094367%_
                 _%hd9368994642%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont9976099761%_
                                                 _%tl9377494380%_
                                                 _%tl9377794390%_
                                                 _%hd9377694387%_
                                                 _%hd9377094367%_
                                                 _%hd9368994642%_))
                                            (_%__kont9976099761%_
                                             _%tl9377494380%_
                                             _%tl9377794390%_
                                             _%hd9377694387%_
                                             _%hd9377094367%_
                                             _%hd9368994642%_))
                                        (_%__kont9976099761%_
                                         _%tl9377494380%_
                                         _%tl9377794390%_
                                         _%hd9377694387%_
                                         _%hd9377094367%_
                                         _%hd9368994642%_))))
                                (_%__kont9976099761%_
                                 _%tl9377494380%_
                                 _%tl9377794390%_
                                 _%hd9377694387%_
                                 _%hd9377094367%_
                                 _%hd9368994642%_))))
                        (if (gx#stx-null? _%hd9377394377%_)
                            (_%__kont9976299763%_
                             _%tl9377494380%_
                             _%hd9377094367%_
                             _%hd9368994642%_)
                            (let () (declare (not safe)) (_%g9368193895%_))))))
                (let () (declare (not safe)) (_%g9368193895%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9368193895%_)))
                                            (if (equal? _%e9369494658%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl9369394655%_)
                                                    (let ((_%e9383694112%_
                                                           (gx#syntax-e
                                                            _%tl9369394655%_)))
                                                      (let ((_%tl9383894119%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e9383694112%_)))
                    (_%hd9383794116%_
                     (let () (declare (not safe)) (##car _%e9383694112%_))))
                (if (gx#stx-pair? _%tl9383894119%_)
                    (let ((_%e9383994122%_ (gx#syntax-e _%tl9383894119%_)))
                      (let ((_%tl9384194129%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9383994122%_)))
                            (_%hd9384094126%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9383994122%_))))
                        (if (gx#stx-pair? _%hd9384094126%_)
                            (let ((_%e9384294132%_
                                   (gx#syntax-e _%hd9384094126%_)))
                              (let ((_%tl9384494139%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9384294132%_)))
                                    (_%hd9384394136%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9384294132%_))))
                                (_%__kont9976499765%_
                                 _%tl9384194129%_
                                 _%tl9384494139%_
                                 _%hd9384394136%_
                                 _%hd9383794116%_
                                 _%hd9368994642%_)))
                            (if (gx#stx-pair/null? _%hd9383794116%_)
                                (let ((_%__splice9976899769%_
                                       (gx#syntax-split-splice->vector
                                        _%hd9383794116%_
                                        '0)))
                                  (let ((_%tl9386393939%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9976899769%_
                                            '1)))
                                        (_%target9386193936%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9976899769%_
                                            '0))))
                                    (if (gx#stx-null? _%tl9386393939%_)
                                        (_%__match100096100097%_
                                         _%e9368894638%_
                                         _%hd9368994642%_
                                         _%tl9369094645%_
                                         _%e9369194648%_
                                         _%hd9369294652%_
                                         _%tl9369394655%_
                                         _%e9369494658%_
                                         _%e9383694112%_
                                         _%hd9383794116%_
                                         _%tl9383894119%_
                                         _%__splice9976899769%_
                                         _%target9386193936%_
                                         _%tl9386393939%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9368193895%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9368193895%_))))))
                    (if (gx#stx-pair/null? _%hd9383794116%_)
                        (let ((_%__splice9976899769%_
                               (gx#syntax-split-splice->vector
                                _%hd9383794116%_
                                '0)))
                          (let ((_%tl9386393939%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9976899769%_ '1)))
                                (_%target9386193936%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9976899769%_ '0))))
                            (if (gx#stx-null? _%tl9386393939%_)
                                (_%__match100096100097%_
                                 _%e9368894638%_
                                 _%hd9368994642%_
                                 _%tl9369094645%_
                                 _%e9369194648%_
                                 _%hd9369294652%_
                                 _%tl9369394655%_
                                 _%e9369494658%_
                                 _%e9383694112%_
                                 _%hd9383794116%_
                                 _%tl9383894119%_
                                 _%__splice9976899769%_
                                 _%target9386193936%_
                                 _%tl9386393939%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9368193895%_)))))
                        (let () (declare (not safe)) (_%g9368193895%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9368193895%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9368193895%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g9368193895%_)))))
                          (let () (declare (not safe)) (_%g9368193895%_)))))
                  (let () (declare (not safe)) (_%g9368193895%_))))))))))
