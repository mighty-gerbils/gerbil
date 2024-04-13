(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g89792_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g89802_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx82858%_)
        (let* ((_%g8286282880%_
                (lambda (_%g8286382876%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8286382876%_)))
               (_%g8286182936%_
                (lambda (_%g8286382884%_)
                  (if (gx#stx-pair? _%g8286382884%_)
                      (let ((_%e8286682887%_ (gx#syntax-e _%g8286382884%_)))
                        (let ((_%hd8286782891%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8286682887%_)))
                              (_%tl8286882894%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8286682887%_))))
                          (if (gx#stx-pair? _%tl8286882894%_)
                              (let ((_%e8286982897%_
                                     (gx#syntax-e _%tl8286882894%_)))
                                (let ((_%hd8287082901%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8286982897%_)))
                                      (_%tl8287182904%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8286982897%_))))
                                  (if (gx#stx-pair? _%tl8287182904%_)
                                      (let ((_%e8287282907%_
                                             (gx#syntax-e _%tl8287182904%_)))
                                        (let ((_%hd8287382911%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8287282907%_)))
                                              (_%tl8287482914%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8287282907%_))))
                                          (if (gx#stx-null? _%tl8287482914%_)
                                              ((lambda (_%L82917%_ _%L82919%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L82919%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L82917%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8287382911%_
                                               _%hd8287082901%_)
                                              (_%g8286282880%_
                                               _%g8286382884%_))))
                                      (_%g8286282880%_ _%g8286382884%_))))
                              (_%g8286282880%_ _%g8286382884%_))))
                      (_%g8286282880%_ _%g8286382884%_)))))
          (_%g8286182936%_ _%$stx82858%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx82940%_)
        (let* ((_%g8294482958%_
                (lambda (_%g8294582954%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8294582954%_)))
               (_%g8294382999%_
                (lambda (_%g8294582962%_)
                  (if (gx#stx-pair? _%g8294582962%_)
                      (let ((_%e8294782965%_ (gx#syntax-e _%g8294582962%_)))
                        (let ((_%hd8294882969%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8294782965%_)))
                              (_%tl8294982972%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8294782965%_))))
                          (if (gx#stx-pair? _%tl8294982972%_)
                              (let ((_%e8295082975%_
                                     (gx#syntax-e _%tl8294982972%_)))
                                (let ((_%hd8295182979%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8295082975%_)))
                                      (_%tl8295282982%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8295082975%_))))
                                  (if (gx#stx-null? _%tl8295282982%_)
                                      ((lambda (_%L82985%_)
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
                                       (cons _%L82985%_
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
                                       _%hd8295182979%_)
                                      (_%g8294482958%_ _%g8294582962%_))))
                              (_%g8294482958%_ _%g8294582962%_))))
                      (_%g8294482958%_ _%g8294582962%_)))))
          (_%g8294382999%_ _%$stx82940%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx83003%_)
        (let* ((_%g8300783021%_
                (lambda (_%g8300883017%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8300883017%_)))
               (_%g8300683062%_
                (lambda (_%g8300883025%_)
                  (if (gx#stx-pair? _%g8300883025%_)
                      (let ((_%e8301083028%_ (gx#syntax-e _%g8300883025%_)))
                        (let ((_%hd8301183032%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8301083028%_)))
                              (_%tl8301283035%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8301083028%_))))
                          (if (gx#stx-pair? _%tl8301283035%_)
                              (let ((_%e8301383038%_
                                     (gx#syntax-e _%tl8301283035%_)))
                                (let ((_%hd8301483042%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8301383038%_)))
                                      (_%tl8301583045%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8301383038%_))))
                                  (if (gx#stx-null? _%tl8301583045%_)
                                      ((lambda (_%L83048%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L83048%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd8301483042%_)
                                      (_%g8300783021%_ _%g8300883025%_))))
                              (_%g8300783021%_ _%g8300883025%_))))
                      (_%g8300783021%_ _%g8300883025%_)))))
          (_%g8300683062%_ _%$stx83003%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx83066%_)
        (let* ((_%g8307083080%_
                (lambda (_%g8307183076%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8307183076%_)))
               (_%g8306983101%_
                (lambda (_%g8307183084%_)
                  (if (gx#stx-pair? _%g8307183084%_)
                      (let ((_%e8307283087%_ (gx#syntax-e _%g8307183084%_)))
                        (let ((_%hd8307383091%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8307283087%_)))
                              (_%tl8307483094%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8307283087%_))))
                          (if (gx#stx-null? _%tl8307483094%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g8307083080%_ _%g8307183084%_))))
                      (_%g8307083080%_ _%g8307183084%_)))))
          (_%g8306983101%_ _%$stx83066%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx83105%_)
        (let* ((_%g8310983127%_
                (lambda (_%g8311083123%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8311083123%_)))
               (_%g8310883182%_
                (lambda (_%g8311083131%_)
                  (if (gx#stx-pair? _%g8311083131%_)
                      (let ((_%e8311383134%_ (gx#syntax-e _%g8311083131%_)))
                        (let ((_%hd8311483138%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8311383134%_)))
                              (_%tl8311583141%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8311383134%_))))
                          (if (gx#stx-pair? _%tl8311583141%_)
                              (let ((_%e8311683144%_
                                     (gx#syntax-e _%tl8311583141%_)))
                                (let ((_%hd8311783148%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8311683144%_)))
                                      (_%tl8311883151%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8311683144%_))))
                                  (if (gx#stx-pair? _%tl8311883151%_)
                                      (let ((_%e8311983154%_
                                             (gx#syntax-e _%tl8311883151%_)))
                                        (let ((_%hd8312083158%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8311983154%_)))
                                              (_%tl8312183161%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8311983154%_))))
                                          (if (gx#stx-null? _%tl8312183161%_)
                                              ((lambda (_%L83164%_ _%L83166%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L83166%_
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
                 (cons (cons _%L83164%_
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
                                               _%hd8312083158%_
                                               _%hd8311783148%_)
                                              (_%g8310983127%_
                                               _%g8311083131%_))))
                                      (_%g8310983127%_ _%g8311083131%_))))
                              (_%g8310983127%_ _%g8311083131%_))))
                      (_%g8310983127%_ _%g8311083131%_)))))
          (_%g8310883182%_ _%$stx83105%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx83186%_)
        (let* ((_%g8319083208%_
                (lambda (_%g8319183204%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8319183204%_)))
               (_%g8318983263%_
                (lambda (_%g8319183212%_)
                  (if (gx#stx-pair? _%g8319183212%_)
                      (let ((_%e8319483215%_ (gx#syntax-e _%g8319183212%_)))
                        (let ((_%hd8319583219%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8319483215%_)))
                              (_%tl8319683222%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8319483215%_))))
                          (if (gx#stx-pair? _%tl8319683222%_)
                              (let ((_%e8319783225%_
                                     (gx#syntax-e _%tl8319683222%_)))
                                (let ((_%hd8319883229%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8319783225%_)))
                                      (_%tl8319983232%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8319783225%_))))
                                  (if (gx#stx-pair? _%tl8319983232%_)
                                      (let ((_%e8320083235%_
                                             (gx#syntax-e _%tl8319983232%_)))
                                        (let ((_%hd8320183239%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8320083235%_)))
                                              (_%tl8320283242%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8320083235%_))))
                                          (if (gx#stx-null? _%tl8320283242%_)
                                              ((lambda (_%L83245%_ _%L83247%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L83247%_
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
                                               (cons (cons _%L83245%_
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
                                               _%hd8320183239%_
                                               _%hd8319883229%_)
                                              (_%g8319083208%_
                                               _%g8319183212%_))))
                                      (_%g8319083208%_ _%g8319183212%_))))
                              (_%g8319083208%_ _%g8319183212%_))))
                      (_%g8319083208%_ _%g8319183212%_)))))
          (_%g8318983263%_ _%$stx83186%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx83267%_)
        (let* ((_%g8327183289%_
                (lambda (_%g8327283285%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8327283285%_)))
               (_%g8327083344%_
                (lambda (_%g8327283293%_)
                  (if (gx#stx-pair? _%g8327283293%_)
                      (let ((_%e8327583296%_ (gx#syntax-e _%g8327283293%_)))
                        (let ((_%hd8327683300%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8327583296%_)))
                              (_%tl8327783303%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8327583296%_))))
                          (if (gx#stx-pair? _%tl8327783303%_)
                              (let ((_%e8327883306%_
                                     (gx#syntax-e _%tl8327783303%_)))
                                (let ((_%hd8327983310%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8327883306%_)))
                                      (_%tl8328083313%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8327883306%_))))
                                  (if (gx#stx-pair? _%tl8328083313%_)
                                      (let ((_%e8328183316%_
                                             (gx#syntax-e _%tl8328083313%_)))
                                        (let ((_%hd8328283320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8328183316%_)))
                                              (_%tl8328383323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8328183316%_))))
                                          (if (gx#stx-null? _%tl8328383323%_)
                                              ((lambda (_%L83326%_ _%L83328%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L83328%_
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
                                               (cons (cons _%L83326%_
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
                                               _%hd8328283320%_
                                               _%hd8327983310%_)
                                              (_%g8327183289%_
                                               _%g8327283293%_))))
                                      (_%g8327183289%_ _%g8327283293%_))))
                              (_%g8327183289%_ _%g8327283293%_))))
                      (_%g8327183289%_ _%g8327283293%_)))))
          (_%g8327083344%_ _%$stx83267%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx83348%_)
        (let* ((_%g8335283363%_
                (lambda (_%g8335383359%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8335383359%_)))
               (_%g8335183392%_
                (lambda (_%g8335383367%_)
                  (if (gx#stx-pair? _%g8335383367%_)
                      (let ((_%e8335583370%_ (gx#syntax-e _%g8335383367%_)))
                        (let ((_%hd8335683374%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8335583370%_)))
                              (_%tl8335783377%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8335583370%_))))
                          ((lambda (_%L83380%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L83380%_)))
                           _%tl8335783377%_)))
                      (_%g8335283363%_ _%g8335383367%_)))))
          (_%g8335183392%_ _%$stx83348%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx83396%_)
        (let* ((_%__stx8934889349%_ _%$stx83396%_)
               (_%g8340783621%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8934889349%_))))
          (let ((_%__kont8935189352%_
                 (lambda (_%L84474%_
                          _%L84476%_
                          _%L84477%_
                          _%L84478%_
                          _%L84479%_)
                   (cons _%L84479%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8450984512%_
                                                     _%g8451084515%_)
                                              (cons _%g8450984512%_
                                                    _%g8451084515%_))
                                            '()
                                            _%L84477%_)
                                           (cons _%L84478%_
                                                 (cons _%L84476%_
                                                       (cons _%L84474%_
                                                             '())))))))))
                (_%__kont8935589356%_
                 (lambda (_%L84327%_ _%L84329%_ _%L84330%_ _%L84331%_)
                   (cons _%L84331%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8435484357%_
                                                     _%g8435584360%_)
                                              (cons _%g8435484357%_
                                                    _%g8435584360%_))
                                            '()
                                            _%L84329%_)
                                           (cons _%L84330%_
                                                 (cons _%L84327%_
                                                       (cons _%L84327%_
                                                             '())))))))))
                (_%__kont8935989360%_
                 (lambda (_%L84230%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L84230%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont8936189362%_
                 (lambda (_%L84153%_
                          _%L84155%_
                          _%L84156%_
                          _%L84157%_
                          _%L84158%_
                          _%L84159%_)
                   (cons _%L84159%_
                         (cons '2
                               (cons (cons (cons _%L84157%_
                                                 (cons _%L84156%_ '()))
                                           _%L84158%_)
                                     (cons _%L84155%_ _%L84153%_))))))
                (_%__kont8936389364%_
                 (lambda (_%L84034%_
                          _%L84036%_
                          _%L84037%_
                          _%L84038%_
                          _%L84039%_)
                   (cons _%L84039%_
                         (cons '2
                               (cons (cons (cons _%L84037%_
                                                 (cons _%L84037%_ '()))
                                           _%L84038%_)
                                     (cons _%L84036%_ _%L84034%_))))))
                (_%__kont8936589366%_
                 (lambda (_%L83951%_ _%L83953%_ _%L83954%_)
                   (cons _%L83954%_
                         (cons '3 (cons '() (cons _%L83953%_ _%L83951%_))))))
                (_%__kont8936789368%_
                 (lambda (_%L83872%_
                          _%L83874%_
                          _%L83875%_
                          _%L83876%_
                          _%L83877%_)
                   (cons _%L83877%_
                         (cons '3
                               (cons (cons _%L83875%_ _%L83876%_)
                                     (cons _%L83874%_ _%L83872%_))))))
                (_%__kont8936989370%_
                 (lambda (_%L83756%_
                          _%L83758%_
                          _%L83759%_
                          _%L83760%_
                          _%L83761%_
                          _%L83762%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L83759%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L83756%_ '())))
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
                                              (lambda (_%g8379683799%_
                                                       _%g8379783802%_)
                                                (cons _%g8379683799%_
                                                      _%g8379783802%_))
                                              '()
                                              _%L83761%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (__foldr1
                                              (lambda (_%g8379483805%_
                                                       _%g8379583808%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g8379483805%_ '())))
              _%g8379583808%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L83760%_))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L83758%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match8969989700%_
                    (lambda (_%e8357783628%_
                             _%hd8357883632%_
                             _%tl8357983635%_
                             _%e8358083638%_
                             _%hd8358183642%_
                             _%tl8358283645%_
                             _%e8358383648%_
                             _%e8358483652%_
                             _%hd8358583656%_
                             _%tl8358683659%_
                             _%__splice8937189372%_
                             _%target8358783662%_
                             _%tl8358983665%_)
                      (letrec ((_%loop8359083668%_
                                (lambda (_%hd8358883672%_
                                         _%exprs8359483675%_
                                         _%names8359583677%_)
                                  (if (gx#stx-pair? _%hd8358883672%_)
                                      (let ((_%e8359183680%_
                                             (gx#syntax-e _%hd8358883672%_)))
                                        (let ((_%lp-tl8359383687%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8359183680%_)))
                                              (_%lp-hd8359283684%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8359183680%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd8359283684%_)
                                              (let ((_%e8361083690%_
                                                     (gx#syntax-e
                                                      _%lp-hd8359283684%_)))
                                                (let ((_%tl8361283697%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8361083690%_)))
                                                      (_%hd8361183694%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8361083690%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8361283697%_)
                                                      (let ((_%e8361383700%_
                                                             (gx#syntax-e
                                                              _%tl8361283697%_)))
                                                        (let ((_%tl8361583707%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8361383700%_)))
                      (_%hd8361483704%_
                       (let () (declare (not safe)) (##car _%e8361383700%_))))
                  (if (gx#stx-null? _%tl8361583707%_)
                      (_%loop8359083668%_
                       _%lp-tl8359383687%_
                       (cons _%hd8361483704%_ _%exprs8359483675%_)
                       (cons _%hd8361183694%_ _%names8359583677%_))
                      (let () (declare (not safe)) (_%g8340783621%_)))))
              (let () (declare (not safe)) (_%g8340783621%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g8340783621%_)))))
                                      (let ((_%names8359783713%_
                                             (reverse _%names8359583677%_))
                                            (_%exprs8359683710%_
                                             (reverse _%exprs8359483675%_)))
                                        (if (gx#stx-pair? _%tl8358683659%_)
                                            (let ((_%e8359883716%_
                                                   (gx#syntax-e
                                                    _%tl8358683659%_)))
                                              (let ((_%tl8360083723%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8359883716%_)))
                                                    (_%hd8359983720%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8359883716%_))))
                                                (if (gx#stx-null?
                                                     _%hd8359983720%_)
                                                    (if (gx#stx-pair?
                                                         _%tl8360083723%_)
                                                        (let ((_%e8360183726%_
                                                               (gx#syntax-e
                                                                _%tl8360083723%_)))
                                                          (let ((_%tl8360383733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8360183726%_)))
                        (_%hd8360283730%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8360183726%_))))
                    (if (gx#stx-pair? _%tl8360383733%_)
                        (let ((_%e8360483736%_ (gx#syntax-e _%tl8360383733%_)))
                          (let ((_%tl8360683743%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8360483736%_)))
                                (_%hd8360583740%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8360483736%_))))
                            (if (gx#stx-pair? _%tl8360683743%_)
                                (let ((_%e8360783746%_
                                       (gx#syntax-e _%tl8360683743%_)))
                                  (let ((_%tl8360983753%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8360783746%_)))
                                        (_%hd8360883750%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8360783746%_))))
                                    (if (gx#stx-null? _%tl8360983753%_)
                                        (_%__kont8936989370%_
                                         _%hd8360883750%_
                                         _%hd8360583740%_
                                         _%hd8360283730%_
                                         _%exprs8359683710%_
                                         _%names8359783713%_
                                         _%hd8357883632%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8340783621%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8340783621%_)))))
                        (let () (declare (not safe)) (_%g8340783621%_)))))
                (let () (declare (not safe)) (_%g8340783621%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8340783621%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8340783621%_))))))))
                        (_%loop8359083668%_ _%target8358783662%_ '() '()))))
                   (_%__match8947789478%_
                    (lambda (_%e8344984253%_
                             _%hd8345084257%_
                             _%tl8345184260%_
                             _%e8345284263%_
                             _%hd8345384267%_
                             _%tl8345484270%_
                             _%e8345584273%_
                             _%e8345684277%_
                             _%hd8345784281%_
                             _%tl8345884284%_
                             _%__splice8935789358%_
                             _%target8345984287%_
                             _%tl8346184290%_
                             _%e8346884293%_
                             _%hd8346984297%_
                             _%tl8347084300%_)
                      (letrec ((_%loop8346284303%_
                                (lambda (_%hd8346084307%_ _%exprs8346684310%_)
                                  (if (gx#stx-pair? _%hd8346084307%_)
                                      (let ((_%e8346384313%_
                                             (gx#syntax-e _%hd8346084307%_)))
                                        (let ((_%lp-tl8346584320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8346384313%_)))
                                              (_%lp-hd8346484317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8346384313%_))))
                                          (_%loop8346284303%_
                                           _%lp-tl8346584320%_
                                           (cons _%lp-hd8346484317%_
                                                 _%exprs8346684310%_))))
                                      (let ((_%exprs8346784323%_
                                             (reverse _%exprs8346684310%_)))
                                        (_%__kont8935589356%_
                                         _%hd8346984297%_
                                         _%exprs8346784323%_
                                         _%hd8345784281%_
                                         _%hd8345084257%_))))))
                        (_%loop8346284303%_ _%target8345984287%_ '()))))
                   (_%__match8943789438%_
                    (lambda (_%e8341484370%_
                             _%hd8341584374%_
                             _%tl8341684377%_
                             _%e8341784380%_
                             _%hd8341884384%_
                             _%tl8341984387%_
                             _%e8342084390%_
                             _%e8342184394%_
                             _%hd8342284398%_
                             _%tl8342384401%_
                             _%__splice8935389354%_
                             _%target8342484404%_
                             _%tl8342684407%_
                             _%e8343384410%_
                             _%hd8343484414%_
                             _%tl8343584417%_
                             _%e8343684420%_
                             _%hd8343784424%_
                             _%tl8343884427%_
                             _%e8343984430%_
                             _%hd8344084434%_
                             _%tl8344184437%_
                             _%e8344284440%_
                             _%hd8344384444%_
                             _%tl8344484447%_)
                      (letrec ((_%loop8342784450%_
                                (lambda (_%hd8342584454%_ _%exprs8343184457%_)
                                  (if (gx#stx-pair? _%hd8342584454%_)
                                      (let ((_%e8342884460%_
                                             (gx#syntax-e _%hd8342584454%_)))
                                        (let ((_%lp-tl8343084467%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8342884460%_)))
                                              (_%lp-hd8342984464%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8342884460%_))))
                                          (_%loop8342784450%_
                                           _%lp-tl8343084467%_
                                           (cons _%lp-hd8342984464%_
                                                 _%exprs8343184457%_))))
                                      (let ((_%exprs8343284470%_
                                             (reverse _%exprs8343184457%_)))
                                        (_%__kont8935189352%_
                                         _%hd8344384444%_
                                         _%hd8344084434%_
                                         _%exprs8343284470%_
                                         _%hd8342284398%_
                                         _%hd8341584374%_))))))
                        (_%loop8342784450%_ _%target8342484404%_ '())))))
              (if (gx#stx-pair? _%__stx8934889349%_)
                  (let ((_%e8341484370%_ (gx#syntax-e _%__stx8934889349%_)))
                    (let ((_%tl8341684377%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e8341484370%_)))
                          (_%hd8341584374%_
                           (let ()
                             (declare (not safe))
                             (##car _%e8341484370%_))))
                      (if (gx#stx-pair? _%tl8341684377%_)
                          (let ((_%e8341784380%_
                                 (gx#syntax-e _%tl8341684377%_)))
                            (let ((_%tl8341984387%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e8341784380%_)))
                                  (_%hd8341884384%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e8341784380%_))))
                              (if (gx#stx-datum? _%hd8341884384%_)
                                  (let ((_%e8342084390%_
                                         (gx#stx-e _%hd8341884384%_)))
                                    (if (equal? _%e8342084390%_ '1)
                                        (if (gx#stx-pair? _%tl8341984387%_)
                                            (let ((_%e8342184394%_
                                                   (gx#syntax-e
                                                    _%tl8341984387%_)))
                                              (let ((_%tl8342384401%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8342184394%_)))
                                                    (_%hd8342284398%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8342184394%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl8342384401%_)
                                                    (if (let ((__tmp89791
                                                               (gx#stx-length
                                                                _%tl8342384401%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp89791
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice8935389354%_
                       (gx#syntax-split-splice _%tl8342384401%_ '2)))
                  (let ((_%tl8342684407%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8935389354%_ '1)))
                        (_%target8342484404%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8935389354%_ '0))))
                    (if (gx#stx-pair? _%tl8342684407%_)
                        (let ((_%e8343384410%_ (gx#syntax-e _%tl8342684407%_)))
                          (let ((_%tl8343584417%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8343384410%_)))
                                (_%hd8343484414%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8343384410%_))))
                            (if (gx#stx-pair? _%hd8343484414%_)
                                (let ((_%e8343684420%_
                                       (gx#syntax-e _%hd8343484414%_)))
                                  (let ((_%tl8343884427%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8343684420%_)))
                                        (_%hd8343784424%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8343684420%_))))
                                    (if (gx#identifier? _%hd8343784424%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g89792_|
                                             _%hd8343784424%_)
                                            (if (gx#stx-pair? _%tl8343884427%_)
                                                (let ((_%e8343984430%_
                                                       (gx#syntax-e
                                                        _%tl8343884427%_)))
                                                  (let ((_%tl8344184437%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8343984430%_)))
                                                        (_%hd8344084434%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8343984430%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8344184437%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8343584417%_)
                                                            (let ((_%e8344284440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8343584417%_)))
                      (let ((_%tl8344484447%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8344284440%_)))
                            (_%hd8344384444%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8344284440%_))))
                        (if (gx#stx-null? _%tl8344484447%_)
                            (_%__match8943789438%_
                             _%e8341484370%_
                             _%hd8341584374%_
                             _%tl8341684377%_
                             _%e8341784380%_
                             _%hd8341884384%_
                             _%tl8341984387%_
                             _%e8342084390%_
                             _%e8342184394%_
                             _%hd8342284398%_
                             _%tl8342384401%_
                             _%__splice8935389354%_
                             _%target8342484404%_
                             _%tl8342684407%_
                             _%e8343384410%_
                             _%hd8343484414%_
                             _%tl8343584417%_
                             _%e8343684420%_
                             _%hd8343784424%_
                             _%tl8343884427%_
                             _%e8343984430%_
                             _%hd8344084434%_
                             _%tl8344184437%_
                             _%e8344284440%_
                             _%hd8344384444%_
                             _%tl8344484447%_)
                            (if (let ((__tmp89793
                                       (gx#stx-length _%tl8342384401%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp89793 '1))
                                (let ((_%__splice8935789358%_
                                       (gx#syntax-split-splice
                                        _%tl8342384401%_
                                        '1)))
                                  (let ((_%tl8346184290%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8935789358%_
                                            '1)))
                                        (_%target8345984287%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8935789358%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl8346184290%_)
                                        (let ((_%e8346884293%_
                                               (gx#syntax-e _%tl8346184290%_)))
                                          (let ((_%tl8347084300%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e8346884293%_)))
                                                (_%hd8346984297%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e8346884293%_))))
                                            (if (gx#stx-null? _%tl8347084300%_)
                                                (_%__match8947789478%_
                                                 _%e8341484370%_
                                                 _%hd8341584374%_
                                                 _%tl8341684377%_
                                                 _%e8341784380%_
                                                 _%hd8341884384%_
                                                 _%tl8341984387%_
                                                 _%e8342084390%_
                                                 _%e8342184394%_
                                                 _%hd8342284398%_
                                                 _%tl8342384401%_
                                                 _%__splice8935789358%_
                                                 _%target8345984287%_
                                                 _%tl8346184290%_
                                                 _%e8346884293%_
                                                 _%hd8346984297%_
                                                 _%tl8347084300%_)
                                                (if (gx#stx-null?
                                                     _%tl8342384401%_)
                                                    (_%__kont8935989360%_
                                                     _%hd8342284398%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8340783621%_))))))
                                        (if (gx#stx-null? _%tl8342384401%_)
                                            (_%__kont8935989360%_
                                             _%hd8342284398%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8340783621%_))))))
                                (if (gx#stx-null? _%tl8342384401%_)
                                    (_%__kont8935989360%_ _%hd8342284398%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8340783621%_)))))))
                    (if (let ((__tmp89794 (gx#stx-length _%tl8342384401%_)))
                          (declare (not safe))
                          (##fx>= __tmp89794 '1))
                        (let ((_%__splice8935789358%_
                               (gx#syntax-split-splice _%tl8342384401%_ '1)))
                          (let ((_%tl8346184290%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8935789358%_ '1)))
                                (_%target8345984287%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8935789358%_ '0))))
                            (if (gx#stx-pair? _%tl8346184290%_)
                                (let ((_%e8346884293%_
                                       (gx#syntax-e _%tl8346184290%_)))
                                  (let ((_%tl8347084300%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8346884293%_)))
                                        (_%hd8346984297%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8346884293%_))))
                                    (if (gx#stx-null? _%tl8347084300%_)
                                        (_%__match8947789478%_
                                         _%e8341484370%_
                                         _%hd8341584374%_
                                         _%tl8341684377%_
                                         _%e8341784380%_
                                         _%hd8341884384%_
                                         _%tl8341984387%_
                                         _%e8342084390%_
                                         _%e8342184394%_
                                         _%hd8342284398%_
                                         _%tl8342384401%_
                                         _%__splice8935789358%_
                                         _%target8345984287%_
                                         _%tl8346184290%_
                                         _%e8346884293%_
                                         _%hd8346984297%_
                                         _%tl8347084300%_)
                                        (if (gx#stx-null? _%tl8342384401%_)
                                            (_%__kont8935989360%_
                                             _%hd8342284398%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8340783621%_))))))
                                (if (gx#stx-null? _%tl8342384401%_)
                                    (_%__kont8935989360%_ _%hd8342284398%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8340783621%_))))))
                        (if (gx#stx-null? _%tl8342384401%_)
                            (_%__kont8935989360%_ _%hd8342284398%_)
                            (let () (declare (not safe)) (_%g8340783621%_)))))
                (if (let ((__tmp89795 (gx#stx-length _%tl8342384401%_)))
                      (declare (not safe))
                      (##fx>= __tmp89795 '1))
                    (let ((_%__splice8935789358%_
                           (gx#syntax-split-splice _%tl8342384401%_ '1)))
                      (let ((_%tl8346184290%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8935789358%_ '1)))
                            (_%target8345984287%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8935789358%_ '0))))
                        (if (gx#stx-pair? _%tl8346184290%_)
                            (let ((_%e8346884293%_
                                   (gx#syntax-e _%tl8346184290%_)))
                              (let ((_%tl8347084300%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8346884293%_)))
                                    (_%hd8346984297%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8346884293%_))))
                                (if (gx#stx-null? _%tl8347084300%_)
                                    (_%__match8947789478%_
                                     _%e8341484370%_
                                     _%hd8341584374%_
                                     _%tl8341684377%_
                                     _%e8341784380%_
                                     _%hd8341884384%_
                                     _%tl8341984387%_
                                     _%e8342084390%_
                                     _%e8342184394%_
                                     _%hd8342284398%_
                                     _%tl8342384401%_
                                     _%__splice8935789358%_
                                     _%target8345984287%_
                                     _%tl8346184290%_
                                     _%e8346884293%_
                                     _%hd8346984297%_
                                     _%tl8347084300%_)
                                    (if (gx#stx-null? _%tl8342384401%_)
                                        (_%__kont8935989360%_ _%hd8342284398%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8340783621%_))))))
                            (if (gx#stx-null? _%tl8342384401%_)
                                (_%__kont8935989360%_ _%hd8342284398%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8340783621%_))))))
                    (if (gx#stx-null? _%tl8342384401%_)
                        (_%__kont8935989360%_ _%hd8342284398%_)
                        (let () (declare (not safe)) (_%g8340783621%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp89796
                                                           (gx#stx-length
                                                            _%tl8342384401%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp89796 '1))
                                                    (let ((_%__splice8935789358%_
                                                           (gx#syntax-split-splice
                                                            _%tl8342384401%_
                                                            '1)))
                                                      (let ((_%tl8346184290%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8935789358%_ '1)))
                    (_%target8345984287%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8935789358%_ '0))))
                (if (gx#stx-pair? _%tl8346184290%_)
                    (let ((_%e8346884293%_ (gx#syntax-e _%tl8346184290%_)))
                      (let ((_%tl8347084300%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8346884293%_)))
                            (_%hd8346984297%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8346884293%_))))
                        (if (gx#stx-null? _%tl8347084300%_)
                            (_%__match8947789478%_
                             _%e8341484370%_
                             _%hd8341584374%_
                             _%tl8341684377%_
                             _%e8341784380%_
                             _%hd8341884384%_
                             _%tl8341984387%_
                             _%e8342084390%_
                             _%e8342184394%_
                             _%hd8342284398%_
                             _%tl8342384401%_
                             _%__splice8935789358%_
                             _%target8345984287%_
                             _%tl8346184290%_
                             _%e8346884293%_
                             _%hd8346984297%_
                             _%tl8347084300%_)
                            (if (gx#stx-null? _%tl8342384401%_)
                                (_%__kont8935989360%_ _%hd8342284398%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8340783621%_))))))
                    (if (gx#stx-null? _%tl8342384401%_)
                        (_%__kont8935989360%_ _%hd8342284398%_)
                        (let () (declare (not safe)) (_%g8340783621%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8342384401%_)
                                                        (_%__kont8935989360%_
                                                         _%hd8342284398%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8340783621%_)))))
                                            (if (let ((__tmp89797
                                                       (gx#stx-length
                                                        _%tl8342384401%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp89797 '1))
                                                (let ((_%__splice8935789358%_
                                                       (gx#syntax-split-splice
                                                        _%tl8342384401%_
                                                        '1)))
                                                  (let ((_%tl8346184290%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8935789358%_
                                                            '1)))
                                                        (_%target8345984287%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8935789358%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl8346184290%_)
                                                        (let ((_%e8346884293%_
                                                               (gx#syntax-e
                                                                _%tl8346184290%_)))
                                                          (let ((_%tl8347084300%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8346884293%_)))
                        (_%hd8346984297%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8346884293%_))))
                    (if (gx#stx-null? _%tl8347084300%_)
                        (_%__match8947789478%_
                         _%e8341484370%_
                         _%hd8341584374%_
                         _%tl8341684377%_
                         _%e8341784380%_
                         _%hd8341884384%_
                         _%tl8341984387%_
                         _%e8342084390%_
                         _%e8342184394%_
                         _%hd8342284398%_
                         _%tl8342384401%_
                         _%__splice8935789358%_
                         _%target8345984287%_
                         _%tl8346184290%_
                         _%e8346884293%_
                         _%hd8346984297%_
                         _%tl8347084300%_)
                        (if (gx#stx-null? _%tl8342384401%_)
                            (_%__kont8935989360%_ _%hd8342284398%_)
                            (let () (declare (not safe)) (_%g8340783621%_))))))
                (if (gx#stx-null? _%tl8342384401%_)
                    (_%__kont8935989360%_ _%hd8342284398%_)
                    (let () (declare (not safe)) (_%g8340783621%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl8342384401%_)
                                                    (_%__kont8935989360%_
                                                     _%hd8342284398%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8340783621%_)))))
                                        (if (let ((__tmp89798
                                                   (gx#stx-length
                                                    _%tl8342384401%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp89798 '1))
                                            (let ((_%__splice8935789358%_
                                                   (gx#syntax-split-splice
                                                    _%tl8342384401%_
                                                    '1)))
                                              (let ((_%tl8346184290%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8935789358%_
                                                        '1)))
                                                    (_%target8345984287%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8935789358%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl8346184290%_)
                                                    (let ((_%e8346884293%_
                                                           (gx#syntax-e
                                                            _%tl8346184290%_)))
                                                      (let ((_%tl8347084300%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8346884293%_)))
                    (_%hd8346984297%_
                     (let () (declare (not safe)) (##car _%e8346884293%_))))
                (if (gx#stx-null? _%tl8347084300%_)
                    (_%__match8947789478%_
                     _%e8341484370%_
                     _%hd8341584374%_
                     _%tl8341684377%_
                     _%e8341784380%_
                     _%hd8341884384%_
                     _%tl8341984387%_
                     _%e8342084390%_
                     _%e8342184394%_
                     _%hd8342284398%_
                     _%tl8342384401%_
                     _%__splice8935789358%_
                     _%target8345984287%_
                     _%tl8346184290%_
                     _%e8346884293%_
                     _%hd8346984297%_
                     _%tl8347084300%_)
                    (if (gx#stx-null? _%tl8342384401%_)
                        (_%__kont8935989360%_ _%hd8342284398%_)
                        (let () (declare (not safe)) (_%g8340783621%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8342384401%_)
                                                        (_%__kont8935989360%_
                                                         _%hd8342284398%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8340783621%_))))))
                                            (if (gx#stx-null? _%tl8342384401%_)
                                                (_%__kont8935989360%_
                                                 _%hd8342284398%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8340783621%_)))))))
                                (if (let ((__tmp89799
                                           (gx#stx-length _%tl8342384401%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp89799 '1))
                                    (let ((_%__splice8935789358%_
                                           (gx#syntax-split-splice
                                            _%tl8342384401%_
                                            '1)))
                                      (let ((_%tl8346184290%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8935789358%_
                                                '1)))
                                            (_%target8345984287%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8935789358%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl8346184290%_)
                                            (let ((_%e8346884293%_
                                                   (gx#syntax-e
                                                    _%tl8346184290%_)))
                                              (let ((_%tl8347084300%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8346884293%_)))
                                                    (_%hd8346984297%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8346884293%_))))
                                                (if (gx#stx-null?
                                                     _%tl8347084300%_)
                                                    (_%__match8947789478%_
                                                     _%e8341484370%_
                                                     _%hd8341584374%_
                                                     _%tl8341684377%_
                                                     _%e8341784380%_
                                                     _%hd8341884384%_
                                                     _%tl8341984387%_
                                                     _%e8342084390%_
                                                     _%e8342184394%_
                                                     _%hd8342284398%_
                                                     _%tl8342384401%_
                                                     _%__splice8935789358%_
                                                     _%target8345984287%_
                                                     _%tl8346184290%_
                                                     _%e8346884293%_
                                                     _%hd8346984297%_
                                                     _%tl8347084300%_)
                                                    (if (gx#stx-null?
                                                         _%tl8342384401%_)
                                                        (_%__kont8935989360%_
                                                         _%hd8342284398%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8340783621%_))))))
                                            (if (gx#stx-null? _%tl8342384401%_)
                                                (_%__kont8935989360%_
                                                 _%hd8342284398%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8340783621%_))))))
                                    (if (gx#stx-null? _%tl8342384401%_)
                                        (_%__kont8935989360%_ _%hd8342284398%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8340783621%_)))))))
                        (if (let ((__tmp89800
                                   (gx#stx-length _%tl8342384401%_)))
                              (declare (not safe))
                              (##fx>= __tmp89800 '1))
                            (let ((_%__splice8935789358%_
                                   (gx#syntax-split-splice
                                    _%tl8342384401%_
                                    '1)))
                              (let ((_%tl8346184290%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8935789358%_
                                        '1)))
                                    (_%target8345984287%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8935789358%_
                                        '0))))
                                (if (gx#stx-pair? _%tl8346184290%_)
                                    (let ((_%e8346884293%_
                                           (gx#syntax-e _%tl8346184290%_)))
                                      (let ((_%tl8347084300%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8346884293%_)))
                                            (_%hd8346984297%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8346884293%_))))
                                        (if (gx#stx-null? _%tl8347084300%_)
                                            (_%__match8947789478%_
                                             _%e8341484370%_
                                             _%hd8341584374%_
                                             _%tl8341684377%_
                                             _%e8341784380%_
                                             _%hd8341884384%_
                                             _%tl8341984387%_
                                             _%e8342084390%_
                                             _%e8342184394%_
                                             _%hd8342284398%_
                                             _%tl8342384401%_
                                             _%__splice8935789358%_
                                             _%target8345984287%_
                                             _%tl8346184290%_
                                             _%e8346884293%_
                                             _%hd8346984297%_
                                             _%tl8347084300%_)
                                            (if (gx#stx-null? _%tl8342384401%_)
                                                (_%__kont8935989360%_
                                                 _%hd8342284398%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8340783621%_))))))
                                    (if (gx#stx-null? _%tl8342384401%_)
                                        (_%__kont8935989360%_ _%hd8342284398%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8340783621%_))))))
                            (if (gx#stx-null? _%tl8342384401%_)
                                (_%__kont8935989360%_ _%hd8342284398%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8340783621%_)))))))
                (if (let ((__tmp89801 (gx#stx-length _%tl8342384401%_)))
                      (declare (not safe))
                      (##fx>= __tmp89801 '1))
                    (let ((_%__splice8935789358%_
                           (gx#syntax-split-splice _%tl8342384401%_ '1)))
                      (let ((_%tl8346184290%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8935789358%_ '1)))
                            (_%target8345984287%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8935789358%_ '0))))
                        (if (gx#stx-pair? _%tl8346184290%_)
                            (let ((_%e8346884293%_
                                   (gx#syntax-e _%tl8346184290%_)))
                              (let ((_%tl8347084300%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8346884293%_)))
                                    (_%hd8346984297%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8346884293%_))))
                                (if (gx#stx-null? _%tl8347084300%_)
                                    (_%__match8947789478%_
                                     _%e8341484370%_
                                     _%hd8341584374%_
                                     _%tl8341684377%_
                                     _%e8341784380%_
                                     _%hd8341884384%_
                                     _%tl8341984387%_
                                     _%e8342084390%_
                                     _%e8342184394%_
                                     _%hd8342284398%_
                                     _%tl8342384401%_
                                     _%__splice8935789358%_
                                     _%target8345984287%_
                                     _%tl8346184290%_
                                     _%e8346884293%_
                                     _%hd8346984297%_
                                     _%tl8347084300%_)
                                    (if (gx#stx-null? _%tl8342384401%_)
                                        (_%__kont8935989360%_ _%hd8342284398%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8340783621%_))))))
                            (if (gx#stx-null? _%tl8342384401%_)
                                (_%__kont8935989360%_ _%hd8342284398%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8340783621%_))))))
                    (if (gx#stx-null? _%tl8342384401%_)
                        (_%__kont8935989360%_ _%hd8342284398%_)
                        (let () (declare (not safe)) (_%g8340783621%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8342384401%_)
                                                        (_%__kont8935989360%_
                                                         _%hd8342284398%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8340783621%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8340783621%_)))
                                        (if (equal? _%e8342084390%_ '2)
                                            (if (gx#stx-pair? _%tl8341984387%_)
                                                (let ((_%e8349584093%_
                                                       (gx#syntax-e
                                                        _%tl8341984387%_)))
                                                  (let ((_%tl8349784100%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8349584093%_)))
                                                        (_%hd8349684097%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8349584093%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl8349784100%_)
                                                        (let ((_%e8349884103%_
                                                               (gx#syntax-e
                                                                _%tl8349784100%_)))
                                                          (let ((_%tl8350084110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8349884103%_)))
                        (_%hd8349984107%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8349884103%_))))
                    (if (gx#stx-pair? _%hd8349984107%_)
                        (let ((_%e8350184113%_ (gx#syntax-e _%hd8349984107%_)))
                          (let ((_%tl8350384120%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8350184113%_)))
                                (_%hd8350284117%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8350184113%_))))
                            (if (gx#stx-pair? _%hd8350284117%_)
                                (let ((_%e8350484123%_
                                       (gx#syntax-e _%hd8350284117%_)))
                                  (let ((_%tl8350684130%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8350484123%_)))
                                        (_%hd8350584127%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8350484123%_))))
                                    (if (gx#identifier? _%hd8350584127%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g89802_|
                                             _%hd8350584127%_)
                                            (if (gx#stx-pair? _%tl8350684130%_)
                                                (let ((_%e8350784133%_
                                                       (gx#syntax-e
                                                        _%tl8350684130%_)))
                                                  (let ((_%tl8350984140%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8350784133%_)))
                                                        (_%hd8350884137%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8350784133%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8350984140%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8350384120%_)
                                                            (let ((_%e8351084143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8350384120%_)))
                      (let ((_%tl8351284150%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8351084143%_)))
                            (_%hd8351184147%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8351084143%_))))
                        (_%__kont8936189362%_
                         _%tl8350084110%_
                         _%tl8351284150%_
                         _%hd8351184147%_
                         _%hd8350884137%_
                         _%hd8349684097%_
                         _%hd8341584374%_)))
                    (_%__kont8936389364%_
                     _%tl8350084110%_
                     _%tl8350384120%_
                     _%hd8350284117%_
                     _%hd8349684097%_
                     _%hd8341584374%_))
                (_%__kont8936389364%_
                 _%tl8350084110%_
                 _%tl8350384120%_
                 _%hd8350284117%_
                 _%hd8349684097%_
                 _%hd8341584374%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont8936389364%_
                                                 _%tl8350084110%_
                                                 _%tl8350384120%_
                                                 _%hd8350284117%_
                                                 _%hd8349684097%_
                                                 _%hd8341584374%_))
                                            (_%__kont8936389364%_
                                             _%tl8350084110%_
                                             _%tl8350384120%_
                                             _%hd8350284117%_
                                             _%hd8349684097%_
                                             _%hd8341584374%_))
                                        (_%__kont8936389364%_
                                         _%tl8350084110%_
                                         _%tl8350384120%_
                                         _%hd8350284117%_
                                         _%hd8349684097%_
                                         _%hd8341584374%_))))
                                (_%__kont8936389364%_
                                 _%tl8350084110%_
                                 _%tl8350384120%_
                                 _%hd8350284117%_
                                 _%hd8349684097%_
                                 _%hd8341584374%_))))
                        (if (gx#stx-null? _%hd8349984107%_)
                            (_%__kont8936589366%_
                             _%tl8350084110%_
                             _%hd8349684097%_
                             _%hd8341584374%_)
                            (let () (declare (not safe)) (_%g8340783621%_))))))
                (let () (declare (not safe)) (_%g8340783621%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8340783621%_)))
                                            (if (equal? _%e8342084390%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl8341984387%_)
                                                    (let ((_%e8356283842%_
                                                           (gx#syntax-e
                                                            _%tl8341984387%_)))
                                                      (let ((_%tl8356483849%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8356283842%_)))
                    (_%hd8356383846%_
                     (let () (declare (not safe)) (##car _%e8356283842%_))))
                (if (gx#stx-pair? _%tl8356483849%_)
                    (let ((_%e8356583852%_ (gx#syntax-e _%tl8356483849%_)))
                      (let ((_%tl8356783859%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8356583852%_)))
                            (_%hd8356683856%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8356583852%_))))
                        (if (gx#stx-pair? _%hd8356683856%_)
                            (let ((_%e8356883862%_
                                   (gx#syntax-e _%hd8356683856%_)))
                              (let ((_%tl8357083869%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8356883862%_)))
                                    (_%hd8356983866%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8356883862%_))))
                                (_%__kont8936789368%_
                                 _%tl8356783859%_
                                 _%tl8357083869%_
                                 _%hd8356983866%_
                                 _%hd8356383846%_
                                 _%hd8341584374%_)))
                            (if (gx#stx-pair/null? _%hd8356383846%_)
                                (let ((_%__splice8937189372%_
                                       (gx#syntax-split-splice
                                        _%hd8356383846%_
                                        '0)))
                                  (let ((_%tl8358983665%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8937189372%_
                                            '1)))
                                        (_%target8358783662%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8937189372%_
                                            '0))))
                                    (if (gx#stx-null? _%tl8358983665%_)
                                        (_%__match8969989700%_
                                         _%e8341484370%_
                                         _%hd8341584374%_
                                         _%tl8341684377%_
                                         _%e8341784380%_
                                         _%hd8341884384%_
                                         _%tl8341984387%_
                                         _%e8342084390%_
                                         _%e8356283842%_
                                         _%hd8356383846%_
                                         _%tl8356483849%_
                                         _%__splice8937189372%_
                                         _%target8358783662%_
                                         _%tl8358983665%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8340783621%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8340783621%_))))))
                    (if (gx#stx-pair/null? _%hd8356383846%_)
                        (let ((_%__splice8937189372%_
                               (gx#syntax-split-splice _%hd8356383846%_ '0)))
                          (let ((_%tl8358983665%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8937189372%_ '1)))
                                (_%target8358783662%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8937189372%_ '0))))
                            (if (gx#stx-null? _%tl8358983665%_)
                                (_%__match8969989700%_
                                 _%e8341484370%_
                                 _%hd8341584374%_
                                 _%tl8341684377%_
                                 _%e8341784380%_
                                 _%hd8341884384%_
                                 _%tl8341984387%_
                                 _%e8342084390%_
                                 _%e8356283842%_
                                 _%hd8356383846%_
                                 _%tl8356483849%_
                                 _%__splice8937189372%_
                                 _%target8358783662%_
                                 _%tl8358983665%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8340783621%_)))))
                        (let () (declare (not safe)) (_%g8340783621%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8340783621%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8340783621%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g8340783621%_)))))
                          (let () (declare (not safe)) (_%g8340783621%_)))))
                  (let () (declare (not safe)) (_%g8340783621%_))))))))))
