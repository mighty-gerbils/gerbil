(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g87434_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g87444_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx80461%_)
        (let* ((_%g8046580483%_
                (lambda (_%g8046680479%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8046680479%_)))
               (_%g8046480539%_
                (lambda (_%g8046680487%_)
                  (if (gx#stx-pair? _%g8046680487%_)
                      (let ((_%e8047180490%_ (gx#syntax-e _%g8046680487%_)))
                        (let ((_%hd8047080494%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8047180490%_)))
                              (_%tl8046980497%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8047180490%_))))
                          (if (gx#stx-pair? _%tl8046980497%_)
                              (let ((_%e8047480500%_
                                     (gx#syntax-e _%tl8046980497%_)))
                                (let ((_%hd8047380504%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8047480500%_)))
                                      (_%tl8047280507%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8047480500%_))))
                                  (if (gx#stx-pair? _%tl8047280507%_)
                                      (let ((_%e8047780510%_
                                             (gx#syntax-e _%tl8047280507%_)))
                                        (let ((_%hd8047680514%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8047780510%_)))
                                              (_%tl8047580517%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8047780510%_))))
                                          (if (gx#stx-null? _%tl8047580517%_)
                                              ((lambda (_%L80520%_ _%L80522%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L80522%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L80520%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8047680514%_
                                               _%hd8047380504%_)
                                              (_%g8046580483%_
                                               _%g8046680487%_))))
                                      (_%g8046580483%_ _%g8046680487%_))))
                              (_%g8046580483%_ _%g8046680487%_))))
                      (_%g8046580483%_ _%g8046680487%_)))))
          (_%g8046480539%_ _%$stx80461%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx80543%_)
        (let* ((_%g8054780561%_
                (lambda (_%g8054880557%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8054880557%_)))
               (_%g8054680602%_
                (lambda (_%g8054880565%_)
                  (if (gx#stx-pair? _%g8054880565%_)
                      (let ((_%e8055280568%_ (gx#syntax-e _%g8054880565%_)))
                        (let ((_%hd8055180572%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8055280568%_)))
                              (_%tl8055080575%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8055280568%_))))
                          (if (gx#stx-pair? _%tl8055080575%_)
                              (let ((_%e8055580578%_
                                     (gx#syntax-e _%tl8055080575%_)))
                                (let ((_%hd8055480582%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8055580578%_)))
                                      (_%tl8055380585%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8055580578%_))))
                                  (if (gx#stx-null? _%tl8055380585%_)
                                      ((lambda (_%L80588%_)
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
                                       (cons _%L80588%_
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
                                       _%hd8055480582%_)
                                      (_%g8054780561%_ _%g8054880565%_))))
                              (_%g8054780561%_ _%g8054880565%_))))
                      (_%g8054780561%_ _%g8054880565%_)))))
          (_%g8054680602%_ _%$stx80543%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx80606%_)
        (let* ((_%g8061080624%_
                (lambda (_%g8061180620%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8061180620%_)))
               (_%g8060980665%_
                (lambda (_%g8061180628%_)
                  (if (gx#stx-pair? _%g8061180628%_)
                      (let ((_%e8061580631%_ (gx#syntax-e _%g8061180628%_)))
                        (let ((_%hd8061480635%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8061580631%_)))
                              (_%tl8061380638%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8061580631%_))))
                          (if (gx#stx-pair? _%tl8061380638%_)
                              (let ((_%e8061880641%_
                                     (gx#syntax-e _%tl8061380638%_)))
                                (let ((_%hd8061780645%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8061880641%_)))
                                      (_%tl8061680648%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8061880641%_))))
                                  (if (gx#stx-null? _%tl8061680648%_)
                                      ((lambda (_%L80651%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L80651%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd8061780645%_)
                                      (_%g8061080624%_ _%g8061180628%_))))
                              (_%g8061080624%_ _%g8061180628%_))))
                      (_%g8061080624%_ _%g8061180628%_)))))
          (_%g8060980665%_ _%$stx80606%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx80669%_)
        (let* ((_%g8067380683%_
                (lambda (_%g8067480679%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8067480679%_)))
               (_%g8067280704%_
                (lambda (_%g8067480687%_)
                  (if (gx#stx-pair? _%g8067480687%_)
                      (let ((_%e8067780690%_ (gx#syntax-e _%g8067480687%_)))
                        (let ((_%hd8067680694%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8067780690%_)))
                              (_%tl8067580697%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8067780690%_))))
                          (if (gx#stx-null? _%tl8067580697%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g8067380683%_ _%g8067480687%_))))
                      (_%g8067380683%_ _%g8067480687%_)))))
          (_%g8067280704%_ _%$stx80669%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx80708%_)
        (let* ((_%g8071280730%_
                (lambda (_%g8071380726%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8071380726%_)))
               (_%g8071180785%_
                (lambda (_%g8071380734%_)
                  (if (gx#stx-pair? _%g8071380734%_)
                      (let ((_%e8071880737%_ (gx#syntax-e _%g8071380734%_)))
                        (let ((_%hd8071780741%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8071880737%_)))
                              (_%tl8071680744%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8071880737%_))))
                          (if (gx#stx-pair? _%tl8071680744%_)
                              (let ((_%e8072180747%_
                                     (gx#syntax-e _%tl8071680744%_)))
                                (let ((_%hd8072080751%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8072180747%_)))
                                      (_%tl8071980754%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8072180747%_))))
                                  (if (gx#stx-pair? _%tl8071980754%_)
                                      (let ((_%e8072480757%_
                                             (gx#syntax-e _%tl8071980754%_)))
                                        (let ((_%hd8072380761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8072480757%_)))
                                              (_%tl8072280764%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8072480757%_))))
                                          (if (gx#stx-null? _%tl8072280764%_)
                                              ((lambda (_%L80767%_ _%L80769%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L80769%_
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
                 (cons (cons _%L80767%_
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
                                               _%hd8072380761%_
                                               _%hd8072080751%_)
                                              (_%g8071280730%_
                                               _%g8071380734%_))))
                                      (_%g8071280730%_ _%g8071380734%_))))
                              (_%g8071280730%_ _%g8071380734%_))))
                      (_%g8071280730%_ _%g8071380734%_)))))
          (_%g8071180785%_ _%$stx80708%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx80789%_)
        (let* ((_%g8079380811%_
                (lambda (_%g8079480807%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8079480807%_)))
               (_%g8079280866%_
                (lambda (_%g8079480815%_)
                  (if (gx#stx-pair? _%g8079480815%_)
                      (let ((_%e8079980818%_ (gx#syntax-e _%g8079480815%_)))
                        (let ((_%hd8079880822%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8079980818%_)))
                              (_%tl8079780825%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8079980818%_))))
                          (if (gx#stx-pair? _%tl8079780825%_)
                              (let ((_%e8080280828%_
                                     (gx#syntax-e _%tl8079780825%_)))
                                (let ((_%hd8080180832%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8080280828%_)))
                                      (_%tl8080080835%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8080280828%_))))
                                  (if (gx#stx-pair? _%tl8080080835%_)
                                      (let ((_%e8080580838%_
                                             (gx#syntax-e _%tl8080080835%_)))
                                        (let ((_%hd8080480842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8080580838%_)))
                                              (_%tl8080380845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8080580838%_))))
                                          (if (gx#stx-null? _%tl8080380845%_)
                                              ((lambda (_%L80848%_ _%L80850%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L80850%_
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
                                               (cons (cons _%L80848%_
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
                                               _%hd8080480842%_
                                               _%hd8080180832%_)
                                              (_%g8079380811%_
                                               _%g8079480815%_))))
                                      (_%g8079380811%_ _%g8079480815%_))))
                              (_%g8079380811%_ _%g8079480815%_))))
                      (_%g8079380811%_ _%g8079480815%_)))))
          (_%g8079280866%_ _%$stx80789%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx80870%_)
        (let* ((_%g8087480892%_
                (lambda (_%g8087580888%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8087580888%_)))
               (_%g8087380947%_
                (lambda (_%g8087580896%_)
                  (if (gx#stx-pair? _%g8087580896%_)
                      (let ((_%e8088080899%_ (gx#syntax-e _%g8087580896%_)))
                        (let ((_%hd8087980903%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8088080899%_)))
                              (_%tl8087880906%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8088080899%_))))
                          (if (gx#stx-pair? _%tl8087880906%_)
                              (let ((_%e8088380909%_
                                     (gx#syntax-e _%tl8087880906%_)))
                                (let ((_%hd8088280913%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8088380909%_)))
                                      (_%tl8088180916%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8088380909%_))))
                                  (if (gx#stx-pair? _%tl8088180916%_)
                                      (let ((_%e8088680919%_
                                             (gx#syntax-e _%tl8088180916%_)))
                                        (let ((_%hd8088580923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8088680919%_)))
                                              (_%tl8088480926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8088680919%_))))
                                          (if (gx#stx-null? _%tl8088480926%_)
                                              ((lambda (_%L80929%_ _%L80931%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L80931%_
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
                                               (cons (cons _%L80929%_
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
                                               _%hd8088580923%_
                                               _%hd8088280913%_)
                                              (_%g8087480892%_
                                               _%g8087580896%_))))
                                      (_%g8087480892%_ _%g8087580896%_))))
                              (_%g8087480892%_ _%g8087580896%_))))
                      (_%g8087480892%_ _%g8087580896%_)))))
          (_%g8087380947%_ _%$stx80870%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx80951%_)
        (let* ((_%g8095580966%_
                (lambda (_%g8095680962%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8095680962%_)))
               (_%g8095480995%_
                (lambda (_%g8095680970%_)
                  (if (gx#stx-pair? _%g8095680970%_)
                      (let ((_%e8096080973%_ (gx#syntax-e _%g8095680970%_)))
                        (let ((_%hd8095980977%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8096080973%_)))
                              (_%tl8095880980%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8096080973%_))))
                          ((lambda (_%L80983%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L80983%_)))
                           _%tl8095880980%_)))
                      (_%g8095580966%_ _%g8095680970%_)))))
          (_%g8095480995%_ _%$stx80951%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx80999%_)
        (let* ((_%__stx8696286963%_ _%$stx80999%_)
               (_%g8101081224%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8696286963%_))))
          (let ((_%__kont8696586966%_
                 (lambda (_%L82077%_
                          _%L82079%_
                          _%L82080%_
                          _%L82081%_
                          _%L82082%_)
                   (cons _%L82082%_
                         (cons '2
                               (cons '()
                                     (cons (let ((__tmp87429
                                                  (lambda (_%g8211282115%_
                                                           _%g8211382118%_)
                                                    (cons _%g8211282115%_
                                                          _%g8211382118%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp87429
                                              '()
                                              _%L82080%_))
                                           (cons _%L82081%_
                                                 (cons _%L82079%_
                                                       (cons _%L82077%_
                                                             '())))))))))
                (_%__kont8696986970%_
                 (lambda (_%L81930%_ _%L81932%_ _%L81933%_ _%L81934%_)
                   (cons _%L81934%_
                         (cons '2
                               (cons '()
                                     (cons (let ((__tmp87430
                                                  (lambda (_%g8195781960%_
                                                           _%g8195881963%_)
                                                    (cons _%g8195781960%_
                                                          _%g8195881963%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp87430
                                              '()
                                              _%L81932%_))
                                           (cons _%L81933%_
                                                 (cons _%L81930%_
                                                       (cons _%L81930%_
                                                             '())))))))))
                (_%__kont8697386974%_
                 (lambda (_%L81833%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L81833%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont8697586976%_
                 (lambda (_%L81756%_
                          _%L81758%_
                          _%L81759%_
                          _%L81760%_
                          _%L81761%_
                          _%L81762%_)
                   (cons _%L81762%_
                         (cons '2
                               (cons (cons (cons _%L81760%_
                                                 (cons _%L81759%_ '()))
                                           _%L81761%_)
                                     (cons _%L81758%_ _%L81756%_))))))
                (_%__kont8697786978%_
                 (lambda (_%L81637%_
                          _%L81639%_
                          _%L81640%_
                          _%L81641%_
                          _%L81642%_)
                   (cons _%L81642%_
                         (cons '2
                               (cons (cons (cons _%L81640%_
                                                 (cons _%L81640%_ '()))
                                           _%L81641%_)
                                     (cons _%L81639%_ _%L81637%_))))))
                (_%__kont8697986980%_
                 (lambda (_%L81554%_ _%L81556%_ _%L81557%_)
                   (cons _%L81557%_
                         (cons '3 (cons '() (cons _%L81556%_ _%L81554%_))))))
                (_%__kont8698186982%_
                 (lambda (_%L81475%_
                          _%L81477%_
                          _%L81478%_
                          _%L81479%_
                          _%L81480%_)
                   (cons _%L81480%_
                         (cons '3
                               (cons (cons _%L81478%_ _%L81479%_)
                                     (cons _%L81477%_ _%L81475%_))))))
                (_%__kont8698386984%_
                 (lambda (_%L81359%_
                          _%L81361%_
                          _%L81362%_
                          _%L81363%_
                          _%L81364%_
                          _%L81365%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L81362%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L81359%_ '())))
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
                                       (cons (let ((__tmp87431
                                                    (lambda (_%g8139981402%_
                                                             _%g8140081405%_)
                                                      (cons _%g8139981402%_
                                                            _%g8140081405%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp87431
                                                '()
                                                _%L81364%_))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (let ((__tmp87432
                                                    (lambda (_%g8139781408%_
                                                             _%g8139881411%_)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '() (cons _%g8139781408%_ '())))
                    _%g8139881411%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp87432
                                                '()
                                                _%L81363%_)))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L81361%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match8731387314%_
                    (lambda (_%e8118281231%_
                             _%hd8118181235%_
                             _%tl8118081238%_
                             _%e8118581241%_
                             _%hd8118481245%_
                             _%tl8118381248%_
                             _%e8118681251%_
                             _%e8118981255%_
                             _%hd8118881259%_
                             _%tl8118781262%_
                             _%__splice8698586986%_
                             _%target8119081265%_
                             _%tl8119281268%_)
                      (letrec ((_%loop8119381271%_
                                (lambda (_%hd8119181275%_
                                         _%exprs8119781278%_
                                         _%names8119881280%_)
                                  (if (gx#stx-pair? _%hd8119181275%_)
                                      (let ((_%e8119481283%_
                                             (gx#syntax-e _%hd8119181275%_)))
                                        (let ((_%lp-tl8119681290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8119481283%_)))
                                              (_%lp-hd8119581287%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8119481283%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd8119581287%_)
                                              (let ((_%e8120381293%_
                                                     (gx#syntax-e
                                                      _%lp-hd8119581287%_)))
                                                (let ((_%tl8120181300%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8120381293%_)))
                                                      (_%hd8120281297%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8120381293%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8120181300%_)
                                                      (let ((_%e8120681303%_
                                                             (gx#syntax-e
                                                              _%tl8120181300%_)))
                                                        (let ((_%tl8120481310%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8120681303%_)))
                      (_%hd8120581307%_
                       (let () (declare (not safe)) (##car _%e8120681303%_))))
                  (if (gx#stx-null? _%tl8120481310%_)
                      (_%loop8119381271%_
                       _%lp-tl8119681290%_
                       (cons _%hd8120581307%_ _%exprs8119781278%_)
                       (cons _%hd8120281297%_ _%names8119881280%_))
                      (let () (declare (not safe)) (_%g8101081224%_)))))
              (let () (declare (not safe)) (_%g8101081224%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g8101081224%_)))))
                                      (let ((_%names8120081316%_
                                             (reverse _%names8119881280%_))
                                            (_%exprs8119981313%_
                                             (reverse _%exprs8119781278%_)))
                                        (if (gx#stx-pair? _%tl8118781262%_)
                                            (let ((_%e8120981319%_
                                                   (gx#syntax-e
                                                    _%tl8118781262%_)))
                                              (let ((_%tl8120781326%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8120981319%_)))
                                                    (_%hd8120881323%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8120981319%_))))
                                                (if (gx#stx-null?
                                                     _%hd8120881323%_)
                                                    (if (gx#stx-pair?
                                                         _%tl8120781326%_)
                                                        (let ((_%e8121281329%_
                                                               (gx#syntax-e
                                                                _%tl8120781326%_)))
                                                          (let ((_%tl8121081336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8121281329%_)))
                        (_%hd8121181333%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8121281329%_))))
                    (if (gx#stx-pair? _%tl8121081336%_)
                        (let ((_%e8121581339%_ (gx#syntax-e _%tl8121081336%_)))
                          (let ((_%tl8121381346%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8121581339%_)))
                                (_%hd8121481343%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8121581339%_))))
                            (if (gx#stx-pair? _%tl8121381346%_)
                                (let ((_%e8121881349%_
                                       (gx#syntax-e _%tl8121381346%_)))
                                  (let ((_%tl8121681356%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8121881349%_)))
                                        (_%hd8121781353%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8121881349%_))))
                                    (if (gx#stx-null? _%tl8121681356%_)
                                        (_%__kont8698386984%_
                                         _%hd8121781353%_
                                         _%hd8121481343%_
                                         _%hd8121181333%_
                                         _%exprs8119981313%_
                                         _%names8120081316%_
                                         _%hd8118181235%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8101081224%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8101081224%_)))))
                        (let () (declare (not safe)) (_%g8101081224%_)))))
                (let () (declare (not safe)) (_%g8101081224%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8101081224%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8101081224%_))))))))
                        (_%loop8119381271%_ _%target8119081265%_ '() '()))))
                   (_%__match8709187092%_
                    (lambda (_%e8105481856%_
                             _%hd8105381860%_
                             _%tl8105281863%_
                             _%e8105781866%_
                             _%hd8105681870%_
                             _%tl8105581873%_
                             _%e8105881876%_
                             _%e8106181880%_
                             _%hd8106081884%_
                             _%tl8105981887%_
                             _%__splice8697186972%_
                             _%target8106281890%_
                             _%tl8106481893%_
                             _%e8107381896%_
                             _%hd8107281900%_
                             _%tl8107181903%_)
                      (letrec ((_%loop8106581906%_
                                (lambda (_%hd8106381910%_ _%exprs8106981913%_)
                                  (if (gx#stx-pair? _%hd8106381910%_)
                                      (let ((_%e8106681916%_
                                             (gx#syntax-e _%hd8106381910%_)))
                                        (let ((_%lp-tl8106881923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8106681916%_)))
                                              (_%lp-hd8106781920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8106681916%_))))
                                          (_%loop8106581906%_
                                           _%lp-tl8106881923%_
                                           (cons _%lp-hd8106781920%_
                                                 _%exprs8106981913%_))))
                                      (let ((_%exprs8107081926%_
                                             (reverse _%exprs8106981913%_)))
                                        (_%__kont8696986970%_
                                         _%hd8107281900%_
                                         _%exprs8107081926%_
                                         _%hd8106081884%_
                                         _%hd8105381860%_))))))
                        (_%loop8106581906%_ _%target8106281890%_ '()))))
                   (_%__match8705187052%_
                    (lambda (_%e8101981973%_
                             _%hd8101881977%_
                             _%tl8101781980%_
                             _%e8102281983%_
                             _%hd8102181987%_
                             _%tl8102081990%_
                             _%e8102381993%_
                             _%e8102681997%_
                             _%hd8102582001%_
                             _%tl8102482004%_
                             _%__splice8696786968%_
                             _%target8102782007%_
                             _%tl8102982010%_
                             _%e8103882013%_
                             _%hd8103782017%_
                             _%tl8103682020%_
                             _%e8104182023%_
                             _%hd8104082027%_
                             _%tl8103982030%_
                             _%e8104482033%_
                             _%hd8104382037%_
                             _%tl8104282040%_
                             _%e8104782043%_
                             _%hd8104682047%_
                             _%tl8104582050%_)
                      (letrec ((_%loop8103082053%_
                                (lambda (_%hd8102882057%_ _%exprs8103482060%_)
                                  (if (gx#stx-pair? _%hd8102882057%_)
                                      (let ((_%e8103182063%_
                                             (gx#syntax-e _%hd8102882057%_)))
                                        (let ((_%lp-tl8103382070%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8103182063%_)))
                                              (_%lp-hd8103282067%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8103182063%_))))
                                          (_%loop8103082053%_
                                           _%lp-tl8103382070%_
                                           (cons _%lp-hd8103282067%_
                                                 _%exprs8103482060%_))))
                                      (let ((_%exprs8103582073%_
                                             (reverse _%exprs8103482060%_)))
                                        (_%__kont8696586966%_
                                         _%hd8104682047%_
                                         _%hd8104382037%_
                                         _%exprs8103582073%_
                                         _%hd8102582001%_
                                         _%hd8101881977%_))))))
                        (_%loop8103082053%_ _%target8102782007%_ '())))))
              (if (gx#stx-pair? _%__stx8696286963%_)
                  (let ((_%e8101981973%_ (gx#syntax-e _%__stx8696286963%_)))
                    (let ((_%tl8101781980%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e8101981973%_)))
                          (_%hd8101881977%_
                           (let ()
                             (declare (not safe))
                             (##car _%e8101981973%_))))
                      (if (gx#stx-pair? _%tl8101781980%_)
                          (let ((_%e8102281983%_
                                 (gx#syntax-e _%tl8101781980%_)))
                            (let ((_%tl8102081990%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e8102281983%_)))
                                  (_%hd8102181987%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e8102281983%_))))
                              (if (gx#stx-datum? _%hd8102181987%_)
                                  (let ((_%e8102381993%_
                                         (gx#stx-e _%hd8102181987%_)))
                                    (if (equal? _%e8102381993%_ '1)
                                        (if (gx#stx-pair? _%tl8102081990%_)
                                            (let ((_%e8102681997%_
                                                   (gx#syntax-e
                                                    _%tl8102081990%_)))
                                              (let ((_%tl8102482004%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8102681997%_)))
                                                    (_%hd8102582001%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8102681997%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl8102482004%_)
                                                    (if (let ((__tmp87433
                                                               (gx#stx-length
                                                                _%tl8102482004%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp87433
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice8696786968%_
                       (gx#syntax-split-splice _%tl8102482004%_ '2)))
                  (let ((_%tl8102982010%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8696786968%_ '1)))
                        (_%target8102782007%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8696786968%_ '0))))
                    (if (gx#stx-pair? _%tl8102982010%_)
                        (let ((_%e8103882013%_ (gx#syntax-e _%tl8102982010%_)))
                          (let ((_%tl8103682020%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8103882013%_)))
                                (_%hd8103782017%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8103882013%_))))
                            (if (gx#stx-pair? _%hd8103782017%_)
                                (let ((_%e8104182023%_
                                       (gx#syntax-e _%hd8103782017%_)))
                                  (let ((_%tl8103982030%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8104182023%_)))
                                        (_%hd8104082027%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8104182023%_))))
                                    (if (gx#identifier? _%hd8104082027%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g87434_|
                                             _%hd8104082027%_)
                                            (if (gx#stx-pair? _%tl8103982030%_)
                                                (let ((_%e8104482033%_
                                                       (gx#syntax-e
                                                        _%tl8103982030%_)))
                                                  (let ((_%tl8104282040%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8104482033%_)))
                                                        (_%hd8104382037%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8104482033%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8104282040%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8103682020%_)
                                                            (let ((_%e8104782043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8103682020%_)))
                      (let ((_%tl8104582050%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8104782043%_)))
                            (_%hd8104682047%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8104782043%_))))
                        (if (gx#stx-null? _%tl8104582050%_)
                            (_%__match8705187052%_
                             _%e8101981973%_
                             _%hd8101881977%_
                             _%tl8101781980%_
                             _%e8102281983%_
                             _%hd8102181987%_
                             _%tl8102081990%_
                             _%e8102381993%_
                             _%e8102681997%_
                             _%hd8102582001%_
                             _%tl8102482004%_
                             _%__splice8696786968%_
                             _%target8102782007%_
                             _%tl8102982010%_
                             _%e8103882013%_
                             _%hd8103782017%_
                             _%tl8103682020%_
                             _%e8104182023%_
                             _%hd8104082027%_
                             _%tl8103982030%_
                             _%e8104482033%_
                             _%hd8104382037%_
                             _%tl8104282040%_
                             _%e8104782043%_
                             _%hd8104682047%_
                             _%tl8104582050%_)
                            (if (let ((__tmp87435
                                       (gx#stx-length _%tl8102482004%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp87435 '1))
                                (let ((_%__splice8697186972%_
                                       (gx#syntax-split-splice
                                        _%tl8102482004%_
                                        '1)))
                                  (let ((_%tl8106481893%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8697186972%_
                                            '1)))
                                        (_%target8106281890%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8697186972%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl8106481893%_)
                                        (let ((_%e8107381896%_
                                               (gx#syntax-e _%tl8106481893%_)))
                                          (let ((_%tl8107181903%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e8107381896%_)))
                                                (_%hd8107281900%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e8107381896%_))))
                                            (if (gx#stx-null? _%tl8107181903%_)
                                                (_%__match8709187092%_
                                                 _%e8101981973%_
                                                 _%hd8101881977%_
                                                 _%tl8101781980%_
                                                 _%e8102281983%_
                                                 _%hd8102181987%_
                                                 _%tl8102081990%_
                                                 _%e8102381993%_
                                                 _%e8102681997%_
                                                 _%hd8102582001%_
                                                 _%tl8102482004%_
                                                 _%__splice8697186972%_
                                                 _%target8106281890%_
                                                 _%tl8106481893%_
                                                 _%e8107381896%_
                                                 _%hd8107281900%_
                                                 _%tl8107181903%_)
                                                (if (gx#stx-null?
                                                     _%tl8102482004%_)
                                                    (_%__kont8697386974%_
                                                     _%hd8102582001%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8101081224%_))))))
                                        (if (gx#stx-null? _%tl8102482004%_)
                                            (_%__kont8697386974%_
                                             _%hd8102582001%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8101081224%_))))))
                                (if (gx#stx-null? _%tl8102482004%_)
                                    (_%__kont8697386974%_ _%hd8102582001%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8101081224%_)))))))
                    (if (let ((__tmp87436 (gx#stx-length _%tl8102482004%_)))
                          (declare (not safe))
                          (##fx>= __tmp87436 '1))
                        (let ((_%__splice8697186972%_
                               (gx#syntax-split-splice _%tl8102482004%_ '1)))
                          (let ((_%tl8106481893%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8697186972%_ '1)))
                                (_%target8106281890%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8697186972%_ '0))))
                            (if (gx#stx-pair? _%tl8106481893%_)
                                (let ((_%e8107381896%_
                                       (gx#syntax-e _%tl8106481893%_)))
                                  (let ((_%tl8107181903%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8107381896%_)))
                                        (_%hd8107281900%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8107381896%_))))
                                    (if (gx#stx-null? _%tl8107181903%_)
                                        (_%__match8709187092%_
                                         _%e8101981973%_
                                         _%hd8101881977%_
                                         _%tl8101781980%_
                                         _%e8102281983%_
                                         _%hd8102181987%_
                                         _%tl8102081990%_
                                         _%e8102381993%_
                                         _%e8102681997%_
                                         _%hd8102582001%_
                                         _%tl8102482004%_
                                         _%__splice8697186972%_
                                         _%target8106281890%_
                                         _%tl8106481893%_
                                         _%e8107381896%_
                                         _%hd8107281900%_
                                         _%tl8107181903%_)
                                        (if (gx#stx-null? _%tl8102482004%_)
                                            (_%__kont8697386974%_
                                             _%hd8102582001%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8101081224%_))))))
                                (if (gx#stx-null? _%tl8102482004%_)
                                    (_%__kont8697386974%_ _%hd8102582001%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8101081224%_))))))
                        (if (gx#stx-null? _%tl8102482004%_)
                            (_%__kont8697386974%_ _%hd8102582001%_)
                            (let () (declare (not safe)) (_%g8101081224%_)))))
                (if (let ((__tmp87437 (gx#stx-length _%tl8102482004%_)))
                      (declare (not safe))
                      (##fx>= __tmp87437 '1))
                    (let ((_%__splice8697186972%_
                           (gx#syntax-split-splice _%tl8102482004%_ '1)))
                      (let ((_%tl8106481893%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8697186972%_ '1)))
                            (_%target8106281890%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8697186972%_ '0))))
                        (if (gx#stx-pair? _%tl8106481893%_)
                            (let ((_%e8107381896%_
                                   (gx#syntax-e _%tl8106481893%_)))
                              (let ((_%tl8107181903%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8107381896%_)))
                                    (_%hd8107281900%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8107381896%_))))
                                (if (gx#stx-null? _%tl8107181903%_)
                                    (_%__match8709187092%_
                                     _%e8101981973%_
                                     _%hd8101881977%_
                                     _%tl8101781980%_
                                     _%e8102281983%_
                                     _%hd8102181987%_
                                     _%tl8102081990%_
                                     _%e8102381993%_
                                     _%e8102681997%_
                                     _%hd8102582001%_
                                     _%tl8102482004%_
                                     _%__splice8697186972%_
                                     _%target8106281890%_
                                     _%tl8106481893%_
                                     _%e8107381896%_
                                     _%hd8107281900%_
                                     _%tl8107181903%_)
                                    (if (gx#stx-null? _%tl8102482004%_)
                                        (_%__kont8697386974%_ _%hd8102582001%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8101081224%_))))))
                            (if (gx#stx-null? _%tl8102482004%_)
                                (_%__kont8697386974%_ _%hd8102582001%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8101081224%_))))))
                    (if (gx#stx-null? _%tl8102482004%_)
                        (_%__kont8697386974%_ _%hd8102582001%_)
                        (let () (declare (not safe)) (_%g8101081224%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp87438
                                                           (gx#stx-length
                                                            _%tl8102482004%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp87438 '1))
                                                    (let ((_%__splice8697186972%_
                                                           (gx#syntax-split-splice
                                                            _%tl8102482004%_
                                                            '1)))
                                                      (let ((_%tl8106481893%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8697186972%_ '1)))
                    (_%target8106281890%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8697186972%_ '0))))
                (if (gx#stx-pair? _%tl8106481893%_)
                    (let ((_%e8107381896%_ (gx#syntax-e _%tl8106481893%_)))
                      (let ((_%tl8107181903%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8107381896%_)))
                            (_%hd8107281900%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8107381896%_))))
                        (if (gx#stx-null? _%tl8107181903%_)
                            (_%__match8709187092%_
                             _%e8101981973%_
                             _%hd8101881977%_
                             _%tl8101781980%_
                             _%e8102281983%_
                             _%hd8102181987%_
                             _%tl8102081990%_
                             _%e8102381993%_
                             _%e8102681997%_
                             _%hd8102582001%_
                             _%tl8102482004%_
                             _%__splice8697186972%_
                             _%target8106281890%_
                             _%tl8106481893%_
                             _%e8107381896%_
                             _%hd8107281900%_
                             _%tl8107181903%_)
                            (if (gx#stx-null? _%tl8102482004%_)
                                (_%__kont8697386974%_ _%hd8102582001%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8101081224%_))))))
                    (if (gx#stx-null? _%tl8102482004%_)
                        (_%__kont8697386974%_ _%hd8102582001%_)
                        (let () (declare (not safe)) (_%g8101081224%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8102482004%_)
                                                        (_%__kont8697386974%_
                                                         _%hd8102582001%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8101081224%_)))))
                                            (if (let ((__tmp87439
                                                       (gx#stx-length
                                                        _%tl8102482004%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp87439 '1))
                                                (let ((_%__splice8697186972%_
                                                       (gx#syntax-split-splice
                                                        _%tl8102482004%_
                                                        '1)))
                                                  (let ((_%tl8106481893%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8697186972%_
                                                            '1)))
                                                        (_%target8106281890%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8697186972%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl8106481893%_)
                                                        (let ((_%e8107381896%_
                                                               (gx#syntax-e
                                                                _%tl8106481893%_)))
                                                          (let ((_%tl8107181903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8107381896%_)))
                        (_%hd8107281900%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8107381896%_))))
                    (if (gx#stx-null? _%tl8107181903%_)
                        (_%__match8709187092%_
                         _%e8101981973%_
                         _%hd8101881977%_
                         _%tl8101781980%_
                         _%e8102281983%_
                         _%hd8102181987%_
                         _%tl8102081990%_
                         _%e8102381993%_
                         _%e8102681997%_
                         _%hd8102582001%_
                         _%tl8102482004%_
                         _%__splice8697186972%_
                         _%target8106281890%_
                         _%tl8106481893%_
                         _%e8107381896%_
                         _%hd8107281900%_
                         _%tl8107181903%_)
                        (if (gx#stx-null? _%tl8102482004%_)
                            (_%__kont8697386974%_ _%hd8102582001%_)
                            (let () (declare (not safe)) (_%g8101081224%_))))))
                (if (gx#stx-null? _%tl8102482004%_)
                    (_%__kont8697386974%_ _%hd8102582001%_)
                    (let () (declare (not safe)) (_%g8101081224%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl8102482004%_)
                                                    (_%__kont8697386974%_
                                                     _%hd8102582001%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8101081224%_)))))
                                        (if (let ((__tmp87440
                                                   (gx#stx-length
                                                    _%tl8102482004%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp87440 '1))
                                            (let ((_%__splice8697186972%_
                                                   (gx#syntax-split-splice
                                                    _%tl8102482004%_
                                                    '1)))
                                              (let ((_%tl8106481893%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8697186972%_
                                                        '1)))
                                                    (_%target8106281890%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8697186972%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl8106481893%_)
                                                    (let ((_%e8107381896%_
                                                           (gx#syntax-e
                                                            _%tl8106481893%_)))
                                                      (let ((_%tl8107181903%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8107381896%_)))
                    (_%hd8107281900%_
                     (let () (declare (not safe)) (##car _%e8107381896%_))))
                (if (gx#stx-null? _%tl8107181903%_)
                    (_%__match8709187092%_
                     _%e8101981973%_
                     _%hd8101881977%_
                     _%tl8101781980%_
                     _%e8102281983%_
                     _%hd8102181987%_
                     _%tl8102081990%_
                     _%e8102381993%_
                     _%e8102681997%_
                     _%hd8102582001%_
                     _%tl8102482004%_
                     _%__splice8697186972%_
                     _%target8106281890%_
                     _%tl8106481893%_
                     _%e8107381896%_
                     _%hd8107281900%_
                     _%tl8107181903%_)
                    (if (gx#stx-null? _%tl8102482004%_)
                        (_%__kont8697386974%_ _%hd8102582001%_)
                        (let () (declare (not safe)) (_%g8101081224%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8102482004%_)
                                                        (_%__kont8697386974%_
                                                         _%hd8102582001%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8101081224%_))))))
                                            (if (gx#stx-null? _%tl8102482004%_)
                                                (_%__kont8697386974%_
                                                 _%hd8102582001%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8101081224%_)))))))
                                (if (let ((__tmp87441
                                           (gx#stx-length _%tl8102482004%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp87441 '1))
                                    (let ((_%__splice8697186972%_
                                           (gx#syntax-split-splice
                                            _%tl8102482004%_
                                            '1)))
                                      (let ((_%tl8106481893%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8697186972%_
                                                '1)))
                                            (_%target8106281890%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8697186972%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl8106481893%_)
                                            (let ((_%e8107381896%_
                                                   (gx#syntax-e
                                                    _%tl8106481893%_)))
                                              (let ((_%tl8107181903%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8107381896%_)))
                                                    (_%hd8107281900%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8107381896%_))))
                                                (if (gx#stx-null?
                                                     _%tl8107181903%_)
                                                    (_%__match8709187092%_
                                                     _%e8101981973%_
                                                     _%hd8101881977%_
                                                     _%tl8101781980%_
                                                     _%e8102281983%_
                                                     _%hd8102181987%_
                                                     _%tl8102081990%_
                                                     _%e8102381993%_
                                                     _%e8102681997%_
                                                     _%hd8102582001%_
                                                     _%tl8102482004%_
                                                     _%__splice8697186972%_
                                                     _%target8106281890%_
                                                     _%tl8106481893%_
                                                     _%e8107381896%_
                                                     _%hd8107281900%_
                                                     _%tl8107181903%_)
                                                    (if (gx#stx-null?
                                                         _%tl8102482004%_)
                                                        (_%__kont8697386974%_
                                                         _%hd8102582001%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8101081224%_))))))
                                            (if (gx#stx-null? _%tl8102482004%_)
                                                (_%__kont8697386974%_
                                                 _%hd8102582001%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8101081224%_))))))
                                    (if (gx#stx-null? _%tl8102482004%_)
                                        (_%__kont8697386974%_ _%hd8102582001%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8101081224%_)))))))
                        (if (let ((__tmp87442
                                   (gx#stx-length _%tl8102482004%_)))
                              (declare (not safe))
                              (##fx>= __tmp87442 '1))
                            (let ((_%__splice8697186972%_
                                   (gx#syntax-split-splice
                                    _%tl8102482004%_
                                    '1)))
                              (let ((_%tl8106481893%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8697186972%_
                                        '1)))
                                    (_%target8106281890%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8697186972%_
                                        '0))))
                                (if (gx#stx-pair? _%tl8106481893%_)
                                    (let ((_%e8107381896%_
                                           (gx#syntax-e _%tl8106481893%_)))
                                      (let ((_%tl8107181903%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8107381896%_)))
                                            (_%hd8107281900%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8107381896%_))))
                                        (if (gx#stx-null? _%tl8107181903%_)
                                            (_%__match8709187092%_
                                             _%e8101981973%_
                                             _%hd8101881977%_
                                             _%tl8101781980%_
                                             _%e8102281983%_
                                             _%hd8102181987%_
                                             _%tl8102081990%_
                                             _%e8102381993%_
                                             _%e8102681997%_
                                             _%hd8102582001%_
                                             _%tl8102482004%_
                                             _%__splice8697186972%_
                                             _%target8106281890%_
                                             _%tl8106481893%_
                                             _%e8107381896%_
                                             _%hd8107281900%_
                                             _%tl8107181903%_)
                                            (if (gx#stx-null? _%tl8102482004%_)
                                                (_%__kont8697386974%_
                                                 _%hd8102582001%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8101081224%_))))))
                                    (if (gx#stx-null? _%tl8102482004%_)
                                        (_%__kont8697386974%_ _%hd8102582001%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8101081224%_))))))
                            (if (gx#stx-null? _%tl8102482004%_)
                                (_%__kont8697386974%_ _%hd8102582001%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8101081224%_)))))))
                (if (let ((__tmp87443 (gx#stx-length _%tl8102482004%_)))
                      (declare (not safe))
                      (##fx>= __tmp87443 '1))
                    (let ((_%__splice8697186972%_
                           (gx#syntax-split-splice _%tl8102482004%_ '1)))
                      (let ((_%tl8106481893%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8697186972%_ '1)))
                            (_%target8106281890%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8697186972%_ '0))))
                        (if (gx#stx-pair? _%tl8106481893%_)
                            (let ((_%e8107381896%_
                                   (gx#syntax-e _%tl8106481893%_)))
                              (let ((_%tl8107181903%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8107381896%_)))
                                    (_%hd8107281900%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8107381896%_))))
                                (if (gx#stx-null? _%tl8107181903%_)
                                    (_%__match8709187092%_
                                     _%e8101981973%_
                                     _%hd8101881977%_
                                     _%tl8101781980%_
                                     _%e8102281983%_
                                     _%hd8102181987%_
                                     _%tl8102081990%_
                                     _%e8102381993%_
                                     _%e8102681997%_
                                     _%hd8102582001%_
                                     _%tl8102482004%_
                                     _%__splice8697186972%_
                                     _%target8106281890%_
                                     _%tl8106481893%_
                                     _%e8107381896%_
                                     _%hd8107281900%_
                                     _%tl8107181903%_)
                                    (if (gx#stx-null? _%tl8102482004%_)
                                        (_%__kont8697386974%_ _%hd8102582001%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8101081224%_))))))
                            (if (gx#stx-null? _%tl8102482004%_)
                                (_%__kont8697386974%_ _%hd8102582001%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8101081224%_))))))
                    (if (gx#stx-null? _%tl8102482004%_)
                        (_%__kont8697386974%_ _%hd8102582001%_)
                        (let () (declare (not safe)) (_%g8101081224%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8102482004%_)
                                                        (_%__kont8697386974%_
                                                         _%hd8102582001%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8101081224%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8101081224%_)))
                                        (if (equal? _%e8102381993%_ '2)
                                            (if (gx#stx-pair? _%tl8102081990%_)
                                                (let ((_%e8110081696%_
                                                       (gx#syntax-e
                                                        _%tl8102081990%_)))
                                                  (let ((_%tl8109881703%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8110081696%_)))
                                                        (_%hd8109981700%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8110081696%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl8109881703%_)
                                                        (let ((_%e8110381706%_
                                                               (gx#syntax-e
                                                                _%tl8109881703%_)))
                                                          (let ((_%tl8110181713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8110381706%_)))
                        (_%hd8110281710%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8110381706%_))))
                    (if (gx#stx-pair? _%hd8110281710%_)
                        (let ((_%e8110681716%_ (gx#syntax-e _%hd8110281710%_)))
                          (let ((_%tl8110481723%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8110681716%_)))
                                (_%hd8110581720%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8110681716%_))))
                            (if (gx#stx-pair? _%hd8110581720%_)
                                (let ((_%e8110981726%_
                                       (gx#syntax-e _%hd8110581720%_)))
                                  (let ((_%tl8110781733%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8110981726%_)))
                                        (_%hd8110881730%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8110981726%_))))
                                    (if (gx#identifier? _%hd8110881730%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g87444_|
                                             _%hd8110881730%_)
                                            (if (gx#stx-pair? _%tl8110781733%_)
                                                (let ((_%e8111281736%_
                                                       (gx#syntax-e
                                                        _%tl8110781733%_)))
                                                  (let ((_%tl8111081743%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8111281736%_)))
                                                        (_%hd8111181740%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8111281736%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8111081743%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8110481723%_)
                                                            (let ((_%e8111581746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8110481723%_)))
                      (let ((_%tl8111381753%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8111581746%_)))
                            (_%hd8111481750%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8111581746%_))))
                        (_%__kont8697586976%_
                         _%tl8110181713%_
                         _%tl8111381753%_
                         _%hd8111481750%_
                         _%hd8111181740%_
                         _%hd8109981700%_
                         _%hd8101881977%_)))
                    (_%__kont8697786978%_
                     _%tl8110181713%_
                     _%tl8110481723%_
                     _%hd8110581720%_
                     _%hd8109981700%_
                     _%hd8101881977%_))
                (_%__kont8697786978%_
                 _%tl8110181713%_
                 _%tl8110481723%_
                 _%hd8110581720%_
                 _%hd8109981700%_
                 _%hd8101881977%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont8697786978%_
                                                 _%tl8110181713%_
                                                 _%tl8110481723%_
                                                 _%hd8110581720%_
                                                 _%hd8109981700%_
                                                 _%hd8101881977%_))
                                            (_%__kont8697786978%_
                                             _%tl8110181713%_
                                             _%tl8110481723%_
                                             _%hd8110581720%_
                                             _%hd8109981700%_
                                             _%hd8101881977%_))
                                        (_%__kont8697786978%_
                                         _%tl8110181713%_
                                         _%tl8110481723%_
                                         _%hd8110581720%_
                                         _%hd8109981700%_
                                         _%hd8101881977%_))))
                                (_%__kont8697786978%_
                                 _%tl8110181713%_
                                 _%tl8110481723%_
                                 _%hd8110581720%_
                                 _%hd8109981700%_
                                 _%hd8101881977%_))))
                        (if (gx#stx-null? _%hd8110281710%_)
                            (_%__kont8697986980%_
                             _%tl8110181713%_
                             _%hd8109981700%_
                             _%hd8101881977%_)
                            (let () (declare (not safe)) (_%g8101081224%_))))))
                (let () (declare (not safe)) (_%g8101081224%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8101081224%_)))
                                            (if (equal? _%e8102381993%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl8102081990%_)
                                                    (let ((_%e8116781445%_
                                                           (gx#syntax-e
                                                            _%tl8102081990%_)))
                                                      (let ((_%tl8116581452%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8116781445%_)))
                    (_%hd8116681449%_
                     (let () (declare (not safe)) (##car _%e8116781445%_))))
                (if (gx#stx-pair? _%tl8116581452%_)
                    (let ((_%e8117081455%_ (gx#syntax-e _%tl8116581452%_)))
                      (let ((_%tl8116881462%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8117081455%_)))
                            (_%hd8116981459%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8117081455%_))))
                        (if (gx#stx-pair? _%hd8116981459%_)
                            (let ((_%e8117381465%_
                                   (gx#syntax-e _%hd8116981459%_)))
                              (let ((_%tl8117181472%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8117381465%_)))
                                    (_%hd8117281469%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8117381465%_))))
                                (_%__kont8698186982%_
                                 _%tl8116881462%_
                                 _%tl8117181472%_
                                 _%hd8117281469%_
                                 _%hd8116681449%_
                                 _%hd8101881977%_)))
                            (if (gx#stx-pair/null? _%hd8116681449%_)
                                (let ((_%__splice8698586986%_
                                       (gx#syntax-split-splice
                                        _%hd8116681449%_
                                        '0)))
                                  (let ((_%tl8119281268%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8698586986%_
                                            '1)))
                                        (_%target8119081265%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8698586986%_
                                            '0))))
                                    (if (gx#stx-null? _%tl8119281268%_)
                                        (_%__match8731387314%_
                                         _%e8101981973%_
                                         _%hd8101881977%_
                                         _%tl8101781980%_
                                         _%e8102281983%_
                                         _%hd8102181987%_
                                         _%tl8102081990%_
                                         _%e8102381993%_
                                         _%e8116781445%_
                                         _%hd8116681449%_
                                         _%tl8116581452%_
                                         _%__splice8698586986%_
                                         _%target8119081265%_
                                         _%tl8119281268%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8101081224%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8101081224%_))))))
                    (if (gx#stx-pair/null? _%hd8116681449%_)
                        (let ((_%__splice8698586986%_
                               (gx#syntax-split-splice _%hd8116681449%_ '0)))
                          (let ((_%tl8119281268%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8698586986%_ '1)))
                                (_%target8119081265%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8698586986%_ '0))))
                            (if (gx#stx-null? _%tl8119281268%_)
                                (_%__match8731387314%_
                                 _%e8101981973%_
                                 _%hd8101881977%_
                                 _%tl8101781980%_
                                 _%e8102281983%_
                                 _%hd8102181987%_
                                 _%tl8102081990%_
                                 _%e8102381993%_
                                 _%e8116781445%_
                                 _%hd8116681449%_
                                 _%tl8116581452%_
                                 _%__splice8698586986%_
                                 _%target8119081265%_
                                 _%tl8119281268%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8101081224%_)))))
                        (let () (declare (not safe)) (_%g8101081224%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8101081224%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8101081224%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g8101081224%_)))))
                          (let () (declare (not safe)) (_%g8101081224%_)))))
                  (let () (declare (not safe)) (_%g8101081224%_))))))))))
