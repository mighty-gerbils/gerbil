(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g88081_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g88091_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx81072%_)
        (let* ((_%g8107681094%_
                (lambda (_%g8107781090%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8107781090%_)))
               (_%g8107581150%_
                (lambda (_%g8107781098%_)
                  (if (gx#stx-pair? _%g8107781098%_)
                      (let ((_%e8108281101%_ (gx#syntax-e _%g8107781098%_)))
                        (let ((_%hd8108181105%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8108281101%_)))
                              (_%tl8108081108%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8108281101%_))))
                          (if (gx#stx-pair? _%tl8108081108%_)
                              (let ((_%e8108581111%_
                                     (gx#syntax-e _%tl8108081108%_)))
                                (let ((_%hd8108481115%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8108581111%_)))
                                      (_%tl8108381118%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8108581111%_))))
                                  (if (gx#stx-pair? _%tl8108381118%_)
                                      (let ((_%e8108881121%_
                                             (gx#syntax-e _%tl8108381118%_)))
                                        (let ((_%hd8108781125%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8108881121%_)))
                                              (_%tl8108681128%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8108881121%_))))
                                          (if (gx#stx-null? _%tl8108681128%_)
                                              ((lambda (_%L81131%_ _%L81133%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L81133%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L81131%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8108781125%_
                                               _%hd8108481115%_)
                                              (_%g8107681094%_
                                               _%g8107781098%_))))
                                      (_%g8107681094%_ _%g8107781098%_))))
                              (_%g8107681094%_ _%g8107781098%_))))
                      (_%g8107681094%_ _%g8107781098%_)))))
          (_%g8107581150%_ _%$stx81072%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx81154%_)
        (let* ((_%g8115881172%_
                (lambda (_%g8115981168%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8115981168%_)))
               (_%g8115781213%_
                (lambda (_%g8115981176%_)
                  (if (gx#stx-pair? _%g8115981176%_)
                      (let ((_%e8116381179%_ (gx#syntax-e _%g8115981176%_)))
                        (let ((_%hd8116281183%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8116381179%_)))
                              (_%tl8116181186%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8116381179%_))))
                          (if (gx#stx-pair? _%tl8116181186%_)
                              (let ((_%e8116681189%_
                                     (gx#syntax-e _%tl8116181186%_)))
                                (let ((_%hd8116581193%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8116681189%_)))
                                      (_%tl8116481196%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8116681189%_))))
                                  (if (gx#stx-null? _%tl8116481196%_)
                                      ((lambda (_%L81199%_)
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
                                       (cons _%L81199%_
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
                                       _%hd8116581193%_)
                                      (_%g8115881172%_ _%g8115981176%_))))
                              (_%g8115881172%_ _%g8115981176%_))))
                      (_%g8115881172%_ _%g8115981176%_)))))
          (_%g8115781213%_ _%$stx81154%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx81217%_)
        (let* ((_%g8122181235%_
                (lambda (_%g8122281231%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8122281231%_)))
               (_%g8122081276%_
                (lambda (_%g8122281239%_)
                  (if (gx#stx-pair? _%g8122281239%_)
                      (let ((_%e8122681242%_ (gx#syntax-e _%g8122281239%_)))
                        (let ((_%hd8122581246%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8122681242%_)))
                              (_%tl8122481249%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8122681242%_))))
                          (if (gx#stx-pair? _%tl8122481249%_)
                              (let ((_%e8122981252%_
                                     (gx#syntax-e _%tl8122481249%_)))
                                (let ((_%hd8122881256%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8122981252%_)))
                                      (_%tl8122781259%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8122981252%_))))
                                  (if (gx#stx-null? _%tl8122781259%_)
                                      ((lambda (_%L81262%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L81262%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd8122881256%_)
                                      (_%g8122181235%_ _%g8122281239%_))))
                              (_%g8122181235%_ _%g8122281239%_))))
                      (_%g8122181235%_ _%g8122281239%_)))))
          (_%g8122081276%_ _%$stx81217%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx81280%_)
        (let* ((_%g8128481294%_
                (lambda (_%g8128581290%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8128581290%_)))
               (_%g8128381315%_
                (lambda (_%g8128581298%_)
                  (if (gx#stx-pair? _%g8128581298%_)
                      (let ((_%e8128881301%_ (gx#syntax-e _%g8128581298%_)))
                        (let ((_%hd8128781305%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8128881301%_)))
                              (_%tl8128681308%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8128881301%_))))
                          (if (gx#stx-null? _%tl8128681308%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g8128481294%_ _%g8128581298%_))))
                      (_%g8128481294%_ _%g8128581298%_)))))
          (_%g8128381315%_ _%$stx81280%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx81319%_)
        (let* ((_%g8132381341%_
                (lambda (_%g8132481337%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8132481337%_)))
               (_%g8132281396%_
                (lambda (_%g8132481345%_)
                  (if (gx#stx-pair? _%g8132481345%_)
                      (let ((_%e8132981348%_ (gx#syntax-e _%g8132481345%_)))
                        (let ((_%hd8132881352%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8132981348%_)))
                              (_%tl8132781355%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8132981348%_))))
                          (if (gx#stx-pair? _%tl8132781355%_)
                              (let ((_%e8133281358%_
                                     (gx#syntax-e _%tl8132781355%_)))
                                (let ((_%hd8133181362%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8133281358%_)))
                                      (_%tl8133081365%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8133281358%_))))
                                  (if (gx#stx-pair? _%tl8133081365%_)
                                      (let ((_%e8133581368%_
                                             (gx#syntax-e _%tl8133081365%_)))
                                        (let ((_%hd8133481372%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8133581368%_)))
                                              (_%tl8133381375%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8133581368%_))))
                                          (if (gx#stx-null? _%tl8133381375%_)
                                              ((lambda (_%L81378%_ _%L81380%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L81380%_
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
                 (cons (cons _%L81378%_
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
                                               _%hd8133481372%_
                                               _%hd8133181362%_)
                                              (_%g8132381341%_
                                               _%g8132481345%_))))
                                      (_%g8132381341%_ _%g8132481345%_))))
                              (_%g8132381341%_ _%g8132481345%_))))
                      (_%g8132381341%_ _%g8132481345%_)))))
          (_%g8132281396%_ _%$stx81319%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx81400%_)
        (let* ((_%g8140481422%_
                (lambda (_%g8140581418%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8140581418%_)))
               (_%g8140381477%_
                (lambda (_%g8140581426%_)
                  (if (gx#stx-pair? _%g8140581426%_)
                      (let ((_%e8141081429%_ (gx#syntax-e _%g8140581426%_)))
                        (let ((_%hd8140981433%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8141081429%_)))
                              (_%tl8140881436%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8141081429%_))))
                          (if (gx#stx-pair? _%tl8140881436%_)
                              (let ((_%e8141381439%_
                                     (gx#syntax-e _%tl8140881436%_)))
                                (let ((_%hd8141281443%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8141381439%_)))
                                      (_%tl8141181446%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8141381439%_))))
                                  (if (gx#stx-pair? _%tl8141181446%_)
                                      (let ((_%e8141681449%_
                                             (gx#syntax-e _%tl8141181446%_)))
                                        (let ((_%hd8141581453%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8141681449%_)))
                                              (_%tl8141481456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8141681449%_))))
                                          (if (gx#stx-null? _%tl8141481456%_)
                                              ((lambda (_%L81459%_ _%L81461%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L81461%_
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
                                               (cons (cons _%L81459%_
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
                                               _%hd8141581453%_
                                               _%hd8141281443%_)
                                              (_%g8140481422%_
                                               _%g8140581426%_))))
                                      (_%g8140481422%_ _%g8140581426%_))))
                              (_%g8140481422%_ _%g8140581426%_))))
                      (_%g8140481422%_ _%g8140581426%_)))))
          (_%g8140381477%_ _%$stx81400%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx81481%_)
        (let* ((_%g8148581503%_
                (lambda (_%g8148681499%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8148681499%_)))
               (_%g8148481558%_
                (lambda (_%g8148681507%_)
                  (if (gx#stx-pair? _%g8148681507%_)
                      (let ((_%e8149181510%_ (gx#syntax-e _%g8148681507%_)))
                        (let ((_%hd8149081514%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8149181510%_)))
                              (_%tl8148981517%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8149181510%_))))
                          (if (gx#stx-pair? _%tl8148981517%_)
                              (let ((_%e8149481520%_
                                     (gx#syntax-e _%tl8148981517%_)))
                                (let ((_%hd8149381524%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8149481520%_)))
                                      (_%tl8149281527%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8149481520%_))))
                                  (if (gx#stx-pair? _%tl8149281527%_)
                                      (let ((_%e8149781530%_
                                             (gx#syntax-e _%tl8149281527%_)))
                                        (let ((_%hd8149681534%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8149781530%_)))
                                              (_%tl8149581537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8149781530%_))))
                                          (if (gx#stx-null? _%tl8149581537%_)
                                              ((lambda (_%L81540%_ _%L81542%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L81542%_
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
                                               (cons (cons _%L81540%_
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
                                               _%hd8149681534%_
                                               _%hd8149381524%_)
                                              (_%g8148581503%_
                                               _%g8148681507%_))))
                                      (_%g8148581503%_ _%g8148681507%_))))
                              (_%g8148581503%_ _%g8148681507%_))))
                      (_%g8148581503%_ _%g8148681507%_)))))
          (_%g8148481558%_ _%$stx81481%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx81562%_)
        (let* ((_%g8156681577%_
                (lambda (_%g8156781573%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8156781573%_)))
               (_%g8156581606%_
                (lambda (_%g8156781581%_)
                  (if (gx#stx-pair? _%g8156781581%_)
                      (let ((_%e8157181584%_ (gx#syntax-e _%g8156781581%_)))
                        (let ((_%hd8157081588%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8157181584%_)))
                              (_%tl8156981591%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8157181584%_))))
                          ((lambda (_%L81594%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L81594%_)))
                           _%tl8156981591%_)))
                      (_%g8156681577%_ _%g8156781581%_)))))
          (_%g8156581606%_ _%$stx81562%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx81610%_)
        (let* ((_%__stx8760587606%_ _%$stx81610%_)
               (_%g8162181835%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8760587606%_))))
          (let ((_%__kont8760887609%_
                 (lambda (_%L82688%_
                          _%L82690%_
                          _%L82691%_
                          _%L82692%_
                          _%L82693%_)
                   (cons _%L82693%_
                         (cons '2
                               (cons '()
                                     (cons (let ((__tmp88076
                                                  (lambda (_%g8272382726%_
                                                           _%g8272482729%_)
                                                    (cons _%g8272382726%_
                                                          _%g8272482729%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp88076
                                              '()
                                              _%L82691%_))
                                           (cons _%L82692%_
                                                 (cons _%L82690%_
                                                       (cons _%L82688%_
                                                             '())))))))))
                (_%__kont8761287613%_
                 (lambda (_%L82541%_ _%L82543%_ _%L82544%_ _%L82545%_)
                   (cons _%L82545%_
                         (cons '2
                               (cons '()
                                     (cons (let ((__tmp88077
                                                  (lambda (_%g8256882571%_
                                                           _%g8256982574%_)
                                                    (cons _%g8256882571%_
                                                          _%g8256982574%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp88077
                                              '()
                                              _%L82543%_))
                                           (cons _%L82544%_
                                                 (cons _%L82541%_
                                                       (cons _%L82541%_
                                                             '())))))))))
                (_%__kont8761687617%_
                 (lambda (_%L82444%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L82444%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont8761887619%_
                 (lambda (_%L82367%_
                          _%L82369%_
                          _%L82370%_
                          _%L82371%_
                          _%L82372%_
                          _%L82373%_)
                   (cons _%L82373%_
                         (cons '2
                               (cons (cons (cons _%L82371%_
                                                 (cons _%L82370%_ '()))
                                           _%L82372%_)
                                     (cons _%L82369%_ _%L82367%_))))))
                (_%__kont8762087621%_
                 (lambda (_%L82248%_
                          _%L82250%_
                          _%L82251%_
                          _%L82252%_
                          _%L82253%_)
                   (cons _%L82253%_
                         (cons '2
                               (cons (cons (cons _%L82251%_
                                                 (cons _%L82251%_ '()))
                                           _%L82252%_)
                                     (cons _%L82250%_ _%L82248%_))))))
                (_%__kont8762287623%_
                 (lambda (_%L82165%_ _%L82167%_ _%L82168%_)
                   (cons _%L82168%_
                         (cons '3 (cons '() (cons _%L82167%_ _%L82165%_))))))
                (_%__kont8762487625%_
                 (lambda (_%L82086%_
                          _%L82088%_
                          _%L82089%_
                          _%L82090%_
                          _%L82091%_)
                   (cons _%L82091%_
                         (cons '3
                               (cons (cons _%L82089%_ _%L82090%_)
                                     (cons _%L82088%_ _%L82086%_))))))
                (_%__kont8762687627%_
                 (lambda (_%L81970%_
                          _%L81972%_
                          _%L81973%_
                          _%L81974%_
                          _%L81975%_
                          _%L81976%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L81973%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L81970%_ '())))
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
                                       (cons (let ((__tmp88078
                                                    (lambda (_%g8201082013%_
                                                             _%g8201182016%_)
                                                      (cons _%g8201082013%_
                                                            _%g8201182016%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp88078
                                                '()
                                                _%L81975%_))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (let ((__tmp88079
                                                    (lambda (_%g8200882019%_
                                                             _%g8200982022%_)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '() (cons _%g8200882019%_ '())))
                    _%g8200982022%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp88079
                                                '()
                                                _%L81974%_)))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L81972%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match8795687957%_
                    (lambda (_%e8179381842%_
                             _%hd8179281846%_
                             _%tl8179181849%_
                             _%e8179681852%_
                             _%hd8179581856%_
                             _%tl8179481859%_
                             _%e8179781862%_
                             _%e8180081866%_
                             _%hd8179981870%_
                             _%tl8179881873%_
                             _%__splice8762887629%_
                             _%target8180181876%_
                             _%tl8180381879%_)
                      (letrec ((_%loop8180481882%_
                                (lambda (_%hd8180281886%_
                                         _%exprs8180881889%_
                                         _%names8180981891%_)
                                  (if (gx#stx-pair? _%hd8180281886%_)
                                      (let ((_%e8180581894%_
                                             (gx#syntax-e _%hd8180281886%_)))
                                        (let ((_%lp-tl8180781901%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8180581894%_)))
                                              (_%lp-hd8180681898%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8180581894%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd8180681898%_)
                                              (let ((_%e8181481904%_
                                                     (gx#syntax-e
                                                      _%lp-hd8180681898%_)))
                                                (let ((_%tl8181281911%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8181481904%_)))
                                                      (_%hd8181381908%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8181481904%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8181281911%_)
                                                      (let ((_%e8181781914%_
                                                             (gx#syntax-e
                                                              _%tl8181281911%_)))
                                                        (let ((_%tl8181581921%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8181781914%_)))
                      (_%hd8181681918%_
                       (let () (declare (not safe)) (##car _%e8181781914%_))))
                  (if (gx#stx-null? _%tl8181581921%_)
                      (_%loop8180481882%_
                       _%lp-tl8180781901%_
                       (cons _%hd8181681918%_ _%exprs8180881889%_)
                       (cons _%hd8181381908%_ _%names8180981891%_))
                      (let () (declare (not safe)) (_%g8162181835%_)))))
              (let () (declare (not safe)) (_%g8162181835%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g8162181835%_)))))
                                      (let ((_%names8181181927%_
                                             (reverse _%names8180981891%_))
                                            (_%exprs8181081924%_
                                             (reverse _%exprs8180881889%_)))
                                        (if (gx#stx-pair? _%tl8179881873%_)
                                            (let ((_%e8182081930%_
                                                   (gx#syntax-e
                                                    _%tl8179881873%_)))
                                              (let ((_%tl8181881937%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8182081930%_)))
                                                    (_%hd8181981934%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8182081930%_))))
                                                (if (gx#stx-null?
                                                     _%hd8181981934%_)
                                                    (if (gx#stx-pair?
                                                         _%tl8181881937%_)
                                                        (let ((_%e8182381940%_
                                                               (gx#syntax-e
                                                                _%tl8181881937%_)))
                                                          (let ((_%tl8182181947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8182381940%_)))
                        (_%hd8182281944%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8182381940%_))))
                    (if (gx#stx-pair? _%tl8182181947%_)
                        (let ((_%e8182681950%_ (gx#syntax-e _%tl8182181947%_)))
                          (let ((_%tl8182481957%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8182681950%_)))
                                (_%hd8182581954%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8182681950%_))))
                            (if (gx#stx-pair? _%tl8182481957%_)
                                (let ((_%e8182981960%_
                                       (gx#syntax-e _%tl8182481957%_)))
                                  (let ((_%tl8182781967%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8182981960%_)))
                                        (_%hd8182881964%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8182981960%_))))
                                    (if (gx#stx-null? _%tl8182781967%_)
                                        (_%__kont8762687627%_
                                         _%hd8182881964%_
                                         _%hd8182581954%_
                                         _%hd8182281944%_
                                         _%exprs8181081924%_
                                         _%names8181181927%_
                                         _%hd8179281846%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8162181835%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8162181835%_)))))
                        (let () (declare (not safe)) (_%g8162181835%_)))))
                (let () (declare (not safe)) (_%g8162181835%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8162181835%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8162181835%_))))))))
                        (_%loop8180481882%_ _%target8180181876%_ '() '()))))
                   (_%__match8773487735%_
                    (lambda (_%e8166582467%_
                             _%hd8166482471%_
                             _%tl8166382474%_
                             _%e8166882477%_
                             _%hd8166782481%_
                             _%tl8166682484%_
                             _%e8166982487%_
                             _%e8167282491%_
                             _%hd8167182495%_
                             _%tl8167082498%_
                             _%__splice8761487615%_
                             _%target8167382501%_
                             _%tl8167582504%_
                             _%e8168482507%_
                             _%hd8168382511%_
                             _%tl8168282514%_)
                      (letrec ((_%loop8167682517%_
                                (lambda (_%hd8167482521%_ _%exprs8168082524%_)
                                  (if (gx#stx-pair? _%hd8167482521%_)
                                      (let ((_%e8167782527%_
                                             (gx#syntax-e _%hd8167482521%_)))
                                        (let ((_%lp-tl8167982534%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8167782527%_)))
                                              (_%lp-hd8167882531%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8167782527%_))))
                                          (_%loop8167682517%_
                                           _%lp-tl8167982534%_
                                           (cons _%lp-hd8167882531%_
                                                 _%exprs8168082524%_))))
                                      (let ((_%exprs8168182537%_
                                             (reverse _%exprs8168082524%_)))
                                        (_%__kont8761287613%_
                                         _%hd8168382511%_
                                         _%exprs8168182537%_
                                         _%hd8167182495%_
                                         _%hd8166482471%_))))))
                        (_%loop8167682517%_ _%target8167382501%_ '()))))
                   (_%__match8769487695%_
                    (lambda (_%e8163082584%_
                             _%hd8162982588%_
                             _%tl8162882591%_
                             _%e8163382594%_
                             _%hd8163282598%_
                             _%tl8163182601%_
                             _%e8163482604%_
                             _%e8163782608%_
                             _%hd8163682612%_
                             _%tl8163582615%_
                             _%__splice8761087611%_
                             _%target8163882618%_
                             _%tl8164082621%_
                             _%e8164982624%_
                             _%hd8164882628%_
                             _%tl8164782631%_
                             _%e8165282634%_
                             _%hd8165182638%_
                             _%tl8165082641%_
                             _%e8165582644%_
                             _%hd8165482648%_
                             _%tl8165382651%_
                             _%e8165882654%_
                             _%hd8165782658%_
                             _%tl8165682661%_)
                      (letrec ((_%loop8164182664%_
                                (lambda (_%hd8163982668%_ _%exprs8164582671%_)
                                  (if (gx#stx-pair? _%hd8163982668%_)
                                      (let ((_%e8164282674%_
                                             (gx#syntax-e _%hd8163982668%_)))
                                        (let ((_%lp-tl8164482681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8164282674%_)))
                                              (_%lp-hd8164382678%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8164282674%_))))
                                          (_%loop8164182664%_
                                           _%lp-tl8164482681%_
                                           (cons _%lp-hd8164382678%_
                                                 _%exprs8164582671%_))))
                                      (let ((_%exprs8164682684%_
                                             (reverse _%exprs8164582671%_)))
                                        (_%__kont8760887609%_
                                         _%hd8165782658%_
                                         _%hd8165482648%_
                                         _%exprs8164682684%_
                                         _%hd8163682612%_
                                         _%hd8162982588%_))))))
                        (_%loop8164182664%_ _%target8163882618%_ '())))))
              (if (gx#stx-pair? _%__stx8760587606%_)
                  (let ((_%e8163082584%_ (gx#syntax-e _%__stx8760587606%_)))
                    (let ((_%tl8162882591%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e8163082584%_)))
                          (_%hd8162982588%_
                           (let ()
                             (declare (not safe))
                             (##car _%e8163082584%_))))
                      (if (gx#stx-pair? _%tl8162882591%_)
                          (let ((_%e8163382594%_
                                 (gx#syntax-e _%tl8162882591%_)))
                            (let ((_%tl8163182601%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e8163382594%_)))
                                  (_%hd8163282598%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e8163382594%_))))
                              (if (gx#stx-datum? _%hd8163282598%_)
                                  (let ((_%e8163482604%_
                                         (gx#stx-e _%hd8163282598%_)))
                                    (if (equal? _%e8163482604%_ '1)
                                        (if (gx#stx-pair? _%tl8163182601%_)
                                            (let ((_%e8163782608%_
                                                   (gx#syntax-e
                                                    _%tl8163182601%_)))
                                              (let ((_%tl8163582615%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8163782608%_)))
                                                    (_%hd8163682612%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8163782608%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl8163582615%_)
                                                    (if (let ((__tmp88080
                                                               (gx#stx-length
                                                                _%tl8163582615%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp88080
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice8761087611%_
                       (gx#syntax-split-splice _%tl8163582615%_ '2)))
                  (let ((_%tl8164082621%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8761087611%_ '1)))
                        (_%target8163882618%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8761087611%_ '0))))
                    (if (gx#stx-pair? _%tl8164082621%_)
                        (let ((_%e8164982624%_ (gx#syntax-e _%tl8164082621%_)))
                          (let ((_%tl8164782631%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8164982624%_)))
                                (_%hd8164882628%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8164982624%_))))
                            (if (gx#stx-pair? _%hd8164882628%_)
                                (let ((_%e8165282634%_
                                       (gx#syntax-e _%hd8164882628%_)))
                                  (let ((_%tl8165082641%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8165282634%_)))
                                        (_%hd8165182638%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8165282634%_))))
                                    (if (gx#identifier? _%hd8165182638%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g88081_|
                                             _%hd8165182638%_)
                                            (if (gx#stx-pair? _%tl8165082641%_)
                                                (let ((_%e8165582644%_
                                                       (gx#syntax-e
                                                        _%tl8165082641%_)))
                                                  (let ((_%tl8165382651%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8165582644%_)))
                                                        (_%hd8165482648%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8165582644%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8165382651%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8164782631%_)
                                                            (let ((_%e8165882654%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8164782631%_)))
                      (let ((_%tl8165682661%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8165882654%_)))
                            (_%hd8165782658%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8165882654%_))))
                        (if (gx#stx-null? _%tl8165682661%_)
                            (_%__match8769487695%_
                             _%e8163082584%_
                             _%hd8162982588%_
                             _%tl8162882591%_
                             _%e8163382594%_
                             _%hd8163282598%_
                             _%tl8163182601%_
                             _%e8163482604%_
                             _%e8163782608%_
                             _%hd8163682612%_
                             _%tl8163582615%_
                             _%__splice8761087611%_
                             _%target8163882618%_
                             _%tl8164082621%_
                             _%e8164982624%_
                             _%hd8164882628%_
                             _%tl8164782631%_
                             _%e8165282634%_
                             _%hd8165182638%_
                             _%tl8165082641%_
                             _%e8165582644%_
                             _%hd8165482648%_
                             _%tl8165382651%_
                             _%e8165882654%_
                             _%hd8165782658%_
                             _%tl8165682661%_)
                            (if (let ((__tmp88082
                                       (gx#stx-length _%tl8163582615%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp88082 '1))
                                (let ((_%__splice8761487615%_
                                       (gx#syntax-split-splice
                                        _%tl8163582615%_
                                        '1)))
                                  (let ((_%tl8167582504%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8761487615%_
                                            '1)))
                                        (_%target8167382501%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8761487615%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl8167582504%_)
                                        (let ((_%e8168482507%_
                                               (gx#syntax-e _%tl8167582504%_)))
                                          (let ((_%tl8168282514%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e8168482507%_)))
                                                (_%hd8168382511%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e8168482507%_))))
                                            (if (gx#stx-null? _%tl8168282514%_)
                                                (_%__match8773487735%_
                                                 _%e8163082584%_
                                                 _%hd8162982588%_
                                                 _%tl8162882591%_
                                                 _%e8163382594%_
                                                 _%hd8163282598%_
                                                 _%tl8163182601%_
                                                 _%e8163482604%_
                                                 _%e8163782608%_
                                                 _%hd8163682612%_
                                                 _%tl8163582615%_
                                                 _%__splice8761487615%_
                                                 _%target8167382501%_
                                                 _%tl8167582504%_
                                                 _%e8168482507%_
                                                 _%hd8168382511%_
                                                 _%tl8168282514%_)
                                                (if (gx#stx-null?
                                                     _%tl8163582615%_)
                                                    (_%__kont8761687617%_
                                                     _%hd8163682612%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8162181835%_))))))
                                        (if (gx#stx-null? _%tl8163582615%_)
                                            (_%__kont8761687617%_
                                             _%hd8163682612%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8162181835%_))))))
                                (if (gx#stx-null? _%tl8163582615%_)
                                    (_%__kont8761687617%_ _%hd8163682612%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8162181835%_)))))))
                    (if (let ((__tmp88083 (gx#stx-length _%tl8163582615%_)))
                          (declare (not safe))
                          (##fx>= __tmp88083 '1))
                        (let ((_%__splice8761487615%_
                               (gx#syntax-split-splice _%tl8163582615%_ '1)))
                          (let ((_%tl8167582504%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8761487615%_ '1)))
                                (_%target8167382501%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8761487615%_ '0))))
                            (if (gx#stx-pair? _%tl8167582504%_)
                                (let ((_%e8168482507%_
                                       (gx#syntax-e _%tl8167582504%_)))
                                  (let ((_%tl8168282514%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8168482507%_)))
                                        (_%hd8168382511%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8168482507%_))))
                                    (if (gx#stx-null? _%tl8168282514%_)
                                        (_%__match8773487735%_
                                         _%e8163082584%_
                                         _%hd8162982588%_
                                         _%tl8162882591%_
                                         _%e8163382594%_
                                         _%hd8163282598%_
                                         _%tl8163182601%_
                                         _%e8163482604%_
                                         _%e8163782608%_
                                         _%hd8163682612%_
                                         _%tl8163582615%_
                                         _%__splice8761487615%_
                                         _%target8167382501%_
                                         _%tl8167582504%_
                                         _%e8168482507%_
                                         _%hd8168382511%_
                                         _%tl8168282514%_)
                                        (if (gx#stx-null? _%tl8163582615%_)
                                            (_%__kont8761687617%_
                                             _%hd8163682612%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8162181835%_))))))
                                (if (gx#stx-null? _%tl8163582615%_)
                                    (_%__kont8761687617%_ _%hd8163682612%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8162181835%_))))))
                        (if (gx#stx-null? _%tl8163582615%_)
                            (_%__kont8761687617%_ _%hd8163682612%_)
                            (let () (declare (not safe)) (_%g8162181835%_)))))
                (if (let ((__tmp88084 (gx#stx-length _%tl8163582615%_)))
                      (declare (not safe))
                      (##fx>= __tmp88084 '1))
                    (let ((_%__splice8761487615%_
                           (gx#syntax-split-splice _%tl8163582615%_ '1)))
                      (let ((_%tl8167582504%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8761487615%_ '1)))
                            (_%target8167382501%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8761487615%_ '0))))
                        (if (gx#stx-pair? _%tl8167582504%_)
                            (let ((_%e8168482507%_
                                   (gx#syntax-e _%tl8167582504%_)))
                              (let ((_%tl8168282514%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8168482507%_)))
                                    (_%hd8168382511%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8168482507%_))))
                                (if (gx#stx-null? _%tl8168282514%_)
                                    (_%__match8773487735%_
                                     _%e8163082584%_
                                     _%hd8162982588%_
                                     _%tl8162882591%_
                                     _%e8163382594%_
                                     _%hd8163282598%_
                                     _%tl8163182601%_
                                     _%e8163482604%_
                                     _%e8163782608%_
                                     _%hd8163682612%_
                                     _%tl8163582615%_
                                     _%__splice8761487615%_
                                     _%target8167382501%_
                                     _%tl8167582504%_
                                     _%e8168482507%_
                                     _%hd8168382511%_
                                     _%tl8168282514%_)
                                    (if (gx#stx-null? _%tl8163582615%_)
                                        (_%__kont8761687617%_ _%hd8163682612%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8162181835%_))))))
                            (if (gx#stx-null? _%tl8163582615%_)
                                (_%__kont8761687617%_ _%hd8163682612%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8162181835%_))))))
                    (if (gx#stx-null? _%tl8163582615%_)
                        (_%__kont8761687617%_ _%hd8163682612%_)
                        (let () (declare (not safe)) (_%g8162181835%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp88085
                                                           (gx#stx-length
                                                            _%tl8163582615%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp88085 '1))
                                                    (let ((_%__splice8761487615%_
                                                           (gx#syntax-split-splice
                                                            _%tl8163582615%_
                                                            '1)))
                                                      (let ((_%tl8167582504%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8761487615%_ '1)))
                    (_%target8167382501%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8761487615%_ '0))))
                (if (gx#stx-pair? _%tl8167582504%_)
                    (let ((_%e8168482507%_ (gx#syntax-e _%tl8167582504%_)))
                      (let ((_%tl8168282514%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8168482507%_)))
                            (_%hd8168382511%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8168482507%_))))
                        (if (gx#stx-null? _%tl8168282514%_)
                            (_%__match8773487735%_
                             _%e8163082584%_
                             _%hd8162982588%_
                             _%tl8162882591%_
                             _%e8163382594%_
                             _%hd8163282598%_
                             _%tl8163182601%_
                             _%e8163482604%_
                             _%e8163782608%_
                             _%hd8163682612%_
                             _%tl8163582615%_
                             _%__splice8761487615%_
                             _%target8167382501%_
                             _%tl8167582504%_
                             _%e8168482507%_
                             _%hd8168382511%_
                             _%tl8168282514%_)
                            (if (gx#stx-null? _%tl8163582615%_)
                                (_%__kont8761687617%_ _%hd8163682612%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8162181835%_))))))
                    (if (gx#stx-null? _%tl8163582615%_)
                        (_%__kont8761687617%_ _%hd8163682612%_)
                        (let () (declare (not safe)) (_%g8162181835%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8163582615%_)
                                                        (_%__kont8761687617%_
                                                         _%hd8163682612%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8162181835%_)))))
                                            (if (let ((__tmp88086
                                                       (gx#stx-length
                                                        _%tl8163582615%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp88086 '1))
                                                (let ((_%__splice8761487615%_
                                                       (gx#syntax-split-splice
                                                        _%tl8163582615%_
                                                        '1)))
                                                  (let ((_%tl8167582504%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8761487615%_
                                                            '1)))
                                                        (_%target8167382501%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8761487615%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl8167582504%_)
                                                        (let ((_%e8168482507%_
                                                               (gx#syntax-e
                                                                _%tl8167582504%_)))
                                                          (let ((_%tl8168282514%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8168482507%_)))
                        (_%hd8168382511%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8168482507%_))))
                    (if (gx#stx-null? _%tl8168282514%_)
                        (_%__match8773487735%_
                         _%e8163082584%_
                         _%hd8162982588%_
                         _%tl8162882591%_
                         _%e8163382594%_
                         _%hd8163282598%_
                         _%tl8163182601%_
                         _%e8163482604%_
                         _%e8163782608%_
                         _%hd8163682612%_
                         _%tl8163582615%_
                         _%__splice8761487615%_
                         _%target8167382501%_
                         _%tl8167582504%_
                         _%e8168482507%_
                         _%hd8168382511%_
                         _%tl8168282514%_)
                        (if (gx#stx-null? _%tl8163582615%_)
                            (_%__kont8761687617%_ _%hd8163682612%_)
                            (let () (declare (not safe)) (_%g8162181835%_))))))
                (if (gx#stx-null? _%tl8163582615%_)
                    (_%__kont8761687617%_ _%hd8163682612%_)
                    (let () (declare (not safe)) (_%g8162181835%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl8163582615%_)
                                                    (_%__kont8761687617%_
                                                     _%hd8163682612%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8162181835%_)))))
                                        (if (let ((__tmp88087
                                                   (gx#stx-length
                                                    _%tl8163582615%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp88087 '1))
                                            (let ((_%__splice8761487615%_
                                                   (gx#syntax-split-splice
                                                    _%tl8163582615%_
                                                    '1)))
                                              (let ((_%tl8167582504%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8761487615%_
                                                        '1)))
                                                    (_%target8167382501%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8761487615%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl8167582504%_)
                                                    (let ((_%e8168482507%_
                                                           (gx#syntax-e
                                                            _%tl8167582504%_)))
                                                      (let ((_%tl8168282514%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8168482507%_)))
                    (_%hd8168382511%_
                     (let () (declare (not safe)) (##car _%e8168482507%_))))
                (if (gx#stx-null? _%tl8168282514%_)
                    (_%__match8773487735%_
                     _%e8163082584%_
                     _%hd8162982588%_
                     _%tl8162882591%_
                     _%e8163382594%_
                     _%hd8163282598%_
                     _%tl8163182601%_
                     _%e8163482604%_
                     _%e8163782608%_
                     _%hd8163682612%_
                     _%tl8163582615%_
                     _%__splice8761487615%_
                     _%target8167382501%_
                     _%tl8167582504%_
                     _%e8168482507%_
                     _%hd8168382511%_
                     _%tl8168282514%_)
                    (if (gx#stx-null? _%tl8163582615%_)
                        (_%__kont8761687617%_ _%hd8163682612%_)
                        (let () (declare (not safe)) (_%g8162181835%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8163582615%_)
                                                        (_%__kont8761687617%_
                                                         _%hd8163682612%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8162181835%_))))))
                                            (if (gx#stx-null? _%tl8163582615%_)
                                                (_%__kont8761687617%_
                                                 _%hd8163682612%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8162181835%_)))))))
                                (if (let ((__tmp88088
                                           (gx#stx-length _%tl8163582615%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp88088 '1))
                                    (let ((_%__splice8761487615%_
                                           (gx#syntax-split-splice
                                            _%tl8163582615%_
                                            '1)))
                                      (let ((_%tl8167582504%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8761487615%_
                                                '1)))
                                            (_%target8167382501%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8761487615%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl8167582504%_)
                                            (let ((_%e8168482507%_
                                                   (gx#syntax-e
                                                    _%tl8167582504%_)))
                                              (let ((_%tl8168282514%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8168482507%_)))
                                                    (_%hd8168382511%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8168482507%_))))
                                                (if (gx#stx-null?
                                                     _%tl8168282514%_)
                                                    (_%__match8773487735%_
                                                     _%e8163082584%_
                                                     _%hd8162982588%_
                                                     _%tl8162882591%_
                                                     _%e8163382594%_
                                                     _%hd8163282598%_
                                                     _%tl8163182601%_
                                                     _%e8163482604%_
                                                     _%e8163782608%_
                                                     _%hd8163682612%_
                                                     _%tl8163582615%_
                                                     _%__splice8761487615%_
                                                     _%target8167382501%_
                                                     _%tl8167582504%_
                                                     _%e8168482507%_
                                                     _%hd8168382511%_
                                                     _%tl8168282514%_)
                                                    (if (gx#stx-null?
                                                         _%tl8163582615%_)
                                                        (_%__kont8761687617%_
                                                         _%hd8163682612%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8162181835%_))))))
                                            (if (gx#stx-null? _%tl8163582615%_)
                                                (_%__kont8761687617%_
                                                 _%hd8163682612%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8162181835%_))))))
                                    (if (gx#stx-null? _%tl8163582615%_)
                                        (_%__kont8761687617%_ _%hd8163682612%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8162181835%_)))))))
                        (if (let ((__tmp88089
                                   (gx#stx-length _%tl8163582615%_)))
                              (declare (not safe))
                              (##fx>= __tmp88089 '1))
                            (let ((_%__splice8761487615%_
                                   (gx#syntax-split-splice
                                    _%tl8163582615%_
                                    '1)))
                              (let ((_%tl8167582504%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8761487615%_
                                        '1)))
                                    (_%target8167382501%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8761487615%_
                                        '0))))
                                (if (gx#stx-pair? _%tl8167582504%_)
                                    (let ((_%e8168482507%_
                                           (gx#syntax-e _%tl8167582504%_)))
                                      (let ((_%tl8168282514%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8168482507%_)))
                                            (_%hd8168382511%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8168482507%_))))
                                        (if (gx#stx-null? _%tl8168282514%_)
                                            (_%__match8773487735%_
                                             _%e8163082584%_
                                             _%hd8162982588%_
                                             _%tl8162882591%_
                                             _%e8163382594%_
                                             _%hd8163282598%_
                                             _%tl8163182601%_
                                             _%e8163482604%_
                                             _%e8163782608%_
                                             _%hd8163682612%_
                                             _%tl8163582615%_
                                             _%__splice8761487615%_
                                             _%target8167382501%_
                                             _%tl8167582504%_
                                             _%e8168482507%_
                                             _%hd8168382511%_
                                             _%tl8168282514%_)
                                            (if (gx#stx-null? _%tl8163582615%_)
                                                (_%__kont8761687617%_
                                                 _%hd8163682612%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8162181835%_))))))
                                    (if (gx#stx-null? _%tl8163582615%_)
                                        (_%__kont8761687617%_ _%hd8163682612%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8162181835%_))))))
                            (if (gx#stx-null? _%tl8163582615%_)
                                (_%__kont8761687617%_ _%hd8163682612%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8162181835%_)))))))
                (if (let ((__tmp88090 (gx#stx-length _%tl8163582615%_)))
                      (declare (not safe))
                      (##fx>= __tmp88090 '1))
                    (let ((_%__splice8761487615%_
                           (gx#syntax-split-splice _%tl8163582615%_ '1)))
                      (let ((_%tl8167582504%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8761487615%_ '1)))
                            (_%target8167382501%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8761487615%_ '0))))
                        (if (gx#stx-pair? _%tl8167582504%_)
                            (let ((_%e8168482507%_
                                   (gx#syntax-e _%tl8167582504%_)))
                              (let ((_%tl8168282514%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8168482507%_)))
                                    (_%hd8168382511%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8168482507%_))))
                                (if (gx#stx-null? _%tl8168282514%_)
                                    (_%__match8773487735%_
                                     _%e8163082584%_
                                     _%hd8162982588%_
                                     _%tl8162882591%_
                                     _%e8163382594%_
                                     _%hd8163282598%_
                                     _%tl8163182601%_
                                     _%e8163482604%_
                                     _%e8163782608%_
                                     _%hd8163682612%_
                                     _%tl8163582615%_
                                     _%__splice8761487615%_
                                     _%target8167382501%_
                                     _%tl8167582504%_
                                     _%e8168482507%_
                                     _%hd8168382511%_
                                     _%tl8168282514%_)
                                    (if (gx#stx-null? _%tl8163582615%_)
                                        (_%__kont8761687617%_ _%hd8163682612%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8162181835%_))))))
                            (if (gx#stx-null? _%tl8163582615%_)
                                (_%__kont8761687617%_ _%hd8163682612%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8162181835%_))))))
                    (if (gx#stx-null? _%tl8163582615%_)
                        (_%__kont8761687617%_ _%hd8163682612%_)
                        (let () (declare (not safe)) (_%g8162181835%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8163582615%_)
                                                        (_%__kont8761687617%_
                                                         _%hd8163682612%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8162181835%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8162181835%_)))
                                        (if (equal? _%e8163482604%_ '2)
                                            (if (gx#stx-pair? _%tl8163182601%_)
                                                (let ((_%e8171182307%_
                                                       (gx#syntax-e
                                                        _%tl8163182601%_)))
                                                  (let ((_%tl8170982314%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8171182307%_)))
                                                        (_%hd8171082311%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8171182307%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl8170982314%_)
                                                        (let ((_%e8171482317%_
                                                               (gx#syntax-e
                                                                _%tl8170982314%_)))
                                                          (let ((_%tl8171282324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8171482317%_)))
                        (_%hd8171382321%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8171482317%_))))
                    (if (gx#stx-pair? _%hd8171382321%_)
                        (let ((_%e8171782327%_ (gx#syntax-e _%hd8171382321%_)))
                          (let ((_%tl8171582334%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8171782327%_)))
                                (_%hd8171682331%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8171782327%_))))
                            (if (gx#stx-pair? _%hd8171682331%_)
                                (let ((_%e8172082337%_
                                       (gx#syntax-e _%hd8171682331%_)))
                                  (let ((_%tl8171882344%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8172082337%_)))
                                        (_%hd8171982341%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8172082337%_))))
                                    (if (gx#identifier? _%hd8171982341%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g88091_|
                                             _%hd8171982341%_)
                                            (if (gx#stx-pair? _%tl8171882344%_)
                                                (let ((_%e8172382347%_
                                                       (gx#syntax-e
                                                        _%tl8171882344%_)))
                                                  (let ((_%tl8172182354%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8172382347%_)))
                                                        (_%hd8172282351%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8172382347%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8172182354%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8171582334%_)
                                                            (let ((_%e8172682357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8171582334%_)))
                      (let ((_%tl8172482364%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8172682357%_)))
                            (_%hd8172582361%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8172682357%_))))
                        (_%__kont8761887619%_
                         _%tl8171282324%_
                         _%tl8172482364%_
                         _%hd8172582361%_
                         _%hd8172282351%_
                         _%hd8171082311%_
                         _%hd8162982588%_)))
                    (_%__kont8762087621%_
                     _%tl8171282324%_
                     _%tl8171582334%_
                     _%hd8171682331%_
                     _%hd8171082311%_
                     _%hd8162982588%_))
                (_%__kont8762087621%_
                 _%tl8171282324%_
                 _%tl8171582334%_
                 _%hd8171682331%_
                 _%hd8171082311%_
                 _%hd8162982588%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont8762087621%_
                                                 _%tl8171282324%_
                                                 _%tl8171582334%_
                                                 _%hd8171682331%_
                                                 _%hd8171082311%_
                                                 _%hd8162982588%_))
                                            (_%__kont8762087621%_
                                             _%tl8171282324%_
                                             _%tl8171582334%_
                                             _%hd8171682331%_
                                             _%hd8171082311%_
                                             _%hd8162982588%_))
                                        (_%__kont8762087621%_
                                         _%tl8171282324%_
                                         _%tl8171582334%_
                                         _%hd8171682331%_
                                         _%hd8171082311%_
                                         _%hd8162982588%_))))
                                (_%__kont8762087621%_
                                 _%tl8171282324%_
                                 _%tl8171582334%_
                                 _%hd8171682331%_
                                 _%hd8171082311%_
                                 _%hd8162982588%_))))
                        (if (gx#stx-null? _%hd8171382321%_)
                            (_%__kont8762287623%_
                             _%tl8171282324%_
                             _%hd8171082311%_
                             _%hd8162982588%_)
                            (let () (declare (not safe)) (_%g8162181835%_))))))
                (let () (declare (not safe)) (_%g8162181835%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8162181835%_)))
                                            (if (equal? _%e8163482604%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl8163182601%_)
                                                    (let ((_%e8177882056%_
                                                           (gx#syntax-e
                                                            _%tl8163182601%_)))
                                                      (let ((_%tl8177682063%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8177882056%_)))
                    (_%hd8177782060%_
                     (let () (declare (not safe)) (##car _%e8177882056%_))))
                (if (gx#stx-pair? _%tl8177682063%_)
                    (let ((_%e8178182066%_ (gx#syntax-e _%tl8177682063%_)))
                      (let ((_%tl8177982073%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8178182066%_)))
                            (_%hd8178082070%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8178182066%_))))
                        (if (gx#stx-pair? _%hd8178082070%_)
                            (let ((_%e8178482076%_
                                   (gx#syntax-e _%hd8178082070%_)))
                              (let ((_%tl8178282083%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8178482076%_)))
                                    (_%hd8178382080%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8178482076%_))))
                                (_%__kont8762487625%_
                                 _%tl8177982073%_
                                 _%tl8178282083%_
                                 _%hd8178382080%_
                                 _%hd8177782060%_
                                 _%hd8162982588%_)))
                            (if (gx#stx-pair/null? _%hd8177782060%_)
                                (let ((_%__splice8762887629%_
                                       (gx#syntax-split-splice
                                        _%hd8177782060%_
                                        '0)))
                                  (let ((_%tl8180381879%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8762887629%_
                                            '1)))
                                        (_%target8180181876%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8762887629%_
                                            '0))))
                                    (if (gx#stx-null? _%tl8180381879%_)
                                        (_%__match8795687957%_
                                         _%e8163082584%_
                                         _%hd8162982588%_
                                         _%tl8162882591%_
                                         _%e8163382594%_
                                         _%hd8163282598%_
                                         _%tl8163182601%_
                                         _%e8163482604%_
                                         _%e8177882056%_
                                         _%hd8177782060%_
                                         _%tl8177682063%_
                                         _%__splice8762887629%_
                                         _%target8180181876%_
                                         _%tl8180381879%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8162181835%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8162181835%_))))))
                    (if (gx#stx-pair/null? _%hd8177782060%_)
                        (let ((_%__splice8762887629%_
                               (gx#syntax-split-splice _%hd8177782060%_ '0)))
                          (let ((_%tl8180381879%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8762887629%_ '1)))
                                (_%target8180181876%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8762887629%_ '0))))
                            (if (gx#stx-null? _%tl8180381879%_)
                                (_%__match8795687957%_
                                 _%e8163082584%_
                                 _%hd8162982588%_
                                 _%tl8162882591%_
                                 _%e8163382594%_
                                 _%hd8163282598%_
                                 _%tl8163182601%_
                                 _%e8163482604%_
                                 _%e8177882056%_
                                 _%hd8177782060%_
                                 _%tl8177682063%_
                                 _%__splice8762887629%_
                                 _%target8180181876%_
                                 _%tl8180381879%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8162181835%_)))))
                        (let () (declare (not safe)) (_%g8162181835%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8162181835%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8162181835%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g8162181835%_)))))
                          (let () (declare (not safe)) (_%g8162181835%_)))))
                  (let () (declare (not safe)) (_%g8162181835%_))))))))))
