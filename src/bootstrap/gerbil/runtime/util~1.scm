(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g87503_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g87513_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx80530%_)
        (let* ((_%g8053480552%_
                (lambda (_%g8053580548%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8053580548%_)))
               (_%g8053380608%_
                (lambda (_%g8053580556%_)
                  (if (gx#stx-pair? _%g8053580556%_)
                      (let ((_%e8054080559%_ (gx#syntax-e _%g8053580556%_)))
                        (let ((_%hd8053980563%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8054080559%_)))
                              (_%tl8053880566%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8054080559%_))))
                          (if (gx#stx-pair? _%tl8053880566%_)
                              (let ((_%e8054380569%_
                                     (gx#syntax-e _%tl8053880566%_)))
                                (let ((_%hd8054280573%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8054380569%_)))
                                      (_%tl8054180576%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8054380569%_))))
                                  (if (gx#stx-pair? _%tl8054180576%_)
                                      (let ((_%e8054680579%_
                                             (gx#syntax-e _%tl8054180576%_)))
                                        (let ((_%hd8054580583%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8054680579%_)))
                                              (_%tl8054480586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8054680579%_))))
                                          (if (gx#stx-null? _%tl8054480586%_)
                                              ((lambda (_%L80589%_ _%L80591%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L80591%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L80589%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8054580583%_
                                               _%hd8054280573%_)
                                              (_%g8053480552%_
                                               _%g8053580556%_))))
                                      (_%g8053480552%_ _%g8053580556%_))))
                              (_%g8053480552%_ _%g8053580556%_))))
                      (_%g8053480552%_ _%g8053580556%_)))))
          (_%g8053380608%_ _%$stx80530%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx80612%_)
        (let* ((_%g8061680630%_
                (lambda (_%g8061780626%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8061780626%_)))
               (_%g8061580671%_
                (lambda (_%g8061780634%_)
                  (if (gx#stx-pair? _%g8061780634%_)
                      (let ((_%e8062180637%_ (gx#syntax-e _%g8061780634%_)))
                        (let ((_%hd8062080641%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8062180637%_)))
                              (_%tl8061980644%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8062180637%_))))
                          (if (gx#stx-pair? _%tl8061980644%_)
                              (let ((_%e8062480647%_
                                     (gx#syntax-e _%tl8061980644%_)))
                                (let ((_%hd8062380651%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8062480647%_)))
                                      (_%tl8062280654%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8062480647%_))))
                                  (if (gx#stx-null? _%tl8062280654%_)
                                      ((lambda (_%L80657%_)
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
                                       (cons _%L80657%_
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
                                       _%hd8062380651%_)
                                      (_%g8061680630%_ _%g8061780634%_))))
                              (_%g8061680630%_ _%g8061780634%_))))
                      (_%g8061680630%_ _%g8061780634%_)))))
          (_%g8061580671%_ _%$stx80612%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx80675%_)
        (let* ((_%g8067980693%_
                (lambda (_%g8068080689%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8068080689%_)))
               (_%g8067880734%_
                (lambda (_%g8068080697%_)
                  (if (gx#stx-pair? _%g8068080697%_)
                      (let ((_%e8068480700%_ (gx#syntax-e _%g8068080697%_)))
                        (let ((_%hd8068380704%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8068480700%_)))
                              (_%tl8068280707%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8068480700%_))))
                          (if (gx#stx-pair? _%tl8068280707%_)
                              (let ((_%e8068780710%_
                                     (gx#syntax-e _%tl8068280707%_)))
                                (let ((_%hd8068680714%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8068780710%_)))
                                      (_%tl8068580717%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8068780710%_))))
                                  (if (gx#stx-null? _%tl8068580717%_)
                                      ((lambda (_%L80720%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L80720%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd8068680714%_)
                                      (_%g8067980693%_ _%g8068080697%_))))
                              (_%g8067980693%_ _%g8068080697%_))))
                      (_%g8067980693%_ _%g8068080697%_)))))
          (_%g8067880734%_ _%$stx80675%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx80738%_)
        (let* ((_%g8074280752%_
                (lambda (_%g8074380748%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8074380748%_)))
               (_%g8074180773%_
                (lambda (_%g8074380756%_)
                  (if (gx#stx-pair? _%g8074380756%_)
                      (let ((_%e8074680759%_ (gx#syntax-e _%g8074380756%_)))
                        (let ((_%hd8074580763%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8074680759%_)))
                              (_%tl8074480766%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8074680759%_))))
                          (if (gx#stx-null? _%tl8074480766%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g8074280752%_ _%g8074380756%_))))
                      (_%g8074280752%_ _%g8074380756%_)))))
          (_%g8074180773%_ _%$stx80738%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx80777%_)
        (let* ((_%g8078180799%_
                (lambda (_%g8078280795%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8078280795%_)))
               (_%g8078080854%_
                (lambda (_%g8078280803%_)
                  (if (gx#stx-pair? _%g8078280803%_)
                      (let ((_%e8078780806%_ (gx#syntax-e _%g8078280803%_)))
                        (let ((_%hd8078680810%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8078780806%_)))
                              (_%tl8078580813%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8078780806%_))))
                          (if (gx#stx-pair? _%tl8078580813%_)
                              (let ((_%e8079080816%_
                                     (gx#syntax-e _%tl8078580813%_)))
                                (let ((_%hd8078980820%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8079080816%_)))
                                      (_%tl8078880823%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8079080816%_))))
                                  (if (gx#stx-pair? _%tl8078880823%_)
                                      (let ((_%e8079380826%_
                                             (gx#syntax-e _%tl8078880823%_)))
                                        (let ((_%hd8079280830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8079380826%_)))
                                              (_%tl8079180833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8079380826%_))))
                                          (if (gx#stx-null? _%tl8079180833%_)
                                              ((lambda (_%L80836%_ _%L80838%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L80838%_
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
                 (cons (cons _%L80836%_
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
                                               _%hd8079280830%_
                                               _%hd8078980820%_)
                                              (_%g8078180799%_
                                               _%g8078280803%_))))
                                      (_%g8078180799%_ _%g8078280803%_))))
                              (_%g8078180799%_ _%g8078280803%_))))
                      (_%g8078180799%_ _%g8078280803%_)))))
          (_%g8078080854%_ _%$stx80777%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx80858%_)
        (let* ((_%g8086280880%_
                (lambda (_%g8086380876%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8086380876%_)))
               (_%g8086180935%_
                (lambda (_%g8086380884%_)
                  (if (gx#stx-pair? _%g8086380884%_)
                      (let ((_%e8086880887%_ (gx#syntax-e _%g8086380884%_)))
                        (let ((_%hd8086780891%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8086880887%_)))
                              (_%tl8086680894%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8086880887%_))))
                          (if (gx#stx-pair? _%tl8086680894%_)
                              (let ((_%e8087180897%_
                                     (gx#syntax-e _%tl8086680894%_)))
                                (let ((_%hd8087080901%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8087180897%_)))
                                      (_%tl8086980904%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8087180897%_))))
                                  (if (gx#stx-pair? _%tl8086980904%_)
                                      (let ((_%e8087480907%_
                                             (gx#syntax-e _%tl8086980904%_)))
                                        (let ((_%hd8087380911%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8087480907%_)))
                                              (_%tl8087280914%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8087480907%_))))
                                          (if (gx#stx-null? _%tl8087280914%_)
                                              ((lambda (_%L80917%_ _%L80919%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L80919%_
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
                                               (cons (cons _%L80917%_
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
                                               _%hd8087380911%_
                                               _%hd8087080901%_)
                                              (_%g8086280880%_
                                               _%g8086380884%_))))
                                      (_%g8086280880%_ _%g8086380884%_))))
                              (_%g8086280880%_ _%g8086380884%_))))
                      (_%g8086280880%_ _%g8086380884%_)))))
          (_%g8086180935%_ _%$stx80858%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx80939%_)
        (let* ((_%g8094380961%_
                (lambda (_%g8094480957%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8094480957%_)))
               (_%g8094281016%_
                (lambda (_%g8094480965%_)
                  (if (gx#stx-pair? _%g8094480965%_)
                      (let ((_%e8094980968%_ (gx#syntax-e _%g8094480965%_)))
                        (let ((_%hd8094880972%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8094980968%_)))
                              (_%tl8094780975%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8094980968%_))))
                          (if (gx#stx-pair? _%tl8094780975%_)
                              (let ((_%e8095280978%_
                                     (gx#syntax-e _%tl8094780975%_)))
                                (let ((_%hd8095180982%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8095280978%_)))
                                      (_%tl8095080985%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8095280978%_))))
                                  (if (gx#stx-pair? _%tl8095080985%_)
                                      (let ((_%e8095580988%_
                                             (gx#syntax-e _%tl8095080985%_)))
                                        (let ((_%hd8095480992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8095580988%_)))
                                              (_%tl8095380995%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8095580988%_))))
                                          (if (gx#stx-null? _%tl8095380995%_)
                                              ((lambda (_%L80998%_ _%L81000%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L81000%_
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
                                               (cons (cons _%L80998%_
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
                                               _%hd8095480992%_
                                               _%hd8095180982%_)
                                              (_%g8094380961%_
                                               _%g8094480965%_))))
                                      (_%g8094380961%_ _%g8094480965%_))))
                              (_%g8094380961%_ _%g8094480965%_))))
                      (_%g8094380961%_ _%g8094480965%_)))))
          (_%g8094281016%_ _%$stx80939%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx81020%_)
        (let* ((_%g8102481035%_
                (lambda (_%g8102581031%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8102581031%_)))
               (_%g8102381064%_
                (lambda (_%g8102581039%_)
                  (if (gx#stx-pair? _%g8102581039%_)
                      (let ((_%e8102981042%_ (gx#syntax-e _%g8102581039%_)))
                        (let ((_%hd8102881046%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8102981042%_)))
                              (_%tl8102781049%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8102981042%_))))
                          ((lambda (_%L81052%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L81052%_)))
                           _%tl8102781049%_)))
                      (_%g8102481035%_ _%g8102581039%_)))))
          (_%g8102381064%_ _%$stx81020%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx81068%_)
        (let* ((_%__stx8703187032%_ _%$stx81068%_)
               (_%g8107981293%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8703187032%_))))
          (let ((_%__kont8703487035%_
                 (lambda (_%L82146%_
                          _%L82148%_
                          _%L82149%_
                          _%L82150%_
                          _%L82151%_)
                   (cons _%L82151%_
                         (cons '2
                               (cons '()
                                     (cons (let ((__tmp87498
                                                  (lambda (_%g8218182184%_
                                                           _%g8218282187%_)
                                                    (cons _%g8218182184%_
                                                          _%g8218282187%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp87498
                                              '()
                                              _%L82149%_))
                                           (cons _%L82150%_
                                                 (cons _%L82148%_
                                                       (cons _%L82146%_
                                                             '())))))))))
                (_%__kont8703887039%_
                 (lambda (_%L81999%_ _%L82001%_ _%L82002%_ _%L82003%_)
                   (cons _%L82003%_
                         (cons '2
                               (cons '()
                                     (cons (let ((__tmp87499
                                                  (lambda (_%g8202682029%_
                                                           _%g8202782032%_)
                                                    (cons _%g8202682029%_
                                                          _%g8202782032%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp87499
                                              '()
                                              _%L82001%_))
                                           (cons _%L82002%_
                                                 (cons _%L81999%_
                                                       (cons _%L81999%_
                                                             '())))))))))
                (_%__kont8704287043%_
                 (lambda (_%L81902%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L81902%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont8704487045%_
                 (lambda (_%L81825%_
                          _%L81827%_
                          _%L81828%_
                          _%L81829%_
                          _%L81830%_
                          _%L81831%_)
                   (cons _%L81831%_
                         (cons '2
                               (cons (cons (cons _%L81829%_
                                                 (cons _%L81828%_ '()))
                                           _%L81830%_)
                                     (cons _%L81827%_ _%L81825%_))))))
                (_%__kont8704687047%_
                 (lambda (_%L81706%_
                          _%L81708%_
                          _%L81709%_
                          _%L81710%_
                          _%L81711%_)
                   (cons _%L81711%_
                         (cons '2
                               (cons (cons (cons _%L81709%_
                                                 (cons _%L81709%_ '()))
                                           _%L81710%_)
                                     (cons _%L81708%_ _%L81706%_))))))
                (_%__kont8704887049%_
                 (lambda (_%L81623%_ _%L81625%_ _%L81626%_)
                   (cons _%L81626%_
                         (cons '3 (cons '() (cons _%L81625%_ _%L81623%_))))))
                (_%__kont8705087051%_
                 (lambda (_%L81544%_
                          _%L81546%_
                          _%L81547%_
                          _%L81548%_
                          _%L81549%_)
                   (cons _%L81549%_
                         (cons '3
                               (cons (cons _%L81547%_ _%L81548%_)
                                     (cons _%L81546%_ _%L81544%_))))))
                (_%__kont8705287053%_
                 (lambda (_%L81428%_
                          _%L81430%_
                          _%L81431%_
                          _%L81432%_
                          _%L81433%_
                          _%L81434%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L81431%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L81428%_ '())))
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
                                       (cons (let ((__tmp87500
                                                    (lambda (_%g8146881471%_
                                                             _%g8146981474%_)
                                                      (cons _%g8146881471%_
                                                            _%g8146981474%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp87500
                                                '()
                                                _%L81433%_))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (let ((__tmp87501
                                                    (lambda (_%g8146681477%_
                                                             _%g8146781480%_)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '() (cons _%g8146681477%_ '())))
                    _%g8146781480%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp87501
                                                '()
                                                _%L81432%_)))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L81430%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match8738287383%_
                    (lambda (_%e8125181300%_
                             _%hd8125081304%_
                             _%tl8124981307%_
                             _%e8125481310%_
                             _%hd8125381314%_
                             _%tl8125281317%_
                             _%e8125581320%_
                             _%e8125881324%_
                             _%hd8125781328%_
                             _%tl8125681331%_
                             _%__splice8705487055%_
                             _%target8125981334%_
                             _%tl8126181337%_)
                      (letrec ((_%loop8126281340%_
                                (lambda (_%hd8126081344%_
                                         _%exprs8126681347%_
                                         _%names8126781349%_)
                                  (if (gx#stx-pair? _%hd8126081344%_)
                                      (let ((_%e8126381352%_
                                             (gx#syntax-e _%hd8126081344%_)))
                                        (let ((_%lp-tl8126581359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8126381352%_)))
                                              (_%lp-hd8126481356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8126381352%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd8126481356%_)
                                              (let ((_%e8127281362%_
                                                     (gx#syntax-e
                                                      _%lp-hd8126481356%_)))
                                                (let ((_%tl8127081369%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8127281362%_)))
                                                      (_%hd8127181366%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8127281362%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8127081369%_)
                                                      (let ((_%e8127581372%_
                                                             (gx#syntax-e
                                                              _%tl8127081369%_)))
                                                        (let ((_%tl8127381379%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8127581372%_)))
                      (_%hd8127481376%_
                       (let () (declare (not safe)) (##car _%e8127581372%_))))
                  (if (gx#stx-null? _%tl8127381379%_)
                      (_%loop8126281340%_
                       _%lp-tl8126581359%_
                       (cons _%hd8127481376%_ _%exprs8126681347%_)
                       (cons _%hd8127181366%_ _%names8126781349%_))
                      (let () (declare (not safe)) (_%g8107981293%_)))))
              (let () (declare (not safe)) (_%g8107981293%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g8107981293%_)))))
                                      (let ((_%names8126981385%_
                                             (reverse _%names8126781349%_))
                                            (_%exprs8126881382%_
                                             (reverse _%exprs8126681347%_)))
                                        (if (gx#stx-pair? _%tl8125681331%_)
                                            (let ((_%e8127881388%_
                                                   (gx#syntax-e
                                                    _%tl8125681331%_)))
                                              (let ((_%tl8127681395%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8127881388%_)))
                                                    (_%hd8127781392%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8127881388%_))))
                                                (if (gx#stx-null?
                                                     _%hd8127781392%_)
                                                    (if (gx#stx-pair?
                                                         _%tl8127681395%_)
                                                        (let ((_%e8128181398%_
                                                               (gx#syntax-e
                                                                _%tl8127681395%_)))
                                                          (let ((_%tl8127981405%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8128181398%_)))
                        (_%hd8128081402%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8128181398%_))))
                    (if (gx#stx-pair? _%tl8127981405%_)
                        (let ((_%e8128481408%_ (gx#syntax-e _%tl8127981405%_)))
                          (let ((_%tl8128281415%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8128481408%_)))
                                (_%hd8128381412%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8128481408%_))))
                            (if (gx#stx-pair? _%tl8128281415%_)
                                (let ((_%e8128781418%_
                                       (gx#syntax-e _%tl8128281415%_)))
                                  (let ((_%tl8128581425%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8128781418%_)))
                                        (_%hd8128681422%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8128781418%_))))
                                    (if (gx#stx-null? _%tl8128581425%_)
                                        (_%__kont8705287053%_
                                         _%hd8128681422%_
                                         _%hd8128381412%_
                                         _%hd8128081402%_
                                         _%exprs8126881382%_
                                         _%names8126981385%_
                                         _%hd8125081304%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8107981293%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8107981293%_)))))
                        (let () (declare (not safe)) (_%g8107981293%_)))))
                (let () (declare (not safe)) (_%g8107981293%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8107981293%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8107981293%_))))))))
                        (_%loop8126281340%_ _%target8125981334%_ '() '()))))
                   (_%__match8716087161%_
                    (lambda (_%e8112381925%_
                             _%hd8112281929%_
                             _%tl8112181932%_
                             _%e8112681935%_
                             _%hd8112581939%_
                             _%tl8112481942%_
                             _%e8112781945%_
                             _%e8113081949%_
                             _%hd8112981953%_
                             _%tl8112881956%_
                             _%__splice8704087041%_
                             _%target8113181959%_
                             _%tl8113381962%_
                             _%e8114281965%_
                             _%hd8114181969%_
                             _%tl8114081972%_)
                      (letrec ((_%loop8113481975%_
                                (lambda (_%hd8113281979%_ _%exprs8113881982%_)
                                  (if (gx#stx-pair? _%hd8113281979%_)
                                      (let ((_%e8113581985%_
                                             (gx#syntax-e _%hd8113281979%_)))
                                        (let ((_%lp-tl8113781992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8113581985%_)))
                                              (_%lp-hd8113681989%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8113581985%_))))
                                          (_%loop8113481975%_
                                           _%lp-tl8113781992%_
                                           (cons _%lp-hd8113681989%_
                                                 _%exprs8113881982%_))))
                                      (let ((_%exprs8113981995%_
                                             (reverse _%exprs8113881982%_)))
                                        (_%__kont8703887039%_
                                         _%hd8114181969%_
                                         _%exprs8113981995%_
                                         _%hd8112981953%_
                                         _%hd8112281929%_))))))
                        (_%loop8113481975%_ _%target8113181959%_ '()))))
                   (_%__match8712087121%_
                    (lambda (_%e8108882042%_
                             _%hd8108782046%_
                             _%tl8108682049%_
                             _%e8109182052%_
                             _%hd8109082056%_
                             _%tl8108982059%_
                             _%e8109282062%_
                             _%e8109582066%_
                             _%hd8109482070%_
                             _%tl8109382073%_
                             _%__splice8703687037%_
                             _%target8109682076%_
                             _%tl8109882079%_
                             _%e8110782082%_
                             _%hd8110682086%_
                             _%tl8110582089%_
                             _%e8111082092%_
                             _%hd8110982096%_
                             _%tl8110882099%_
                             _%e8111382102%_
                             _%hd8111282106%_
                             _%tl8111182109%_
                             _%e8111682112%_
                             _%hd8111582116%_
                             _%tl8111482119%_)
                      (letrec ((_%loop8109982122%_
                                (lambda (_%hd8109782126%_ _%exprs8110382129%_)
                                  (if (gx#stx-pair? _%hd8109782126%_)
                                      (let ((_%e8110082132%_
                                             (gx#syntax-e _%hd8109782126%_)))
                                        (let ((_%lp-tl8110282139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8110082132%_)))
                                              (_%lp-hd8110182136%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8110082132%_))))
                                          (_%loop8109982122%_
                                           _%lp-tl8110282139%_
                                           (cons _%lp-hd8110182136%_
                                                 _%exprs8110382129%_))))
                                      (let ((_%exprs8110482142%_
                                             (reverse _%exprs8110382129%_)))
                                        (_%__kont8703487035%_
                                         _%hd8111582116%_
                                         _%hd8111282106%_
                                         _%exprs8110482142%_
                                         _%hd8109482070%_
                                         _%hd8108782046%_))))))
                        (_%loop8109982122%_ _%target8109682076%_ '())))))
              (if (gx#stx-pair? _%__stx8703187032%_)
                  (let ((_%e8108882042%_ (gx#syntax-e _%__stx8703187032%_)))
                    (let ((_%tl8108682049%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e8108882042%_)))
                          (_%hd8108782046%_
                           (let ()
                             (declare (not safe))
                             (##car _%e8108882042%_))))
                      (if (gx#stx-pair? _%tl8108682049%_)
                          (let ((_%e8109182052%_
                                 (gx#syntax-e _%tl8108682049%_)))
                            (let ((_%tl8108982059%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e8109182052%_)))
                                  (_%hd8109082056%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e8109182052%_))))
                              (if (gx#stx-datum? _%hd8109082056%_)
                                  (let ((_%e8109282062%_
                                         (gx#stx-e _%hd8109082056%_)))
                                    (if (equal? _%e8109282062%_ '1)
                                        (if (gx#stx-pair? _%tl8108982059%_)
                                            (let ((_%e8109582066%_
                                                   (gx#syntax-e
                                                    _%tl8108982059%_)))
                                              (let ((_%tl8109382073%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8109582066%_)))
                                                    (_%hd8109482070%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8109582066%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl8109382073%_)
                                                    (if (let ((__tmp87502
                                                               (gx#stx-length
                                                                _%tl8109382073%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp87502
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice8703687037%_
                       (gx#syntax-split-splice _%tl8109382073%_ '2)))
                  (let ((_%tl8109882079%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8703687037%_ '1)))
                        (_%target8109682076%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8703687037%_ '0))))
                    (if (gx#stx-pair? _%tl8109882079%_)
                        (let ((_%e8110782082%_ (gx#syntax-e _%tl8109882079%_)))
                          (let ((_%tl8110582089%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8110782082%_)))
                                (_%hd8110682086%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8110782082%_))))
                            (if (gx#stx-pair? _%hd8110682086%_)
                                (let ((_%e8111082092%_
                                       (gx#syntax-e _%hd8110682086%_)))
                                  (let ((_%tl8110882099%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8111082092%_)))
                                        (_%hd8110982096%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8111082092%_))))
                                    (if (gx#identifier? _%hd8110982096%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g87503_|
                                             _%hd8110982096%_)
                                            (if (gx#stx-pair? _%tl8110882099%_)
                                                (let ((_%e8111382102%_
                                                       (gx#syntax-e
                                                        _%tl8110882099%_)))
                                                  (let ((_%tl8111182109%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8111382102%_)))
                                                        (_%hd8111282106%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8111382102%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8111182109%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8110582089%_)
                                                            (let ((_%e8111682112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8110582089%_)))
                      (let ((_%tl8111482119%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8111682112%_)))
                            (_%hd8111582116%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8111682112%_))))
                        (if (gx#stx-null? _%tl8111482119%_)
                            (_%__match8712087121%_
                             _%e8108882042%_
                             _%hd8108782046%_
                             _%tl8108682049%_
                             _%e8109182052%_
                             _%hd8109082056%_
                             _%tl8108982059%_
                             _%e8109282062%_
                             _%e8109582066%_
                             _%hd8109482070%_
                             _%tl8109382073%_
                             _%__splice8703687037%_
                             _%target8109682076%_
                             _%tl8109882079%_
                             _%e8110782082%_
                             _%hd8110682086%_
                             _%tl8110582089%_
                             _%e8111082092%_
                             _%hd8110982096%_
                             _%tl8110882099%_
                             _%e8111382102%_
                             _%hd8111282106%_
                             _%tl8111182109%_
                             _%e8111682112%_
                             _%hd8111582116%_
                             _%tl8111482119%_)
                            (if (let ((__tmp87504
                                       (gx#stx-length _%tl8109382073%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp87504 '1))
                                (let ((_%__splice8704087041%_
                                       (gx#syntax-split-splice
                                        _%tl8109382073%_
                                        '1)))
                                  (let ((_%tl8113381962%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8704087041%_
                                            '1)))
                                        (_%target8113181959%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8704087041%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl8113381962%_)
                                        (let ((_%e8114281965%_
                                               (gx#syntax-e _%tl8113381962%_)))
                                          (let ((_%tl8114081972%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e8114281965%_)))
                                                (_%hd8114181969%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e8114281965%_))))
                                            (if (gx#stx-null? _%tl8114081972%_)
                                                (_%__match8716087161%_
                                                 _%e8108882042%_
                                                 _%hd8108782046%_
                                                 _%tl8108682049%_
                                                 _%e8109182052%_
                                                 _%hd8109082056%_
                                                 _%tl8108982059%_
                                                 _%e8109282062%_
                                                 _%e8109582066%_
                                                 _%hd8109482070%_
                                                 _%tl8109382073%_
                                                 _%__splice8704087041%_
                                                 _%target8113181959%_
                                                 _%tl8113381962%_
                                                 _%e8114281965%_
                                                 _%hd8114181969%_
                                                 _%tl8114081972%_)
                                                (if (gx#stx-null?
                                                     _%tl8109382073%_)
                                                    (_%__kont8704287043%_
                                                     _%hd8109482070%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8107981293%_))))))
                                        (if (gx#stx-null? _%tl8109382073%_)
                                            (_%__kont8704287043%_
                                             _%hd8109482070%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8107981293%_))))))
                                (if (gx#stx-null? _%tl8109382073%_)
                                    (_%__kont8704287043%_ _%hd8109482070%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8107981293%_)))))))
                    (if (let ((__tmp87505 (gx#stx-length _%tl8109382073%_)))
                          (declare (not safe))
                          (##fx>= __tmp87505 '1))
                        (let ((_%__splice8704087041%_
                               (gx#syntax-split-splice _%tl8109382073%_ '1)))
                          (let ((_%tl8113381962%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8704087041%_ '1)))
                                (_%target8113181959%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8704087041%_ '0))))
                            (if (gx#stx-pair? _%tl8113381962%_)
                                (let ((_%e8114281965%_
                                       (gx#syntax-e _%tl8113381962%_)))
                                  (let ((_%tl8114081972%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8114281965%_)))
                                        (_%hd8114181969%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8114281965%_))))
                                    (if (gx#stx-null? _%tl8114081972%_)
                                        (_%__match8716087161%_
                                         _%e8108882042%_
                                         _%hd8108782046%_
                                         _%tl8108682049%_
                                         _%e8109182052%_
                                         _%hd8109082056%_
                                         _%tl8108982059%_
                                         _%e8109282062%_
                                         _%e8109582066%_
                                         _%hd8109482070%_
                                         _%tl8109382073%_
                                         _%__splice8704087041%_
                                         _%target8113181959%_
                                         _%tl8113381962%_
                                         _%e8114281965%_
                                         _%hd8114181969%_
                                         _%tl8114081972%_)
                                        (if (gx#stx-null? _%tl8109382073%_)
                                            (_%__kont8704287043%_
                                             _%hd8109482070%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8107981293%_))))))
                                (if (gx#stx-null? _%tl8109382073%_)
                                    (_%__kont8704287043%_ _%hd8109482070%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8107981293%_))))))
                        (if (gx#stx-null? _%tl8109382073%_)
                            (_%__kont8704287043%_ _%hd8109482070%_)
                            (let () (declare (not safe)) (_%g8107981293%_)))))
                (if (let ((__tmp87506 (gx#stx-length _%tl8109382073%_)))
                      (declare (not safe))
                      (##fx>= __tmp87506 '1))
                    (let ((_%__splice8704087041%_
                           (gx#syntax-split-splice _%tl8109382073%_ '1)))
                      (let ((_%tl8113381962%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8704087041%_ '1)))
                            (_%target8113181959%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8704087041%_ '0))))
                        (if (gx#stx-pair? _%tl8113381962%_)
                            (let ((_%e8114281965%_
                                   (gx#syntax-e _%tl8113381962%_)))
                              (let ((_%tl8114081972%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8114281965%_)))
                                    (_%hd8114181969%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8114281965%_))))
                                (if (gx#stx-null? _%tl8114081972%_)
                                    (_%__match8716087161%_
                                     _%e8108882042%_
                                     _%hd8108782046%_
                                     _%tl8108682049%_
                                     _%e8109182052%_
                                     _%hd8109082056%_
                                     _%tl8108982059%_
                                     _%e8109282062%_
                                     _%e8109582066%_
                                     _%hd8109482070%_
                                     _%tl8109382073%_
                                     _%__splice8704087041%_
                                     _%target8113181959%_
                                     _%tl8113381962%_
                                     _%e8114281965%_
                                     _%hd8114181969%_
                                     _%tl8114081972%_)
                                    (if (gx#stx-null? _%tl8109382073%_)
                                        (_%__kont8704287043%_ _%hd8109482070%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8107981293%_))))))
                            (if (gx#stx-null? _%tl8109382073%_)
                                (_%__kont8704287043%_ _%hd8109482070%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8107981293%_))))))
                    (if (gx#stx-null? _%tl8109382073%_)
                        (_%__kont8704287043%_ _%hd8109482070%_)
                        (let () (declare (not safe)) (_%g8107981293%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp87507
                                                           (gx#stx-length
                                                            _%tl8109382073%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp87507 '1))
                                                    (let ((_%__splice8704087041%_
                                                           (gx#syntax-split-splice
                                                            _%tl8109382073%_
                                                            '1)))
                                                      (let ((_%tl8113381962%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8704087041%_ '1)))
                    (_%target8113181959%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8704087041%_ '0))))
                (if (gx#stx-pair? _%tl8113381962%_)
                    (let ((_%e8114281965%_ (gx#syntax-e _%tl8113381962%_)))
                      (let ((_%tl8114081972%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8114281965%_)))
                            (_%hd8114181969%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8114281965%_))))
                        (if (gx#stx-null? _%tl8114081972%_)
                            (_%__match8716087161%_
                             _%e8108882042%_
                             _%hd8108782046%_
                             _%tl8108682049%_
                             _%e8109182052%_
                             _%hd8109082056%_
                             _%tl8108982059%_
                             _%e8109282062%_
                             _%e8109582066%_
                             _%hd8109482070%_
                             _%tl8109382073%_
                             _%__splice8704087041%_
                             _%target8113181959%_
                             _%tl8113381962%_
                             _%e8114281965%_
                             _%hd8114181969%_
                             _%tl8114081972%_)
                            (if (gx#stx-null? _%tl8109382073%_)
                                (_%__kont8704287043%_ _%hd8109482070%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8107981293%_))))))
                    (if (gx#stx-null? _%tl8109382073%_)
                        (_%__kont8704287043%_ _%hd8109482070%_)
                        (let () (declare (not safe)) (_%g8107981293%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8109382073%_)
                                                        (_%__kont8704287043%_
                                                         _%hd8109482070%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8107981293%_)))))
                                            (if (let ((__tmp87508
                                                       (gx#stx-length
                                                        _%tl8109382073%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp87508 '1))
                                                (let ((_%__splice8704087041%_
                                                       (gx#syntax-split-splice
                                                        _%tl8109382073%_
                                                        '1)))
                                                  (let ((_%tl8113381962%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8704087041%_
                                                            '1)))
                                                        (_%target8113181959%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8704087041%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl8113381962%_)
                                                        (let ((_%e8114281965%_
                                                               (gx#syntax-e
                                                                _%tl8113381962%_)))
                                                          (let ((_%tl8114081972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8114281965%_)))
                        (_%hd8114181969%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8114281965%_))))
                    (if (gx#stx-null? _%tl8114081972%_)
                        (_%__match8716087161%_
                         _%e8108882042%_
                         _%hd8108782046%_
                         _%tl8108682049%_
                         _%e8109182052%_
                         _%hd8109082056%_
                         _%tl8108982059%_
                         _%e8109282062%_
                         _%e8109582066%_
                         _%hd8109482070%_
                         _%tl8109382073%_
                         _%__splice8704087041%_
                         _%target8113181959%_
                         _%tl8113381962%_
                         _%e8114281965%_
                         _%hd8114181969%_
                         _%tl8114081972%_)
                        (if (gx#stx-null? _%tl8109382073%_)
                            (_%__kont8704287043%_ _%hd8109482070%_)
                            (let () (declare (not safe)) (_%g8107981293%_))))))
                (if (gx#stx-null? _%tl8109382073%_)
                    (_%__kont8704287043%_ _%hd8109482070%_)
                    (let () (declare (not safe)) (_%g8107981293%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl8109382073%_)
                                                    (_%__kont8704287043%_
                                                     _%hd8109482070%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8107981293%_)))))
                                        (if (let ((__tmp87509
                                                   (gx#stx-length
                                                    _%tl8109382073%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp87509 '1))
                                            (let ((_%__splice8704087041%_
                                                   (gx#syntax-split-splice
                                                    _%tl8109382073%_
                                                    '1)))
                                              (let ((_%tl8113381962%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8704087041%_
                                                        '1)))
                                                    (_%target8113181959%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8704087041%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl8113381962%_)
                                                    (let ((_%e8114281965%_
                                                           (gx#syntax-e
                                                            _%tl8113381962%_)))
                                                      (let ((_%tl8114081972%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8114281965%_)))
                    (_%hd8114181969%_
                     (let () (declare (not safe)) (##car _%e8114281965%_))))
                (if (gx#stx-null? _%tl8114081972%_)
                    (_%__match8716087161%_
                     _%e8108882042%_
                     _%hd8108782046%_
                     _%tl8108682049%_
                     _%e8109182052%_
                     _%hd8109082056%_
                     _%tl8108982059%_
                     _%e8109282062%_
                     _%e8109582066%_
                     _%hd8109482070%_
                     _%tl8109382073%_
                     _%__splice8704087041%_
                     _%target8113181959%_
                     _%tl8113381962%_
                     _%e8114281965%_
                     _%hd8114181969%_
                     _%tl8114081972%_)
                    (if (gx#stx-null? _%tl8109382073%_)
                        (_%__kont8704287043%_ _%hd8109482070%_)
                        (let () (declare (not safe)) (_%g8107981293%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8109382073%_)
                                                        (_%__kont8704287043%_
                                                         _%hd8109482070%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8107981293%_))))))
                                            (if (gx#stx-null? _%tl8109382073%_)
                                                (_%__kont8704287043%_
                                                 _%hd8109482070%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8107981293%_)))))))
                                (if (let ((__tmp87510
                                           (gx#stx-length _%tl8109382073%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp87510 '1))
                                    (let ((_%__splice8704087041%_
                                           (gx#syntax-split-splice
                                            _%tl8109382073%_
                                            '1)))
                                      (let ((_%tl8113381962%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8704087041%_
                                                '1)))
                                            (_%target8113181959%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8704087041%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl8113381962%_)
                                            (let ((_%e8114281965%_
                                                   (gx#syntax-e
                                                    _%tl8113381962%_)))
                                              (let ((_%tl8114081972%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8114281965%_)))
                                                    (_%hd8114181969%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8114281965%_))))
                                                (if (gx#stx-null?
                                                     _%tl8114081972%_)
                                                    (_%__match8716087161%_
                                                     _%e8108882042%_
                                                     _%hd8108782046%_
                                                     _%tl8108682049%_
                                                     _%e8109182052%_
                                                     _%hd8109082056%_
                                                     _%tl8108982059%_
                                                     _%e8109282062%_
                                                     _%e8109582066%_
                                                     _%hd8109482070%_
                                                     _%tl8109382073%_
                                                     _%__splice8704087041%_
                                                     _%target8113181959%_
                                                     _%tl8113381962%_
                                                     _%e8114281965%_
                                                     _%hd8114181969%_
                                                     _%tl8114081972%_)
                                                    (if (gx#stx-null?
                                                         _%tl8109382073%_)
                                                        (_%__kont8704287043%_
                                                         _%hd8109482070%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8107981293%_))))))
                                            (if (gx#stx-null? _%tl8109382073%_)
                                                (_%__kont8704287043%_
                                                 _%hd8109482070%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8107981293%_))))))
                                    (if (gx#stx-null? _%tl8109382073%_)
                                        (_%__kont8704287043%_ _%hd8109482070%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8107981293%_)))))))
                        (if (let ((__tmp87511
                                   (gx#stx-length _%tl8109382073%_)))
                              (declare (not safe))
                              (##fx>= __tmp87511 '1))
                            (let ((_%__splice8704087041%_
                                   (gx#syntax-split-splice
                                    _%tl8109382073%_
                                    '1)))
                              (let ((_%tl8113381962%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8704087041%_
                                        '1)))
                                    (_%target8113181959%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8704087041%_
                                        '0))))
                                (if (gx#stx-pair? _%tl8113381962%_)
                                    (let ((_%e8114281965%_
                                           (gx#syntax-e _%tl8113381962%_)))
                                      (let ((_%tl8114081972%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8114281965%_)))
                                            (_%hd8114181969%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8114281965%_))))
                                        (if (gx#stx-null? _%tl8114081972%_)
                                            (_%__match8716087161%_
                                             _%e8108882042%_
                                             _%hd8108782046%_
                                             _%tl8108682049%_
                                             _%e8109182052%_
                                             _%hd8109082056%_
                                             _%tl8108982059%_
                                             _%e8109282062%_
                                             _%e8109582066%_
                                             _%hd8109482070%_
                                             _%tl8109382073%_
                                             _%__splice8704087041%_
                                             _%target8113181959%_
                                             _%tl8113381962%_
                                             _%e8114281965%_
                                             _%hd8114181969%_
                                             _%tl8114081972%_)
                                            (if (gx#stx-null? _%tl8109382073%_)
                                                (_%__kont8704287043%_
                                                 _%hd8109482070%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8107981293%_))))))
                                    (if (gx#stx-null? _%tl8109382073%_)
                                        (_%__kont8704287043%_ _%hd8109482070%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8107981293%_))))))
                            (if (gx#stx-null? _%tl8109382073%_)
                                (_%__kont8704287043%_ _%hd8109482070%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8107981293%_)))))))
                (if (let ((__tmp87512 (gx#stx-length _%tl8109382073%_)))
                      (declare (not safe))
                      (##fx>= __tmp87512 '1))
                    (let ((_%__splice8704087041%_
                           (gx#syntax-split-splice _%tl8109382073%_ '1)))
                      (let ((_%tl8113381962%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8704087041%_ '1)))
                            (_%target8113181959%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8704087041%_ '0))))
                        (if (gx#stx-pair? _%tl8113381962%_)
                            (let ((_%e8114281965%_
                                   (gx#syntax-e _%tl8113381962%_)))
                              (let ((_%tl8114081972%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8114281965%_)))
                                    (_%hd8114181969%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8114281965%_))))
                                (if (gx#stx-null? _%tl8114081972%_)
                                    (_%__match8716087161%_
                                     _%e8108882042%_
                                     _%hd8108782046%_
                                     _%tl8108682049%_
                                     _%e8109182052%_
                                     _%hd8109082056%_
                                     _%tl8108982059%_
                                     _%e8109282062%_
                                     _%e8109582066%_
                                     _%hd8109482070%_
                                     _%tl8109382073%_
                                     _%__splice8704087041%_
                                     _%target8113181959%_
                                     _%tl8113381962%_
                                     _%e8114281965%_
                                     _%hd8114181969%_
                                     _%tl8114081972%_)
                                    (if (gx#stx-null? _%tl8109382073%_)
                                        (_%__kont8704287043%_ _%hd8109482070%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8107981293%_))))))
                            (if (gx#stx-null? _%tl8109382073%_)
                                (_%__kont8704287043%_ _%hd8109482070%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8107981293%_))))))
                    (if (gx#stx-null? _%tl8109382073%_)
                        (_%__kont8704287043%_ _%hd8109482070%_)
                        (let () (declare (not safe)) (_%g8107981293%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8109382073%_)
                                                        (_%__kont8704287043%_
                                                         _%hd8109482070%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8107981293%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8107981293%_)))
                                        (if (equal? _%e8109282062%_ '2)
                                            (if (gx#stx-pair? _%tl8108982059%_)
                                                (let ((_%e8116981765%_
                                                       (gx#syntax-e
                                                        _%tl8108982059%_)))
                                                  (let ((_%tl8116781772%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8116981765%_)))
                                                        (_%hd8116881769%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8116981765%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl8116781772%_)
                                                        (let ((_%e8117281775%_
                                                               (gx#syntax-e
                                                                _%tl8116781772%_)))
                                                          (let ((_%tl8117081782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8117281775%_)))
                        (_%hd8117181779%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8117281775%_))))
                    (if (gx#stx-pair? _%hd8117181779%_)
                        (let ((_%e8117581785%_ (gx#syntax-e _%hd8117181779%_)))
                          (let ((_%tl8117381792%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8117581785%_)))
                                (_%hd8117481789%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8117581785%_))))
                            (if (gx#stx-pair? _%hd8117481789%_)
                                (let ((_%e8117881795%_
                                       (gx#syntax-e _%hd8117481789%_)))
                                  (let ((_%tl8117681802%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8117881795%_)))
                                        (_%hd8117781799%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8117881795%_))))
                                    (if (gx#identifier? _%hd8117781799%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g87513_|
                                             _%hd8117781799%_)
                                            (if (gx#stx-pair? _%tl8117681802%_)
                                                (let ((_%e8118181805%_
                                                       (gx#syntax-e
                                                        _%tl8117681802%_)))
                                                  (let ((_%tl8117981812%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8118181805%_)))
                                                        (_%hd8118081809%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8118181805%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8117981812%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8117381792%_)
                                                            (let ((_%e8118481815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8117381792%_)))
                      (let ((_%tl8118281822%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8118481815%_)))
                            (_%hd8118381819%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8118481815%_))))
                        (_%__kont8704487045%_
                         _%tl8117081782%_
                         _%tl8118281822%_
                         _%hd8118381819%_
                         _%hd8118081809%_
                         _%hd8116881769%_
                         _%hd8108782046%_)))
                    (_%__kont8704687047%_
                     _%tl8117081782%_
                     _%tl8117381792%_
                     _%hd8117481789%_
                     _%hd8116881769%_
                     _%hd8108782046%_))
                (_%__kont8704687047%_
                 _%tl8117081782%_
                 _%tl8117381792%_
                 _%hd8117481789%_
                 _%hd8116881769%_
                 _%hd8108782046%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont8704687047%_
                                                 _%tl8117081782%_
                                                 _%tl8117381792%_
                                                 _%hd8117481789%_
                                                 _%hd8116881769%_
                                                 _%hd8108782046%_))
                                            (_%__kont8704687047%_
                                             _%tl8117081782%_
                                             _%tl8117381792%_
                                             _%hd8117481789%_
                                             _%hd8116881769%_
                                             _%hd8108782046%_))
                                        (_%__kont8704687047%_
                                         _%tl8117081782%_
                                         _%tl8117381792%_
                                         _%hd8117481789%_
                                         _%hd8116881769%_
                                         _%hd8108782046%_))))
                                (_%__kont8704687047%_
                                 _%tl8117081782%_
                                 _%tl8117381792%_
                                 _%hd8117481789%_
                                 _%hd8116881769%_
                                 _%hd8108782046%_))))
                        (if (gx#stx-null? _%hd8117181779%_)
                            (_%__kont8704887049%_
                             _%tl8117081782%_
                             _%hd8116881769%_
                             _%hd8108782046%_)
                            (let () (declare (not safe)) (_%g8107981293%_))))))
                (let () (declare (not safe)) (_%g8107981293%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8107981293%_)))
                                            (if (equal? _%e8109282062%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl8108982059%_)
                                                    (let ((_%e8123681514%_
                                                           (gx#syntax-e
                                                            _%tl8108982059%_)))
                                                      (let ((_%tl8123481521%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8123681514%_)))
                    (_%hd8123581518%_
                     (let () (declare (not safe)) (##car _%e8123681514%_))))
                (if (gx#stx-pair? _%tl8123481521%_)
                    (let ((_%e8123981524%_ (gx#syntax-e _%tl8123481521%_)))
                      (let ((_%tl8123781531%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8123981524%_)))
                            (_%hd8123881528%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8123981524%_))))
                        (if (gx#stx-pair? _%hd8123881528%_)
                            (let ((_%e8124281534%_
                                   (gx#syntax-e _%hd8123881528%_)))
                              (let ((_%tl8124081541%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8124281534%_)))
                                    (_%hd8124181538%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8124281534%_))))
                                (_%__kont8705087051%_
                                 _%tl8123781531%_
                                 _%tl8124081541%_
                                 _%hd8124181538%_
                                 _%hd8123581518%_
                                 _%hd8108782046%_)))
                            (if (gx#stx-pair/null? _%hd8123581518%_)
                                (let ((_%__splice8705487055%_
                                       (gx#syntax-split-splice
                                        _%hd8123581518%_
                                        '0)))
                                  (let ((_%tl8126181337%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8705487055%_
                                            '1)))
                                        (_%target8125981334%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8705487055%_
                                            '0))))
                                    (if (gx#stx-null? _%tl8126181337%_)
                                        (_%__match8738287383%_
                                         _%e8108882042%_
                                         _%hd8108782046%_
                                         _%tl8108682049%_
                                         _%e8109182052%_
                                         _%hd8109082056%_
                                         _%tl8108982059%_
                                         _%e8109282062%_
                                         _%e8123681514%_
                                         _%hd8123581518%_
                                         _%tl8123481521%_
                                         _%__splice8705487055%_
                                         _%target8125981334%_
                                         _%tl8126181337%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8107981293%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8107981293%_))))))
                    (if (gx#stx-pair/null? _%hd8123581518%_)
                        (let ((_%__splice8705487055%_
                               (gx#syntax-split-splice _%hd8123581518%_ '0)))
                          (let ((_%tl8126181337%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8705487055%_ '1)))
                                (_%target8125981334%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8705487055%_ '0))))
                            (if (gx#stx-null? _%tl8126181337%_)
                                (_%__match8738287383%_
                                 _%e8108882042%_
                                 _%hd8108782046%_
                                 _%tl8108682049%_
                                 _%e8109182052%_
                                 _%hd8109082056%_
                                 _%tl8108982059%_
                                 _%e8109282062%_
                                 _%e8123681514%_
                                 _%hd8123581518%_
                                 _%tl8123481521%_
                                 _%__splice8705487055%_
                                 _%target8125981334%_
                                 _%tl8126181337%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8107981293%_)))))
                        (let () (declare (not safe)) (_%g8107981293%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8107981293%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8107981293%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g8107981293%_)))))
                          (let () (declare (not safe)) (_%g8107981293%_)))))
                  (let () (declare (not safe)) (_%g8107981293%_))))))))))
