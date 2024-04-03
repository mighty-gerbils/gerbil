(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g87468_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g87478_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx80495%_)
        (let* ((_%g8049980517%_
                (lambda (_%g8050080513%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8050080513%_)))
               (_%g8049880573%_
                (lambda (_%g8050080521%_)
                  (if (gx#stx-pair? _%g8050080521%_)
                      (let ((_%e8050580524%_ (gx#syntax-e _%g8050080521%_)))
                        (let ((_%hd8050480528%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8050580524%_)))
                              (_%tl8050380531%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8050580524%_))))
                          (if (gx#stx-pair? _%tl8050380531%_)
                              (let ((_%e8050880534%_
                                     (gx#syntax-e _%tl8050380531%_)))
                                (let ((_%hd8050780538%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8050880534%_)))
                                      (_%tl8050680541%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8050880534%_))))
                                  (if (gx#stx-pair? _%tl8050680541%_)
                                      (let ((_%e8051180544%_
                                             (gx#syntax-e _%tl8050680541%_)))
                                        (let ((_%hd8051080548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8051180544%_)))
                                              (_%tl8050980551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8051180544%_))))
                                          (if (gx#stx-null? _%tl8050980551%_)
                                              ((lambda (_%L80554%_ _%L80556%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L80556%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L80554%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8051080548%_
                                               _%hd8050780538%_)
                                              (_%g8049980517%_
                                               _%g8050080521%_))))
                                      (_%g8049980517%_ _%g8050080521%_))))
                              (_%g8049980517%_ _%g8050080521%_))))
                      (_%g8049980517%_ _%g8050080521%_)))))
          (_%g8049880573%_ _%$stx80495%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx80577%_)
        (let* ((_%g8058180595%_
                (lambda (_%g8058280591%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8058280591%_)))
               (_%g8058080636%_
                (lambda (_%g8058280599%_)
                  (if (gx#stx-pair? _%g8058280599%_)
                      (let ((_%e8058680602%_ (gx#syntax-e _%g8058280599%_)))
                        (let ((_%hd8058580606%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8058680602%_)))
                              (_%tl8058480609%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8058680602%_))))
                          (if (gx#stx-pair? _%tl8058480609%_)
                              (let ((_%e8058980612%_
                                     (gx#syntax-e _%tl8058480609%_)))
                                (let ((_%hd8058880616%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8058980612%_)))
                                      (_%tl8058780619%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8058980612%_))))
                                  (if (gx#stx-null? _%tl8058780619%_)
                                      ((lambda (_%L80622%_)
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
                                       (cons _%L80622%_
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
                                       _%hd8058880616%_)
                                      (_%g8058180595%_ _%g8058280599%_))))
                              (_%g8058180595%_ _%g8058280599%_))))
                      (_%g8058180595%_ _%g8058280599%_)))))
          (_%g8058080636%_ _%$stx80577%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx80640%_)
        (let* ((_%g8064480658%_
                (lambda (_%g8064580654%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8064580654%_)))
               (_%g8064380699%_
                (lambda (_%g8064580662%_)
                  (if (gx#stx-pair? _%g8064580662%_)
                      (let ((_%e8064980665%_ (gx#syntax-e _%g8064580662%_)))
                        (let ((_%hd8064880669%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8064980665%_)))
                              (_%tl8064780672%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8064980665%_))))
                          (if (gx#stx-pair? _%tl8064780672%_)
                              (let ((_%e8065280675%_
                                     (gx#syntax-e _%tl8064780672%_)))
                                (let ((_%hd8065180679%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8065280675%_)))
                                      (_%tl8065080682%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8065280675%_))))
                                  (if (gx#stx-null? _%tl8065080682%_)
                                      ((lambda (_%L80685%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L80685%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd8065180679%_)
                                      (_%g8064480658%_ _%g8064580662%_))))
                              (_%g8064480658%_ _%g8064580662%_))))
                      (_%g8064480658%_ _%g8064580662%_)))))
          (_%g8064380699%_ _%$stx80640%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx80703%_)
        (let* ((_%g8070780717%_
                (lambda (_%g8070880713%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8070880713%_)))
               (_%g8070680738%_
                (lambda (_%g8070880721%_)
                  (if (gx#stx-pair? _%g8070880721%_)
                      (let ((_%e8071180724%_ (gx#syntax-e _%g8070880721%_)))
                        (let ((_%hd8071080728%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8071180724%_)))
                              (_%tl8070980731%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8071180724%_))))
                          (if (gx#stx-null? _%tl8070980731%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g8070780717%_ _%g8070880721%_))))
                      (_%g8070780717%_ _%g8070880721%_)))))
          (_%g8070680738%_ _%$stx80703%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx80742%_)
        (let* ((_%g8074680764%_
                (lambda (_%g8074780760%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8074780760%_)))
               (_%g8074580819%_
                (lambda (_%g8074780768%_)
                  (if (gx#stx-pair? _%g8074780768%_)
                      (let ((_%e8075280771%_ (gx#syntax-e _%g8074780768%_)))
                        (let ((_%hd8075180775%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8075280771%_)))
                              (_%tl8075080778%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8075280771%_))))
                          (if (gx#stx-pair? _%tl8075080778%_)
                              (let ((_%e8075580781%_
                                     (gx#syntax-e _%tl8075080778%_)))
                                (let ((_%hd8075480785%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8075580781%_)))
                                      (_%tl8075380788%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8075580781%_))))
                                  (if (gx#stx-pair? _%tl8075380788%_)
                                      (let ((_%e8075880791%_
                                             (gx#syntax-e _%tl8075380788%_)))
                                        (let ((_%hd8075780795%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8075880791%_)))
                                              (_%tl8075680798%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8075880791%_))))
                                          (if (gx#stx-null? _%tl8075680798%_)
                                              ((lambda (_%L80801%_ _%L80803%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L80803%_
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
                 (cons (cons _%L80801%_
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
                                               _%hd8075780795%_
                                               _%hd8075480785%_)
                                              (_%g8074680764%_
                                               _%g8074780768%_))))
                                      (_%g8074680764%_ _%g8074780768%_))))
                              (_%g8074680764%_ _%g8074780768%_))))
                      (_%g8074680764%_ _%g8074780768%_)))))
          (_%g8074580819%_ _%$stx80742%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx80823%_)
        (let* ((_%g8082780845%_
                (lambda (_%g8082880841%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8082880841%_)))
               (_%g8082680900%_
                (lambda (_%g8082880849%_)
                  (if (gx#stx-pair? _%g8082880849%_)
                      (let ((_%e8083380852%_ (gx#syntax-e _%g8082880849%_)))
                        (let ((_%hd8083280856%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8083380852%_)))
                              (_%tl8083180859%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8083380852%_))))
                          (if (gx#stx-pair? _%tl8083180859%_)
                              (let ((_%e8083680862%_
                                     (gx#syntax-e _%tl8083180859%_)))
                                (let ((_%hd8083580866%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8083680862%_)))
                                      (_%tl8083480869%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8083680862%_))))
                                  (if (gx#stx-pair? _%tl8083480869%_)
                                      (let ((_%e8083980872%_
                                             (gx#syntax-e _%tl8083480869%_)))
                                        (let ((_%hd8083880876%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8083980872%_)))
                                              (_%tl8083780879%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8083980872%_))))
                                          (if (gx#stx-null? _%tl8083780879%_)
                                              ((lambda (_%L80882%_ _%L80884%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L80884%_
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
                                               (cons (cons _%L80882%_
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
                                               _%hd8083880876%_
                                               _%hd8083580866%_)
                                              (_%g8082780845%_
                                               _%g8082880849%_))))
                                      (_%g8082780845%_ _%g8082880849%_))))
                              (_%g8082780845%_ _%g8082880849%_))))
                      (_%g8082780845%_ _%g8082880849%_)))))
          (_%g8082680900%_ _%$stx80823%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx80904%_)
        (let* ((_%g8090880926%_
                (lambda (_%g8090980922%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8090980922%_)))
               (_%g8090780981%_
                (lambda (_%g8090980930%_)
                  (if (gx#stx-pair? _%g8090980930%_)
                      (let ((_%e8091480933%_ (gx#syntax-e _%g8090980930%_)))
                        (let ((_%hd8091380937%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8091480933%_)))
                              (_%tl8091280940%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8091480933%_))))
                          (if (gx#stx-pair? _%tl8091280940%_)
                              (let ((_%e8091780943%_
                                     (gx#syntax-e _%tl8091280940%_)))
                                (let ((_%hd8091680947%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8091780943%_)))
                                      (_%tl8091580950%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8091780943%_))))
                                  (if (gx#stx-pair? _%tl8091580950%_)
                                      (let ((_%e8092080953%_
                                             (gx#syntax-e _%tl8091580950%_)))
                                        (let ((_%hd8091980957%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8092080953%_)))
                                              (_%tl8091880960%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8092080953%_))))
                                          (if (gx#stx-null? _%tl8091880960%_)
                                              ((lambda (_%L80963%_ _%L80965%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L80965%_
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
                                               (cons (cons _%L80963%_
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
                                               _%hd8091980957%_
                                               _%hd8091680947%_)
                                              (_%g8090880926%_
                                               _%g8090980930%_))))
                                      (_%g8090880926%_ _%g8090980930%_))))
                              (_%g8090880926%_ _%g8090980930%_))))
                      (_%g8090880926%_ _%g8090980930%_)))))
          (_%g8090780981%_ _%$stx80904%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx80985%_)
        (let* ((_%g8098981000%_
                (lambda (_%g8099080996%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8099080996%_)))
               (_%g8098881029%_
                (lambda (_%g8099081004%_)
                  (if (gx#stx-pair? _%g8099081004%_)
                      (let ((_%e8099481007%_ (gx#syntax-e _%g8099081004%_)))
                        (let ((_%hd8099381011%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8099481007%_)))
                              (_%tl8099281014%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8099481007%_))))
                          ((lambda (_%L81017%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L81017%_)))
                           _%tl8099281014%_)))
                      (_%g8098981000%_ _%g8099081004%_)))))
          (_%g8098881029%_ _%$stx80985%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx81033%_)
        (let* ((_%__stx8699686997%_ _%$stx81033%_)
               (_%g8104481258%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8699686997%_))))
          (let ((_%__kont8699987000%_
                 (lambda (_%L82111%_
                          _%L82113%_
                          _%L82114%_
                          _%L82115%_
                          _%L82116%_)
                   (cons _%L82116%_
                         (cons '2
                               (cons '()
                                     (cons (let ((__tmp87463
                                                  (lambda (_%g8214682149%_
                                                           _%g8214782152%_)
                                                    (cons _%g8214682149%_
                                                          _%g8214782152%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp87463
                                              '()
                                              _%L82114%_))
                                           (cons _%L82115%_
                                                 (cons _%L82113%_
                                                       (cons _%L82111%_
                                                             '())))))))))
                (_%__kont8700387004%_
                 (lambda (_%L81964%_ _%L81966%_ _%L81967%_ _%L81968%_)
                   (cons _%L81968%_
                         (cons '2
                               (cons '()
                                     (cons (let ((__tmp87464
                                                  (lambda (_%g8199181994%_
                                                           _%g8199281997%_)
                                                    (cons _%g8199181994%_
                                                          _%g8199281997%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp87464
                                              '()
                                              _%L81966%_))
                                           (cons _%L81967%_
                                                 (cons _%L81964%_
                                                       (cons _%L81964%_
                                                             '())))))))))
                (_%__kont8700787008%_
                 (lambda (_%L81867%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L81867%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont8700987010%_
                 (lambda (_%L81790%_
                          _%L81792%_
                          _%L81793%_
                          _%L81794%_
                          _%L81795%_
                          _%L81796%_)
                   (cons _%L81796%_
                         (cons '2
                               (cons (cons (cons _%L81794%_
                                                 (cons _%L81793%_ '()))
                                           _%L81795%_)
                                     (cons _%L81792%_ _%L81790%_))))))
                (_%__kont8701187012%_
                 (lambda (_%L81671%_
                          _%L81673%_
                          _%L81674%_
                          _%L81675%_
                          _%L81676%_)
                   (cons _%L81676%_
                         (cons '2
                               (cons (cons (cons _%L81674%_
                                                 (cons _%L81674%_ '()))
                                           _%L81675%_)
                                     (cons _%L81673%_ _%L81671%_))))))
                (_%__kont8701387014%_
                 (lambda (_%L81588%_ _%L81590%_ _%L81591%_)
                   (cons _%L81591%_
                         (cons '3 (cons '() (cons _%L81590%_ _%L81588%_))))))
                (_%__kont8701587016%_
                 (lambda (_%L81509%_
                          _%L81511%_
                          _%L81512%_
                          _%L81513%_
                          _%L81514%_)
                   (cons _%L81514%_
                         (cons '3
                               (cons (cons _%L81512%_ _%L81513%_)
                                     (cons _%L81511%_ _%L81509%_))))))
                (_%__kont8701787018%_
                 (lambda (_%L81393%_
                          _%L81395%_
                          _%L81396%_
                          _%L81397%_
                          _%L81398%_
                          _%L81399%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L81396%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L81393%_ '())))
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
                                       (cons (let ((__tmp87465
                                                    (lambda (_%g8143381436%_
                                                             _%g8143481439%_)
                                                      (cons _%g8143381436%_
                                                            _%g8143481439%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp87465
                                                '()
                                                _%L81398%_))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (let ((__tmp87466
                                                    (lambda (_%g8143181442%_
                                                             _%g8143281445%_)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '() (cons _%g8143181442%_ '())))
                    _%g8143281445%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp87466
                                                '()
                                                _%L81397%_)))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L81395%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match8734787348%_
                    (lambda (_%e8121681265%_
                             _%hd8121581269%_
                             _%tl8121481272%_
                             _%e8121981275%_
                             _%hd8121881279%_
                             _%tl8121781282%_
                             _%e8122081285%_
                             _%e8122381289%_
                             _%hd8122281293%_
                             _%tl8122181296%_
                             _%__splice8701987020%_
                             _%target8122481299%_
                             _%tl8122681302%_)
                      (letrec ((_%loop8122781305%_
                                (lambda (_%hd8122581309%_
                                         _%exprs8123181312%_
                                         _%names8123281314%_)
                                  (if (gx#stx-pair? _%hd8122581309%_)
                                      (let ((_%e8122881317%_
                                             (gx#syntax-e _%hd8122581309%_)))
                                        (let ((_%lp-tl8123081324%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8122881317%_)))
                                              (_%lp-hd8122981321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8122881317%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd8122981321%_)
                                              (let ((_%e8123781327%_
                                                     (gx#syntax-e
                                                      _%lp-hd8122981321%_)))
                                                (let ((_%tl8123581334%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8123781327%_)))
                                                      (_%hd8123681331%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8123781327%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8123581334%_)
                                                      (let ((_%e8124081337%_
                                                             (gx#syntax-e
                                                              _%tl8123581334%_)))
                                                        (let ((_%tl8123881344%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8124081337%_)))
                      (_%hd8123981341%_
                       (let () (declare (not safe)) (##car _%e8124081337%_))))
                  (if (gx#stx-null? _%tl8123881344%_)
                      (_%loop8122781305%_
                       _%lp-tl8123081324%_
                       (cons _%hd8123981341%_ _%exprs8123181312%_)
                       (cons _%hd8123681331%_ _%names8123281314%_))
                      (let () (declare (not safe)) (_%g8104481258%_)))))
              (let () (declare (not safe)) (_%g8104481258%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g8104481258%_)))))
                                      (let ((_%names8123481350%_
                                             (reverse _%names8123281314%_))
                                            (_%exprs8123381347%_
                                             (reverse _%exprs8123181312%_)))
                                        (if (gx#stx-pair? _%tl8122181296%_)
                                            (let ((_%e8124381353%_
                                                   (gx#syntax-e
                                                    _%tl8122181296%_)))
                                              (let ((_%tl8124181360%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8124381353%_)))
                                                    (_%hd8124281357%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8124381353%_))))
                                                (if (gx#stx-null?
                                                     _%hd8124281357%_)
                                                    (if (gx#stx-pair?
                                                         _%tl8124181360%_)
                                                        (let ((_%e8124681363%_
                                                               (gx#syntax-e
                                                                _%tl8124181360%_)))
                                                          (let ((_%tl8124481370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8124681363%_)))
                        (_%hd8124581367%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8124681363%_))))
                    (if (gx#stx-pair? _%tl8124481370%_)
                        (let ((_%e8124981373%_ (gx#syntax-e _%tl8124481370%_)))
                          (let ((_%tl8124781380%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8124981373%_)))
                                (_%hd8124881377%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8124981373%_))))
                            (if (gx#stx-pair? _%tl8124781380%_)
                                (let ((_%e8125281383%_
                                       (gx#syntax-e _%tl8124781380%_)))
                                  (let ((_%tl8125081390%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8125281383%_)))
                                        (_%hd8125181387%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8125281383%_))))
                                    (if (gx#stx-null? _%tl8125081390%_)
                                        (_%__kont8701787018%_
                                         _%hd8125181387%_
                                         _%hd8124881377%_
                                         _%hd8124581367%_
                                         _%exprs8123381347%_
                                         _%names8123481350%_
                                         _%hd8121581269%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8104481258%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8104481258%_)))))
                        (let () (declare (not safe)) (_%g8104481258%_)))))
                (let () (declare (not safe)) (_%g8104481258%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8104481258%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8104481258%_))))))))
                        (_%loop8122781305%_ _%target8122481299%_ '() '()))))
                   (_%__match8712587126%_
                    (lambda (_%e8108881890%_
                             _%hd8108781894%_
                             _%tl8108681897%_
                             _%e8109181900%_
                             _%hd8109081904%_
                             _%tl8108981907%_
                             _%e8109281910%_
                             _%e8109581914%_
                             _%hd8109481918%_
                             _%tl8109381921%_
                             _%__splice8700587006%_
                             _%target8109681924%_
                             _%tl8109881927%_
                             _%e8110781930%_
                             _%hd8110681934%_
                             _%tl8110581937%_)
                      (letrec ((_%loop8109981940%_
                                (lambda (_%hd8109781944%_ _%exprs8110381947%_)
                                  (if (gx#stx-pair? _%hd8109781944%_)
                                      (let ((_%e8110081950%_
                                             (gx#syntax-e _%hd8109781944%_)))
                                        (let ((_%lp-tl8110281957%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8110081950%_)))
                                              (_%lp-hd8110181954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8110081950%_))))
                                          (_%loop8109981940%_
                                           _%lp-tl8110281957%_
                                           (cons _%lp-hd8110181954%_
                                                 _%exprs8110381947%_))))
                                      (let ((_%exprs8110481960%_
                                             (reverse _%exprs8110381947%_)))
                                        (_%__kont8700387004%_
                                         _%hd8110681934%_
                                         _%exprs8110481960%_
                                         _%hd8109481918%_
                                         _%hd8108781894%_))))))
                        (_%loop8109981940%_ _%target8109681924%_ '()))))
                   (_%__match8708587086%_
                    (lambda (_%e8105382007%_
                             _%hd8105282011%_
                             _%tl8105182014%_
                             _%e8105682017%_
                             _%hd8105582021%_
                             _%tl8105482024%_
                             _%e8105782027%_
                             _%e8106082031%_
                             _%hd8105982035%_
                             _%tl8105882038%_
                             _%__splice8700187002%_
                             _%target8106182041%_
                             _%tl8106382044%_
                             _%e8107282047%_
                             _%hd8107182051%_
                             _%tl8107082054%_
                             _%e8107582057%_
                             _%hd8107482061%_
                             _%tl8107382064%_
                             _%e8107882067%_
                             _%hd8107782071%_
                             _%tl8107682074%_
                             _%e8108182077%_
                             _%hd8108082081%_
                             _%tl8107982084%_)
                      (letrec ((_%loop8106482087%_
                                (lambda (_%hd8106282091%_ _%exprs8106882094%_)
                                  (if (gx#stx-pair? _%hd8106282091%_)
                                      (let ((_%e8106582097%_
                                             (gx#syntax-e _%hd8106282091%_)))
                                        (let ((_%lp-tl8106782104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8106582097%_)))
                                              (_%lp-hd8106682101%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8106582097%_))))
                                          (_%loop8106482087%_
                                           _%lp-tl8106782104%_
                                           (cons _%lp-hd8106682101%_
                                                 _%exprs8106882094%_))))
                                      (let ((_%exprs8106982107%_
                                             (reverse _%exprs8106882094%_)))
                                        (_%__kont8699987000%_
                                         _%hd8108082081%_
                                         _%hd8107782071%_
                                         _%exprs8106982107%_
                                         _%hd8105982035%_
                                         _%hd8105282011%_))))))
                        (_%loop8106482087%_ _%target8106182041%_ '())))))
              (if (gx#stx-pair? _%__stx8699686997%_)
                  (let ((_%e8105382007%_ (gx#syntax-e _%__stx8699686997%_)))
                    (let ((_%tl8105182014%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e8105382007%_)))
                          (_%hd8105282011%_
                           (let ()
                             (declare (not safe))
                             (##car _%e8105382007%_))))
                      (if (gx#stx-pair? _%tl8105182014%_)
                          (let ((_%e8105682017%_
                                 (gx#syntax-e _%tl8105182014%_)))
                            (let ((_%tl8105482024%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e8105682017%_)))
                                  (_%hd8105582021%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e8105682017%_))))
                              (if (gx#stx-datum? _%hd8105582021%_)
                                  (let ((_%e8105782027%_
                                         (gx#stx-e _%hd8105582021%_)))
                                    (if (equal? _%e8105782027%_ '1)
                                        (if (gx#stx-pair? _%tl8105482024%_)
                                            (let ((_%e8106082031%_
                                                   (gx#syntax-e
                                                    _%tl8105482024%_)))
                                              (let ((_%tl8105882038%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8106082031%_)))
                                                    (_%hd8105982035%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8106082031%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl8105882038%_)
                                                    (if (let ((__tmp87467
                                                               (gx#stx-length
                                                                _%tl8105882038%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp87467
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice8700187002%_
                       (gx#syntax-split-splice _%tl8105882038%_ '2)))
                  (let ((_%tl8106382044%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8700187002%_ '1)))
                        (_%target8106182041%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8700187002%_ '0))))
                    (if (gx#stx-pair? _%tl8106382044%_)
                        (let ((_%e8107282047%_ (gx#syntax-e _%tl8106382044%_)))
                          (let ((_%tl8107082054%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8107282047%_)))
                                (_%hd8107182051%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8107282047%_))))
                            (if (gx#stx-pair? _%hd8107182051%_)
                                (let ((_%e8107582057%_
                                       (gx#syntax-e _%hd8107182051%_)))
                                  (let ((_%tl8107382064%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8107582057%_)))
                                        (_%hd8107482061%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8107582057%_))))
                                    (if (gx#identifier? _%hd8107482061%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g87468_|
                                             _%hd8107482061%_)
                                            (if (gx#stx-pair? _%tl8107382064%_)
                                                (let ((_%e8107882067%_
                                                       (gx#syntax-e
                                                        _%tl8107382064%_)))
                                                  (let ((_%tl8107682074%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8107882067%_)))
                                                        (_%hd8107782071%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8107882067%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8107682074%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8107082054%_)
                                                            (let ((_%e8108182077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8107082054%_)))
                      (let ((_%tl8107982084%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8108182077%_)))
                            (_%hd8108082081%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8108182077%_))))
                        (if (gx#stx-null? _%tl8107982084%_)
                            (_%__match8708587086%_
                             _%e8105382007%_
                             _%hd8105282011%_
                             _%tl8105182014%_
                             _%e8105682017%_
                             _%hd8105582021%_
                             _%tl8105482024%_
                             _%e8105782027%_
                             _%e8106082031%_
                             _%hd8105982035%_
                             _%tl8105882038%_
                             _%__splice8700187002%_
                             _%target8106182041%_
                             _%tl8106382044%_
                             _%e8107282047%_
                             _%hd8107182051%_
                             _%tl8107082054%_
                             _%e8107582057%_
                             _%hd8107482061%_
                             _%tl8107382064%_
                             _%e8107882067%_
                             _%hd8107782071%_
                             _%tl8107682074%_
                             _%e8108182077%_
                             _%hd8108082081%_
                             _%tl8107982084%_)
                            (if (let ((__tmp87469
                                       (gx#stx-length _%tl8105882038%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp87469 '1))
                                (let ((_%__splice8700587006%_
                                       (gx#syntax-split-splice
                                        _%tl8105882038%_
                                        '1)))
                                  (let ((_%tl8109881927%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8700587006%_
                                            '1)))
                                        (_%target8109681924%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8700587006%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl8109881927%_)
                                        (let ((_%e8110781930%_
                                               (gx#syntax-e _%tl8109881927%_)))
                                          (let ((_%tl8110581937%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e8110781930%_)))
                                                (_%hd8110681934%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e8110781930%_))))
                                            (if (gx#stx-null? _%tl8110581937%_)
                                                (_%__match8712587126%_
                                                 _%e8105382007%_
                                                 _%hd8105282011%_
                                                 _%tl8105182014%_
                                                 _%e8105682017%_
                                                 _%hd8105582021%_
                                                 _%tl8105482024%_
                                                 _%e8105782027%_
                                                 _%e8106082031%_
                                                 _%hd8105982035%_
                                                 _%tl8105882038%_
                                                 _%__splice8700587006%_
                                                 _%target8109681924%_
                                                 _%tl8109881927%_
                                                 _%e8110781930%_
                                                 _%hd8110681934%_
                                                 _%tl8110581937%_)
                                                (if (gx#stx-null?
                                                     _%tl8105882038%_)
                                                    (_%__kont8700787008%_
                                                     _%hd8105982035%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8104481258%_))))))
                                        (if (gx#stx-null? _%tl8105882038%_)
                                            (_%__kont8700787008%_
                                             _%hd8105982035%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8104481258%_))))))
                                (if (gx#stx-null? _%tl8105882038%_)
                                    (_%__kont8700787008%_ _%hd8105982035%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8104481258%_)))))))
                    (if (let ((__tmp87470 (gx#stx-length _%tl8105882038%_)))
                          (declare (not safe))
                          (##fx>= __tmp87470 '1))
                        (let ((_%__splice8700587006%_
                               (gx#syntax-split-splice _%tl8105882038%_ '1)))
                          (let ((_%tl8109881927%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8700587006%_ '1)))
                                (_%target8109681924%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8700587006%_ '0))))
                            (if (gx#stx-pair? _%tl8109881927%_)
                                (let ((_%e8110781930%_
                                       (gx#syntax-e _%tl8109881927%_)))
                                  (let ((_%tl8110581937%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8110781930%_)))
                                        (_%hd8110681934%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8110781930%_))))
                                    (if (gx#stx-null? _%tl8110581937%_)
                                        (_%__match8712587126%_
                                         _%e8105382007%_
                                         _%hd8105282011%_
                                         _%tl8105182014%_
                                         _%e8105682017%_
                                         _%hd8105582021%_
                                         _%tl8105482024%_
                                         _%e8105782027%_
                                         _%e8106082031%_
                                         _%hd8105982035%_
                                         _%tl8105882038%_
                                         _%__splice8700587006%_
                                         _%target8109681924%_
                                         _%tl8109881927%_
                                         _%e8110781930%_
                                         _%hd8110681934%_
                                         _%tl8110581937%_)
                                        (if (gx#stx-null? _%tl8105882038%_)
                                            (_%__kont8700787008%_
                                             _%hd8105982035%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8104481258%_))))))
                                (if (gx#stx-null? _%tl8105882038%_)
                                    (_%__kont8700787008%_ _%hd8105982035%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8104481258%_))))))
                        (if (gx#stx-null? _%tl8105882038%_)
                            (_%__kont8700787008%_ _%hd8105982035%_)
                            (let () (declare (not safe)) (_%g8104481258%_)))))
                (if (let ((__tmp87471 (gx#stx-length _%tl8105882038%_)))
                      (declare (not safe))
                      (##fx>= __tmp87471 '1))
                    (let ((_%__splice8700587006%_
                           (gx#syntax-split-splice _%tl8105882038%_ '1)))
                      (let ((_%tl8109881927%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8700587006%_ '1)))
                            (_%target8109681924%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8700587006%_ '0))))
                        (if (gx#stx-pair? _%tl8109881927%_)
                            (let ((_%e8110781930%_
                                   (gx#syntax-e _%tl8109881927%_)))
                              (let ((_%tl8110581937%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8110781930%_)))
                                    (_%hd8110681934%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8110781930%_))))
                                (if (gx#stx-null? _%tl8110581937%_)
                                    (_%__match8712587126%_
                                     _%e8105382007%_
                                     _%hd8105282011%_
                                     _%tl8105182014%_
                                     _%e8105682017%_
                                     _%hd8105582021%_
                                     _%tl8105482024%_
                                     _%e8105782027%_
                                     _%e8106082031%_
                                     _%hd8105982035%_
                                     _%tl8105882038%_
                                     _%__splice8700587006%_
                                     _%target8109681924%_
                                     _%tl8109881927%_
                                     _%e8110781930%_
                                     _%hd8110681934%_
                                     _%tl8110581937%_)
                                    (if (gx#stx-null? _%tl8105882038%_)
                                        (_%__kont8700787008%_ _%hd8105982035%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8104481258%_))))))
                            (if (gx#stx-null? _%tl8105882038%_)
                                (_%__kont8700787008%_ _%hd8105982035%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8104481258%_))))))
                    (if (gx#stx-null? _%tl8105882038%_)
                        (_%__kont8700787008%_ _%hd8105982035%_)
                        (let () (declare (not safe)) (_%g8104481258%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp87472
                                                           (gx#stx-length
                                                            _%tl8105882038%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp87472 '1))
                                                    (let ((_%__splice8700587006%_
                                                           (gx#syntax-split-splice
                                                            _%tl8105882038%_
                                                            '1)))
                                                      (let ((_%tl8109881927%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8700587006%_ '1)))
                    (_%target8109681924%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8700587006%_ '0))))
                (if (gx#stx-pair? _%tl8109881927%_)
                    (let ((_%e8110781930%_ (gx#syntax-e _%tl8109881927%_)))
                      (let ((_%tl8110581937%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8110781930%_)))
                            (_%hd8110681934%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8110781930%_))))
                        (if (gx#stx-null? _%tl8110581937%_)
                            (_%__match8712587126%_
                             _%e8105382007%_
                             _%hd8105282011%_
                             _%tl8105182014%_
                             _%e8105682017%_
                             _%hd8105582021%_
                             _%tl8105482024%_
                             _%e8105782027%_
                             _%e8106082031%_
                             _%hd8105982035%_
                             _%tl8105882038%_
                             _%__splice8700587006%_
                             _%target8109681924%_
                             _%tl8109881927%_
                             _%e8110781930%_
                             _%hd8110681934%_
                             _%tl8110581937%_)
                            (if (gx#stx-null? _%tl8105882038%_)
                                (_%__kont8700787008%_ _%hd8105982035%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8104481258%_))))))
                    (if (gx#stx-null? _%tl8105882038%_)
                        (_%__kont8700787008%_ _%hd8105982035%_)
                        (let () (declare (not safe)) (_%g8104481258%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8105882038%_)
                                                        (_%__kont8700787008%_
                                                         _%hd8105982035%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8104481258%_)))))
                                            (if (let ((__tmp87473
                                                       (gx#stx-length
                                                        _%tl8105882038%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp87473 '1))
                                                (let ((_%__splice8700587006%_
                                                       (gx#syntax-split-splice
                                                        _%tl8105882038%_
                                                        '1)))
                                                  (let ((_%tl8109881927%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8700587006%_
                                                            '1)))
                                                        (_%target8109681924%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8700587006%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl8109881927%_)
                                                        (let ((_%e8110781930%_
                                                               (gx#syntax-e
                                                                _%tl8109881927%_)))
                                                          (let ((_%tl8110581937%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8110781930%_)))
                        (_%hd8110681934%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8110781930%_))))
                    (if (gx#stx-null? _%tl8110581937%_)
                        (_%__match8712587126%_
                         _%e8105382007%_
                         _%hd8105282011%_
                         _%tl8105182014%_
                         _%e8105682017%_
                         _%hd8105582021%_
                         _%tl8105482024%_
                         _%e8105782027%_
                         _%e8106082031%_
                         _%hd8105982035%_
                         _%tl8105882038%_
                         _%__splice8700587006%_
                         _%target8109681924%_
                         _%tl8109881927%_
                         _%e8110781930%_
                         _%hd8110681934%_
                         _%tl8110581937%_)
                        (if (gx#stx-null? _%tl8105882038%_)
                            (_%__kont8700787008%_ _%hd8105982035%_)
                            (let () (declare (not safe)) (_%g8104481258%_))))))
                (if (gx#stx-null? _%tl8105882038%_)
                    (_%__kont8700787008%_ _%hd8105982035%_)
                    (let () (declare (not safe)) (_%g8104481258%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl8105882038%_)
                                                    (_%__kont8700787008%_
                                                     _%hd8105982035%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8104481258%_)))))
                                        (if (let ((__tmp87474
                                                   (gx#stx-length
                                                    _%tl8105882038%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp87474 '1))
                                            (let ((_%__splice8700587006%_
                                                   (gx#syntax-split-splice
                                                    _%tl8105882038%_
                                                    '1)))
                                              (let ((_%tl8109881927%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8700587006%_
                                                        '1)))
                                                    (_%target8109681924%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8700587006%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl8109881927%_)
                                                    (let ((_%e8110781930%_
                                                           (gx#syntax-e
                                                            _%tl8109881927%_)))
                                                      (let ((_%tl8110581937%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8110781930%_)))
                    (_%hd8110681934%_
                     (let () (declare (not safe)) (##car _%e8110781930%_))))
                (if (gx#stx-null? _%tl8110581937%_)
                    (_%__match8712587126%_
                     _%e8105382007%_
                     _%hd8105282011%_
                     _%tl8105182014%_
                     _%e8105682017%_
                     _%hd8105582021%_
                     _%tl8105482024%_
                     _%e8105782027%_
                     _%e8106082031%_
                     _%hd8105982035%_
                     _%tl8105882038%_
                     _%__splice8700587006%_
                     _%target8109681924%_
                     _%tl8109881927%_
                     _%e8110781930%_
                     _%hd8110681934%_
                     _%tl8110581937%_)
                    (if (gx#stx-null? _%tl8105882038%_)
                        (_%__kont8700787008%_ _%hd8105982035%_)
                        (let () (declare (not safe)) (_%g8104481258%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8105882038%_)
                                                        (_%__kont8700787008%_
                                                         _%hd8105982035%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8104481258%_))))))
                                            (if (gx#stx-null? _%tl8105882038%_)
                                                (_%__kont8700787008%_
                                                 _%hd8105982035%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8104481258%_)))))))
                                (if (let ((__tmp87475
                                           (gx#stx-length _%tl8105882038%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp87475 '1))
                                    (let ((_%__splice8700587006%_
                                           (gx#syntax-split-splice
                                            _%tl8105882038%_
                                            '1)))
                                      (let ((_%tl8109881927%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8700587006%_
                                                '1)))
                                            (_%target8109681924%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8700587006%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl8109881927%_)
                                            (let ((_%e8110781930%_
                                                   (gx#syntax-e
                                                    _%tl8109881927%_)))
                                              (let ((_%tl8110581937%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8110781930%_)))
                                                    (_%hd8110681934%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8110781930%_))))
                                                (if (gx#stx-null?
                                                     _%tl8110581937%_)
                                                    (_%__match8712587126%_
                                                     _%e8105382007%_
                                                     _%hd8105282011%_
                                                     _%tl8105182014%_
                                                     _%e8105682017%_
                                                     _%hd8105582021%_
                                                     _%tl8105482024%_
                                                     _%e8105782027%_
                                                     _%e8106082031%_
                                                     _%hd8105982035%_
                                                     _%tl8105882038%_
                                                     _%__splice8700587006%_
                                                     _%target8109681924%_
                                                     _%tl8109881927%_
                                                     _%e8110781930%_
                                                     _%hd8110681934%_
                                                     _%tl8110581937%_)
                                                    (if (gx#stx-null?
                                                         _%tl8105882038%_)
                                                        (_%__kont8700787008%_
                                                         _%hd8105982035%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8104481258%_))))))
                                            (if (gx#stx-null? _%tl8105882038%_)
                                                (_%__kont8700787008%_
                                                 _%hd8105982035%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8104481258%_))))))
                                    (if (gx#stx-null? _%tl8105882038%_)
                                        (_%__kont8700787008%_ _%hd8105982035%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8104481258%_)))))))
                        (if (let ((__tmp87476
                                   (gx#stx-length _%tl8105882038%_)))
                              (declare (not safe))
                              (##fx>= __tmp87476 '1))
                            (let ((_%__splice8700587006%_
                                   (gx#syntax-split-splice
                                    _%tl8105882038%_
                                    '1)))
                              (let ((_%tl8109881927%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8700587006%_
                                        '1)))
                                    (_%target8109681924%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8700587006%_
                                        '0))))
                                (if (gx#stx-pair? _%tl8109881927%_)
                                    (let ((_%e8110781930%_
                                           (gx#syntax-e _%tl8109881927%_)))
                                      (let ((_%tl8110581937%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8110781930%_)))
                                            (_%hd8110681934%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8110781930%_))))
                                        (if (gx#stx-null? _%tl8110581937%_)
                                            (_%__match8712587126%_
                                             _%e8105382007%_
                                             _%hd8105282011%_
                                             _%tl8105182014%_
                                             _%e8105682017%_
                                             _%hd8105582021%_
                                             _%tl8105482024%_
                                             _%e8105782027%_
                                             _%e8106082031%_
                                             _%hd8105982035%_
                                             _%tl8105882038%_
                                             _%__splice8700587006%_
                                             _%target8109681924%_
                                             _%tl8109881927%_
                                             _%e8110781930%_
                                             _%hd8110681934%_
                                             _%tl8110581937%_)
                                            (if (gx#stx-null? _%tl8105882038%_)
                                                (_%__kont8700787008%_
                                                 _%hd8105982035%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8104481258%_))))))
                                    (if (gx#stx-null? _%tl8105882038%_)
                                        (_%__kont8700787008%_ _%hd8105982035%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8104481258%_))))))
                            (if (gx#stx-null? _%tl8105882038%_)
                                (_%__kont8700787008%_ _%hd8105982035%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8104481258%_)))))))
                (if (let ((__tmp87477 (gx#stx-length _%tl8105882038%_)))
                      (declare (not safe))
                      (##fx>= __tmp87477 '1))
                    (let ((_%__splice8700587006%_
                           (gx#syntax-split-splice _%tl8105882038%_ '1)))
                      (let ((_%tl8109881927%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8700587006%_ '1)))
                            (_%target8109681924%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8700587006%_ '0))))
                        (if (gx#stx-pair? _%tl8109881927%_)
                            (let ((_%e8110781930%_
                                   (gx#syntax-e _%tl8109881927%_)))
                              (let ((_%tl8110581937%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8110781930%_)))
                                    (_%hd8110681934%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8110781930%_))))
                                (if (gx#stx-null? _%tl8110581937%_)
                                    (_%__match8712587126%_
                                     _%e8105382007%_
                                     _%hd8105282011%_
                                     _%tl8105182014%_
                                     _%e8105682017%_
                                     _%hd8105582021%_
                                     _%tl8105482024%_
                                     _%e8105782027%_
                                     _%e8106082031%_
                                     _%hd8105982035%_
                                     _%tl8105882038%_
                                     _%__splice8700587006%_
                                     _%target8109681924%_
                                     _%tl8109881927%_
                                     _%e8110781930%_
                                     _%hd8110681934%_
                                     _%tl8110581937%_)
                                    (if (gx#stx-null? _%tl8105882038%_)
                                        (_%__kont8700787008%_ _%hd8105982035%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8104481258%_))))))
                            (if (gx#stx-null? _%tl8105882038%_)
                                (_%__kont8700787008%_ _%hd8105982035%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8104481258%_))))))
                    (if (gx#stx-null? _%tl8105882038%_)
                        (_%__kont8700787008%_ _%hd8105982035%_)
                        (let () (declare (not safe)) (_%g8104481258%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8105882038%_)
                                                        (_%__kont8700787008%_
                                                         _%hd8105982035%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8104481258%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8104481258%_)))
                                        (if (equal? _%e8105782027%_ '2)
                                            (if (gx#stx-pair? _%tl8105482024%_)
                                                (let ((_%e8113481730%_
                                                       (gx#syntax-e
                                                        _%tl8105482024%_)))
                                                  (let ((_%tl8113281737%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8113481730%_)))
                                                        (_%hd8113381734%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8113481730%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl8113281737%_)
                                                        (let ((_%e8113781740%_
                                                               (gx#syntax-e
                                                                _%tl8113281737%_)))
                                                          (let ((_%tl8113581747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8113781740%_)))
                        (_%hd8113681744%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8113781740%_))))
                    (if (gx#stx-pair? _%hd8113681744%_)
                        (let ((_%e8114081750%_ (gx#syntax-e _%hd8113681744%_)))
                          (let ((_%tl8113881757%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8114081750%_)))
                                (_%hd8113981754%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8114081750%_))))
                            (if (gx#stx-pair? _%hd8113981754%_)
                                (let ((_%e8114381760%_
                                       (gx#syntax-e _%hd8113981754%_)))
                                  (let ((_%tl8114181767%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8114381760%_)))
                                        (_%hd8114281764%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8114381760%_))))
                                    (if (gx#identifier? _%hd8114281764%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g87478_|
                                             _%hd8114281764%_)
                                            (if (gx#stx-pair? _%tl8114181767%_)
                                                (let ((_%e8114681770%_
                                                       (gx#syntax-e
                                                        _%tl8114181767%_)))
                                                  (let ((_%tl8114481777%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8114681770%_)))
                                                        (_%hd8114581774%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8114681770%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8114481777%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8113881757%_)
                                                            (let ((_%e8114981780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8113881757%_)))
                      (let ((_%tl8114781787%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8114981780%_)))
                            (_%hd8114881784%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8114981780%_))))
                        (_%__kont8700987010%_
                         _%tl8113581747%_
                         _%tl8114781787%_
                         _%hd8114881784%_
                         _%hd8114581774%_
                         _%hd8113381734%_
                         _%hd8105282011%_)))
                    (_%__kont8701187012%_
                     _%tl8113581747%_
                     _%tl8113881757%_
                     _%hd8113981754%_
                     _%hd8113381734%_
                     _%hd8105282011%_))
                (_%__kont8701187012%_
                 _%tl8113581747%_
                 _%tl8113881757%_
                 _%hd8113981754%_
                 _%hd8113381734%_
                 _%hd8105282011%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont8701187012%_
                                                 _%tl8113581747%_
                                                 _%tl8113881757%_
                                                 _%hd8113981754%_
                                                 _%hd8113381734%_
                                                 _%hd8105282011%_))
                                            (_%__kont8701187012%_
                                             _%tl8113581747%_
                                             _%tl8113881757%_
                                             _%hd8113981754%_
                                             _%hd8113381734%_
                                             _%hd8105282011%_))
                                        (_%__kont8701187012%_
                                         _%tl8113581747%_
                                         _%tl8113881757%_
                                         _%hd8113981754%_
                                         _%hd8113381734%_
                                         _%hd8105282011%_))))
                                (_%__kont8701187012%_
                                 _%tl8113581747%_
                                 _%tl8113881757%_
                                 _%hd8113981754%_
                                 _%hd8113381734%_
                                 _%hd8105282011%_))))
                        (if (gx#stx-null? _%hd8113681744%_)
                            (_%__kont8701387014%_
                             _%tl8113581747%_
                             _%hd8113381734%_
                             _%hd8105282011%_)
                            (let () (declare (not safe)) (_%g8104481258%_))))))
                (let () (declare (not safe)) (_%g8104481258%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8104481258%_)))
                                            (if (equal? _%e8105782027%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl8105482024%_)
                                                    (let ((_%e8120181479%_
                                                           (gx#syntax-e
                                                            _%tl8105482024%_)))
                                                      (let ((_%tl8119981486%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8120181479%_)))
                    (_%hd8120081483%_
                     (let () (declare (not safe)) (##car _%e8120181479%_))))
                (if (gx#stx-pair? _%tl8119981486%_)
                    (let ((_%e8120481489%_ (gx#syntax-e _%tl8119981486%_)))
                      (let ((_%tl8120281496%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8120481489%_)))
                            (_%hd8120381493%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8120481489%_))))
                        (if (gx#stx-pair? _%hd8120381493%_)
                            (let ((_%e8120781499%_
                                   (gx#syntax-e _%hd8120381493%_)))
                              (let ((_%tl8120581506%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8120781499%_)))
                                    (_%hd8120681503%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8120781499%_))))
                                (_%__kont8701587016%_
                                 _%tl8120281496%_
                                 _%tl8120581506%_
                                 _%hd8120681503%_
                                 _%hd8120081483%_
                                 _%hd8105282011%_)))
                            (if (gx#stx-pair/null? _%hd8120081483%_)
                                (let ((_%__splice8701987020%_
                                       (gx#syntax-split-splice
                                        _%hd8120081483%_
                                        '0)))
                                  (let ((_%tl8122681302%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8701987020%_
                                            '1)))
                                        (_%target8122481299%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8701987020%_
                                            '0))))
                                    (if (gx#stx-null? _%tl8122681302%_)
                                        (_%__match8734787348%_
                                         _%e8105382007%_
                                         _%hd8105282011%_
                                         _%tl8105182014%_
                                         _%e8105682017%_
                                         _%hd8105582021%_
                                         _%tl8105482024%_
                                         _%e8105782027%_
                                         _%e8120181479%_
                                         _%hd8120081483%_
                                         _%tl8119981486%_
                                         _%__splice8701987020%_
                                         _%target8122481299%_
                                         _%tl8122681302%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8104481258%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8104481258%_))))))
                    (if (gx#stx-pair/null? _%hd8120081483%_)
                        (let ((_%__splice8701987020%_
                               (gx#syntax-split-splice _%hd8120081483%_ '0)))
                          (let ((_%tl8122681302%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8701987020%_ '1)))
                                (_%target8122481299%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8701987020%_ '0))))
                            (if (gx#stx-null? _%tl8122681302%_)
                                (_%__match8734787348%_
                                 _%e8105382007%_
                                 _%hd8105282011%_
                                 _%tl8105182014%_
                                 _%e8105682017%_
                                 _%hd8105582021%_
                                 _%tl8105482024%_
                                 _%e8105782027%_
                                 _%e8120181479%_
                                 _%hd8120081483%_
                                 _%tl8119981486%_
                                 _%__splice8701987020%_
                                 _%target8122481299%_
                                 _%tl8122681302%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8104481258%_)))))
                        (let () (declare (not safe)) (_%g8104481258%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8104481258%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8104481258%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g8104481258%_)))))
                          (let () (declare (not safe)) (_%g8104481258%_)))))
                  (let () (declare (not safe)) (_%g8104481258%_))))))))))
