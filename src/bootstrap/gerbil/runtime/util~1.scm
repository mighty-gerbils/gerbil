(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g87692_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g87702_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx80752%_)
        (let* ((_%g8075680774%_
                (lambda (_%g8075780770%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8075780770%_)))
               (_%g8075580830%_
                (lambda (_%g8075780778%_)
                  (if (gx#stx-pair? _%g8075780778%_)
                      (let ((_%e8076080781%_ (gx#syntax-e _%g8075780778%_)))
                        (let ((_%hd8076180785%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8076080781%_)))
                              (_%tl8076280788%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8076080781%_))))
                          (if (gx#stx-pair? _%tl8076280788%_)
                              (let ((_%e8076380791%_
                                     (gx#syntax-e _%tl8076280788%_)))
                                (let ((_%hd8076480795%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8076380791%_)))
                                      (_%tl8076580798%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8076380791%_))))
                                  (if (gx#stx-pair? _%tl8076580798%_)
                                      (let ((_%e8076680801%_
                                             (gx#syntax-e _%tl8076580798%_)))
                                        (let ((_%hd8076780805%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8076680801%_)))
                                              (_%tl8076880808%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8076680801%_))))
                                          (if (gx#stx-null? _%tl8076880808%_)
                                              ((lambda (_%L80811%_ _%L80813%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L80813%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L80811%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8076780805%_
                                               _%hd8076480795%_)
                                              (_%g8075680774%_
                                               _%g8075780778%_))))
                                      (_%g8075680774%_ _%g8075780778%_))))
                              (_%g8075680774%_ _%g8075780778%_))))
                      (_%g8075680774%_ _%g8075780778%_)))))
          (_%g8075580830%_ _%$stx80752%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx80834%_)
        (let* ((_%g8083880852%_
                (lambda (_%g8083980848%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8083980848%_)))
               (_%g8083780893%_
                (lambda (_%g8083980856%_)
                  (if (gx#stx-pair? _%g8083980856%_)
                      (let ((_%e8084180859%_ (gx#syntax-e _%g8083980856%_)))
                        (let ((_%hd8084280863%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8084180859%_)))
                              (_%tl8084380866%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8084180859%_))))
                          (if (gx#stx-pair? _%tl8084380866%_)
                              (let ((_%e8084480869%_
                                     (gx#syntax-e _%tl8084380866%_)))
                                (let ((_%hd8084580873%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8084480869%_)))
                                      (_%tl8084680876%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8084480869%_))))
                                  (if (gx#stx-null? _%tl8084680876%_)
                                      ((lambda (_%L80879%_)
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
                                       (cons _%L80879%_
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
                                       _%hd8084580873%_)
                                      (_%g8083880852%_ _%g8083980856%_))))
                              (_%g8083880852%_ _%g8083980856%_))))
                      (_%g8083880852%_ _%g8083980856%_)))))
          (_%g8083780893%_ _%$stx80834%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx80897%_)
        (let* ((_%g8090180915%_
                (lambda (_%g8090280911%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8090280911%_)))
               (_%g8090080956%_
                (lambda (_%g8090280919%_)
                  (if (gx#stx-pair? _%g8090280919%_)
                      (let ((_%e8090480922%_ (gx#syntax-e _%g8090280919%_)))
                        (let ((_%hd8090580926%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8090480922%_)))
                              (_%tl8090680929%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8090480922%_))))
                          (if (gx#stx-pair? _%tl8090680929%_)
                              (let ((_%e8090780932%_
                                     (gx#syntax-e _%tl8090680929%_)))
                                (let ((_%hd8090880936%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8090780932%_)))
                                      (_%tl8090980939%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8090780932%_))))
                                  (if (gx#stx-null? _%tl8090980939%_)
                                      ((lambda (_%L80942%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L80942%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd8090880936%_)
                                      (_%g8090180915%_ _%g8090280919%_))))
                              (_%g8090180915%_ _%g8090280919%_))))
                      (_%g8090180915%_ _%g8090280919%_)))))
          (_%g8090080956%_ _%$stx80897%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx80960%_)
        (let* ((_%g8096480974%_
                (lambda (_%g8096580970%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8096580970%_)))
               (_%g8096380995%_
                (lambda (_%g8096580978%_)
                  (if (gx#stx-pair? _%g8096580978%_)
                      (let ((_%e8096680981%_ (gx#syntax-e _%g8096580978%_)))
                        (let ((_%hd8096780985%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8096680981%_)))
                              (_%tl8096880988%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8096680981%_))))
                          (if (gx#stx-null? _%tl8096880988%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g8096480974%_ _%g8096580978%_))))
                      (_%g8096480974%_ _%g8096580978%_)))))
          (_%g8096380995%_ _%$stx80960%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx80999%_)
        (let* ((_%g8100381021%_
                (lambda (_%g8100481017%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8100481017%_)))
               (_%g8100281076%_
                (lambda (_%g8100481025%_)
                  (if (gx#stx-pair? _%g8100481025%_)
                      (let ((_%e8100781028%_ (gx#syntax-e _%g8100481025%_)))
                        (let ((_%hd8100881032%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8100781028%_)))
                              (_%tl8100981035%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8100781028%_))))
                          (if (gx#stx-pair? _%tl8100981035%_)
                              (let ((_%e8101081038%_
                                     (gx#syntax-e _%tl8100981035%_)))
                                (let ((_%hd8101181042%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8101081038%_)))
                                      (_%tl8101281045%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8101081038%_))))
                                  (if (gx#stx-pair? _%tl8101281045%_)
                                      (let ((_%e8101381048%_
                                             (gx#syntax-e _%tl8101281045%_)))
                                        (let ((_%hd8101481052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8101381048%_)))
                                              (_%tl8101581055%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8101381048%_))))
                                          (if (gx#stx-null? _%tl8101581055%_)
                                              ((lambda (_%L81058%_ _%L81060%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L81060%_
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
                 (cons (cons _%L81058%_
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
                                               _%hd8101481052%_
                                               _%hd8101181042%_)
                                              (_%g8100381021%_
                                               _%g8100481025%_))))
                                      (_%g8100381021%_ _%g8100481025%_))))
                              (_%g8100381021%_ _%g8100481025%_))))
                      (_%g8100381021%_ _%g8100481025%_)))))
          (_%g8100281076%_ _%$stx80999%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx81080%_)
        (let* ((_%g8108481102%_
                (lambda (_%g8108581098%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8108581098%_)))
               (_%g8108381157%_
                (lambda (_%g8108581106%_)
                  (if (gx#stx-pair? _%g8108581106%_)
                      (let ((_%e8108881109%_ (gx#syntax-e _%g8108581106%_)))
                        (let ((_%hd8108981113%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8108881109%_)))
                              (_%tl8109081116%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8108881109%_))))
                          (if (gx#stx-pair? _%tl8109081116%_)
                              (let ((_%e8109181119%_
                                     (gx#syntax-e _%tl8109081116%_)))
                                (let ((_%hd8109281123%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8109181119%_)))
                                      (_%tl8109381126%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8109181119%_))))
                                  (if (gx#stx-pair? _%tl8109381126%_)
                                      (let ((_%e8109481129%_
                                             (gx#syntax-e _%tl8109381126%_)))
                                        (let ((_%hd8109581133%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8109481129%_)))
                                              (_%tl8109681136%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8109481129%_))))
                                          (if (gx#stx-null? _%tl8109681136%_)
                                              ((lambda (_%L81139%_ _%L81141%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L81141%_
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
                                               (cons (cons _%L81139%_
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
                                               _%hd8109581133%_
                                               _%hd8109281123%_)
                                              (_%g8108481102%_
                                               _%g8108581106%_))))
                                      (_%g8108481102%_ _%g8108581106%_))))
                              (_%g8108481102%_ _%g8108581106%_))))
                      (_%g8108481102%_ _%g8108581106%_)))))
          (_%g8108381157%_ _%$stx81080%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx81161%_)
        (let* ((_%g8116581183%_
                (lambda (_%g8116681179%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8116681179%_)))
               (_%g8116481238%_
                (lambda (_%g8116681187%_)
                  (if (gx#stx-pair? _%g8116681187%_)
                      (let ((_%e8116981190%_ (gx#syntax-e _%g8116681187%_)))
                        (let ((_%hd8117081194%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8116981190%_)))
                              (_%tl8117181197%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8116981190%_))))
                          (if (gx#stx-pair? _%tl8117181197%_)
                              (let ((_%e8117281200%_
                                     (gx#syntax-e _%tl8117181197%_)))
                                (let ((_%hd8117381204%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8117281200%_)))
                                      (_%tl8117481207%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8117281200%_))))
                                  (if (gx#stx-pair? _%tl8117481207%_)
                                      (let ((_%e8117581210%_
                                             (gx#syntax-e _%tl8117481207%_)))
                                        (let ((_%hd8117681214%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8117581210%_)))
                                              (_%tl8117781217%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8117581210%_))))
                                          (if (gx#stx-null? _%tl8117781217%_)
                                              ((lambda (_%L81220%_ _%L81222%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L81222%_
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
                                               (cons (cons _%L81220%_
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
                                               _%hd8117681214%_
                                               _%hd8117381204%_)
                                              (_%g8116581183%_
                                               _%g8116681187%_))))
                                      (_%g8116581183%_ _%g8116681187%_))))
                              (_%g8116581183%_ _%g8116681187%_))))
                      (_%g8116581183%_ _%g8116681187%_)))))
          (_%g8116481238%_ _%$stx81161%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx81242%_)
        (let* ((_%g8124681257%_
                (lambda (_%g8124781253%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8124781253%_)))
               (_%g8124581286%_
                (lambda (_%g8124781261%_)
                  (if (gx#stx-pair? _%g8124781261%_)
                      (let ((_%e8124981264%_ (gx#syntax-e _%g8124781261%_)))
                        (let ((_%hd8125081268%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8124981264%_)))
                              (_%tl8125181271%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8124981264%_))))
                          ((lambda (_%L81274%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L81274%_)))
                           _%tl8125181271%_)))
                      (_%g8124681257%_ _%g8124781261%_)))))
          (_%g8124581286%_ _%$stx81242%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx81290%_)
        (let* ((_%__stx8725387254%_ _%$stx81290%_)
               (_%g8130181515%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8725387254%_))))
          (let ((_%__kont8725687257%_
                 (lambda (_%L82368%_
                          _%L82370%_
                          _%L82371%_
                          _%L82372%_
                          _%L82373%_)
                   (cons _%L82373%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8240382406%_
                                                     _%g8240482409%_)
                                              (cons _%g8240382406%_
                                                    _%g8240482409%_))
                                            '()
                                            _%L82371%_)
                                           (cons _%L82372%_
                                                 (cons _%L82370%_
                                                       (cons _%L82368%_
                                                             '())))))))))
                (_%__kont8726087261%_
                 (lambda (_%L82221%_ _%L82223%_ _%L82224%_ _%L82225%_)
                   (cons _%L82225%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8224882251%_
                                                     _%g8224982254%_)
                                              (cons _%g8224882251%_
                                                    _%g8224982254%_))
                                            '()
                                            _%L82223%_)
                                           (cons _%L82224%_
                                                 (cons _%L82221%_
                                                       (cons _%L82221%_
                                                             '())))))))))
                (_%__kont8726487265%_
                 (lambda (_%L82124%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L82124%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont8726687267%_
                 (lambda (_%L82047%_
                          _%L82049%_
                          _%L82050%_
                          _%L82051%_
                          _%L82052%_
                          _%L82053%_)
                   (cons _%L82053%_
                         (cons '2
                               (cons (cons (cons _%L82051%_
                                                 (cons _%L82050%_ '()))
                                           _%L82052%_)
                                     (cons _%L82049%_ _%L82047%_))))))
                (_%__kont8726887269%_
                 (lambda (_%L81928%_
                          _%L81930%_
                          _%L81931%_
                          _%L81932%_
                          _%L81933%_)
                   (cons _%L81933%_
                         (cons '2
                               (cons (cons (cons _%L81931%_
                                                 (cons _%L81931%_ '()))
                                           _%L81932%_)
                                     (cons _%L81930%_ _%L81928%_))))))
                (_%__kont8727087271%_
                 (lambda (_%L81845%_ _%L81847%_ _%L81848%_)
                   (cons _%L81848%_
                         (cons '3 (cons '() (cons _%L81847%_ _%L81845%_))))))
                (_%__kont8727287273%_
                 (lambda (_%L81766%_
                          _%L81768%_
                          _%L81769%_
                          _%L81770%_
                          _%L81771%_)
                   (cons _%L81771%_
                         (cons '3
                               (cons (cons _%L81769%_ _%L81770%_)
                                     (cons _%L81768%_ _%L81766%_))))))
                (_%__kont8727487275%_
                 (lambda (_%L81650%_
                          _%L81652%_
                          _%L81653%_
                          _%L81654%_
                          _%L81655%_
                          _%L81656%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L81653%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L81650%_ '())))
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
                                              (lambda (_%g8169081693%_
                                                       _%g8169181696%_)
                                                (cons _%g8169081693%_
                                                      _%g8169181696%_))
                                              '()
                                              _%L81655%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (__foldr1
                                              (lambda (_%g8168881699%_
                                                       _%g8168981702%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g8168881699%_ '())))
              _%g8168981702%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L81654%_))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L81652%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match8760487605%_
                    (lambda (_%e8147181522%_
                             _%hd8147281526%_
                             _%tl8147381529%_
                             _%e8147481532%_
                             _%hd8147581536%_
                             _%tl8147681539%_
                             _%e8147781542%_
                             _%e8147881546%_
                             _%hd8147981550%_
                             _%tl8148081553%_
                             _%__splice8727687277%_
                             _%target8148181556%_
                             _%tl8148381559%_)
                      (letrec ((_%loop8148481562%_
                                (lambda (_%hd8148281566%_
                                         _%exprs8148881569%_
                                         _%names8148981571%_)
                                  (if (gx#stx-pair? _%hd8148281566%_)
                                      (let ((_%e8148581574%_
                                             (gx#syntax-e _%hd8148281566%_)))
                                        (let ((_%lp-tl8148781581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8148581574%_)))
                                              (_%lp-hd8148681578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8148581574%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd8148681578%_)
                                              (let ((_%e8150481584%_
                                                     (gx#syntax-e
                                                      _%lp-hd8148681578%_)))
                                                (let ((_%tl8150681591%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8150481584%_)))
                                                      (_%hd8150581588%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8150481584%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8150681591%_)
                                                      (let ((_%e8150781594%_
                                                             (gx#syntax-e
                                                              _%tl8150681591%_)))
                                                        (let ((_%tl8150981601%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8150781594%_)))
                      (_%hd8150881598%_
                       (let () (declare (not safe)) (##car _%e8150781594%_))))
                  (if (gx#stx-null? _%tl8150981601%_)
                      (_%loop8148481562%_
                       _%lp-tl8148781581%_
                       (cons _%hd8150881598%_ _%exprs8148881569%_)
                       (cons _%hd8150581588%_ _%names8148981571%_))
                      (let () (declare (not safe)) (_%g8130181515%_)))))
              (let () (declare (not safe)) (_%g8130181515%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g8130181515%_)))))
                                      (let ((_%names8149181607%_
                                             (reverse _%names8148981571%_))
                                            (_%exprs8149081604%_
                                             (reverse _%exprs8148881569%_)))
                                        (if (gx#stx-pair? _%tl8148081553%_)
                                            (let ((_%e8149281610%_
                                                   (gx#syntax-e
                                                    _%tl8148081553%_)))
                                              (let ((_%tl8149481617%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8149281610%_)))
                                                    (_%hd8149381614%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8149281610%_))))
                                                (if (gx#stx-null?
                                                     _%hd8149381614%_)
                                                    (if (gx#stx-pair?
                                                         _%tl8149481617%_)
                                                        (let ((_%e8149581620%_
                                                               (gx#syntax-e
                                                                _%tl8149481617%_)))
                                                          (let ((_%tl8149781627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8149581620%_)))
                        (_%hd8149681624%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8149581620%_))))
                    (if (gx#stx-pair? _%tl8149781627%_)
                        (let ((_%e8149881630%_ (gx#syntax-e _%tl8149781627%_)))
                          (let ((_%tl8150081637%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8149881630%_)))
                                (_%hd8149981634%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8149881630%_))))
                            (if (gx#stx-pair? _%tl8150081637%_)
                                (let ((_%e8150181640%_
                                       (gx#syntax-e _%tl8150081637%_)))
                                  (let ((_%tl8150381647%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8150181640%_)))
                                        (_%hd8150281644%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8150181640%_))))
                                    (if (gx#stx-null? _%tl8150381647%_)
                                        (_%__kont8727487275%_
                                         _%hd8150281644%_
                                         _%hd8149981634%_
                                         _%hd8149681624%_
                                         _%exprs8149081604%_
                                         _%names8149181607%_
                                         _%hd8147281526%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8130181515%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8130181515%_)))))
                        (let () (declare (not safe)) (_%g8130181515%_)))))
                (let () (declare (not safe)) (_%g8130181515%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8130181515%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8130181515%_))))))))
                        (_%loop8148481562%_ _%target8148181556%_ '() '()))))
                   (_%__match8738287383%_
                    (lambda (_%e8134382147%_
                             _%hd8134482151%_
                             _%tl8134582154%_
                             _%e8134682157%_
                             _%hd8134782161%_
                             _%tl8134882164%_
                             _%e8134982167%_
                             _%e8135082171%_
                             _%hd8135182175%_
                             _%tl8135282178%_
                             _%__splice8726287263%_
                             _%target8135382181%_
                             _%tl8135582184%_
                             _%e8136282187%_
                             _%hd8136382191%_
                             _%tl8136482194%_)
                      (letrec ((_%loop8135682197%_
                                (lambda (_%hd8135482201%_ _%exprs8136082204%_)
                                  (if (gx#stx-pair? _%hd8135482201%_)
                                      (let ((_%e8135782207%_
                                             (gx#syntax-e _%hd8135482201%_)))
                                        (let ((_%lp-tl8135982214%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8135782207%_)))
                                              (_%lp-hd8135882211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8135782207%_))))
                                          (_%loop8135682197%_
                                           _%lp-tl8135982214%_
                                           (cons _%lp-hd8135882211%_
                                                 _%exprs8136082204%_))))
                                      (let ((_%exprs8136182217%_
                                             (reverse _%exprs8136082204%_)))
                                        (_%__kont8726087261%_
                                         _%hd8136382191%_
                                         _%exprs8136182217%_
                                         _%hd8135182175%_
                                         _%hd8134482151%_))))))
                        (_%loop8135682197%_ _%target8135382181%_ '()))))
                   (_%__match8734287343%_
                    (lambda (_%e8130882264%_
                             _%hd8130982268%_
                             _%tl8131082271%_
                             _%e8131182274%_
                             _%hd8131282278%_
                             _%tl8131382281%_
                             _%e8131482284%_
                             _%e8131582288%_
                             _%hd8131682292%_
                             _%tl8131782295%_
                             _%__splice8725887259%_
                             _%target8131882298%_
                             _%tl8132082301%_
                             _%e8132782304%_
                             _%hd8132882308%_
                             _%tl8132982311%_
                             _%e8133082314%_
                             _%hd8133182318%_
                             _%tl8133282321%_
                             _%e8133382324%_
                             _%hd8133482328%_
                             _%tl8133582331%_
                             _%e8133682334%_
                             _%hd8133782338%_
                             _%tl8133882341%_)
                      (letrec ((_%loop8132182344%_
                                (lambda (_%hd8131982348%_ _%exprs8132582351%_)
                                  (if (gx#stx-pair? _%hd8131982348%_)
                                      (let ((_%e8132282354%_
                                             (gx#syntax-e _%hd8131982348%_)))
                                        (let ((_%lp-tl8132482361%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8132282354%_)))
                                              (_%lp-hd8132382358%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8132282354%_))))
                                          (_%loop8132182344%_
                                           _%lp-tl8132482361%_
                                           (cons _%lp-hd8132382358%_
                                                 _%exprs8132582351%_))))
                                      (let ((_%exprs8132682364%_
                                             (reverse _%exprs8132582351%_)))
                                        (_%__kont8725687257%_
                                         _%hd8133782338%_
                                         _%hd8133482328%_
                                         _%exprs8132682364%_
                                         _%hd8131682292%_
                                         _%hd8130982268%_))))))
                        (_%loop8132182344%_ _%target8131882298%_ '())))))
              (if (gx#stx-pair? _%__stx8725387254%_)
                  (let ((_%e8130882264%_ (gx#syntax-e _%__stx8725387254%_)))
                    (let ((_%tl8131082271%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e8130882264%_)))
                          (_%hd8130982268%_
                           (let ()
                             (declare (not safe))
                             (##car _%e8130882264%_))))
                      (if (gx#stx-pair? _%tl8131082271%_)
                          (let ((_%e8131182274%_
                                 (gx#syntax-e _%tl8131082271%_)))
                            (let ((_%tl8131382281%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e8131182274%_)))
                                  (_%hd8131282278%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e8131182274%_))))
                              (if (gx#stx-datum? _%hd8131282278%_)
                                  (let ((_%e8131482284%_
                                         (gx#stx-e _%hd8131282278%_)))
                                    (if (equal? _%e8131482284%_ '1)
                                        (if (gx#stx-pair? _%tl8131382281%_)
                                            (let ((_%e8131582288%_
                                                   (gx#syntax-e
                                                    _%tl8131382281%_)))
                                              (let ((_%tl8131782295%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8131582288%_)))
                                                    (_%hd8131682292%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8131582288%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl8131782295%_)
                                                    (if (let ((__tmp87691
                                                               (gx#stx-length
                                                                _%tl8131782295%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp87691
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice8725887259%_
                       (gx#syntax-split-splice _%tl8131782295%_ '2)))
                  (let ((_%tl8132082301%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8725887259%_ '1)))
                        (_%target8131882298%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8725887259%_ '0))))
                    (if (gx#stx-pair? _%tl8132082301%_)
                        (let ((_%e8132782304%_ (gx#syntax-e _%tl8132082301%_)))
                          (let ((_%tl8132982311%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8132782304%_)))
                                (_%hd8132882308%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8132782304%_))))
                            (if (gx#stx-pair? _%hd8132882308%_)
                                (let ((_%e8133082314%_
                                       (gx#syntax-e _%hd8132882308%_)))
                                  (let ((_%tl8133282321%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8133082314%_)))
                                        (_%hd8133182318%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8133082314%_))))
                                    (if (gx#identifier? _%hd8133182318%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g87692_|
                                             _%hd8133182318%_)
                                            (if (gx#stx-pair? _%tl8133282321%_)
                                                (let ((_%e8133382324%_
                                                       (gx#syntax-e
                                                        _%tl8133282321%_)))
                                                  (let ((_%tl8133582331%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8133382324%_)))
                                                        (_%hd8133482328%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8133382324%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8133582331%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8132982311%_)
                                                            (let ((_%e8133682334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8132982311%_)))
                      (let ((_%tl8133882341%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8133682334%_)))
                            (_%hd8133782338%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8133682334%_))))
                        (if (gx#stx-null? _%tl8133882341%_)
                            (_%__match8734287343%_
                             _%e8130882264%_
                             _%hd8130982268%_
                             _%tl8131082271%_
                             _%e8131182274%_
                             _%hd8131282278%_
                             _%tl8131382281%_
                             _%e8131482284%_
                             _%e8131582288%_
                             _%hd8131682292%_
                             _%tl8131782295%_
                             _%__splice8725887259%_
                             _%target8131882298%_
                             _%tl8132082301%_
                             _%e8132782304%_
                             _%hd8132882308%_
                             _%tl8132982311%_
                             _%e8133082314%_
                             _%hd8133182318%_
                             _%tl8133282321%_
                             _%e8133382324%_
                             _%hd8133482328%_
                             _%tl8133582331%_
                             _%e8133682334%_
                             _%hd8133782338%_
                             _%tl8133882341%_)
                            (if (let ((__tmp87693
                                       (gx#stx-length _%tl8131782295%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp87693 '1))
                                (let ((_%__splice8726287263%_
                                       (gx#syntax-split-splice
                                        _%tl8131782295%_
                                        '1)))
                                  (let ((_%tl8135582184%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8726287263%_
                                            '1)))
                                        (_%target8135382181%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8726287263%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl8135582184%_)
                                        (let ((_%e8136282187%_
                                               (gx#syntax-e _%tl8135582184%_)))
                                          (let ((_%tl8136482194%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e8136282187%_)))
                                                (_%hd8136382191%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e8136282187%_))))
                                            (if (gx#stx-null? _%tl8136482194%_)
                                                (_%__match8738287383%_
                                                 _%e8130882264%_
                                                 _%hd8130982268%_
                                                 _%tl8131082271%_
                                                 _%e8131182274%_
                                                 _%hd8131282278%_
                                                 _%tl8131382281%_
                                                 _%e8131482284%_
                                                 _%e8131582288%_
                                                 _%hd8131682292%_
                                                 _%tl8131782295%_
                                                 _%__splice8726287263%_
                                                 _%target8135382181%_
                                                 _%tl8135582184%_
                                                 _%e8136282187%_
                                                 _%hd8136382191%_
                                                 _%tl8136482194%_)
                                                (if (gx#stx-null?
                                                     _%tl8131782295%_)
                                                    (_%__kont8726487265%_
                                                     _%hd8131682292%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8130181515%_))))))
                                        (if (gx#stx-null? _%tl8131782295%_)
                                            (_%__kont8726487265%_
                                             _%hd8131682292%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8130181515%_))))))
                                (if (gx#stx-null? _%tl8131782295%_)
                                    (_%__kont8726487265%_ _%hd8131682292%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8130181515%_)))))))
                    (if (let ((__tmp87694 (gx#stx-length _%tl8131782295%_)))
                          (declare (not safe))
                          (##fx>= __tmp87694 '1))
                        (let ((_%__splice8726287263%_
                               (gx#syntax-split-splice _%tl8131782295%_ '1)))
                          (let ((_%tl8135582184%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8726287263%_ '1)))
                                (_%target8135382181%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8726287263%_ '0))))
                            (if (gx#stx-pair? _%tl8135582184%_)
                                (let ((_%e8136282187%_
                                       (gx#syntax-e _%tl8135582184%_)))
                                  (let ((_%tl8136482194%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8136282187%_)))
                                        (_%hd8136382191%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8136282187%_))))
                                    (if (gx#stx-null? _%tl8136482194%_)
                                        (_%__match8738287383%_
                                         _%e8130882264%_
                                         _%hd8130982268%_
                                         _%tl8131082271%_
                                         _%e8131182274%_
                                         _%hd8131282278%_
                                         _%tl8131382281%_
                                         _%e8131482284%_
                                         _%e8131582288%_
                                         _%hd8131682292%_
                                         _%tl8131782295%_
                                         _%__splice8726287263%_
                                         _%target8135382181%_
                                         _%tl8135582184%_
                                         _%e8136282187%_
                                         _%hd8136382191%_
                                         _%tl8136482194%_)
                                        (if (gx#stx-null? _%tl8131782295%_)
                                            (_%__kont8726487265%_
                                             _%hd8131682292%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8130181515%_))))))
                                (if (gx#stx-null? _%tl8131782295%_)
                                    (_%__kont8726487265%_ _%hd8131682292%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8130181515%_))))))
                        (if (gx#stx-null? _%tl8131782295%_)
                            (_%__kont8726487265%_ _%hd8131682292%_)
                            (let () (declare (not safe)) (_%g8130181515%_)))))
                (if (let ((__tmp87695 (gx#stx-length _%tl8131782295%_)))
                      (declare (not safe))
                      (##fx>= __tmp87695 '1))
                    (let ((_%__splice8726287263%_
                           (gx#syntax-split-splice _%tl8131782295%_ '1)))
                      (let ((_%tl8135582184%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8726287263%_ '1)))
                            (_%target8135382181%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8726287263%_ '0))))
                        (if (gx#stx-pair? _%tl8135582184%_)
                            (let ((_%e8136282187%_
                                   (gx#syntax-e _%tl8135582184%_)))
                              (let ((_%tl8136482194%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8136282187%_)))
                                    (_%hd8136382191%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8136282187%_))))
                                (if (gx#stx-null? _%tl8136482194%_)
                                    (_%__match8738287383%_
                                     _%e8130882264%_
                                     _%hd8130982268%_
                                     _%tl8131082271%_
                                     _%e8131182274%_
                                     _%hd8131282278%_
                                     _%tl8131382281%_
                                     _%e8131482284%_
                                     _%e8131582288%_
                                     _%hd8131682292%_
                                     _%tl8131782295%_
                                     _%__splice8726287263%_
                                     _%target8135382181%_
                                     _%tl8135582184%_
                                     _%e8136282187%_
                                     _%hd8136382191%_
                                     _%tl8136482194%_)
                                    (if (gx#stx-null? _%tl8131782295%_)
                                        (_%__kont8726487265%_ _%hd8131682292%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8130181515%_))))))
                            (if (gx#stx-null? _%tl8131782295%_)
                                (_%__kont8726487265%_ _%hd8131682292%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8130181515%_))))))
                    (if (gx#stx-null? _%tl8131782295%_)
                        (_%__kont8726487265%_ _%hd8131682292%_)
                        (let () (declare (not safe)) (_%g8130181515%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp87696
                                                           (gx#stx-length
                                                            _%tl8131782295%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp87696 '1))
                                                    (let ((_%__splice8726287263%_
                                                           (gx#syntax-split-splice
                                                            _%tl8131782295%_
                                                            '1)))
                                                      (let ((_%tl8135582184%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8726287263%_ '1)))
                    (_%target8135382181%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8726287263%_ '0))))
                (if (gx#stx-pair? _%tl8135582184%_)
                    (let ((_%e8136282187%_ (gx#syntax-e _%tl8135582184%_)))
                      (let ((_%tl8136482194%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8136282187%_)))
                            (_%hd8136382191%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8136282187%_))))
                        (if (gx#stx-null? _%tl8136482194%_)
                            (_%__match8738287383%_
                             _%e8130882264%_
                             _%hd8130982268%_
                             _%tl8131082271%_
                             _%e8131182274%_
                             _%hd8131282278%_
                             _%tl8131382281%_
                             _%e8131482284%_
                             _%e8131582288%_
                             _%hd8131682292%_
                             _%tl8131782295%_
                             _%__splice8726287263%_
                             _%target8135382181%_
                             _%tl8135582184%_
                             _%e8136282187%_
                             _%hd8136382191%_
                             _%tl8136482194%_)
                            (if (gx#stx-null? _%tl8131782295%_)
                                (_%__kont8726487265%_ _%hd8131682292%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8130181515%_))))))
                    (if (gx#stx-null? _%tl8131782295%_)
                        (_%__kont8726487265%_ _%hd8131682292%_)
                        (let () (declare (not safe)) (_%g8130181515%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8131782295%_)
                                                        (_%__kont8726487265%_
                                                         _%hd8131682292%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8130181515%_)))))
                                            (if (let ((__tmp87697
                                                       (gx#stx-length
                                                        _%tl8131782295%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp87697 '1))
                                                (let ((_%__splice8726287263%_
                                                       (gx#syntax-split-splice
                                                        _%tl8131782295%_
                                                        '1)))
                                                  (let ((_%tl8135582184%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8726287263%_
                                                            '1)))
                                                        (_%target8135382181%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8726287263%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl8135582184%_)
                                                        (let ((_%e8136282187%_
                                                               (gx#syntax-e
                                                                _%tl8135582184%_)))
                                                          (let ((_%tl8136482194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8136282187%_)))
                        (_%hd8136382191%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8136282187%_))))
                    (if (gx#stx-null? _%tl8136482194%_)
                        (_%__match8738287383%_
                         _%e8130882264%_
                         _%hd8130982268%_
                         _%tl8131082271%_
                         _%e8131182274%_
                         _%hd8131282278%_
                         _%tl8131382281%_
                         _%e8131482284%_
                         _%e8131582288%_
                         _%hd8131682292%_
                         _%tl8131782295%_
                         _%__splice8726287263%_
                         _%target8135382181%_
                         _%tl8135582184%_
                         _%e8136282187%_
                         _%hd8136382191%_
                         _%tl8136482194%_)
                        (if (gx#stx-null? _%tl8131782295%_)
                            (_%__kont8726487265%_ _%hd8131682292%_)
                            (let () (declare (not safe)) (_%g8130181515%_))))))
                (if (gx#stx-null? _%tl8131782295%_)
                    (_%__kont8726487265%_ _%hd8131682292%_)
                    (let () (declare (not safe)) (_%g8130181515%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl8131782295%_)
                                                    (_%__kont8726487265%_
                                                     _%hd8131682292%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8130181515%_)))))
                                        (if (let ((__tmp87698
                                                   (gx#stx-length
                                                    _%tl8131782295%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp87698 '1))
                                            (let ((_%__splice8726287263%_
                                                   (gx#syntax-split-splice
                                                    _%tl8131782295%_
                                                    '1)))
                                              (let ((_%tl8135582184%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8726287263%_
                                                        '1)))
                                                    (_%target8135382181%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8726287263%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl8135582184%_)
                                                    (let ((_%e8136282187%_
                                                           (gx#syntax-e
                                                            _%tl8135582184%_)))
                                                      (let ((_%tl8136482194%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8136282187%_)))
                    (_%hd8136382191%_
                     (let () (declare (not safe)) (##car _%e8136282187%_))))
                (if (gx#stx-null? _%tl8136482194%_)
                    (_%__match8738287383%_
                     _%e8130882264%_
                     _%hd8130982268%_
                     _%tl8131082271%_
                     _%e8131182274%_
                     _%hd8131282278%_
                     _%tl8131382281%_
                     _%e8131482284%_
                     _%e8131582288%_
                     _%hd8131682292%_
                     _%tl8131782295%_
                     _%__splice8726287263%_
                     _%target8135382181%_
                     _%tl8135582184%_
                     _%e8136282187%_
                     _%hd8136382191%_
                     _%tl8136482194%_)
                    (if (gx#stx-null? _%tl8131782295%_)
                        (_%__kont8726487265%_ _%hd8131682292%_)
                        (let () (declare (not safe)) (_%g8130181515%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8131782295%_)
                                                        (_%__kont8726487265%_
                                                         _%hd8131682292%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8130181515%_))))))
                                            (if (gx#stx-null? _%tl8131782295%_)
                                                (_%__kont8726487265%_
                                                 _%hd8131682292%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8130181515%_)))))))
                                (if (let ((__tmp87699
                                           (gx#stx-length _%tl8131782295%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp87699 '1))
                                    (let ((_%__splice8726287263%_
                                           (gx#syntax-split-splice
                                            _%tl8131782295%_
                                            '1)))
                                      (let ((_%tl8135582184%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8726287263%_
                                                '1)))
                                            (_%target8135382181%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8726287263%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl8135582184%_)
                                            (let ((_%e8136282187%_
                                                   (gx#syntax-e
                                                    _%tl8135582184%_)))
                                              (let ((_%tl8136482194%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8136282187%_)))
                                                    (_%hd8136382191%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8136282187%_))))
                                                (if (gx#stx-null?
                                                     _%tl8136482194%_)
                                                    (_%__match8738287383%_
                                                     _%e8130882264%_
                                                     _%hd8130982268%_
                                                     _%tl8131082271%_
                                                     _%e8131182274%_
                                                     _%hd8131282278%_
                                                     _%tl8131382281%_
                                                     _%e8131482284%_
                                                     _%e8131582288%_
                                                     _%hd8131682292%_
                                                     _%tl8131782295%_
                                                     _%__splice8726287263%_
                                                     _%target8135382181%_
                                                     _%tl8135582184%_
                                                     _%e8136282187%_
                                                     _%hd8136382191%_
                                                     _%tl8136482194%_)
                                                    (if (gx#stx-null?
                                                         _%tl8131782295%_)
                                                        (_%__kont8726487265%_
                                                         _%hd8131682292%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8130181515%_))))))
                                            (if (gx#stx-null? _%tl8131782295%_)
                                                (_%__kont8726487265%_
                                                 _%hd8131682292%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8130181515%_))))))
                                    (if (gx#stx-null? _%tl8131782295%_)
                                        (_%__kont8726487265%_ _%hd8131682292%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8130181515%_)))))))
                        (if (let ((__tmp87700
                                   (gx#stx-length _%tl8131782295%_)))
                              (declare (not safe))
                              (##fx>= __tmp87700 '1))
                            (let ((_%__splice8726287263%_
                                   (gx#syntax-split-splice
                                    _%tl8131782295%_
                                    '1)))
                              (let ((_%tl8135582184%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8726287263%_
                                        '1)))
                                    (_%target8135382181%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8726287263%_
                                        '0))))
                                (if (gx#stx-pair? _%tl8135582184%_)
                                    (let ((_%e8136282187%_
                                           (gx#syntax-e _%tl8135582184%_)))
                                      (let ((_%tl8136482194%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8136282187%_)))
                                            (_%hd8136382191%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8136282187%_))))
                                        (if (gx#stx-null? _%tl8136482194%_)
                                            (_%__match8738287383%_
                                             _%e8130882264%_
                                             _%hd8130982268%_
                                             _%tl8131082271%_
                                             _%e8131182274%_
                                             _%hd8131282278%_
                                             _%tl8131382281%_
                                             _%e8131482284%_
                                             _%e8131582288%_
                                             _%hd8131682292%_
                                             _%tl8131782295%_
                                             _%__splice8726287263%_
                                             _%target8135382181%_
                                             _%tl8135582184%_
                                             _%e8136282187%_
                                             _%hd8136382191%_
                                             _%tl8136482194%_)
                                            (if (gx#stx-null? _%tl8131782295%_)
                                                (_%__kont8726487265%_
                                                 _%hd8131682292%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8130181515%_))))))
                                    (if (gx#stx-null? _%tl8131782295%_)
                                        (_%__kont8726487265%_ _%hd8131682292%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8130181515%_))))))
                            (if (gx#stx-null? _%tl8131782295%_)
                                (_%__kont8726487265%_ _%hd8131682292%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8130181515%_)))))))
                (if (let ((__tmp87701 (gx#stx-length _%tl8131782295%_)))
                      (declare (not safe))
                      (##fx>= __tmp87701 '1))
                    (let ((_%__splice8726287263%_
                           (gx#syntax-split-splice _%tl8131782295%_ '1)))
                      (let ((_%tl8135582184%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8726287263%_ '1)))
                            (_%target8135382181%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8726287263%_ '0))))
                        (if (gx#stx-pair? _%tl8135582184%_)
                            (let ((_%e8136282187%_
                                   (gx#syntax-e _%tl8135582184%_)))
                              (let ((_%tl8136482194%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8136282187%_)))
                                    (_%hd8136382191%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8136282187%_))))
                                (if (gx#stx-null? _%tl8136482194%_)
                                    (_%__match8738287383%_
                                     _%e8130882264%_
                                     _%hd8130982268%_
                                     _%tl8131082271%_
                                     _%e8131182274%_
                                     _%hd8131282278%_
                                     _%tl8131382281%_
                                     _%e8131482284%_
                                     _%e8131582288%_
                                     _%hd8131682292%_
                                     _%tl8131782295%_
                                     _%__splice8726287263%_
                                     _%target8135382181%_
                                     _%tl8135582184%_
                                     _%e8136282187%_
                                     _%hd8136382191%_
                                     _%tl8136482194%_)
                                    (if (gx#stx-null? _%tl8131782295%_)
                                        (_%__kont8726487265%_ _%hd8131682292%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8130181515%_))))))
                            (if (gx#stx-null? _%tl8131782295%_)
                                (_%__kont8726487265%_ _%hd8131682292%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8130181515%_))))))
                    (if (gx#stx-null? _%tl8131782295%_)
                        (_%__kont8726487265%_ _%hd8131682292%_)
                        (let () (declare (not safe)) (_%g8130181515%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8131782295%_)
                                                        (_%__kont8726487265%_
                                                         _%hd8131682292%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8130181515%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8130181515%_)))
                                        (if (equal? _%e8131482284%_ '2)
                                            (if (gx#stx-pair? _%tl8131382281%_)
                                                (let ((_%e8138981987%_
                                                       (gx#syntax-e
                                                        _%tl8131382281%_)))
                                                  (let ((_%tl8139181994%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8138981987%_)))
                                                        (_%hd8139081991%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8138981987%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl8139181994%_)
                                                        (let ((_%e8139281997%_
                                                               (gx#syntax-e
                                                                _%tl8139181994%_)))
                                                          (let ((_%tl8139482004%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8139281997%_)))
                        (_%hd8139382001%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8139281997%_))))
                    (if (gx#stx-pair? _%hd8139382001%_)
                        (let ((_%e8139582007%_ (gx#syntax-e _%hd8139382001%_)))
                          (let ((_%tl8139782014%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8139582007%_)))
                                (_%hd8139682011%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8139582007%_))))
                            (if (gx#stx-pair? _%hd8139682011%_)
                                (let ((_%e8139882017%_
                                       (gx#syntax-e _%hd8139682011%_)))
                                  (let ((_%tl8140082024%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8139882017%_)))
                                        (_%hd8139982021%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8139882017%_))))
                                    (if (gx#identifier? _%hd8139982021%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g87702_|
                                             _%hd8139982021%_)
                                            (if (gx#stx-pair? _%tl8140082024%_)
                                                (let ((_%e8140182027%_
                                                       (gx#syntax-e
                                                        _%tl8140082024%_)))
                                                  (let ((_%tl8140382034%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8140182027%_)))
                                                        (_%hd8140282031%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8140182027%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8140382034%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8139782014%_)
                                                            (let ((_%e8140482037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8139782014%_)))
                      (let ((_%tl8140682044%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8140482037%_)))
                            (_%hd8140582041%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8140482037%_))))
                        (_%__kont8726687267%_
                         _%tl8139482004%_
                         _%tl8140682044%_
                         _%hd8140582041%_
                         _%hd8140282031%_
                         _%hd8139081991%_
                         _%hd8130982268%_)))
                    (_%__kont8726887269%_
                     _%tl8139482004%_
                     _%tl8139782014%_
                     _%hd8139682011%_
                     _%hd8139081991%_
                     _%hd8130982268%_))
                (_%__kont8726887269%_
                 _%tl8139482004%_
                 _%tl8139782014%_
                 _%hd8139682011%_
                 _%hd8139081991%_
                 _%hd8130982268%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont8726887269%_
                                                 _%tl8139482004%_
                                                 _%tl8139782014%_
                                                 _%hd8139682011%_
                                                 _%hd8139081991%_
                                                 _%hd8130982268%_))
                                            (_%__kont8726887269%_
                                             _%tl8139482004%_
                                             _%tl8139782014%_
                                             _%hd8139682011%_
                                             _%hd8139081991%_
                                             _%hd8130982268%_))
                                        (_%__kont8726887269%_
                                         _%tl8139482004%_
                                         _%tl8139782014%_
                                         _%hd8139682011%_
                                         _%hd8139081991%_
                                         _%hd8130982268%_))))
                                (_%__kont8726887269%_
                                 _%tl8139482004%_
                                 _%tl8139782014%_
                                 _%hd8139682011%_
                                 _%hd8139081991%_
                                 _%hd8130982268%_))))
                        (if (gx#stx-null? _%hd8139382001%_)
                            (_%__kont8727087271%_
                             _%tl8139482004%_
                             _%hd8139081991%_
                             _%hd8130982268%_)
                            (let () (declare (not safe)) (_%g8130181515%_))))))
                (let () (declare (not safe)) (_%g8130181515%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8130181515%_)))
                                            (if (equal? _%e8131482284%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl8131382281%_)
                                                    (let ((_%e8145681736%_
                                                           (gx#syntax-e
                                                            _%tl8131382281%_)))
                                                      (let ((_%tl8145881743%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8145681736%_)))
                    (_%hd8145781740%_
                     (let () (declare (not safe)) (##car _%e8145681736%_))))
                (if (gx#stx-pair? _%tl8145881743%_)
                    (let ((_%e8145981746%_ (gx#syntax-e _%tl8145881743%_)))
                      (let ((_%tl8146181753%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8145981746%_)))
                            (_%hd8146081750%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8145981746%_))))
                        (if (gx#stx-pair? _%hd8146081750%_)
                            (let ((_%e8146281756%_
                                   (gx#syntax-e _%hd8146081750%_)))
                              (let ((_%tl8146481763%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8146281756%_)))
                                    (_%hd8146381760%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8146281756%_))))
                                (_%__kont8727287273%_
                                 _%tl8146181753%_
                                 _%tl8146481763%_
                                 _%hd8146381760%_
                                 _%hd8145781740%_
                                 _%hd8130982268%_)))
                            (if (gx#stx-pair/null? _%hd8145781740%_)
                                (let ((_%__splice8727687277%_
                                       (gx#syntax-split-splice
                                        _%hd8145781740%_
                                        '0)))
                                  (let ((_%tl8148381559%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8727687277%_
                                            '1)))
                                        (_%target8148181556%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8727687277%_
                                            '0))))
                                    (if (gx#stx-null? _%tl8148381559%_)
                                        (_%__match8760487605%_
                                         _%e8130882264%_
                                         _%hd8130982268%_
                                         _%tl8131082271%_
                                         _%e8131182274%_
                                         _%hd8131282278%_
                                         _%tl8131382281%_
                                         _%e8131482284%_
                                         _%e8145681736%_
                                         _%hd8145781740%_
                                         _%tl8145881743%_
                                         _%__splice8727687277%_
                                         _%target8148181556%_
                                         _%tl8148381559%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8130181515%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8130181515%_))))))
                    (if (gx#stx-pair/null? _%hd8145781740%_)
                        (let ((_%__splice8727687277%_
                               (gx#syntax-split-splice _%hd8145781740%_ '0)))
                          (let ((_%tl8148381559%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8727687277%_ '1)))
                                (_%target8148181556%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8727687277%_ '0))))
                            (if (gx#stx-null? _%tl8148381559%_)
                                (_%__match8760487605%_
                                 _%e8130882264%_
                                 _%hd8130982268%_
                                 _%tl8131082271%_
                                 _%e8131182274%_
                                 _%hd8131282278%_
                                 _%tl8131382281%_
                                 _%e8131482284%_
                                 _%e8145681736%_
                                 _%hd8145781740%_
                                 _%tl8145881743%_
                                 _%__splice8727687277%_
                                 _%target8148181556%_
                                 _%tl8148381559%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8130181515%_)))))
                        (let () (declare (not safe)) (_%g8130181515%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8130181515%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8130181515%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g8130181515%_)))))
                          (let () (declare (not safe)) (_%g8130181515%_)))))
                  (let () (declare (not safe)) (_%g8130181515%_))))))))))
