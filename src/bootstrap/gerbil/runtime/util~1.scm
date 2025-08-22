(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g95727_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g95737_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx88687%_)
        (let* ((_%g8869188709%_
                (lambda (_%g8869288705%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8869288705%_)))
               (_%g8869088765%_
                (lambda (_%g8869288713%_)
                  (if (gx#stx-pair? _%g8869288713%_)
                      (let ((_%e8869588716%_ (gx#syntax-e _%g8869288713%_)))
                        (let ((_%hd8869688720%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8869588716%_)))
                              (_%tl8869788723%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8869588716%_))))
                          (if (gx#stx-pair? _%tl8869788723%_)
                              (let ((_%e8869888726%_
                                     (gx#syntax-e _%tl8869788723%_)))
                                (let ((_%hd8869988730%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8869888726%_)))
                                      (_%tl8870088733%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8869888726%_))))
                                  (if (gx#stx-pair? _%tl8870088733%_)
                                      (let ((_%e8870188736%_
                                             (gx#syntax-e _%tl8870088733%_)))
                                        (let ((_%hd8870288740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8870188736%_)))
                                              (_%tl8870388743%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8870188736%_))))
                                          (if (gx#stx-null? _%tl8870388743%_)
                                              ((lambda (_%L88746%_ _%L88748%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L88748%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L88746%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8870288740%_
                                               _%hd8869988730%_)
                                              (_%g8869188709%_
                                               _%g8869288713%_))))
                                      (_%g8869188709%_ _%g8869288713%_))))
                              (_%g8869188709%_ _%g8869288713%_))))
                      (_%g8869188709%_ _%g8869288713%_)))))
          (_%g8869088765%_ _%$stx88687%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx88769%_)
        (let* ((_%g8877388787%_
                (lambda (_%g8877488783%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8877488783%_)))
               (_%g8877288828%_
                (lambda (_%g8877488791%_)
                  (if (gx#stx-pair? _%g8877488791%_)
                      (let ((_%e8877688794%_ (gx#syntax-e _%g8877488791%_)))
                        (let ((_%hd8877788798%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8877688794%_)))
                              (_%tl8877888801%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8877688794%_))))
                          (if (gx#stx-pair? _%tl8877888801%_)
                              (let ((_%e8877988804%_
                                     (gx#syntax-e _%tl8877888801%_)))
                                (let ((_%hd8878088808%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8877988804%_)))
                                      (_%tl8878188811%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8877988804%_))))
                                  (if (gx#stx-null? _%tl8878188811%_)
                                      ((lambda (_%L88814%_)
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
                                       (cons _%L88814%_
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
                                       _%hd8878088808%_)
                                      (_%g8877388787%_ _%g8877488791%_))))
                              (_%g8877388787%_ _%g8877488791%_))))
                      (_%g8877388787%_ _%g8877488791%_)))))
          (_%g8877288828%_ _%$stx88769%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx88832%_)
        (let* ((_%g8883688850%_
                (lambda (_%g8883788846%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8883788846%_)))
               (_%g8883588891%_
                (lambda (_%g8883788854%_)
                  (if (gx#stx-pair? _%g8883788854%_)
                      (let ((_%e8883988857%_ (gx#syntax-e _%g8883788854%_)))
                        (let ((_%hd8884088861%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8883988857%_)))
                              (_%tl8884188864%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8883988857%_))))
                          (if (gx#stx-pair? _%tl8884188864%_)
                              (let ((_%e8884288867%_
                                     (gx#syntax-e _%tl8884188864%_)))
                                (let ((_%hd8884388871%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8884288867%_)))
                                      (_%tl8884488874%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8884288867%_))))
                                  (if (gx#stx-null? _%tl8884488874%_)
                                      ((lambda (_%L88877%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L88877%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd8884388871%_)
                                      (_%g8883688850%_ _%g8883788854%_))))
                              (_%g8883688850%_ _%g8883788854%_))))
                      (_%g8883688850%_ _%g8883788854%_)))))
          (_%g8883588891%_ _%$stx88832%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx88895%_)
        (let* ((_%g8889988909%_
                (lambda (_%g8890088905%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8890088905%_)))
               (_%g8889888930%_
                (lambda (_%g8890088913%_)
                  (if (gx#stx-pair? _%g8890088913%_)
                      (let ((_%e8890188916%_ (gx#syntax-e _%g8890088913%_)))
                        (let ((_%hd8890288920%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8890188916%_)))
                              (_%tl8890388923%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8890188916%_))))
                          (if (gx#stx-null? _%tl8890388923%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g8889988909%_ _%g8890088913%_))))
                      (_%g8889988909%_ _%g8890088913%_)))))
          (_%g8889888930%_ _%$stx88895%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx88934%_)
        (let* ((_%g8893888956%_
                (lambda (_%g8893988952%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8893988952%_)))
               (_%g8893789011%_
                (lambda (_%g8893988960%_)
                  (if (gx#stx-pair? _%g8893988960%_)
                      (let ((_%e8894288963%_ (gx#syntax-e _%g8893988960%_)))
                        (let ((_%hd8894388967%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8894288963%_)))
                              (_%tl8894488970%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8894288963%_))))
                          (if (gx#stx-pair? _%tl8894488970%_)
                              (let ((_%e8894588973%_
                                     (gx#syntax-e _%tl8894488970%_)))
                                (let ((_%hd8894688977%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8894588973%_)))
                                      (_%tl8894788980%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8894588973%_))))
                                  (if (gx#stx-pair? _%tl8894788980%_)
                                      (let ((_%e8894888983%_
                                             (gx#syntax-e _%tl8894788980%_)))
                                        (let ((_%hd8894988987%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8894888983%_)))
                                              (_%tl8895088990%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8894888983%_))))
                                          (if (gx#stx-null? _%tl8895088990%_)
                                              ((lambda (_%L88993%_ _%L88995%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L88995%_
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
                 (cons (cons _%L88993%_
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
                                               _%hd8894988987%_
                                               _%hd8894688977%_)
                                              (_%g8893888956%_
                                               _%g8893988960%_))))
                                      (_%g8893888956%_ _%g8893988960%_))))
                              (_%g8893888956%_ _%g8893988960%_))))
                      (_%g8893888956%_ _%g8893988960%_)))))
          (_%g8893789011%_ _%$stx88934%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx89015%_)
        (let* ((_%g8901989037%_
                (lambda (_%g8902089033%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8902089033%_)))
               (_%g8901889092%_
                (lambda (_%g8902089041%_)
                  (if (gx#stx-pair? _%g8902089041%_)
                      (let ((_%e8902389044%_ (gx#syntax-e _%g8902089041%_)))
                        (let ((_%hd8902489048%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8902389044%_)))
                              (_%tl8902589051%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8902389044%_))))
                          (if (gx#stx-pair? _%tl8902589051%_)
                              (let ((_%e8902689054%_
                                     (gx#syntax-e _%tl8902589051%_)))
                                (let ((_%hd8902789058%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8902689054%_)))
                                      (_%tl8902889061%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8902689054%_))))
                                  (if (gx#stx-pair? _%tl8902889061%_)
                                      (let ((_%e8902989064%_
                                             (gx#syntax-e _%tl8902889061%_)))
                                        (let ((_%hd8903089068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8902989064%_)))
                                              (_%tl8903189071%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8902989064%_))))
                                          (if (gx#stx-null? _%tl8903189071%_)
                                              ((lambda (_%L89074%_ _%L89076%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L89076%_
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
                                               (cons (cons _%L89074%_
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
                                               _%hd8903089068%_
                                               _%hd8902789058%_)
                                              (_%g8901989037%_
                                               _%g8902089041%_))))
                                      (_%g8901989037%_ _%g8902089041%_))))
                              (_%g8901989037%_ _%g8902089041%_))))
                      (_%g8901989037%_ _%g8902089041%_)))))
          (_%g8901889092%_ _%$stx89015%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx89096%_)
        (let* ((_%g8910089118%_
                (lambda (_%g8910189114%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8910189114%_)))
               (_%g8909989173%_
                (lambda (_%g8910189122%_)
                  (if (gx#stx-pair? _%g8910189122%_)
                      (let ((_%e8910489125%_ (gx#syntax-e _%g8910189122%_)))
                        (let ((_%hd8910589129%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8910489125%_)))
                              (_%tl8910689132%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8910489125%_))))
                          (if (gx#stx-pair? _%tl8910689132%_)
                              (let ((_%e8910789135%_
                                     (gx#syntax-e _%tl8910689132%_)))
                                (let ((_%hd8910889139%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8910789135%_)))
                                      (_%tl8910989142%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8910789135%_))))
                                  (if (gx#stx-pair? _%tl8910989142%_)
                                      (let ((_%e8911089145%_
                                             (gx#syntax-e _%tl8910989142%_)))
                                        (let ((_%hd8911189149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8911089145%_)))
                                              (_%tl8911289152%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8911089145%_))))
                                          (if (gx#stx-null? _%tl8911289152%_)
                                              ((lambda (_%L89155%_ _%L89157%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L89157%_
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
                                               (cons (cons _%L89155%_
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
                                               _%hd8911189149%_
                                               _%hd8910889139%_)
                                              (_%g8910089118%_
                                               _%g8910189122%_))))
                                      (_%g8910089118%_ _%g8910189122%_))))
                              (_%g8910089118%_ _%g8910189122%_))))
                      (_%g8910089118%_ _%g8910189122%_)))))
          (_%g8909989173%_ _%$stx89096%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx89177%_)
        (let* ((_%g8918189192%_
                (lambda (_%g8918289188%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8918289188%_)))
               (_%g8918089221%_
                (lambda (_%g8918289196%_)
                  (if (gx#stx-pair? _%g8918289196%_)
                      (let ((_%e8918489199%_ (gx#syntax-e _%g8918289196%_)))
                        (let ((_%hd8918589203%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8918489199%_)))
                              (_%tl8918689206%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8918489199%_))))
                          ((lambda (_%L89209%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L89209%_)))
                           _%tl8918689206%_)))
                      (_%g8918189192%_ _%g8918289196%_)))))
          (_%g8918089221%_ _%$stx89177%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx89225%_)
        (let* ((_%__stx9527895279%_ _%$stx89225%_)
               (_%g8923689450%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9527895279%_))))
          (let ((_%__kont9528195282%_
                 (lambda (_%L90303%_
                          _%L90305%_
                          _%L90306%_
                          _%L90307%_
                          _%L90308%_)
                   (cons _%L90308%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g9033890341%_
                                                     _%g9033990344%_)
                                              (cons _%g9033890341%_
                                                    _%g9033990344%_))
                                            '()
                                            _%L90306%_)
                                           (cons _%L90307%_
                                                 (cons _%L90305%_
                                                       (cons _%L90303%_
                                                             '())))))))))
                (_%__kont9528595286%_
                 (lambda (_%L90156%_ _%L90158%_ _%L90159%_ _%L90160%_)
                   (cons _%L90160%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g9018390186%_
                                                     _%g9018490189%_)
                                              (cons _%g9018390186%_
                                                    _%g9018490189%_))
                                            '()
                                            _%L90158%_)
                                           (cons _%L90159%_
                                                 (cons _%L90156%_
                                                       (cons _%L90156%_
                                                             '())))))))))
                (_%__kont9528995290%_
                 (lambda (_%L90059%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L90059%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont9529195292%_
                 (lambda (_%L89982%_
                          _%L89984%_
                          _%L89985%_
                          _%L89986%_
                          _%L89987%_
                          _%L89988%_)
                   (cons _%L89988%_
                         (cons '2
                               (cons (cons (cons _%L89986%_
                                                 (cons _%L89985%_ '()))
                                           _%L89987%_)
                                     (cons _%L89984%_ _%L89982%_))))))
                (_%__kont9529395294%_
                 (lambda (_%L89863%_
                          _%L89865%_
                          _%L89866%_
                          _%L89867%_
                          _%L89868%_)
                   (cons _%L89868%_
                         (cons '2
                               (cons (cons (cons _%L89866%_
                                                 (cons _%L89866%_ '()))
                                           _%L89867%_)
                                     (cons _%L89865%_ _%L89863%_))))))
                (_%__kont9529595296%_
                 (lambda (_%L89780%_ _%L89782%_ _%L89783%_)
                   (cons _%L89783%_
                         (cons '3 (cons '() (cons _%L89782%_ _%L89780%_))))))
                (_%__kont9529795298%_
                 (lambda (_%L89701%_
                          _%L89703%_
                          _%L89704%_
                          _%L89705%_
                          _%L89706%_)
                   (cons _%L89706%_
                         (cons '3
                               (cons (cons _%L89704%_ _%L89705%_)
                                     (cons _%L89703%_ _%L89701%_))))))
                (_%__kont9529995300%_
                 (lambda (_%L89585%_
                          _%L89587%_
                          _%L89588%_
                          _%L89589%_
                          _%L89590%_
                          _%L89591%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L89588%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L89585%_ '())))
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
                                              (lambda (_%g8962389628%_
                                                       _%g8962489631%_)
                                                (cons _%g8962389628%_
                                                      _%g8962489631%_))
                                              '()
                                              _%L89590%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (__foldr1
                                              (lambda (_%g8962589634%_
                                                       _%g8962689637%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g8962589634%_ '())))
              _%g8962689637%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L89589%_))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L89587%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9562995630%_
                    (lambda (_%e8940689457%_
                             _%hd8940789461%_
                             _%tl8940889464%_
                             _%e8940989467%_
                             _%hd8941089471%_
                             _%tl8941189474%_
                             _%e8941289477%_
                             _%e8941389481%_
                             _%hd8941489485%_
                             _%tl8941589488%_
                             _%__splice9530195302%_
                             _%target8941689491%_
                             _%tl8941889494%_)
                      (letrec ((_%loop8941989497%_
                                (lambda (_%hd8941789501%_
                                         _%exprs8942389504%_
                                         _%names8942489506%_)
                                  (if (gx#stx-pair? _%hd8941789501%_)
                                      (let ((_%e8942089509%_
                                             (gx#syntax-e _%hd8941789501%_)))
                                        (let ((_%lp-tl8942289516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8942089509%_)))
                                              (_%lp-hd8942189513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8942089509%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd8942189513%_)
                                              (let ((_%e8942789519%_
                                                     (gx#syntax-e
                                                      _%lp-hd8942189513%_)))
                                                (let ((_%tl8942989526%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8942789519%_)))
                                                      (_%hd8942889523%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8942789519%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8942989526%_)
                                                      (let ((_%e8943089529%_
                                                             (gx#syntax-e
                                                              _%tl8942989526%_)))
                                                        (let ((_%tl8943289536%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8943089529%_)))
                      (_%hd8943189533%_
                       (let () (declare (not safe)) (##car _%e8943089529%_))))
                  (if (gx#stx-null? _%tl8943289536%_)
                      (_%loop8941989497%_
                       _%lp-tl8942289516%_
                       (cons _%hd8943189533%_ _%exprs8942389504%_)
                       (cons _%hd8942889523%_ _%names8942489506%_))
                      (let () (declare (not safe)) (_%g8923689450%_)))))
              (let () (declare (not safe)) (_%g8923689450%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g8923689450%_)))))
                                      (let ((_%names8942689542%_
                                             (reverse _%names8942489506%_))
                                            (_%exprs8942589539%_
                                             (reverse _%exprs8942389504%_)))
                                        (if (gx#stx-pair? _%tl8941589488%_)
                                            (let ((_%e8943389545%_
                                                   (gx#syntax-e
                                                    _%tl8941589488%_)))
                                              (let ((_%tl8943589552%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8943389545%_)))
                                                    (_%hd8943489549%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8943389545%_))))
                                                (if (gx#stx-null?
                                                     _%hd8943489549%_)
                                                    (if (gx#stx-pair?
                                                         _%tl8943589552%_)
                                                        (let ((_%e8943689555%_
                                                               (gx#syntax-e
                                                                _%tl8943589552%_)))
                                                          (let ((_%tl8943889562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8943689555%_)))
                        (_%hd8943789559%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8943689555%_))))
                    (if (gx#stx-pair? _%tl8943889562%_)
                        (let ((_%e8943989565%_ (gx#syntax-e _%tl8943889562%_)))
                          (let ((_%tl8944189572%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8943989565%_)))
                                (_%hd8944089569%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8943989565%_))))
                            (if (gx#stx-pair? _%tl8944189572%_)
                                (let ((_%e8944289575%_
                                       (gx#syntax-e _%tl8944189572%_)))
                                  (let ((_%tl8944489582%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8944289575%_)))
                                        (_%hd8944389579%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8944289575%_))))
                                    (if (gx#stx-null? _%tl8944489582%_)
                                        (_%__kont9529995300%_
                                         _%hd8944389579%_
                                         _%hd8944089569%_
                                         _%hd8943789559%_
                                         _%exprs8942589539%_
                                         _%names8942689542%_
                                         _%hd8940789461%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8923689450%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8923689450%_)))))
                        (let () (declare (not safe)) (_%g8923689450%_)))))
                (let () (declare (not safe)) (_%g8923689450%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8923689450%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8923689450%_))))))))
                        (_%loop8941989497%_ _%target8941689491%_ '() '()))))
                   (_%__match9540795408%_
                    (lambda (_%e8927890082%_
                             _%hd8927990086%_
                             _%tl8928090089%_
                             _%e8928190092%_
                             _%hd8928290096%_
                             _%tl8928390099%_
                             _%e8928490102%_
                             _%e8928590106%_
                             _%hd8928690110%_
                             _%tl8928790113%_
                             _%__splice9528795288%_
                             _%target8928890116%_
                             _%tl8929090119%_
                             _%e8929790122%_
                             _%hd8929890126%_
                             _%tl8929990129%_)
                      (letrec ((_%loop8929190132%_
                                (lambda (_%hd8928990136%_ _%exprs8929590139%_)
                                  (if (gx#stx-pair? _%hd8928990136%_)
                                      (let ((_%e8929290142%_
                                             (gx#syntax-e _%hd8928990136%_)))
                                        (let ((_%lp-tl8929490149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8929290142%_)))
                                              (_%lp-hd8929390146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8929290142%_))))
                                          (_%loop8929190132%_
                                           _%lp-tl8929490149%_
                                           (cons _%lp-hd8929390146%_
                                                 _%exprs8929590139%_))))
                                      (let ((_%exprs8929690152%_
                                             (reverse _%exprs8929590139%_)))
                                        (_%__kont9528595286%_
                                         _%hd8929890126%_
                                         _%exprs8929690152%_
                                         _%hd8928690110%_
                                         _%hd8927990086%_))))))
                        (_%loop8929190132%_ _%target8928890116%_ '()))))
                   (_%__match9536795368%_
                    (lambda (_%e8924390199%_
                             _%hd8924490203%_
                             _%tl8924590206%_
                             _%e8924690209%_
                             _%hd8924790213%_
                             _%tl8924890216%_
                             _%e8924990219%_
                             _%e8925090223%_
                             _%hd8925190227%_
                             _%tl8925290230%_
                             _%__splice9528395284%_
                             _%target8925390233%_
                             _%tl8925590236%_
                             _%e8926290239%_
                             _%hd8926390243%_
                             _%tl8926490246%_
                             _%e8926590249%_
                             _%hd8926690253%_
                             _%tl8926790256%_
                             _%e8926890259%_
                             _%hd8926990263%_
                             _%tl8927090266%_
                             _%e8927190269%_
                             _%hd8927290273%_
                             _%tl8927390276%_)
                      (letrec ((_%loop8925690279%_
                                (lambda (_%hd8925490283%_ _%exprs8926090286%_)
                                  (if (gx#stx-pair? _%hd8925490283%_)
                                      (let ((_%e8925790289%_
                                             (gx#syntax-e _%hd8925490283%_)))
                                        (let ((_%lp-tl8925990296%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8925790289%_)))
                                              (_%lp-hd8925890293%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8925790289%_))))
                                          (_%loop8925690279%_
                                           _%lp-tl8925990296%_
                                           (cons _%lp-hd8925890293%_
                                                 _%exprs8926090286%_))))
                                      (let ((_%exprs8926190299%_
                                             (reverse _%exprs8926090286%_)))
                                        (_%__kont9528195282%_
                                         _%hd8927290273%_
                                         _%hd8926990263%_
                                         _%exprs8926190299%_
                                         _%hd8925190227%_
                                         _%hd8924490203%_))))))
                        (_%loop8925690279%_ _%target8925390233%_ '())))))
              (if (gx#stx-pair? _%__stx9527895279%_)
                  (let ((_%e8924390199%_ (gx#syntax-e _%__stx9527895279%_)))
                    (let ((_%tl8924590206%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e8924390199%_)))
                          (_%hd8924490203%_
                           (let ()
                             (declare (not safe))
                             (##car _%e8924390199%_))))
                      (if (gx#stx-pair? _%tl8924590206%_)
                          (let ((_%e8924690209%_
                                 (gx#syntax-e _%tl8924590206%_)))
                            (let ((_%tl8924890216%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e8924690209%_)))
                                  (_%hd8924790213%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e8924690209%_))))
                              (if (gx#stx-datum? _%hd8924790213%_)
                                  (let ((_%e8924990219%_
                                         (gx#stx-e _%hd8924790213%_)))
                                    (if (equal? _%e8924990219%_ '1)
                                        (if (gx#stx-pair? _%tl8924890216%_)
                                            (let ((_%e8925090223%_
                                                   (gx#syntax-e
                                                    _%tl8924890216%_)))
                                              (let ((_%tl8925290230%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8925090223%_)))
                                                    (_%hd8925190227%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8925090223%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl8925290230%_)
                                                    (if (let ((__tmp95726
                                                               (gx#stx-length
                                                                _%tl8925290230%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp95726
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice9528395284%_
                       (gx#syntax-split-splice->vector _%tl8925290230%_ '2)))
                  (let ((_%tl8925590236%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9528395284%_ '1)))
                        (_%target8925390233%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9528395284%_ '0))))
                    (if (gx#stx-pair? _%tl8925590236%_)
                        (let ((_%e8926290239%_ (gx#syntax-e _%tl8925590236%_)))
                          (let ((_%tl8926490246%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8926290239%_)))
                                (_%hd8926390243%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8926290239%_))))
                            (if (gx#stx-pair? _%hd8926390243%_)
                                (let ((_%e8926590249%_
                                       (gx#syntax-e _%hd8926390243%_)))
                                  (let ((_%tl8926790256%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8926590249%_)))
                                        (_%hd8926690253%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8926590249%_))))
                                    (if (gx#identifier? _%hd8926690253%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g95727_|
                                             _%hd8926690253%_)
                                            (if (gx#stx-pair? _%tl8926790256%_)
                                                (let ((_%e8926890259%_
                                                       (gx#syntax-e
                                                        _%tl8926790256%_)))
                                                  (let ((_%tl8927090266%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8926890259%_)))
                                                        (_%hd8926990263%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8926890259%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8927090266%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8926490246%_)
                                                            (let ((_%e8927190269%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8926490246%_)))
                      (let ((_%tl8927390276%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8927190269%_)))
                            (_%hd8927290273%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8927190269%_))))
                        (if (gx#stx-null? _%tl8927390276%_)
                            (_%__match9536795368%_
                             _%e8924390199%_
                             _%hd8924490203%_
                             _%tl8924590206%_
                             _%e8924690209%_
                             _%hd8924790213%_
                             _%tl8924890216%_
                             _%e8924990219%_
                             _%e8925090223%_
                             _%hd8925190227%_
                             _%tl8925290230%_
                             _%__splice9528395284%_
                             _%target8925390233%_
                             _%tl8925590236%_
                             _%e8926290239%_
                             _%hd8926390243%_
                             _%tl8926490246%_
                             _%e8926590249%_
                             _%hd8926690253%_
                             _%tl8926790256%_
                             _%e8926890259%_
                             _%hd8926990263%_
                             _%tl8927090266%_
                             _%e8927190269%_
                             _%hd8927290273%_
                             _%tl8927390276%_)
                            (if (let ((__tmp95728
                                       (gx#stx-length _%tl8925290230%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp95728 '1))
                                (let ((_%__splice9528795288%_
                                       (gx#syntax-split-splice->vector
                                        _%tl8925290230%_
                                        '1)))
                                  (let ((_%tl8929090119%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9528795288%_
                                            '1)))
                                        (_%target8928890116%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9528795288%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl8929090119%_)
                                        (let ((_%e8929790122%_
                                               (gx#syntax-e _%tl8929090119%_)))
                                          (let ((_%tl8929990129%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e8929790122%_)))
                                                (_%hd8929890126%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e8929790122%_))))
                                            (if (gx#stx-null? _%tl8929990129%_)
                                                (_%__match9540795408%_
                                                 _%e8924390199%_
                                                 _%hd8924490203%_
                                                 _%tl8924590206%_
                                                 _%e8924690209%_
                                                 _%hd8924790213%_
                                                 _%tl8924890216%_
                                                 _%e8924990219%_
                                                 _%e8925090223%_
                                                 _%hd8925190227%_
                                                 _%tl8925290230%_
                                                 _%__splice9528795288%_
                                                 _%target8928890116%_
                                                 _%tl8929090119%_
                                                 _%e8929790122%_
                                                 _%hd8929890126%_
                                                 _%tl8929990129%_)
                                                (if (gx#stx-null?
                                                     _%tl8925290230%_)
                                                    (_%__kont9528995290%_
                                                     _%hd8925190227%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8923689450%_))))))
                                        (if (gx#stx-null? _%tl8925290230%_)
                                            (_%__kont9528995290%_
                                             _%hd8925190227%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8923689450%_))))))
                                (if (gx#stx-null? _%tl8925290230%_)
                                    (_%__kont9528995290%_ _%hd8925190227%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8923689450%_)))))))
                    (if (let ((__tmp95729 (gx#stx-length _%tl8925290230%_)))
                          (declare (not safe))
                          (##fx>= __tmp95729 '1))
                        (let ((_%__splice9528795288%_
                               (gx#syntax-split-splice->vector
                                _%tl8925290230%_
                                '1)))
                          (let ((_%tl8929090119%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9528795288%_ '1)))
                                (_%target8928890116%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9528795288%_ '0))))
                            (if (gx#stx-pair? _%tl8929090119%_)
                                (let ((_%e8929790122%_
                                       (gx#syntax-e _%tl8929090119%_)))
                                  (let ((_%tl8929990129%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8929790122%_)))
                                        (_%hd8929890126%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8929790122%_))))
                                    (if (gx#stx-null? _%tl8929990129%_)
                                        (_%__match9540795408%_
                                         _%e8924390199%_
                                         _%hd8924490203%_
                                         _%tl8924590206%_
                                         _%e8924690209%_
                                         _%hd8924790213%_
                                         _%tl8924890216%_
                                         _%e8924990219%_
                                         _%e8925090223%_
                                         _%hd8925190227%_
                                         _%tl8925290230%_
                                         _%__splice9528795288%_
                                         _%target8928890116%_
                                         _%tl8929090119%_
                                         _%e8929790122%_
                                         _%hd8929890126%_
                                         _%tl8929990129%_)
                                        (if (gx#stx-null? _%tl8925290230%_)
                                            (_%__kont9528995290%_
                                             _%hd8925190227%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8923689450%_))))))
                                (if (gx#stx-null? _%tl8925290230%_)
                                    (_%__kont9528995290%_ _%hd8925190227%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8923689450%_))))))
                        (if (gx#stx-null? _%tl8925290230%_)
                            (_%__kont9528995290%_ _%hd8925190227%_)
                            (let () (declare (not safe)) (_%g8923689450%_)))))
                (if (let ((__tmp95730 (gx#stx-length _%tl8925290230%_)))
                      (declare (not safe))
                      (##fx>= __tmp95730 '1))
                    (let ((_%__splice9528795288%_
                           (gx#syntax-split-splice->vector
                            _%tl8925290230%_
                            '1)))
                      (let ((_%tl8929090119%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9528795288%_ '1)))
                            (_%target8928890116%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9528795288%_ '0))))
                        (if (gx#stx-pair? _%tl8929090119%_)
                            (let ((_%e8929790122%_
                                   (gx#syntax-e _%tl8929090119%_)))
                              (let ((_%tl8929990129%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8929790122%_)))
                                    (_%hd8929890126%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8929790122%_))))
                                (if (gx#stx-null? _%tl8929990129%_)
                                    (_%__match9540795408%_
                                     _%e8924390199%_
                                     _%hd8924490203%_
                                     _%tl8924590206%_
                                     _%e8924690209%_
                                     _%hd8924790213%_
                                     _%tl8924890216%_
                                     _%e8924990219%_
                                     _%e8925090223%_
                                     _%hd8925190227%_
                                     _%tl8925290230%_
                                     _%__splice9528795288%_
                                     _%target8928890116%_
                                     _%tl8929090119%_
                                     _%e8929790122%_
                                     _%hd8929890126%_
                                     _%tl8929990129%_)
                                    (if (gx#stx-null? _%tl8925290230%_)
                                        (_%__kont9528995290%_ _%hd8925190227%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8923689450%_))))))
                            (if (gx#stx-null? _%tl8925290230%_)
                                (_%__kont9528995290%_ _%hd8925190227%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8923689450%_))))))
                    (if (gx#stx-null? _%tl8925290230%_)
                        (_%__kont9528995290%_ _%hd8925190227%_)
                        (let () (declare (not safe)) (_%g8923689450%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp95731
                                                           (gx#stx-length
                                                            _%tl8925290230%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp95731 '1))
                                                    (let ((_%__splice9528795288%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl8925290230%_
                                                            '1)))
                                                      (let ((_%tl8929090119%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9528795288%_ '1)))
                    (_%target8928890116%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9528795288%_ '0))))
                (if (gx#stx-pair? _%tl8929090119%_)
                    (let ((_%e8929790122%_ (gx#syntax-e _%tl8929090119%_)))
                      (let ((_%tl8929990129%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8929790122%_)))
                            (_%hd8929890126%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8929790122%_))))
                        (if (gx#stx-null? _%tl8929990129%_)
                            (_%__match9540795408%_
                             _%e8924390199%_
                             _%hd8924490203%_
                             _%tl8924590206%_
                             _%e8924690209%_
                             _%hd8924790213%_
                             _%tl8924890216%_
                             _%e8924990219%_
                             _%e8925090223%_
                             _%hd8925190227%_
                             _%tl8925290230%_
                             _%__splice9528795288%_
                             _%target8928890116%_
                             _%tl8929090119%_
                             _%e8929790122%_
                             _%hd8929890126%_
                             _%tl8929990129%_)
                            (if (gx#stx-null? _%tl8925290230%_)
                                (_%__kont9528995290%_ _%hd8925190227%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8923689450%_))))))
                    (if (gx#stx-null? _%tl8925290230%_)
                        (_%__kont9528995290%_ _%hd8925190227%_)
                        (let () (declare (not safe)) (_%g8923689450%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8925290230%_)
                                                        (_%__kont9528995290%_
                                                         _%hd8925190227%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8923689450%_)))))
                                            (if (let ((__tmp95732
                                                       (gx#stx-length
                                                        _%tl8925290230%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp95732 '1))
                                                (let ((_%__splice9528795288%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl8925290230%_
                                                        '1)))
                                                  (let ((_%tl8929090119%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9528795288%_
                                                            '1)))
                                                        (_%target8928890116%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9528795288%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl8929090119%_)
                                                        (let ((_%e8929790122%_
                                                               (gx#syntax-e
                                                                _%tl8929090119%_)))
                                                          (let ((_%tl8929990129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8929790122%_)))
                        (_%hd8929890126%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8929790122%_))))
                    (if (gx#stx-null? _%tl8929990129%_)
                        (_%__match9540795408%_
                         _%e8924390199%_
                         _%hd8924490203%_
                         _%tl8924590206%_
                         _%e8924690209%_
                         _%hd8924790213%_
                         _%tl8924890216%_
                         _%e8924990219%_
                         _%e8925090223%_
                         _%hd8925190227%_
                         _%tl8925290230%_
                         _%__splice9528795288%_
                         _%target8928890116%_
                         _%tl8929090119%_
                         _%e8929790122%_
                         _%hd8929890126%_
                         _%tl8929990129%_)
                        (if (gx#stx-null? _%tl8925290230%_)
                            (_%__kont9528995290%_ _%hd8925190227%_)
                            (let () (declare (not safe)) (_%g8923689450%_))))))
                (if (gx#stx-null? _%tl8925290230%_)
                    (_%__kont9528995290%_ _%hd8925190227%_)
                    (let () (declare (not safe)) (_%g8923689450%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl8925290230%_)
                                                    (_%__kont9528995290%_
                                                     _%hd8925190227%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8923689450%_)))))
                                        (if (let ((__tmp95733
                                                   (gx#stx-length
                                                    _%tl8925290230%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp95733 '1))
                                            (let ((_%__splice9528795288%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl8925290230%_
                                                    '1)))
                                              (let ((_%tl8929090119%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9528795288%_
                                                        '1)))
                                                    (_%target8928890116%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9528795288%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl8929090119%_)
                                                    (let ((_%e8929790122%_
                                                           (gx#syntax-e
                                                            _%tl8929090119%_)))
                                                      (let ((_%tl8929990129%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8929790122%_)))
                    (_%hd8929890126%_
                     (let () (declare (not safe)) (##car _%e8929790122%_))))
                (if (gx#stx-null? _%tl8929990129%_)
                    (_%__match9540795408%_
                     _%e8924390199%_
                     _%hd8924490203%_
                     _%tl8924590206%_
                     _%e8924690209%_
                     _%hd8924790213%_
                     _%tl8924890216%_
                     _%e8924990219%_
                     _%e8925090223%_
                     _%hd8925190227%_
                     _%tl8925290230%_
                     _%__splice9528795288%_
                     _%target8928890116%_
                     _%tl8929090119%_
                     _%e8929790122%_
                     _%hd8929890126%_
                     _%tl8929990129%_)
                    (if (gx#stx-null? _%tl8925290230%_)
                        (_%__kont9528995290%_ _%hd8925190227%_)
                        (let () (declare (not safe)) (_%g8923689450%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8925290230%_)
                                                        (_%__kont9528995290%_
                                                         _%hd8925190227%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8923689450%_))))))
                                            (if (gx#stx-null? _%tl8925290230%_)
                                                (_%__kont9528995290%_
                                                 _%hd8925190227%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8923689450%_)))))))
                                (if (let ((__tmp95734
                                           (gx#stx-length _%tl8925290230%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp95734 '1))
                                    (let ((_%__splice9528795288%_
                                           (gx#syntax-split-splice->vector
                                            _%tl8925290230%_
                                            '1)))
                                      (let ((_%tl8929090119%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9528795288%_
                                                '1)))
                                            (_%target8928890116%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9528795288%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl8929090119%_)
                                            (let ((_%e8929790122%_
                                                   (gx#syntax-e
                                                    _%tl8929090119%_)))
                                              (let ((_%tl8929990129%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8929790122%_)))
                                                    (_%hd8929890126%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8929790122%_))))
                                                (if (gx#stx-null?
                                                     _%tl8929990129%_)
                                                    (_%__match9540795408%_
                                                     _%e8924390199%_
                                                     _%hd8924490203%_
                                                     _%tl8924590206%_
                                                     _%e8924690209%_
                                                     _%hd8924790213%_
                                                     _%tl8924890216%_
                                                     _%e8924990219%_
                                                     _%e8925090223%_
                                                     _%hd8925190227%_
                                                     _%tl8925290230%_
                                                     _%__splice9528795288%_
                                                     _%target8928890116%_
                                                     _%tl8929090119%_
                                                     _%e8929790122%_
                                                     _%hd8929890126%_
                                                     _%tl8929990129%_)
                                                    (if (gx#stx-null?
                                                         _%tl8925290230%_)
                                                        (_%__kont9528995290%_
                                                         _%hd8925190227%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8923689450%_))))))
                                            (if (gx#stx-null? _%tl8925290230%_)
                                                (_%__kont9528995290%_
                                                 _%hd8925190227%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8923689450%_))))))
                                    (if (gx#stx-null? _%tl8925290230%_)
                                        (_%__kont9528995290%_ _%hd8925190227%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8923689450%_)))))))
                        (if (let ((__tmp95735
                                   (gx#stx-length _%tl8925290230%_)))
                              (declare (not safe))
                              (##fx>= __tmp95735 '1))
                            (let ((_%__splice9528795288%_
                                   (gx#syntax-split-splice->vector
                                    _%tl8925290230%_
                                    '1)))
                              (let ((_%tl8929090119%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9528795288%_
                                        '1)))
                                    (_%target8928890116%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9528795288%_
                                        '0))))
                                (if (gx#stx-pair? _%tl8929090119%_)
                                    (let ((_%e8929790122%_
                                           (gx#syntax-e _%tl8929090119%_)))
                                      (let ((_%tl8929990129%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8929790122%_)))
                                            (_%hd8929890126%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8929790122%_))))
                                        (if (gx#stx-null? _%tl8929990129%_)
                                            (_%__match9540795408%_
                                             _%e8924390199%_
                                             _%hd8924490203%_
                                             _%tl8924590206%_
                                             _%e8924690209%_
                                             _%hd8924790213%_
                                             _%tl8924890216%_
                                             _%e8924990219%_
                                             _%e8925090223%_
                                             _%hd8925190227%_
                                             _%tl8925290230%_
                                             _%__splice9528795288%_
                                             _%target8928890116%_
                                             _%tl8929090119%_
                                             _%e8929790122%_
                                             _%hd8929890126%_
                                             _%tl8929990129%_)
                                            (if (gx#stx-null? _%tl8925290230%_)
                                                (_%__kont9528995290%_
                                                 _%hd8925190227%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8923689450%_))))))
                                    (if (gx#stx-null? _%tl8925290230%_)
                                        (_%__kont9528995290%_ _%hd8925190227%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8923689450%_))))))
                            (if (gx#stx-null? _%tl8925290230%_)
                                (_%__kont9528995290%_ _%hd8925190227%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8923689450%_)))))))
                (if (let ((__tmp95736 (gx#stx-length _%tl8925290230%_)))
                      (declare (not safe))
                      (##fx>= __tmp95736 '1))
                    (let ((_%__splice9528795288%_
                           (gx#syntax-split-splice->vector
                            _%tl8925290230%_
                            '1)))
                      (let ((_%tl8929090119%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9528795288%_ '1)))
                            (_%target8928890116%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9528795288%_ '0))))
                        (if (gx#stx-pair? _%tl8929090119%_)
                            (let ((_%e8929790122%_
                                   (gx#syntax-e _%tl8929090119%_)))
                              (let ((_%tl8929990129%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8929790122%_)))
                                    (_%hd8929890126%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8929790122%_))))
                                (if (gx#stx-null? _%tl8929990129%_)
                                    (_%__match9540795408%_
                                     _%e8924390199%_
                                     _%hd8924490203%_
                                     _%tl8924590206%_
                                     _%e8924690209%_
                                     _%hd8924790213%_
                                     _%tl8924890216%_
                                     _%e8924990219%_
                                     _%e8925090223%_
                                     _%hd8925190227%_
                                     _%tl8925290230%_
                                     _%__splice9528795288%_
                                     _%target8928890116%_
                                     _%tl8929090119%_
                                     _%e8929790122%_
                                     _%hd8929890126%_
                                     _%tl8929990129%_)
                                    (if (gx#stx-null? _%tl8925290230%_)
                                        (_%__kont9528995290%_ _%hd8925190227%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8923689450%_))))))
                            (if (gx#stx-null? _%tl8925290230%_)
                                (_%__kont9528995290%_ _%hd8925190227%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8923689450%_))))))
                    (if (gx#stx-null? _%tl8925290230%_)
                        (_%__kont9528995290%_ _%hd8925190227%_)
                        (let () (declare (not safe)) (_%g8923689450%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8925290230%_)
                                                        (_%__kont9528995290%_
                                                         _%hd8925190227%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8923689450%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8923689450%_)))
                                        (if (equal? _%e8924990219%_ '2)
                                            (if (gx#stx-pair? _%tl8924890216%_)
                                                (let ((_%e8932489922%_
                                                       (gx#syntax-e
                                                        _%tl8924890216%_)))
                                                  (let ((_%tl8932689929%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8932489922%_)))
                                                        (_%hd8932589926%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8932489922%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl8932689929%_)
                                                        (let ((_%e8932789932%_
                                                               (gx#syntax-e
                                                                _%tl8932689929%_)))
                                                          (let ((_%tl8932989939%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8932789932%_)))
                        (_%hd8932889936%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8932789932%_))))
                    (if (gx#stx-pair? _%hd8932889936%_)
                        (let ((_%e8933089942%_ (gx#syntax-e _%hd8932889936%_)))
                          (let ((_%tl8933289949%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8933089942%_)))
                                (_%hd8933189946%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8933089942%_))))
                            (if (gx#stx-pair? _%hd8933189946%_)
                                (let ((_%e8933389952%_
                                       (gx#syntax-e _%hd8933189946%_)))
                                  (let ((_%tl8933589959%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8933389952%_)))
                                        (_%hd8933489956%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8933389952%_))))
                                    (if (gx#identifier? _%hd8933489956%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g95737_|
                                             _%hd8933489956%_)
                                            (if (gx#stx-pair? _%tl8933589959%_)
                                                (let ((_%e8933689962%_
                                                       (gx#syntax-e
                                                        _%tl8933589959%_)))
                                                  (let ((_%tl8933889969%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8933689962%_)))
                                                        (_%hd8933789966%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8933689962%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8933889969%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8933289949%_)
                                                            (let ((_%e8933989972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8933289949%_)))
                      (let ((_%tl8934189979%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8933989972%_)))
                            (_%hd8934089976%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8933989972%_))))
                        (_%__kont9529195292%_
                         _%tl8932989939%_
                         _%tl8934189979%_
                         _%hd8934089976%_
                         _%hd8933789966%_
                         _%hd8932589926%_
                         _%hd8924490203%_)))
                    (_%__kont9529395294%_
                     _%tl8932989939%_
                     _%tl8933289949%_
                     _%hd8933189946%_
                     _%hd8932589926%_
                     _%hd8924490203%_))
                (_%__kont9529395294%_
                 _%tl8932989939%_
                 _%tl8933289949%_
                 _%hd8933189946%_
                 _%hd8932589926%_
                 _%hd8924490203%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont9529395294%_
                                                 _%tl8932989939%_
                                                 _%tl8933289949%_
                                                 _%hd8933189946%_
                                                 _%hd8932589926%_
                                                 _%hd8924490203%_))
                                            (_%__kont9529395294%_
                                             _%tl8932989939%_
                                             _%tl8933289949%_
                                             _%hd8933189946%_
                                             _%hd8932589926%_
                                             _%hd8924490203%_))
                                        (_%__kont9529395294%_
                                         _%tl8932989939%_
                                         _%tl8933289949%_
                                         _%hd8933189946%_
                                         _%hd8932589926%_
                                         _%hd8924490203%_))))
                                (_%__kont9529395294%_
                                 _%tl8932989939%_
                                 _%tl8933289949%_
                                 _%hd8933189946%_
                                 _%hd8932589926%_
                                 _%hd8924490203%_))))
                        (if (gx#stx-null? _%hd8932889936%_)
                            (_%__kont9529595296%_
                             _%tl8932989939%_
                             _%hd8932589926%_
                             _%hd8924490203%_)
                            (let () (declare (not safe)) (_%g8923689450%_))))))
                (let () (declare (not safe)) (_%g8923689450%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8923689450%_)))
                                            (if (equal? _%e8924990219%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl8924890216%_)
                                                    (let ((_%e8939189671%_
                                                           (gx#syntax-e
                                                            _%tl8924890216%_)))
                                                      (let ((_%tl8939389678%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8939189671%_)))
                    (_%hd8939289675%_
                     (let () (declare (not safe)) (##car _%e8939189671%_))))
                (if (gx#stx-pair? _%tl8939389678%_)
                    (let ((_%e8939489681%_ (gx#syntax-e _%tl8939389678%_)))
                      (let ((_%tl8939689688%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8939489681%_)))
                            (_%hd8939589685%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8939489681%_))))
                        (if (gx#stx-pair? _%hd8939589685%_)
                            (let ((_%e8939789691%_
                                   (gx#syntax-e _%hd8939589685%_)))
                              (let ((_%tl8939989698%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8939789691%_)))
                                    (_%hd8939889695%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8939789691%_))))
                                (_%__kont9529795298%_
                                 _%tl8939689688%_
                                 _%tl8939989698%_
                                 _%hd8939889695%_
                                 _%hd8939289675%_
                                 _%hd8924490203%_)))
                            (if (gx#stx-pair/null? _%hd8939289675%_)
                                (let ((_%__splice9530195302%_
                                       (gx#syntax-split-splice->vector
                                        _%hd8939289675%_
                                        '0)))
                                  (let ((_%tl8941889494%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9530195302%_
                                            '1)))
                                        (_%target8941689491%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9530195302%_
                                            '0))))
                                    (if (gx#stx-null? _%tl8941889494%_)
                                        (_%__match9562995630%_
                                         _%e8924390199%_
                                         _%hd8924490203%_
                                         _%tl8924590206%_
                                         _%e8924690209%_
                                         _%hd8924790213%_
                                         _%tl8924890216%_
                                         _%e8924990219%_
                                         _%e8939189671%_
                                         _%hd8939289675%_
                                         _%tl8939389678%_
                                         _%__splice9530195302%_
                                         _%target8941689491%_
                                         _%tl8941889494%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8923689450%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8923689450%_))))))
                    (if (gx#stx-pair/null? _%hd8939289675%_)
                        (let ((_%__splice9530195302%_
                               (gx#syntax-split-splice->vector
                                _%hd8939289675%_
                                '0)))
                          (let ((_%tl8941889494%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9530195302%_ '1)))
                                (_%target8941689491%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9530195302%_ '0))))
                            (if (gx#stx-null? _%tl8941889494%_)
                                (_%__match9562995630%_
                                 _%e8924390199%_
                                 _%hd8924490203%_
                                 _%tl8924590206%_
                                 _%e8924690209%_
                                 _%hd8924790213%_
                                 _%tl8924890216%_
                                 _%e8924990219%_
                                 _%e8939189671%_
                                 _%hd8939289675%_
                                 _%tl8939389678%_
                                 _%__splice9530195302%_
                                 _%target8941689491%_
                                 _%tl8941889494%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8923689450%_)))))
                        (let () (declare (not safe)) (_%g8923689450%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8923689450%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8923689450%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g8923689450%_)))))
                          (let () (declare (not safe)) (_%g8923689450%_)))))
                  (let () (declare (not safe)) (_%g8923689450%_))))))))))
