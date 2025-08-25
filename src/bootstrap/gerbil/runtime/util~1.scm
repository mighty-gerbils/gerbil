(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g98788_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g98798_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx91748%_)
        (let* ((_%g9175291770%_
                (lambda (_%g9175391766%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9175391766%_)))
               (_%g9175191826%_
                (lambda (_%g9175391774%_)
                  (if (gx#stx-pair? _%g9175391774%_)
                      (let ((_%e9175691777%_ (gx#syntax-e _%g9175391774%_)))
                        (let ((_%hd9175791781%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9175691777%_)))
                              (_%tl9175891784%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9175691777%_))))
                          (if (gx#stx-pair? _%tl9175891784%_)
                              (let ((_%e9175991787%_
                                     (gx#syntax-e _%tl9175891784%_)))
                                (let ((_%hd9176091791%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9175991787%_)))
                                      (_%tl9176191794%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9175991787%_))))
                                  (if (gx#stx-pair? _%tl9176191794%_)
                                      (let ((_%e9176291797%_
                                             (gx#syntax-e _%tl9176191794%_)))
                                        (let ((_%hd9176391801%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9176291797%_)))
                                              (_%tl9176491804%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9176291797%_))))
                                          (if (gx#stx-null? _%tl9176491804%_)
                                              ((lambda (_%L91807%_ _%L91809%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L91809%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L91807%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd9176391801%_
                                               _%hd9176091791%_)
                                              (_%g9175291770%_
                                               _%g9175391774%_))))
                                      (_%g9175291770%_ _%g9175391774%_))))
                              (_%g9175291770%_ _%g9175391774%_))))
                      (_%g9175291770%_ _%g9175391774%_)))))
          (_%g9175191826%_ _%$stx91748%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx91830%_)
        (let* ((_%g9183491848%_
                (lambda (_%g9183591844%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9183591844%_)))
               (_%g9183391889%_
                (lambda (_%g9183591852%_)
                  (if (gx#stx-pair? _%g9183591852%_)
                      (let ((_%e9183791855%_ (gx#syntax-e _%g9183591852%_)))
                        (let ((_%hd9183891859%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9183791855%_)))
                              (_%tl9183991862%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9183791855%_))))
                          (if (gx#stx-pair? _%tl9183991862%_)
                              (let ((_%e9184091865%_
                                     (gx#syntax-e _%tl9183991862%_)))
                                (let ((_%hd9184191869%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9184091865%_)))
                                      (_%tl9184291872%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9184091865%_))))
                                  (if (gx#stx-null? _%tl9184291872%_)
                                      ((lambda (_%L91875%_)
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
                                       (cons _%L91875%_
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
                                       _%hd9184191869%_)
                                      (_%g9183491848%_ _%g9183591852%_))))
                              (_%g9183491848%_ _%g9183591852%_))))
                      (_%g9183491848%_ _%g9183591852%_)))))
          (_%g9183391889%_ _%$stx91830%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx91893%_)
        (let* ((_%g9189791911%_
                (lambda (_%g9189891907%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9189891907%_)))
               (_%g9189691952%_
                (lambda (_%g9189891915%_)
                  (if (gx#stx-pair? _%g9189891915%_)
                      (let ((_%e9190091918%_ (gx#syntax-e _%g9189891915%_)))
                        (let ((_%hd9190191922%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9190091918%_)))
                              (_%tl9190291925%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9190091918%_))))
                          (if (gx#stx-pair? _%tl9190291925%_)
                              (let ((_%e9190391928%_
                                     (gx#syntax-e _%tl9190291925%_)))
                                (let ((_%hd9190491932%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9190391928%_)))
                                      (_%tl9190591935%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9190391928%_))))
                                  (if (gx#stx-null? _%tl9190591935%_)
                                      ((lambda (_%L91938%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L91938%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd9190491932%_)
                                      (_%g9189791911%_ _%g9189891915%_))))
                              (_%g9189791911%_ _%g9189891915%_))))
                      (_%g9189791911%_ _%g9189891915%_)))))
          (_%g9189691952%_ _%$stx91893%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx91956%_)
        (let* ((_%g9196091970%_
                (lambda (_%g9196191966%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9196191966%_)))
               (_%g9195991991%_
                (lambda (_%g9196191974%_)
                  (if (gx#stx-pair? _%g9196191974%_)
                      (let ((_%e9196291977%_ (gx#syntax-e _%g9196191974%_)))
                        (let ((_%hd9196391981%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9196291977%_)))
                              (_%tl9196491984%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9196291977%_))))
                          (if (gx#stx-null? _%tl9196491984%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g9196091970%_ _%g9196191974%_))))
                      (_%g9196091970%_ _%g9196191974%_)))))
          (_%g9195991991%_ _%$stx91956%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx91995%_)
        (let* ((_%g9199992017%_
                (lambda (_%g9200092013%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9200092013%_)))
               (_%g9199892072%_
                (lambda (_%g9200092021%_)
                  (if (gx#stx-pair? _%g9200092021%_)
                      (let ((_%e9200392024%_ (gx#syntax-e _%g9200092021%_)))
                        (let ((_%hd9200492028%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9200392024%_)))
                              (_%tl9200592031%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9200392024%_))))
                          (if (gx#stx-pair? _%tl9200592031%_)
                              (let ((_%e9200692034%_
                                     (gx#syntax-e _%tl9200592031%_)))
                                (let ((_%hd9200792038%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9200692034%_)))
                                      (_%tl9200892041%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9200692034%_))))
                                  (if (gx#stx-pair? _%tl9200892041%_)
                                      (let ((_%e9200992044%_
                                             (gx#syntax-e _%tl9200892041%_)))
                                        (let ((_%hd9201092048%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9200992044%_)))
                                              (_%tl9201192051%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9200992044%_))))
                                          (if (gx#stx-null? _%tl9201192051%_)
                                              ((lambda (_%L92054%_ _%L92056%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L92056%_
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
                 (cons (cons _%L92054%_
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
                                               _%hd9201092048%_
                                               _%hd9200792038%_)
                                              (_%g9199992017%_
                                               _%g9200092021%_))))
                                      (_%g9199992017%_ _%g9200092021%_))))
                              (_%g9199992017%_ _%g9200092021%_))))
                      (_%g9199992017%_ _%g9200092021%_)))))
          (_%g9199892072%_ _%$stx91995%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx92076%_)
        (let* ((_%g9208092098%_
                (lambda (_%g9208192094%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9208192094%_)))
               (_%g9207992153%_
                (lambda (_%g9208192102%_)
                  (if (gx#stx-pair? _%g9208192102%_)
                      (let ((_%e9208492105%_ (gx#syntax-e _%g9208192102%_)))
                        (let ((_%hd9208592109%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9208492105%_)))
                              (_%tl9208692112%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9208492105%_))))
                          (if (gx#stx-pair? _%tl9208692112%_)
                              (let ((_%e9208792115%_
                                     (gx#syntax-e _%tl9208692112%_)))
                                (let ((_%hd9208892119%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9208792115%_)))
                                      (_%tl9208992122%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9208792115%_))))
                                  (if (gx#stx-pair? _%tl9208992122%_)
                                      (let ((_%e9209092125%_
                                             (gx#syntax-e _%tl9208992122%_)))
                                        (let ((_%hd9209192129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9209092125%_)))
                                              (_%tl9209292132%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9209092125%_))))
                                          (if (gx#stx-null? _%tl9209292132%_)
                                              ((lambda (_%L92135%_ _%L92137%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L92137%_
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
                                               (cons (cons _%L92135%_
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
                                               _%hd9209192129%_
                                               _%hd9208892119%_)
                                              (_%g9208092098%_
                                               _%g9208192102%_))))
                                      (_%g9208092098%_ _%g9208192102%_))))
                              (_%g9208092098%_ _%g9208192102%_))))
                      (_%g9208092098%_ _%g9208192102%_)))))
          (_%g9207992153%_ _%$stx92076%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx92157%_)
        (let* ((_%g9216192179%_
                (lambda (_%g9216292175%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9216292175%_)))
               (_%g9216092234%_
                (lambda (_%g9216292183%_)
                  (if (gx#stx-pair? _%g9216292183%_)
                      (let ((_%e9216592186%_ (gx#syntax-e _%g9216292183%_)))
                        (let ((_%hd9216692190%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9216592186%_)))
                              (_%tl9216792193%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9216592186%_))))
                          (if (gx#stx-pair? _%tl9216792193%_)
                              (let ((_%e9216892196%_
                                     (gx#syntax-e _%tl9216792193%_)))
                                (let ((_%hd9216992200%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9216892196%_)))
                                      (_%tl9217092203%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9216892196%_))))
                                  (if (gx#stx-pair? _%tl9217092203%_)
                                      (let ((_%e9217192206%_
                                             (gx#syntax-e _%tl9217092203%_)))
                                        (let ((_%hd9217292210%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9217192206%_)))
                                              (_%tl9217392213%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9217192206%_))))
                                          (if (gx#stx-null? _%tl9217392213%_)
                                              ((lambda (_%L92216%_ _%L92218%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L92218%_
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
                                               (cons (cons _%L92216%_
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
                                               _%hd9217292210%_
                                               _%hd9216992200%_)
                                              (_%g9216192179%_
                                               _%g9216292183%_))))
                                      (_%g9216192179%_ _%g9216292183%_))))
                              (_%g9216192179%_ _%g9216292183%_))))
                      (_%g9216192179%_ _%g9216292183%_)))))
          (_%g9216092234%_ _%$stx92157%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx92238%_)
        (let* ((_%g9224292253%_
                (lambda (_%g9224392249%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9224392249%_)))
               (_%g9224192282%_
                (lambda (_%g9224392257%_)
                  (if (gx#stx-pair? _%g9224392257%_)
                      (let ((_%e9224592260%_ (gx#syntax-e _%g9224392257%_)))
                        (let ((_%hd9224692264%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9224592260%_)))
                              (_%tl9224792267%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9224592260%_))))
                          ((lambda (_%L92270%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L92270%_)))
                           _%tl9224792267%_)))
                      (_%g9224292253%_ _%g9224392257%_)))))
          (_%g9224192282%_ _%$stx92238%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx92286%_)
        (let* ((_%__stx9833998340%_ _%$stx92286%_)
               (_%g9229792511%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9833998340%_))))
          (let ((_%__kont9834298343%_
                 (lambda (_%L93364%_
                          _%L93366%_
                          _%L93367%_
                          _%L93368%_
                          _%L93369%_)
                   (cons _%L93369%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g9339993402%_
                                                     _%g9340093405%_)
                                              (cons _%g9339993402%_
                                                    _%g9340093405%_))
                                            '()
                                            _%L93367%_)
                                           (cons _%L93368%_
                                                 (cons _%L93366%_
                                                       (cons _%L93364%_
                                                             '())))))))))
                (_%__kont9834698347%_
                 (lambda (_%L93217%_ _%L93219%_ _%L93220%_ _%L93221%_)
                   (cons _%L93221%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g9324493247%_
                                                     _%g9324593250%_)
                                              (cons _%g9324493247%_
                                                    _%g9324593250%_))
                                            '()
                                            _%L93219%_)
                                           (cons _%L93220%_
                                                 (cons _%L93217%_
                                                       (cons _%L93217%_
                                                             '())))))))))
                (_%__kont9835098351%_
                 (lambda (_%L93120%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L93120%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont9835298353%_
                 (lambda (_%L93043%_
                          _%L93045%_
                          _%L93046%_
                          _%L93047%_
                          _%L93048%_
                          _%L93049%_)
                   (cons _%L93049%_
                         (cons '2
                               (cons (cons (cons _%L93047%_
                                                 (cons _%L93046%_ '()))
                                           _%L93048%_)
                                     (cons _%L93045%_ _%L93043%_))))))
                (_%__kont9835498355%_
                 (lambda (_%L92924%_
                          _%L92926%_
                          _%L92927%_
                          _%L92928%_
                          _%L92929%_)
                   (cons _%L92929%_
                         (cons '2
                               (cons (cons (cons _%L92927%_
                                                 (cons _%L92927%_ '()))
                                           _%L92928%_)
                                     (cons _%L92926%_ _%L92924%_))))))
                (_%__kont9835698357%_
                 (lambda (_%L92841%_ _%L92843%_ _%L92844%_)
                   (cons _%L92844%_
                         (cons '3 (cons '() (cons _%L92843%_ _%L92841%_))))))
                (_%__kont9835898359%_
                 (lambda (_%L92762%_
                          _%L92764%_
                          _%L92765%_
                          _%L92766%_
                          _%L92767%_)
                   (cons _%L92767%_
                         (cons '3
                               (cons (cons _%L92765%_ _%L92766%_)
                                     (cons _%L92764%_ _%L92762%_))))))
                (_%__kont9836098361%_
                 (lambda (_%L92646%_
                          _%L92648%_
                          _%L92649%_
                          _%L92650%_
                          _%L92651%_
                          _%L92652%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L92649%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L92646%_ '())))
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
                                              (lambda (_%g9268492689%_
                                                       _%g9268592692%_)
                                                (cons _%g9268492689%_
                                                      _%g9268592692%_))
                                              '()
                                              _%L92651%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (__foldr1
                                              (lambda (_%g9268692695%_
                                                       _%g9268792698%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g9268692695%_ '())))
              _%g9268792698%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L92650%_))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L92648%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9869098691%_
                    (lambda (_%e9246792518%_
                             _%hd9246892522%_
                             _%tl9246992525%_
                             _%e9247092528%_
                             _%hd9247192532%_
                             _%tl9247292535%_
                             _%e9247392538%_
                             _%e9247492542%_
                             _%hd9247592546%_
                             _%tl9247692549%_
                             _%__splice9836298363%_
                             _%target9247792552%_
                             _%tl9247992555%_)
                      (letrec ((_%loop9248092558%_
                                (lambda (_%hd9247892562%_
                                         _%exprs9248492565%_
                                         _%names9248592567%_)
                                  (if (gx#stx-pair? _%hd9247892562%_)
                                      (let ((_%e9248192570%_
                                             (gx#syntax-e _%hd9247892562%_)))
                                        (let ((_%lp-tl9248392577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9248192570%_)))
                                              (_%lp-hd9248292574%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9248192570%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd9248292574%_)
                                              (let ((_%e9248892580%_
                                                     (gx#syntax-e
                                                      _%lp-hd9248292574%_)))
                                                (let ((_%tl9249092587%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e9248892580%_)))
                                                      (_%hd9248992584%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e9248892580%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl9249092587%_)
                                                      (let ((_%e9249192590%_
                                                             (gx#syntax-e
                                                              _%tl9249092587%_)))
                                                        (let ((_%tl9249392597%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e9249192590%_)))
                      (_%hd9249292594%_
                       (let () (declare (not safe)) (##car _%e9249192590%_))))
                  (if (gx#stx-null? _%tl9249392597%_)
                      (_%loop9248092558%_
                       _%lp-tl9248392577%_
                       (cons _%hd9249292594%_ _%exprs9248492565%_)
                       (cons _%hd9248992584%_ _%names9248592567%_))
                      (let () (declare (not safe)) (_%g9229792511%_)))))
              (let () (declare (not safe)) (_%g9229792511%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g9229792511%_)))))
                                      (let ((_%names9248792603%_
                                             (reverse _%names9248592567%_))
                                            (_%exprs9248692600%_
                                             (reverse _%exprs9248492565%_)))
                                        (if (gx#stx-pair? _%tl9247692549%_)
                                            (let ((_%e9249492606%_
                                                   (gx#syntax-e
                                                    _%tl9247692549%_)))
                                              (let ((_%tl9249692613%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9249492606%_)))
                                                    (_%hd9249592610%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9249492606%_))))
                                                (if (gx#stx-null?
                                                     _%hd9249592610%_)
                                                    (if (gx#stx-pair?
                                                         _%tl9249692613%_)
                                                        (let ((_%e9249792616%_
                                                               (gx#syntax-e
                                                                _%tl9249692613%_)))
                                                          (let ((_%tl9249992623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e9249792616%_)))
                        (_%hd9249892620%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9249792616%_))))
                    (if (gx#stx-pair? _%tl9249992623%_)
                        (let ((_%e9250092626%_ (gx#syntax-e _%tl9249992623%_)))
                          (let ((_%tl9250292633%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9250092626%_)))
                                (_%hd9250192630%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9250092626%_))))
                            (if (gx#stx-pair? _%tl9250292633%_)
                                (let ((_%e9250392636%_
                                       (gx#syntax-e _%tl9250292633%_)))
                                  (let ((_%tl9250592643%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9250392636%_)))
                                        (_%hd9250492640%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9250392636%_))))
                                    (if (gx#stx-null? _%tl9250592643%_)
                                        (_%__kont9836098361%_
                                         _%hd9250492640%_
                                         _%hd9250192630%_
                                         _%hd9249892620%_
                                         _%exprs9248692600%_
                                         _%names9248792603%_
                                         _%hd9246892522%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9229792511%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9229792511%_)))))
                        (let () (declare (not safe)) (_%g9229792511%_)))))
                (let () (declare (not safe)) (_%g9229792511%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9229792511%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g9229792511%_))))))))
                        (_%loop9248092558%_ _%target9247792552%_ '() '()))))
                   (_%__match9846898469%_
                    (lambda (_%e9233993143%_
                             _%hd9234093147%_
                             _%tl9234193150%_
                             _%e9234293153%_
                             _%hd9234393157%_
                             _%tl9234493160%_
                             _%e9234593163%_
                             _%e9234693167%_
                             _%hd9234793171%_
                             _%tl9234893174%_
                             _%__splice9834898349%_
                             _%target9234993177%_
                             _%tl9235193180%_
                             _%e9235893183%_
                             _%hd9235993187%_
                             _%tl9236093190%_)
                      (letrec ((_%loop9235293193%_
                                (lambda (_%hd9235093197%_ _%exprs9235693200%_)
                                  (if (gx#stx-pair? _%hd9235093197%_)
                                      (let ((_%e9235393203%_
                                             (gx#syntax-e _%hd9235093197%_)))
                                        (let ((_%lp-tl9235593210%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9235393203%_)))
                                              (_%lp-hd9235493207%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9235393203%_))))
                                          (_%loop9235293193%_
                                           _%lp-tl9235593210%_
                                           (cons _%lp-hd9235493207%_
                                                 _%exprs9235693200%_))))
                                      (let ((_%exprs9235793213%_
                                             (reverse _%exprs9235693200%_)))
                                        (_%__kont9834698347%_
                                         _%hd9235993187%_
                                         _%exprs9235793213%_
                                         _%hd9234793171%_
                                         _%hd9234093147%_))))))
                        (_%loop9235293193%_ _%target9234993177%_ '()))))
                   (_%__match9842898429%_
                    (lambda (_%e9230493260%_
                             _%hd9230593264%_
                             _%tl9230693267%_
                             _%e9230793270%_
                             _%hd9230893274%_
                             _%tl9230993277%_
                             _%e9231093280%_
                             _%e9231193284%_
                             _%hd9231293288%_
                             _%tl9231393291%_
                             _%__splice9834498345%_
                             _%target9231493294%_
                             _%tl9231693297%_
                             _%e9232393300%_
                             _%hd9232493304%_
                             _%tl9232593307%_
                             _%e9232693310%_
                             _%hd9232793314%_
                             _%tl9232893317%_
                             _%e9232993320%_
                             _%hd9233093324%_
                             _%tl9233193327%_
                             _%e9233293330%_
                             _%hd9233393334%_
                             _%tl9233493337%_)
                      (letrec ((_%loop9231793340%_
                                (lambda (_%hd9231593344%_ _%exprs9232193347%_)
                                  (if (gx#stx-pair? _%hd9231593344%_)
                                      (let ((_%e9231893350%_
                                             (gx#syntax-e _%hd9231593344%_)))
                                        (let ((_%lp-tl9232093357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9231893350%_)))
                                              (_%lp-hd9231993354%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9231893350%_))))
                                          (_%loop9231793340%_
                                           _%lp-tl9232093357%_
                                           (cons _%lp-hd9231993354%_
                                                 _%exprs9232193347%_))))
                                      (let ((_%exprs9232293360%_
                                             (reverse _%exprs9232193347%_)))
                                        (_%__kont9834298343%_
                                         _%hd9233393334%_
                                         _%hd9233093324%_
                                         _%exprs9232293360%_
                                         _%hd9231293288%_
                                         _%hd9230593264%_))))))
                        (_%loop9231793340%_ _%target9231493294%_ '())))))
              (if (gx#stx-pair? _%__stx9833998340%_)
                  (let ((_%e9230493260%_ (gx#syntax-e _%__stx9833998340%_)))
                    (let ((_%tl9230693267%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e9230493260%_)))
                          (_%hd9230593264%_
                           (let ()
                             (declare (not safe))
                             (##car _%e9230493260%_))))
                      (if (gx#stx-pair? _%tl9230693267%_)
                          (let ((_%e9230793270%_
                                 (gx#syntax-e _%tl9230693267%_)))
                            (let ((_%tl9230993277%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e9230793270%_)))
                                  (_%hd9230893274%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e9230793270%_))))
                              (if (gx#stx-datum? _%hd9230893274%_)
                                  (let ((_%e9231093280%_
                                         (gx#stx-e _%hd9230893274%_)))
                                    (if (equal? _%e9231093280%_ '1)
                                        (if (gx#stx-pair? _%tl9230993277%_)
                                            (let ((_%e9231193284%_
                                                   (gx#syntax-e
                                                    _%tl9230993277%_)))
                                              (let ((_%tl9231393291%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9231193284%_)))
                                                    (_%hd9231293288%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9231193284%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl9231393291%_)
                                                    (if (let ((__tmp98787
                                                               (gx#stx-length
                                                                _%tl9231393291%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp98787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice9834498345%_
                       (gx#syntax-split-splice->vector _%tl9231393291%_ '2)))
                  (let ((_%tl9231693297%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9834498345%_ '1)))
                        (_%target9231493294%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9834498345%_ '0))))
                    (if (gx#stx-pair? _%tl9231693297%_)
                        (let ((_%e9232393300%_ (gx#syntax-e _%tl9231693297%_)))
                          (let ((_%tl9232593307%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9232393300%_)))
                                (_%hd9232493304%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9232393300%_))))
                            (if (gx#stx-pair? _%hd9232493304%_)
                                (let ((_%e9232693310%_
                                       (gx#syntax-e _%hd9232493304%_)))
                                  (let ((_%tl9232893317%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9232693310%_)))
                                        (_%hd9232793314%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9232693310%_))))
                                    (if (gx#identifier? _%hd9232793314%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g98788_|
                                             _%hd9232793314%_)
                                            (if (gx#stx-pair? _%tl9232893317%_)
                                                (let ((_%e9232993320%_
                                                       (gx#syntax-e
                                                        _%tl9232893317%_)))
                                                  (let ((_%tl9233193327%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e9232993320%_)))
                                                        (_%hd9233093324%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e9232993320%_))))
                                                    (if (gx#stx-null?
                                                         _%tl9233193327%_)
                                                        (if (gx#stx-pair?
                                                             _%tl9232593307%_)
                                                            (let ((_%e9233293330%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl9232593307%_)))
                      (let ((_%tl9233493337%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9233293330%_)))
                            (_%hd9233393334%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9233293330%_))))
                        (if (gx#stx-null? _%tl9233493337%_)
                            (_%__match9842898429%_
                             _%e9230493260%_
                             _%hd9230593264%_
                             _%tl9230693267%_
                             _%e9230793270%_
                             _%hd9230893274%_
                             _%tl9230993277%_
                             _%e9231093280%_
                             _%e9231193284%_
                             _%hd9231293288%_
                             _%tl9231393291%_
                             _%__splice9834498345%_
                             _%target9231493294%_
                             _%tl9231693297%_
                             _%e9232393300%_
                             _%hd9232493304%_
                             _%tl9232593307%_
                             _%e9232693310%_
                             _%hd9232793314%_
                             _%tl9232893317%_
                             _%e9232993320%_
                             _%hd9233093324%_
                             _%tl9233193327%_
                             _%e9233293330%_
                             _%hd9233393334%_
                             _%tl9233493337%_)
                            (if (let ((__tmp98789
                                       (gx#stx-length _%tl9231393291%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp98789 '1))
                                (let ((_%__splice9834898349%_
                                       (gx#syntax-split-splice->vector
                                        _%tl9231393291%_
                                        '1)))
                                  (let ((_%tl9235193180%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9834898349%_
                                            '1)))
                                        (_%target9234993177%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9834898349%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl9235193180%_)
                                        (let ((_%e9235893183%_
                                               (gx#syntax-e _%tl9235193180%_)))
                                          (let ((_%tl9236093190%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e9235893183%_)))
                                                (_%hd9235993187%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e9235893183%_))))
                                            (if (gx#stx-null? _%tl9236093190%_)
                                                (_%__match9846898469%_
                                                 _%e9230493260%_
                                                 _%hd9230593264%_
                                                 _%tl9230693267%_
                                                 _%e9230793270%_
                                                 _%hd9230893274%_
                                                 _%tl9230993277%_
                                                 _%e9231093280%_
                                                 _%e9231193284%_
                                                 _%hd9231293288%_
                                                 _%tl9231393291%_
                                                 _%__splice9834898349%_
                                                 _%target9234993177%_
                                                 _%tl9235193180%_
                                                 _%e9235893183%_
                                                 _%hd9235993187%_
                                                 _%tl9236093190%_)
                                                (if (gx#stx-null?
                                                     _%tl9231393291%_)
                                                    (_%__kont9835098351%_
                                                     _%hd9231293288%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9229792511%_))))))
                                        (if (gx#stx-null? _%tl9231393291%_)
                                            (_%__kont9835098351%_
                                             _%hd9231293288%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g9229792511%_))))))
                                (if (gx#stx-null? _%tl9231393291%_)
                                    (_%__kont9835098351%_ _%hd9231293288%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g9229792511%_)))))))
                    (if (let ((__tmp98790 (gx#stx-length _%tl9231393291%_)))
                          (declare (not safe))
                          (##fx>= __tmp98790 '1))
                        (let ((_%__splice9834898349%_
                               (gx#syntax-split-splice->vector
                                _%tl9231393291%_
                                '1)))
                          (let ((_%tl9235193180%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9834898349%_ '1)))
                                (_%target9234993177%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9834898349%_ '0))))
                            (if (gx#stx-pair? _%tl9235193180%_)
                                (let ((_%e9235893183%_
                                       (gx#syntax-e _%tl9235193180%_)))
                                  (let ((_%tl9236093190%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9235893183%_)))
                                        (_%hd9235993187%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9235893183%_))))
                                    (if (gx#stx-null? _%tl9236093190%_)
                                        (_%__match9846898469%_
                                         _%e9230493260%_
                                         _%hd9230593264%_
                                         _%tl9230693267%_
                                         _%e9230793270%_
                                         _%hd9230893274%_
                                         _%tl9230993277%_
                                         _%e9231093280%_
                                         _%e9231193284%_
                                         _%hd9231293288%_
                                         _%tl9231393291%_
                                         _%__splice9834898349%_
                                         _%target9234993177%_
                                         _%tl9235193180%_
                                         _%e9235893183%_
                                         _%hd9235993187%_
                                         _%tl9236093190%_)
                                        (if (gx#stx-null? _%tl9231393291%_)
                                            (_%__kont9835098351%_
                                             _%hd9231293288%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g9229792511%_))))))
                                (if (gx#stx-null? _%tl9231393291%_)
                                    (_%__kont9835098351%_ _%hd9231293288%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g9229792511%_))))))
                        (if (gx#stx-null? _%tl9231393291%_)
                            (_%__kont9835098351%_ _%hd9231293288%_)
                            (let () (declare (not safe)) (_%g9229792511%_)))))
                (if (let ((__tmp98791 (gx#stx-length _%tl9231393291%_)))
                      (declare (not safe))
                      (##fx>= __tmp98791 '1))
                    (let ((_%__splice9834898349%_
                           (gx#syntax-split-splice->vector
                            _%tl9231393291%_
                            '1)))
                      (let ((_%tl9235193180%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9834898349%_ '1)))
                            (_%target9234993177%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9834898349%_ '0))))
                        (if (gx#stx-pair? _%tl9235193180%_)
                            (let ((_%e9235893183%_
                                   (gx#syntax-e _%tl9235193180%_)))
                              (let ((_%tl9236093190%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9235893183%_)))
                                    (_%hd9235993187%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9235893183%_))))
                                (if (gx#stx-null? _%tl9236093190%_)
                                    (_%__match9846898469%_
                                     _%e9230493260%_
                                     _%hd9230593264%_
                                     _%tl9230693267%_
                                     _%e9230793270%_
                                     _%hd9230893274%_
                                     _%tl9230993277%_
                                     _%e9231093280%_
                                     _%e9231193284%_
                                     _%hd9231293288%_
                                     _%tl9231393291%_
                                     _%__splice9834898349%_
                                     _%target9234993177%_
                                     _%tl9235193180%_
                                     _%e9235893183%_
                                     _%hd9235993187%_
                                     _%tl9236093190%_)
                                    (if (gx#stx-null? _%tl9231393291%_)
                                        (_%__kont9835098351%_ _%hd9231293288%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9229792511%_))))))
                            (if (gx#stx-null? _%tl9231393291%_)
                                (_%__kont9835098351%_ _%hd9231293288%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9229792511%_))))))
                    (if (gx#stx-null? _%tl9231393291%_)
                        (_%__kont9835098351%_ _%hd9231293288%_)
                        (let () (declare (not safe)) (_%g9229792511%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp98792
                                                           (gx#stx-length
                                                            _%tl9231393291%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp98792 '1))
                                                    (let ((_%__splice9834898349%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl9231393291%_
                                                            '1)))
                                                      (let ((_%tl9235193180%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9834898349%_ '1)))
                    (_%target9234993177%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9834898349%_ '0))))
                (if (gx#stx-pair? _%tl9235193180%_)
                    (let ((_%e9235893183%_ (gx#syntax-e _%tl9235193180%_)))
                      (let ((_%tl9236093190%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9235893183%_)))
                            (_%hd9235993187%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9235893183%_))))
                        (if (gx#stx-null? _%tl9236093190%_)
                            (_%__match9846898469%_
                             _%e9230493260%_
                             _%hd9230593264%_
                             _%tl9230693267%_
                             _%e9230793270%_
                             _%hd9230893274%_
                             _%tl9230993277%_
                             _%e9231093280%_
                             _%e9231193284%_
                             _%hd9231293288%_
                             _%tl9231393291%_
                             _%__splice9834898349%_
                             _%target9234993177%_
                             _%tl9235193180%_
                             _%e9235893183%_
                             _%hd9235993187%_
                             _%tl9236093190%_)
                            (if (gx#stx-null? _%tl9231393291%_)
                                (_%__kont9835098351%_ _%hd9231293288%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9229792511%_))))))
                    (if (gx#stx-null? _%tl9231393291%_)
                        (_%__kont9835098351%_ _%hd9231293288%_)
                        (let () (declare (not safe)) (_%g9229792511%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl9231393291%_)
                                                        (_%__kont9835098351%_
                                                         _%hd9231293288%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9229792511%_)))))
                                            (if (let ((__tmp98793
                                                       (gx#stx-length
                                                        _%tl9231393291%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp98793 '1))
                                                (let ((_%__splice9834898349%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl9231393291%_
                                                        '1)))
                                                  (let ((_%tl9235193180%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9834898349%_
                                                            '1)))
                                                        (_%target9234993177%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9834898349%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl9235193180%_)
                                                        (let ((_%e9235893183%_
                                                               (gx#syntax-e
                                                                _%tl9235193180%_)))
                                                          (let ((_%tl9236093190%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e9235893183%_)))
                        (_%hd9235993187%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9235893183%_))))
                    (if (gx#stx-null? _%tl9236093190%_)
                        (_%__match9846898469%_
                         _%e9230493260%_
                         _%hd9230593264%_
                         _%tl9230693267%_
                         _%e9230793270%_
                         _%hd9230893274%_
                         _%tl9230993277%_
                         _%e9231093280%_
                         _%e9231193284%_
                         _%hd9231293288%_
                         _%tl9231393291%_
                         _%__splice9834898349%_
                         _%target9234993177%_
                         _%tl9235193180%_
                         _%e9235893183%_
                         _%hd9235993187%_
                         _%tl9236093190%_)
                        (if (gx#stx-null? _%tl9231393291%_)
                            (_%__kont9835098351%_ _%hd9231293288%_)
                            (let () (declare (not safe)) (_%g9229792511%_))))))
                (if (gx#stx-null? _%tl9231393291%_)
                    (_%__kont9835098351%_ _%hd9231293288%_)
                    (let () (declare (not safe)) (_%g9229792511%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl9231393291%_)
                                                    (_%__kont9835098351%_
                                                     _%hd9231293288%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9229792511%_)))))
                                        (if (let ((__tmp98794
                                                   (gx#stx-length
                                                    _%tl9231393291%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp98794 '1))
                                            (let ((_%__splice9834898349%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl9231393291%_
                                                    '1)))
                                              (let ((_%tl9235193180%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9834898349%_
                                                        '1)))
                                                    (_%target9234993177%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9834898349%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl9235193180%_)
                                                    (let ((_%e9235893183%_
                                                           (gx#syntax-e
                                                            _%tl9235193180%_)))
                                                      (let ((_%tl9236093190%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e9235893183%_)))
                    (_%hd9235993187%_
                     (let () (declare (not safe)) (##car _%e9235893183%_))))
                (if (gx#stx-null? _%tl9236093190%_)
                    (_%__match9846898469%_
                     _%e9230493260%_
                     _%hd9230593264%_
                     _%tl9230693267%_
                     _%e9230793270%_
                     _%hd9230893274%_
                     _%tl9230993277%_
                     _%e9231093280%_
                     _%e9231193284%_
                     _%hd9231293288%_
                     _%tl9231393291%_
                     _%__splice9834898349%_
                     _%target9234993177%_
                     _%tl9235193180%_
                     _%e9235893183%_
                     _%hd9235993187%_
                     _%tl9236093190%_)
                    (if (gx#stx-null? _%tl9231393291%_)
                        (_%__kont9835098351%_ _%hd9231293288%_)
                        (let () (declare (not safe)) (_%g9229792511%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl9231393291%_)
                                                        (_%__kont9835098351%_
                                                         _%hd9231293288%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9229792511%_))))))
                                            (if (gx#stx-null? _%tl9231393291%_)
                                                (_%__kont9835098351%_
                                                 _%hd9231293288%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9229792511%_)))))))
                                (if (let ((__tmp98795
                                           (gx#stx-length _%tl9231393291%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp98795 '1))
                                    (let ((_%__splice9834898349%_
                                           (gx#syntax-split-splice->vector
                                            _%tl9231393291%_
                                            '1)))
                                      (let ((_%tl9235193180%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9834898349%_
                                                '1)))
                                            (_%target9234993177%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9834898349%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl9235193180%_)
                                            (let ((_%e9235893183%_
                                                   (gx#syntax-e
                                                    _%tl9235193180%_)))
                                              (let ((_%tl9236093190%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9235893183%_)))
                                                    (_%hd9235993187%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9235893183%_))))
                                                (if (gx#stx-null?
                                                     _%tl9236093190%_)
                                                    (_%__match9846898469%_
                                                     _%e9230493260%_
                                                     _%hd9230593264%_
                                                     _%tl9230693267%_
                                                     _%e9230793270%_
                                                     _%hd9230893274%_
                                                     _%tl9230993277%_
                                                     _%e9231093280%_
                                                     _%e9231193284%_
                                                     _%hd9231293288%_
                                                     _%tl9231393291%_
                                                     _%__splice9834898349%_
                                                     _%target9234993177%_
                                                     _%tl9235193180%_
                                                     _%e9235893183%_
                                                     _%hd9235993187%_
                                                     _%tl9236093190%_)
                                                    (if (gx#stx-null?
                                                         _%tl9231393291%_)
                                                        (_%__kont9835098351%_
                                                         _%hd9231293288%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9229792511%_))))))
                                            (if (gx#stx-null? _%tl9231393291%_)
                                                (_%__kont9835098351%_
                                                 _%hd9231293288%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9229792511%_))))))
                                    (if (gx#stx-null? _%tl9231393291%_)
                                        (_%__kont9835098351%_ _%hd9231293288%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9229792511%_)))))))
                        (if (let ((__tmp98796
                                   (gx#stx-length _%tl9231393291%_)))
                              (declare (not safe))
                              (##fx>= __tmp98796 '1))
                            (let ((_%__splice9834898349%_
                                   (gx#syntax-split-splice->vector
                                    _%tl9231393291%_
                                    '1)))
                              (let ((_%tl9235193180%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9834898349%_
                                        '1)))
                                    (_%target9234993177%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9834898349%_
                                        '0))))
                                (if (gx#stx-pair? _%tl9235193180%_)
                                    (let ((_%e9235893183%_
                                           (gx#syntax-e _%tl9235193180%_)))
                                      (let ((_%tl9236093190%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9235893183%_)))
                                            (_%hd9235993187%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9235893183%_))))
                                        (if (gx#stx-null? _%tl9236093190%_)
                                            (_%__match9846898469%_
                                             _%e9230493260%_
                                             _%hd9230593264%_
                                             _%tl9230693267%_
                                             _%e9230793270%_
                                             _%hd9230893274%_
                                             _%tl9230993277%_
                                             _%e9231093280%_
                                             _%e9231193284%_
                                             _%hd9231293288%_
                                             _%tl9231393291%_
                                             _%__splice9834898349%_
                                             _%target9234993177%_
                                             _%tl9235193180%_
                                             _%e9235893183%_
                                             _%hd9235993187%_
                                             _%tl9236093190%_)
                                            (if (gx#stx-null? _%tl9231393291%_)
                                                (_%__kont9835098351%_
                                                 _%hd9231293288%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9229792511%_))))))
                                    (if (gx#stx-null? _%tl9231393291%_)
                                        (_%__kont9835098351%_ _%hd9231293288%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9229792511%_))))))
                            (if (gx#stx-null? _%tl9231393291%_)
                                (_%__kont9835098351%_ _%hd9231293288%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9229792511%_)))))))
                (if (let ((__tmp98797 (gx#stx-length _%tl9231393291%_)))
                      (declare (not safe))
                      (##fx>= __tmp98797 '1))
                    (let ((_%__splice9834898349%_
                           (gx#syntax-split-splice->vector
                            _%tl9231393291%_
                            '1)))
                      (let ((_%tl9235193180%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9834898349%_ '1)))
                            (_%target9234993177%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9834898349%_ '0))))
                        (if (gx#stx-pair? _%tl9235193180%_)
                            (let ((_%e9235893183%_
                                   (gx#syntax-e _%tl9235193180%_)))
                              (let ((_%tl9236093190%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9235893183%_)))
                                    (_%hd9235993187%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9235893183%_))))
                                (if (gx#stx-null? _%tl9236093190%_)
                                    (_%__match9846898469%_
                                     _%e9230493260%_
                                     _%hd9230593264%_
                                     _%tl9230693267%_
                                     _%e9230793270%_
                                     _%hd9230893274%_
                                     _%tl9230993277%_
                                     _%e9231093280%_
                                     _%e9231193284%_
                                     _%hd9231293288%_
                                     _%tl9231393291%_
                                     _%__splice9834898349%_
                                     _%target9234993177%_
                                     _%tl9235193180%_
                                     _%e9235893183%_
                                     _%hd9235993187%_
                                     _%tl9236093190%_)
                                    (if (gx#stx-null? _%tl9231393291%_)
                                        (_%__kont9835098351%_ _%hd9231293288%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9229792511%_))))))
                            (if (gx#stx-null? _%tl9231393291%_)
                                (_%__kont9835098351%_ _%hd9231293288%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9229792511%_))))))
                    (if (gx#stx-null? _%tl9231393291%_)
                        (_%__kont9835098351%_ _%hd9231293288%_)
                        (let () (declare (not safe)) (_%g9229792511%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl9231393291%_)
                                                        (_%__kont9835098351%_
                                                         _%hd9231293288%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9229792511%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g9229792511%_)))
                                        (if (equal? _%e9231093280%_ '2)
                                            (if (gx#stx-pair? _%tl9230993277%_)
                                                (let ((_%e9238592983%_
                                                       (gx#syntax-e
                                                        _%tl9230993277%_)))
                                                  (let ((_%tl9238792990%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e9238592983%_)))
                                                        (_%hd9238692987%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e9238592983%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl9238792990%_)
                                                        (let ((_%e9238892993%_
                                                               (gx#syntax-e
                                                                _%tl9238792990%_)))
                                                          (let ((_%tl9239093000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e9238892993%_)))
                        (_%hd9238992997%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9238892993%_))))
                    (if (gx#stx-pair? _%hd9238992997%_)
                        (let ((_%e9239193003%_ (gx#syntax-e _%hd9238992997%_)))
                          (let ((_%tl9239393010%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9239193003%_)))
                                (_%hd9239293007%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9239193003%_))))
                            (if (gx#stx-pair? _%hd9239293007%_)
                                (let ((_%e9239493013%_
                                       (gx#syntax-e _%hd9239293007%_)))
                                  (let ((_%tl9239693020%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9239493013%_)))
                                        (_%hd9239593017%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9239493013%_))))
                                    (if (gx#identifier? _%hd9239593017%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g98798_|
                                             _%hd9239593017%_)
                                            (if (gx#stx-pair? _%tl9239693020%_)
                                                (let ((_%e9239793023%_
                                                       (gx#syntax-e
                                                        _%tl9239693020%_)))
                                                  (let ((_%tl9239993030%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e9239793023%_)))
                                                        (_%hd9239893027%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e9239793023%_))))
                                                    (if (gx#stx-null?
                                                         _%tl9239993030%_)
                                                        (if (gx#stx-pair?
                                                             _%tl9239393010%_)
                                                            (let ((_%e9240093033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl9239393010%_)))
                      (let ((_%tl9240293040%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9240093033%_)))
                            (_%hd9240193037%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9240093033%_))))
                        (_%__kont9835298353%_
                         _%tl9239093000%_
                         _%tl9240293040%_
                         _%hd9240193037%_
                         _%hd9239893027%_
                         _%hd9238692987%_
                         _%hd9230593264%_)))
                    (_%__kont9835498355%_
                     _%tl9239093000%_
                     _%tl9239393010%_
                     _%hd9239293007%_
                     _%hd9238692987%_
                     _%hd9230593264%_))
                (_%__kont9835498355%_
                 _%tl9239093000%_
                 _%tl9239393010%_
                 _%hd9239293007%_
                 _%hd9238692987%_
                 _%hd9230593264%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont9835498355%_
                                                 _%tl9239093000%_
                                                 _%tl9239393010%_
                                                 _%hd9239293007%_
                                                 _%hd9238692987%_
                                                 _%hd9230593264%_))
                                            (_%__kont9835498355%_
                                             _%tl9239093000%_
                                             _%tl9239393010%_
                                             _%hd9239293007%_
                                             _%hd9238692987%_
                                             _%hd9230593264%_))
                                        (_%__kont9835498355%_
                                         _%tl9239093000%_
                                         _%tl9239393010%_
                                         _%hd9239293007%_
                                         _%hd9238692987%_
                                         _%hd9230593264%_))))
                                (_%__kont9835498355%_
                                 _%tl9239093000%_
                                 _%tl9239393010%_
                                 _%hd9239293007%_
                                 _%hd9238692987%_
                                 _%hd9230593264%_))))
                        (if (gx#stx-null? _%hd9238992997%_)
                            (_%__kont9835698357%_
                             _%tl9239093000%_
                             _%hd9238692987%_
                             _%hd9230593264%_)
                            (let () (declare (not safe)) (_%g9229792511%_))))))
                (let () (declare (not safe)) (_%g9229792511%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9229792511%_)))
                                            (if (equal? _%e9231093280%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl9230993277%_)
                                                    (let ((_%e9245292732%_
                                                           (gx#syntax-e
                                                            _%tl9230993277%_)))
                                                      (let ((_%tl9245492739%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e9245292732%_)))
                    (_%hd9245392736%_
                     (let () (declare (not safe)) (##car _%e9245292732%_))))
                (if (gx#stx-pair? _%tl9245492739%_)
                    (let ((_%e9245592742%_ (gx#syntax-e _%tl9245492739%_)))
                      (let ((_%tl9245792749%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9245592742%_)))
                            (_%hd9245692746%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9245592742%_))))
                        (if (gx#stx-pair? _%hd9245692746%_)
                            (let ((_%e9245892752%_
                                   (gx#syntax-e _%hd9245692746%_)))
                              (let ((_%tl9246092759%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9245892752%_)))
                                    (_%hd9245992756%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9245892752%_))))
                                (_%__kont9835898359%_
                                 _%tl9245792749%_
                                 _%tl9246092759%_
                                 _%hd9245992756%_
                                 _%hd9245392736%_
                                 _%hd9230593264%_)))
                            (if (gx#stx-pair/null? _%hd9245392736%_)
                                (let ((_%__splice9836298363%_
                                       (gx#syntax-split-splice->vector
                                        _%hd9245392736%_
                                        '0)))
                                  (let ((_%tl9247992555%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9836298363%_
                                            '1)))
                                        (_%target9247792552%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9836298363%_
                                            '0))))
                                    (if (gx#stx-null? _%tl9247992555%_)
                                        (_%__match9869098691%_
                                         _%e9230493260%_
                                         _%hd9230593264%_
                                         _%tl9230693267%_
                                         _%e9230793270%_
                                         _%hd9230893274%_
                                         _%tl9230993277%_
                                         _%e9231093280%_
                                         _%e9245292732%_
                                         _%hd9245392736%_
                                         _%tl9245492739%_
                                         _%__splice9836298363%_
                                         _%target9247792552%_
                                         _%tl9247992555%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9229792511%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9229792511%_))))))
                    (if (gx#stx-pair/null? _%hd9245392736%_)
                        (let ((_%__splice9836298363%_
                               (gx#syntax-split-splice->vector
                                _%hd9245392736%_
                                '0)))
                          (let ((_%tl9247992555%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9836298363%_ '1)))
                                (_%target9247792552%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9836298363%_ '0))))
                            (if (gx#stx-null? _%tl9247992555%_)
                                (_%__match9869098691%_
                                 _%e9230493260%_
                                 _%hd9230593264%_
                                 _%tl9230693267%_
                                 _%e9230793270%_
                                 _%hd9230893274%_
                                 _%tl9230993277%_
                                 _%e9231093280%_
                                 _%e9245292732%_
                                 _%hd9245392736%_
                                 _%tl9245492739%_
                                 _%__splice9836298363%_
                                 _%target9247792552%_
                                 _%tl9247992555%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9229792511%_)))))
                        (let () (declare (not safe)) (_%g9229792511%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9229792511%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9229792511%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g9229792511%_)))))
                          (let () (declare (not safe)) (_%g9229792511%_)))))
                  (let () (declare (not safe)) (_%g9229792511%_))))))))))
