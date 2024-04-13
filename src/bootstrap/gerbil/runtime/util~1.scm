(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g89790_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g89800_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx82860%_)
        (let* ((_%g8286482882%_
                (lambda (_%g8286582878%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8286582878%_)))
               (_%g8286382938%_
                (lambda (_%g8286582886%_)
                  (if (gx#stx-pair? _%g8286582886%_)
                      (let ((_%e8286882889%_ (gx#syntax-e _%g8286582886%_)))
                        (let ((_%hd8286982893%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8286882889%_)))
                              (_%tl8287082896%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8286882889%_))))
                          (if (gx#stx-pair? _%tl8287082896%_)
                              (let ((_%e8287182899%_
                                     (gx#syntax-e _%tl8287082896%_)))
                                (let ((_%hd8287282903%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8287182899%_)))
                                      (_%tl8287382906%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8287182899%_))))
                                  (if (gx#stx-pair? _%tl8287382906%_)
                                      (let ((_%e8287482909%_
                                             (gx#syntax-e _%tl8287382906%_)))
                                        (let ((_%hd8287582913%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8287482909%_)))
                                              (_%tl8287682916%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8287482909%_))))
                                          (if (gx#stx-null? _%tl8287682916%_)
                                              ((lambda (_%L82919%_ _%L82921%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L82921%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L82919%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8287582913%_
                                               _%hd8287282903%_)
                                              (_%g8286482882%_
                                               _%g8286582886%_))))
                                      (_%g8286482882%_ _%g8286582886%_))))
                              (_%g8286482882%_ _%g8286582886%_))))
                      (_%g8286482882%_ _%g8286582886%_)))))
          (_%g8286382938%_ _%$stx82860%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx82942%_)
        (let* ((_%g8294682960%_
                (lambda (_%g8294782956%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8294782956%_)))
               (_%g8294583001%_
                (lambda (_%g8294782964%_)
                  (if (gx#stx-pair? _%g8294782964%_)
                      (let ((_%e8294982967%_ (gx#syntax-e _%g8294782964%_)))
                        (let ((_%hd8295082971%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8294982967%_)))
                              (_%tl8295182974%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8294982967%_))))
                          (if (gx#stx-pair? _%tl8295182974%_)
                              (let ((_%e8295282977%_
                                     (gx#syntax-e _%tl8295182974%_)))
                                (let ((_%hd8295382981%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8295282977%_)))
                                      (_%tl8295482984%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8295282977%_))))
                                  (if (gx#stx-null? _%tl8295482984%_)
                                      ((lambda (_%L82987%_)
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
                                       (cons _%L82987%_
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
                                       _%hd8295382981%_)
                                      (_%g8294682960%_ _%g8294782964%_))))
                              (_%g8294682960%_ _%g8294782964%_))))
                      (_%g8294682960%_ _%g8294782964%_)))))
          (_%g8294583001%_ _%$stx82942%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx83005%_)
        (let* ((_%g8300983023%_
                (lambda (_%g8301083019%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8301083019%_)))
               (_%g8300883064%_
                (lambda (_%g8301083027%_)
                  (if (gx#stx-pair? _%g8301083027%_)
                      (let ((_%e8301283030%_ (gx#syntax-e _%g8301083027%_)))
                        (let ((_%hd8301383034%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8301283030%_)))
                              (_%tl8301483037%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8301283030%_))))
                          (if (gx#stx-pair? _%tl8301483037%_)
                              (let ((_%e8301583040%_
                                     (gx#syntax-e _%tl8301483037%_)))
                                (let ((_%hd8301683044%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8301583040%_)))
                                      (_%tl8301783047%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8301583040%_))))
                                  (if (gx#stx-null? _%tl8301783047%_)
                                      ((lambda (_%L83050%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L83050%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd8301683044%_)
                                      (_%g8300983023%_ _%g8301083027%_))))
                              (_%g8300983023%_ _%g8301083027%_))))
                      (_%g8300983023%_ _%g8301083027%_)))))
          (_%g8300883064%_ _%$stx83005%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx83068%_)
        (let* ((_%g8307283082%_
                (lambda (_%g8307383078%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8307383078%_)))
               (_%g8307183103%_
                (lambda (_%g8307383086%_)
                  (if (gx#stx-pair? _%g8307383086%_)
                      (let ((_%e8307483089%_ (gx#syntax-e _%g8307383086%_)))
                        (let ((_%hd8307583093%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8307483089%_)))
                              (_%tl8307683096%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8307483089%_))))
                          (if (gx#stx-null? _%tl8307683096%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g8307283082%_ _%g8307383086%_))))
                      (_%g8307283082%_ _%g8307383086%_)))))
          (_%g8307183103%_ _%$stx83068%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx83107%_)
        (let* ((_%g8311183129%_
                (lambda (_%g8311283125%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8311283125%_)))
               (_%g8311083184%_
                (lambda (_%g8311283133%_)
                  (if (gx#stx-pair? _%g8311283133%_)
                      (let ((_%e8311583136%_ (gx#syntax-e _%g8311283133%_)))
                        (let ((_%hd8311683140%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8311583136%_)))
                              (_%tl8311783143%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8311583136%_))))
                          (if (gx#stx-pair? _%tl8311783143%_)
                              (let ((_%e8311883146%_
                                     (gx#syntax-e _%tl8311783143%_)))
                                (let ((_%hd8311983150%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8311883146%_)))
                                      (_%tl8312083153%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8311883146%_))))
                                  (if (gx#stx-pair? _%tl8312083153%_)
                                      (let ((_%e8312183156%_
                                             (gx#syntax-e _%tl8312083153%_)))
                                        (let ((_%hd8312283160%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8312183156%_)))
                                              (_%tl8312383163%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8312183156%_))))
                                          (if (gx#stx-null? _%tl8312383163%_)
                                              ((lambda (_%L83166%_ _%L83168%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L83168%_
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
                 (cons (cons _%L83166%_
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
                                               _%hd8312283160%_
                                               _%hd8311983150%_)
                                              (_%g8311183129%_
                                               _%g8311283133%_))))
                                      (_%g8311183129%_ _%g8311283133%_))))
                              (_%g8311183129%_ _%g8311283133%_))))
                      (_%g8311183129%_ _%g8311283133%_)))))
          (_%g8311083184%_ _%$stx83107%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx83188%_)
        (let* ((_%g8319283210%_
                (lambda (_%g8319383206%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8319383206%_)))
               (_%g8319183265%_
                (lambda (_%g8319383214%_)
                  (if (gx#stx-pair? _%g8319383214%_)
                      (let ((_%e8319683217%_ (gx#syntax-e _%g8319383214%_)))
                        (let ((_%hd8319783221%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8319683217%_)))
                              (_%tl8319883224%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8319683217%_))))
                          (if (gx#stx-pair? _%tl8319883224%_)
                              (let ((_%e8319983227%_
                                     (gx#syntax-e _%tl8319883224%_)))
                                (let ((_%hd8320083231%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8319983227%_)))
                                      (_%tl8320183234%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8319983227%_))))
                                  (if (gx#stx-pair? _%tl8320183234%_)
                                      (let ((_%e8320283237%_
                                             (gx#syntax-e _%tl8320183234%_)))
                                        (let ((_%hd8320383241%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8320283237%_)))
                                              (_%tl8320483244%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8320283237%_))))
                                          (if (gx#stx-null? _%tl8320483244%_)
                                              ((lambda (_%L83247%_ _%L83249%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L83249%_
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
                                               (cons (cons _%L83247%_
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
                                               _%hd8320383241%_
                                               _%hd8320083231%_)
                                              (_%g8319283210%_
                                               _%g8319383214%_))))
                                      (_%g8319283210%_ _%g8319383214%_))))
                              (_%g8319283210%_ _%g8319383214%_))))
                      (_%g8319283210%_ _%g8319383214%_)))))
          (_%g8319183265%_ _%$stx83188%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx83269%_)
        (let* ((_%g8327383291%_
                (lambda (_%g8327483287%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8327483287%_)))
               (_%g8327283346%_
                (lambda (_%g8327483295%_)
                  (if (gx#stx-pair? _%g8327483295%_)
                      (let ((_%e8327783298%_ (gx#syntax-e _%g8327483295%_)))
                        (let ((_%hd8327883302%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8327783298%_)))
                              (_%tl8327983305%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8327783298%_))))
                          (if (gx#stx-pair? _%tl8327983305%_)
                              (let ((_%e8328083308%_
                                     (gx#syntax-e _%tl8327983305%_)))
                                (let ((_%hd8328183312%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8328083308%_)))
                                      (_%tl8328283315%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8328083308%_))))
                                  (if (gx#stx-pair? _%tl8328283315%_)
                                      (let ((_%e8328383318%_
                                             (gx#syntax-e _%tl8328283315%_)))
                                        (let ((_%hd8328483322%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8328383318%_)))
                                              (_%tl8328583325%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8328383318%_))))
                                          (if (gx#stx-null? _%tl8328583325%_)
                                              ((lambda (_%L83328%_ _%L83330%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L83330%_
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
                                               (cons (cons _%L83328%_
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
                                               _%hd8328483322%_
                                               _%hd8328183312%_)
                                              (_%g8327383291%_
                                               _%g8327483295%_))))
                                      (_%g8327383291%_ _%g8327483295%_))))
                              (_%g8327383291%_ _%g8327483295%_))))
                      (_%g8327383291%_ _%g8327483295%_)))))
          (_%g8327283346%_ _%$stx83269%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx83350%_)
        (let* ((_%g8335483365%_
                (lambda (_%g8335583361%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8335583361%_)))
               (_%g8335383394%_
                (lambda (_%g8335583369%_)
                  (if (gx#stx-pair? _%g8335583369%_)
                      (let ((_%e8335783372%_ (gx#syntax-e _%g8335583369%_)))
                        (let ((_%hd8335883376%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8335783372%_)))
                              (_%tl8335983379%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8335783372%_))))
                          ((lambda (_%L83382%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L83382%_)))
                           _%tl8335983379%_)))
                      (_%g8335483365%_ _%g8335583369%_)))))
          (_%g8335383394%_ _%$stx83350%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx83398%_)
        (let* ((_%__stx8935089351%_ _%$stx83398%_)
               (_%g8340983623%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8935089351%_))))
          (let ((_%__kont8935389354%_
                 (lambda (_%L84476%_
                          _%L84478%_
                          _%L84479%_
                          _%L84480%_
                          _%L84481%_)
                   (cons _%L84481%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8451184514%_
                                                     _%g8451284517%_)
                                              (cons _%g8451184514%_
                                                    _%g8451284517%_))
                                            '()
                                            _%L84479%_)
                                           (cons _%L84480%_
                                                 (cons _%L84478%_
                                                       (cons _%L84476%_
                                                             '())))))))))
                (_%__kont8935789358%_
                 (lambda (_%L84329%_ _%L84331%_ _%L84332%_ _%L84333%_)
                   (cons _%L84333%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8435684359%_
                                                     _%g8435784362%_)
                                              (cons _%g8435684359%_
                                                    _%g8435784362%_))
                                            '()
                                            _%L84331%_)
                                           (cons _%L84332%_
                                                 (cons _%L84329%_
                                                       (cons _%L84329%_
                                                             '())))))))))
                (_%__kont8936189362%_
                 (lambda (_%L84232%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L84232%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont8936389364%_
                 (lambda (_%L84155%_
                          _%L84157%_
                          _%L84158%_
                          _%L84159%_
                          _%L84160%_
                          _%L84161%_)
                   (cons _%L84161%_
                         (cons '2
                               (cons (cons (cons _%L84159%_
                                                 (cons _%L84158%_ '()))
                                           _%L84160%_)
                                     (cons _%L84157%_ _%L84155%_))))))
                (_%__kont8936589366%_
                 (lambda (_%L84036%_
                          _%L84038%_
                          _%L84039%_
                          _%L84040%_
                          _%L84041%_)
                   (cons _%L84041%_
                         (cons '2
                               (cons (cons (cons _%L84039%_
                                                 (cons _%L84039%_ '()))
                                           _%L84040%_)
                                     (cons _%L84038%_ _%L84036%_))))))
                (_%__kont8936789368%_
                 (lambda (_%L83953%_ _%L83955%_ _%L83956%_)
                   (cons _%L83956%_
                         (cons '3 (cons '() (cons _%L83955%_ _%L83953%_))))))
                (_%__kont8936989370%_
                 (lambda (_%L83874%_
                          _%L83876%_
                          _%L83877%_
                          _%L83878%_
                          _%L83879%_)
                   (cons _%L83879%_
                         (cons '3
                               (cons (cons _%L83877%_ _%L83878%_)
                                     (cons _%L83876%_ _%L83874%_))))))
                (_%__kont8937189372%_
                 (lambda (_%L83758%_
                          _%L83760%_
                          _%L83761%_
                          _%L83762%_
                          _%L83763%_
                          _%L83764%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L83761%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L83758%_ '())))
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
                                              (lambda (_%g8379883801%_
                                                       _%g8379983804%_)
                                                (cons _%g8379883801%_
                                                      _%g8379983804%_))
                                              '()
                                              _%L83763%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (__foldr1
                                              (lambda (_%g8379683807%_
                                                       _%g8379783810%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g8379683807%_ '())))
              _%g8379783810%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L83762%_))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L83760%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match8970189702%_
                    (lambda (_%e8357983630%_
                             _%hd8358083634%_
                             _%tl8358183637%_
                             _%e8358283640%_
                             _%hd8358383644%_
                             _%tl8358483647%_
                             _%e8358583650%_
                             _%e8358683654%_
                             _%hd8358783658%_
                             _%tl8358883661%_
                             _%__splice8937389374%_
                             _%target8358983664%_
                             _%tl8359183667%_)
                      (letrec ((_%loop8359283670%_
                                (lambda (_%hd8359083674%_
                                         _%exprs8359683677%_
                                         _%names8359783679%_)
                                  (if (gx#stx-pair? _%hd8359083674%_)
                                      (let ((_%e8359383682%_
                                             (gx#syntax-e _%hd8359083674%_)))
                                        (let ((_%lp-tl8359583689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8359383682%_)))
                                              (_%lp-hd8359483686%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8359383682%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd8359483686%_)
                                              (let ((_%e8361283692%_
                                                     (gx#syntax-e
                                                      _%lp-hd8359483686%_)))
                                                (let ((_%tl8361483699%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8361283692%_)))
                                                      (_%hd8361383696%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8361283692%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8361483699%_)
                                                      (let ((_%e8361583702%_
                                                             (gx#syntax-e
                                                              _%tl8361483699%_)))
                                                        (let ((_%tl8361783709%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8361583702%_)))
                      (_%hd8361683706%_
                       (let () (declare (not safe)) (##car _%e8361583702%_))))
                  (if (gx#stx-null? _%tl8361783709%_)
                      (_%loop8359283670%_
                       _%lp-tl8359583689%_
                       (cons _%hd8361683706%_ _%exprs8359683677%_)
                       (cons _%hd8361383696%_ _%names8359783679%_))
                      (let () (declare (not safe)) (_%g8340983623%_)))))
              (let () (declare (not safe)) (_%g8340983623%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g8340983623%_)))))
                                      (let ((_%names8359983715%_
                                             (reverse _%names8359783679%_))
                                            (_%exprs8359883712%_
                                             (reverse _%exprs8359683677%_)))
                                        (if (gx#stx-pair? _%tl8358883661%_)
                                            (let ((_%e8360083718%_
                                                   (gx#syntax-e
                                                    _%tl8358883661%_)))
                                              (let ((_%tl8360283725%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8360083718%_)))
                                                    (_%hd8360183722%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8360083718%_))))
                                                (if (gx#stx-null?
                                                     _%hd8360183722%_)
                                                    (if (gx#stx-pair?
                                                         _%tl8360283725%_)
                                                        (let ((_%e8360383728%_
                                                               (gx#syntax-e
                                                                _%tl8360283725%_)))
                                                          (let ((_%tl8360583735%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8360383728%_)))
                        (_%hd8360483732%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8360383728%_))))
                    (if (gx#stx-pair? _%tl8360583735%_)
                        (let ((_%e8360683738%_ (gx#syntax-e _%tl8360583735%_)))
                          (let ((_%tl8360883745%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8360683738%_)))
                                (_%hd8360783742%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8360683738%_))))
                            (if (gx#stx-pair? _%tl8360883745%_)
                                (let ((_%e8360983748%_
                                       (gx#syntax-e _%tl8360883745%_)))
                                  (let ((_%tl8361183755%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8360983748%_)))
                                        (_%hd8361083752%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8360983748%_))))
                                    (if (gx#stx-null? _%tl8361183755%_)
                                        (_%__kont8937189372%_
                                         _%hd8361083752%_
                                         _%hd8360783742%_
                                         _%hd8360483732%_
                                         _%exprs8359883712%_
                                         _%names8359983715%_
                                         _%hd8358083634%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8340983623%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8340983623%_)))))
                        (let () (declare (not safe)) (_%g8340983623%_)))))
                (let () (declare (not safe)) (_%g8340983623%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8340983623%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8340983623%_))))))))
                        (_%loop8359283670%_ _%target8358983664%_ '() '()))))
                   (_%__match8947989480%_
                    (lambda (_%e8345184255%_
                             _%hd8345284259%_
                             _%tl8345384262%_
                             _%e8345484265%_
                             _%hd8345584269%_
                             _%tl8345684272%_
                             _%e8345784275%_
                             _%e8345884279%_
                             _%hd8345984283%_
                             _%tl8346084286%_
                             _%__splice8935989360%_
                             _%target8346184289%_
                             _%tl8346384292%_
                             _%e8347084295%_
                             _%hd8347184299%_
                             _%tl8347284302%_)
                      (letrec ((_%loop8346484305%_
                                (lambda (_%hd8346284309%_ _%exprs8346884312%_)
                                  (if (gx#stx-pair? _%hd8346284309%_)
                                      (let ((_%e8346584315%_
                                             (gx#syntax-e _%hd8346284309%_)))
                                        (let ((_%lp-tl8346784322%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8346584315%_)))
                                              (_%lp-hd8346684319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8346584315%_))))
                                          (_%loop8346484305%_
                                           _%lp-tl8346784322%_
                                           (cons _%lp-hd8346684319%_
                                                 _%exprs8346884312%_))))
                                      (let ((_%exprs8346984325%_
                                             (reverse _%exprs8346884312%_)))
                                        (_%__kont8935789358%_
                                         _%hd8347184299%_
                                         _%exprs8346984325%_
                                         _%hd8345984283%_
                                         _%hd8345284259%_))))))
                        (_%loop8346484305%_ _%target8346184289%_ '()))))
                   (_%__match8943989440%_
                    (lambda (_%e8341684372%_
                             _%hd8341784376%_
                             _%tl8341884379%_
                             _%e8341984382%_
                             _%hd8342084386%_
                             _%tl8342184389%_
                             _%e8342284392%_
                             _%e8342384396%_
                             _%hd8342484400%_
                             _%tl8342584403%_
                             _%__splice8935589356%_
                             _%target8342684406%_
                             _%tl8342884409%_
                             _%e8343584412%_
                             _%hd8343684416%_
                             _%tl8343784419%_
                             _%e8343884422%_
                             _%hd8343984426%_
                             _%tl8344084429%_
                             _%e8344184432%_
                             _%hd8344284436%_
                             _%tl8344384439%_
                             _%e8344484442%_
                             _%hd8344584446%_
                             _%tl8344684449%_)
                      (letrec ((_%loop8342984452%_
                                (lambda (_%hd8342784456%_ _%exprs8343384459%_)
                                  (if (gx#stx-pair? _%hd8342784456%_)
                                      (let ((_%e8343084462%_
                                             (gx#syntax-e _%hd8342784456%_)))
                                        (let ((_%lp-tl8343284469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8343084462%_)))
                                              (_%lp-hd8343184466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8343084462%_))))
                                          (_%loop8342984452%_
                                           _%lp-tl8343284469%_
                                           (cons _%lp-hd8343184466%_
                                                 _%exprs8343384459%_))))
                                      (let ((_%exprs8343484472%_
                                             (reverse _%exprs8343384459%_)))
                                        (_%__kont8935389354%_
                                         _%hd8344584446%_
                                         _%hd8344284436%_
                                         _%exprs8343484472%_
                                         _%hd8342484400%_
                                         _%hd8341784376%_))))))
                        (_%loop8342984452%_ _%target8342684406%_ '())))))
              (if (gx#stx-pair? _%__stx8935089351%_)
                  (let ((_%e8341684372%_ (gx#syntax-e _%__stx8935089351%_)))
                    (let ((_%tl8341884379%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e8341684372%_)))
                          (_%hd8341784376%_
                           (let ()
                             (declare (not safe))
                             (##car _%e8341684372%_))))
                      (if (gx#stx-pair? _%tl8341884379%_)
                          (let ((_%e8341984382%_
                                 (gx#syntax-e _%tl8341884379%_)))
                            (let ((_%tl8342184389%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e8341984382%_)))
                                  (_%hd8342084386%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e8341984382%_))))
                              (if (gx#stx-datum? _%hd8342084386%_)
                                  (let ((_%e8342284392%_
                                         (gx#stx-e _%hd8342084386%_)))
                                    (if (equal? _%e8342284392%_ '1)
                                        (if (gx#stx-pair? _%tl8342184389%_)
                                            (let ((_%e8342384396%_
                                                   (gx#syntax-e
                                                    _%tl8342184389%_)))
                                              (let ((_%tl8342584403%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8342384396%_)))
                                                    (_%hd8342484400%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8342384396%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl8342584403%_)
                                                    (if (let ((__tmp89789
                                                               (gx#stx-length
                                                                _%tl8342584403%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp89789
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice8935589356%_
                       (gx#syntax-split-splice _%tl8342584403%_ '2)))
                  (let ((_%tl8342884409%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8935589356%_ '1)))
                        (_%target8342684406%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8935589356%_ '0))))
                    (if (gx#stx-pair? _%tl8342884409%_)
                        (let ((_%e8343584412%_ (gx#syntax-e _%tl8342884409%_)))
                          (let ((_%tl8343784419%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8343584412%_)))
                                (_%hd8343684416%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8343584412%_))))
                            (if (gx#stx-pair? _%hd8343684416%_)
                                (let ((_%e8343884422%_
                                       (gx#syntax-e _%hd8343684416%_)))
                                  (let ((_%tl8344084429%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8343884422%_)))
                                        (_%hd8343984426%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8343884422%_))))
                                    (if (gx#identifier? _%hd8343984426%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g89790_|
                                             _%hd8343984426%_)
                                            (if (gx#stx-pair? _%tl8344084429%_)
                                                (let ((_%e8344184432%_
                                                       (gx#syntax-e
                                                        _%tl8344084429%_)))
                                                  (let ((_%tl8344384439%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8344184432%_)))
                                                        (_%hd8344284436%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8344184432%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8344384439%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8343784419%_)
                                                            (let ((_%e8344484442%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8343784419%_)))
                      (let ((_%tl8344684449%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8344484442%_)))
                            (_%hd8344584446%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8344484442%_))))
                        (if (gx#stx-null? _%tl8344684449%_)
                            (_%__match8943989440%_
                             _%e8341684372%_
                             _%hd8341784376%_
                             _%tl8341884379%_
                             _%e8341984382%_
                             _%hd8342084386%_
                             _%tl8342184389%_
                             _%e8342284392%_
                             _%e8342384396%_
                             _%hd8342484400%_
                             _%tl8342584403%_
                             _%__splice8935589356%_
                             _%target8342684406%_
                             _%tl8342884409%_
                             _%e8343584412%_
                             _%hd8343684416%_
                             _%tl8343784419%_
                             _%e8343884422%_
                             _%hd8343984426%_
                             _%tl8344084429%_
                             _%e8344184432%_
                             _%hd8344284436%_
                             _%tl8344384439%_
                             _%e8344484442%_
                             _%hd8344584446%_
                             _%tl8344684449%_)
                            (if (let ((__tmp89791
                                       (gx#stx-length _%tl8342584403%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp89791 '1))
                                (let ((_%__splice8935989360%_
                                       (gx#syntax-split-splice
                                        _%tl8342584403%_
                                        '1)))
                                  (let ((_%tl8346384292%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8935989360%_
                                            '1)))
                                        (_%target8346184289%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8935989360%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl8346384292%_)
                                        (let ((_%e8347084295%_
                                               (gx#syntax-e _%tl8346384292%_)))
                                          (let ((_%tl8347284302%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e8347084295%_)))
                                                (_%hd8347184299%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e8347084295%_))))
                                            (if (gx#stx-null? _%tl8347284302%_)
                                                (_%__match8947989480%_
                                                 _%e8341684372%_
                                                 _%hd8341784376%_
                                                 _%tl8341884379%_
                                                 _%e8341984382%_
                                                 _%hd8342084386%_
                                                 _%tl8342184389%_
                                                 _%e8342284392%_
                                                 _%e8342384396%_
                                                 _%hd8342484400%_
                                                 _%tl8342584403%_
                                                 _%__splice8935989360%_
                                                 _%target8346184289%_
                                                 _%tl8346384292%_
                                                 _%e8347084295%_
                                                 _%hd8347184299%_
                                                 _%tl8347284302%_)
                                                (if (gx#stx-null?
                                                     _%tl8342584403%_)
                                                    (_%__kont8936189362%_
                                                     _%hd8342484400%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8340983623%_))))))
                                        (if (gx#stx-null? _%tl8342584403%_)
                                            (_%__kont8936189362%_
                                             _%hd8342484400%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8340983623%_))))))
                                (if (gx#stx-null? _%tl8342584403%_)
                                    (_%__kont8936189362%_ _%hd8342484400%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8340983623%_)))))))
                    (if (let ((__tmp89792 (gx#stx-length _%tl8342584403%_)))
                          (declare (not safe))
                          (##fx>= __tmp89792 '1))
                        (let ((_%__splice8935989360%_
                               (gx#syntax-split-splice _%tl8342584403%_ '1)))
                          (let ((_%tl8346384292%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8935989360%_ '1)))
                                (_%target8346184289%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8935989360%_ '0))))
                            (if (gx#stx-pair? _%tl8346384292%_)
                                (let ((_%e8347084295%_
                                       (gx#syntax-e _%tl8346384292%_)))
                                  (let ((_%tl8347284302%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8347084295%_)))
                                        (_%hd8347184299%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8347084295%_))))
                                    (if (gx#stx-null? _%tl8347284302%_)
                                        (_%__match8947989480%_
                                         _%e8341684372%_
                                         _%hd8341784376%_
                                         _%tl8341884379%_
                                         _%e8341984382%_
                                         _%hd8342084386%_
                                         _%tl8342184389%_
                                         _%e8342284392%_
                                         _%e8342384396%_
                                         _%hd8342484400%_
                                         _%tl8342584403%_
                                         _%__splice8935989360%_
                                         _%target8346184289%_
                                         _%tl8346384292%_
                                         _%e8347084295%_
                                         _%hd8347184299%_
                                         _%tl8347284302%_)
                                        (if (gx#stx-null? _%tl8342584403%_)
                                            (_%__kont8936189362%_
                                             _%hd8342484400%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8340983623%_))))))
                                (if (gx#stx-null? _%tl8342584403%_)
                                    (_%__kont8936189362%_ _%hd8342484400%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8340983623%_))))))
                        (if (gx#stx-null? _%tl8342584403%_)
                            (_%__kont8936189362%_ _%hd8342484400%_)
                            (let () (declare (not safe)) (_%g8340983623%_)))))
                (if (let ((__tmp89793 (gx#stx-length _%tl8342584403%_)))
                      (declare (not safe))
                      (##fx>= __tmp89793 '1))
                    (let ((_%__splice8935989360%_
                           (gx#syntax-split-splice _%tl8342584403%_ '1)))
                      (let ((_%tl8346384292%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8935989360%_ '1)))
                            (_%target8346184289%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8935989360%_ '0))))
                        (if (gx#stx-pair? _%tl8346384292%_)
                            (let ((_%e8347084295%_
                                   (gx#syntax-e _%tl8346384292%_)))
                              (let ((_%tl8347284302%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8347084295%_)))
                                    (_%hd8347184299%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8347084295%_))))
                                (if (gx#stx-null? _%tl8347284302%_)
                                    (_%__match8947989480%_
                                     _%e8341684372%_
                                     _%hd8341784376%_
                                     _%tl8341884379%_
                                     _%e8341984382%_
                                     _%hd8342084386%_
                                     _%tl8342184389%_
                                     _%e8342284392%_
                                     _%e8342384396%_
                                     _%hd8342484400%_
                                     _%tl8342584403%_
                                     _%__splice8935989360%_
                                     _%target8346184289%_
                                     _%tl8346384292%_
                                     _%e8347084295%_
                                     _%hd8347184299%_
                                     _%tl8347284302%_)
                                    (if (gx#stx-null? _%tl8342584403%_)
                                        (_%__kont8936189362%_ _%hd8342484400%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8340983623%_))))))
                            (if (gx#stx-null? _%tl8342584403%_)
                                (_%__kont8936189362%_ _%hd8342484400%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8340983623%_))))))
                    (if (gx#stx-null? _%tl8342584403%_)
                        (_%__kont8936189362%_ _%hd8342484400%_)
                        (let () (declare (not safe)) (_%g8340983623%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp89794
                                                           (gx#stx-length
                                                            _%tl8342584403%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp89794 '1))
                                                    (let ((_%__splice8935989360%_
                                                           (gx#syntax-split-splice
                                                            _%tl8342584403%_
                                                            '1)))
                                                      (let ((_%tl8346384292%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8935989360%_ '1)))
                    (_%target8346184289%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8935989360%_ '0))))
                (if (gx#stx-pair? _%tl8346384292%_)
                    (let ((_%e8347084295%_ (gx#syntax-e _%tl8346384292%_)))
                      (let ((_%tl8347284302%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8347084295%_)))
                            (_%hd8347184299%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8347084295%_))))
                        (if (gx#stx-null? _%tl8347284302%_)
                            (_%__match8947989480%_
                             _%e8341684372%_
                             _%hd8341784376%_
                             _%tl8341884379%_
                             _%e8341984382%_
                             _%hd8342084386%_
                             _%tl8342184389%_
                             _%e8342284392%_
                             _%e8342384396%_
                             _%hd8342484400%_
                             _%tl8342584403%_
                             _%__splice8935989360%_
                             _%target8346184289%_
                             _%tl8346384292%_
                             _%e8347084295%_
                             _%hd8347184299%_
                             _%tl8347284302%_)
                            (if (gx#stx-null? _%tl8342584403%_)
                                (_%__kont8936189362%_ _%hd8342484400%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8340983623%_))))))
                    (if (gx#stx-null? _%tl8342584403%_)
                        (_%__kont8936189362%_ _%hd8342484400%_)
                        (let () (declare (not safe)) (_%g8340983623%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8342584403%_)
                                                        (_%__kont8936189362%_
                                                         _%hd8342484400%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8340983623%_)))))
                                            (if (let ((__tmp89795
                                                       (gx#stx-length
                                                        _%tl8342584403%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp89795 '1))
                                                (let ((_%__splice8935989360%_
                                                       (gx#syntax-split-splice
                                                        _%tl8342584403%_
                                                        '1)))
                                                  (let ((_%tl8346384292%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8935989360%_
                                                            '1)))
                                                        (_%target8346184289%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8935989360%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl8346384292%_)
                                                        (let ((_%e8347084295%_
                                                               (gx#syntax-e
                                                                _%tl8346384292%_)))
                                                          (let ((_%tl8347284302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8347084295%_)))
                        (_%hd8347184299%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8347084295%_))))
                    (if (gx#stx-null? _%tl8347284302%_)
                        (_%__match8947989480%_
                         _%e8341684372%_
                         _%hd8341784376%_
                         _%tl8341884379%_
                         _%e8341984382%_
                         _%hd8342084386%_
                         _%tl8342184389%_
                         _%e8342284392%_
                         _%e8342384396%_
                         _%hd8342484400%_
                         _%tl8342584403%_
                         _%__splice8935989360%_
                         _%target8346184289%_
                         _%tl8346384292%_
                         _%e8347084295%_
                         _%hd8347184299%_
                         _%tl8347284302%_)
                        (if (gx#stx-null? _%tl8342584403%_)
                            (_%__kont8936189362%_ _%hd8342484400%_)
                            (let () (declare (not safe)) (_%g8340983623%_))))))
                (if (gx#stx-null? _%tl8342584403%_)
                    (_%__kont8936189362%_ _%hd8342484400%_)
                    (let () (declare (not safe)) (_%g8340983623%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl8342584403%_)
                                                    (_%__kont8936189362%_
                                                     _%hd8342484400%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8340983623%_)))))
                                        (if (let ((__tmp89796
                                                   (gx#stx-length
                                                    _%tl8342584403%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp89796 '1))
                                            (let ((_%__splice8935989360%_
                                                   (gx#syntax-split-splice
                                                    _%tl8342584403%_
                                                    '1)))
                                              (let ((_%tl8346384292%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8935989360%_
                                                        '1)))
                                                    (_%target8346184289%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8935989360%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl8346384292%_)
                                                    (let ((_%e8347084295%_
                                                           (gx#syntax-e
                                                            _%tl8346384292%_)))
                                                      (let ((_%tl8347284302%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8347084295%_)))
                    (_%hd8347184299%_
                     (let () (declare (not safe)) (##car _%e8347084295%_))))
                (if (gx#stx-null? _%tl8347284302%_)
                    (_%__match8947989480%_
                     _%e8341684372%_
                     _%hd8341784376%_
                     _%tl8341884379%_
                     _%e8341984382%_
                     _%hd8342084386%_
                     _%tl8342184389%_
                     _%e8342284392%_
                     _%e8342384396%_
                     _%hd8342484400%_
                     _%tl8342584403%_
                     _%__splice8935989360%_
                     _%target8346184289%_
                     _%tl8346384292%_
                     _%e8347084295%_
                     _%hd8347184299%_
                     _%tl8347284302%_)
                    (if (gx#stx-null? _%tl8342584403%_)
                        (_%__kont8936189362%_ _%hd8342484400%_)
                        (let () (declare (not safe)) (_%g8340983623%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8342584403%_)
                                                        (_%__kont8936189362%_
                                                         _%hd8342484400%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8340983623%_))))))
                                            (if (gx#stx-null? _%tl8342584403%_)
                                                (_%__kont8936189362%_
                                                 _%hd8342484400%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8340983623%_)))))))
                                (if (let ((__tmp89797
                                           (gx#stx-length _%tl8342584403%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp89797 '1))
                                    (let ((_%__splice8935989360%_
                                           (gx#syntax-split-splice
                                            _%tl8342584403%_
                                            '1)))
                                      (let ((_%tl8346384292%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8935989360%_
                                                '1)))
                                            (_%target8346184289%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8935989360%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl8346384292%_)
                                            (let ((_%e8347084295%_
                                                   (gx#syntax-e
                                                    _%tl8346384292%_)))
                                              (let ((_%tl8347284302%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8347084295%_)))
                                                    (_%hd8347184299%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8347084295%_))))
                                                (if (gx#stx-null?
                                                     _%tl8347284302%_)
                                                    (_%__match8947989480%_
                                                     _%e8341684372%_
                                                     _%hd8341784376%_
                                                     _%tl8341884379%_
                                                     _%e8341984382%_
                                                     _%hd8342084386%_
                                                     _%tl8342184389%_
                                                     _%e8342284392%_
                                                     _%e8342384396%_
                                                     _%hd8342484400%_
                                                     _%tl8342584403%_
                                                     _%__splice8935989360%_
                                                     _%target8346184289%_
                                                     _%tl8346384292%_
                                                     _%e8347084295%_
                                                     _%hd8347184299%_
                                                     _%tl8347284302%_)
                                                    (if (gx#stx-null?
                                                         _%tl8342584403%_)
                                                        (_%__kont8936189362%_
                                                         _%hd8342484400%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8340983623%_))))))
                                            (if (gx#stx-null? _%tl8342584403%_)
                                                (_%__kont8936189362%_
                                                 _%hd8342484400%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8340983623%_))))))
                                    (if (gx#stx-null? _%tl8342584403%_)
                                        (_%__kont8936189362%_ _%hd8342484400%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8340983623%_)))))))
                        (if (let ((__tmp89798
                                   (gx#stx-length _%tl8342584403%_)))
                              (declare (not safe))
                              (##fx>= __tmp89798 '1))
                            (let ((_%__splice8935989360%_
                                   (gx#syntax-split-splice
                                    _%tl8342584403%_
                                    '1)))
                              (let ((_%tl8346384292%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8935989360%_
                                        '1)))
                                    (_%target8346184289%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8935989360%_
                                        '0))))
                                (if (gx#stx-pair? _%tl8346384292%_)
                                    (let ((_%e8347084295%_
                                           (gx#syntax-e _%tl8346384292%_)))
                                      (let ((_%tl8347284302%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8347084295%_)))
                                            (_%hd8347184299%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8347084295%_))))
                                        (if (gx#stx-null? _%tl8347284302%_)
                                            (_%__match8947989480%_
                                             _%e8341684372%_
                                             _%hd8341784376%_
                                             _%tl8341884379%_
                                             _%e8341984382%_
                                             _%hd8342084386%_
                                             _%tl8342184389%_
                                             _%e8342284392%_
                                             _%e8342384396%_
                                             _%hd8342484400%_
                                             _%tl8342584403%_
                                             _%__splice8935989360%_
                                             _%target8346184289%_
                                             _%tl8346384292%_
                                             _%e8347084295%_
                                             _%hd8347184299%_
                                             _%tl8347284302%_)
                                            (if (gx#stx-null? _%tl8342584403%_)
                                                (_%__kont8936189362%_
                                                 _%hd8342484400%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8340983623%_))))))
                                    (if (gx#stx-null? _%tl8342584403%_)
                                        (_%__kont8936189362%_ _%hd8342484400%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8340983623%_))))))
                            (if (gx#stx-null? _%tl8342584403%_)
                                (_%__kont8936189362%_ _%hd8342484400%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8340983623%_)))))))
                (if (let ((__tmp89799 (gx#stx-length _%tl8342584403%_)))
                      (declare (not safe))
                      (##fx>= __tmp89799 '1))
                    (let ((_%__splice8935989360%_
                           (gx#syntax-split-splice _%tl8342584403%_ '1)))
                      (let ((_%tl8346384292%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8935989360%_ '1)))
                            (_%target8346184289%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8935989360%_ '0))))
                        (if (gx#stx-pair? _%tl8346384292%_)
                            (let ((_%e8347084295%_
                                   (gx#syntax-e _%tl8346384292%_)))
                              (let ((_%tl8347284302%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8347084295%_)))
                                    (_%hd8347184299%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8347084295%_))))
                                (if (gx#stx-null? _%tl8347284302%_)
                                    (_%__match8947989480%_
                                     _%e8341684372%_
                                     _%hd8341784376%_
                                     _%tl8341884379%_
                                     _%e8341984382%_
                                     _%hd8342084386%_
                                     _%tl8342184389%_
                                     _%e8342284392%_
                                     _%e8342384396%_
                                     _%hd8342484400%_
                                     _%tl8342584403%_
                                     _%__splice8935989360%_
                                     _%target8346184289%_
                                     _%tl8346384292%_
                                     _%e8347084295%_
                                     _%hd8347184299%_
                                     _%tl8347284302%_)
                                    (if (gx#stx-null? _%tl8342584403%_)
                                        (_%__kont8936189362%_ _%hd8342484400%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8340983623%_))))))
                            (if (gx#stx-null? _%tl8342584403%_)
                                (_%__kont8936189362%_ _%hd8342484400%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8340983623%_))))))
                    (if (gx#stx-null? _%tl8342584403%_)
                        (_%__kont8936189362%_ _%hd8342484400%_)
                        (let () (declare (not safe)) (_%g8340983623%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8342584403%_)
                                                        (_%__kont8936189362%_
                                                         _%hd8342484400%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8340983623%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8340983623%_)))
                                        (if (equal? _%e8342284392%_ '2)
                                            (if (gx#stx-pair? _%tl8342184389%_)
                                                (let ((_%e8349784095%_
                                                       (gx#syntax-e
                                                        _%tl8342184389%_)))
                                                  (let ((_%tl8349984102%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8349784095%_)))
                                                        (_%hd8349884099%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8349784095%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl8349984102%_)
                                                        (let ((_%e8350084105%_
                                                               (gx#syntax-e
                                                                _%tl8349984102%_)))
                                                          (let ((_%tl8350284112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8350084105%_)))
                        (_%hd8350184109%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8350084105%_))))
                    (if (gx#stx-pair? _%hd8350184109%_)
                        (let ((_%e8350384115%_ (gx#syntax-e _%hd8350184109%_)))
                          (let ((_%tl8350584122%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8350384115%_)))
                                (_%hd8350484119%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8350384115%_))))
                            (if (gx#stx-pair? _%hd8350484119%_)
                                (let ((_%e8350684125%_
                                       (gx#syntax-e _%hd8350484119%_)))
                                  (let ((_%tl8350884132%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8350684125%_)))
                                        (_%hd8350784129%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8350684125%_))))
                                    (if (gx#identifier? _%hd8350784129%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g89800_|
                                             _%hd8350784129%_)
                                            (if (gx#stx-pair? _%tl8350884132%_)
                                                (let ((_%e8350984135%_
                                                       (gx#syntax-e
                                                        _%tl8350884132%_)))
                                                  (let ((_%tl8351184142%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8350984135%_)))
                                                        (_%hd8351084139%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8350984135%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8351184142%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8350584122%_)
                                                            (let ((_%e8351284145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8350584122%_)))
                      (let ((_%tl8351484152%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8351284145%_)))
                            (_%hd8351384149%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8351284145%_))))
                        (_%__kont8936389364%_
                         _%tl8350284112%_
                         _%tl8351484152%_
                         _%hd8351384149%_
                         _%hd8351084139%_
                         _%hd8349884099%_
                         _%hd8341784376%_)))
                    (_%__kont8936589366%_
                     _%tl8350284112%_
                     _%tl8350584122%_
                     _%hd8350484119%_
                     _%hd8349884099%_
                     _%hd8341784376%_))
                (_%__kont8936589366%_
                 _%tl8350284112%_
                 _%tl8350584122%_
                 _%hd8350484119%_
                 _%hd8349884099%_
                 _%hd8341784376%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont8936589366%_
                                                 _%tl8350284112%_
                                                 _%tl8350584122%_
                                                 _%hd8350484119%_
                                                 _%hd8349884099%_
                                                 _%hd8341784376%_))
                                            (_%__kont8936589366%_
                                             _%tl8350284112%_
                                             _%tl8350584122%_
                                             _%hd8350484119%_
                                             _%hd8349884099%_
                                             _%hd8341784376%_))
                                        (_%__kont8936589366%_
                                         _%tl8350284112%_
                                         _%tl8350584122%_
                                         _%hd8350484119%_
                                         _%hd8349884099%_
                                         _%hd8341784376%_))))
                                (_%__kont8936589366%_
                                 _%tl8350284112%_
                                 _%tl8350584122%_
                                 _%hd8350484119%_
                                 _%hd8349884099%_
                                 _%hd8341784376%_))))
                        (if (gx#stx-null? _%hd8350184109%_)
                            (_%__kont8936789368%_
                             _%tl8350284112%_
                             _%hd8349884099%_
                             _%hd8341784376%_)
                            (let () (declare (not safe)) (_%g8340983623%_))))))
                (let () (declare (not safe)) (_%g8340983623%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8340983623%_)))
                                            (if (equal? _%e8342284392%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl8342184389%_)
                                                    (let ((_%e8356483844%_
                                                           (gx#syntax-e
                                                            _%tl8342184389%_)))
                                                      (let ((_%tl8356683851%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8356483844%_)))
                    (_%hd8356583848%_
                     (let () (declare (not safe)) (##car _%e8356483844%_))))
                (if (gx#stx-pair? _%tl8356683851%_)
                    (let ((_%e8356783854%_ (gx#syntax-e _%tl8356683851%_)))
                      (let ((_%tl8356983861%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8356783854%_)))
                            (_%hd8356883858%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8356783854%_))))
                        (if (gx#stx-pair? _%hd8356883858%_)
                            (let ((_%e8357083864%_
                                   (gx#syntax-e _%hd8356883858%_)))
                              (let ((_%tl8357283871%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8357083864%_)))
                                    (_%hd8357183868%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8357083864%_))))
                                (_%__kont8936989370%_
                                 _%tl8356983861%_
                                 _%tl8357283871%_
                                 _%hd8357183868%_
                                 _%hd8356583848%_
                                 _%hd8341784376%_)))
                            (if (gx#stx-pair/null? _%hd8356583848%_)
                                (let ((_%__splice8937389374%_
                                       (gx#syntax-split-splice
                                        _%hd8356583848%_
                                        '0)))
                                  (let ((_%tl8359183667%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8937389374%_
                                            '1)))
                                        (_%target8358983664%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8937389374%_
                                            '0))))
                                    (if (gx#stx-null? _%tl8359183667%_)
                                        (_%__match8970189702%_
                                         _%e8341684372%_
                                         _%hd8341784376%_
                                         _%tl8341884379%_
                                         _%e8341984382%_
                                         _%hd8342084386%_
                                         _%tl8342184389%_
                                         _%e8342284392%_
                                         _%e8356483844%_
                                         _%hd8356583848%_
                                         _%tl8356683851%_
                                         _%__splice8937389374%_
                                         _%target8358983664%_
                                         _%tl8359183667%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8340983623%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8340983623%_))))))
                    (if (gx#stx-pair/null? _%hd8356583848%_)
                        (let ((_%__splice8937389374%_
                               (gx#syntax-split-splice _%hd8356583848%_ '0)))
                          (let ((_%tl8359183667%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8937389374%_ '1)))
                                (_%target8358983664%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8937389374%_ '0))))
                            (if (gx#stx-null? _%tl8359183667%_)
                                (_%__match8970189702%_
                                 _%e8341684372%_
                                 _%hd8341784376%_
                                 _%tl8341884379%_
                                 _%e8341984382%_
                                 _%hd8342084386%_
                                 _%tl8342184389%_
                                 _%e8342284392%_
                                 _%e8356483844%_
                                 _%hd8356583848%_
                                 _%tl8356683851%_
                                 _%__splice8937389374%_
                                 _%target8358983664%_
                                 _%tl8359183667%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8340983623%_)))))
                        (let () (declare (not safe)) (_%g8340983623%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8340983623%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8340983623%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g8340983623%_)))))
                          (let () (declare (not safe)) (_%g8340983623%_)))))
                  (let () (declare (not safe)) (_%g8340983623%_))))))))))
