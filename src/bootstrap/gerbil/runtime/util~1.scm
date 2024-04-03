(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g87485_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g87495_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx80512%_)
        (let* ((_%g8051680534%_
                (lambda (_%g8051780530%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8051780530%_)))
               (_%g8051580590%_
                (lambda (_%g8051780538%_)
                  (if (gx#stx-pair? _%g8051780538%_)
                      (let ((_%e8052280541%_ (gx#syntax-e _%g8051780538%_)))
                        (let ((_%hd8052180545%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8052280541%_)))
                              (_%tl8052080548%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8052280541%_))))
                          (if (gx#stx-pair? _%tl8052080548%_)
                              (let ((_%e8052580551%_
                                     (gx#syntax-e _%tl8052080548%_)))
                                (let ((_%hd8052480555%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8052580551%_)))
                                      (_%tl8052380558%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8052580551%_))))
                                  (if (gx#stx-pair? _%tl8052380558%_)
                                      (let ((_%e8052880561%_
                                             (gx#syntax-e _%tl8052380558%_)))
                                        (let ((_%hd8052780565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8052880561%_)))
                                              (_%tl8052680568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8052880561%_))))
                                          (if (gx#stx-null? _%tl8052680568%_)
                                              ((lambda (_%L80571%_ _%L80573%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L80573%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L80571%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8052780565%_
                                               _%hd8052480555%_)
                                              (_%g8051680534%_
                                               _%g8051780538%_))))
                                      (_%g8051680534%_ _%g8051780538%_))))
                              (_%g8051680534%_ _%g8051780538%_))))
                      (_%g8051680534%_ _%g8051780538%_)))))
          (_%g8051580590%_ _%$stx80512%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx80594%_)
        (let* ((_%g8059880612%_
                (lambda (_%g8059980608%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8059980608%_)))
               (_%g8059780653%_
                (lambda (_%g8059980616%_)
                  (if (gx#stx-pair? _%g8059980616%_)
                      (let ((_%e8060380619%_ (gx#syntax-e _%g8059980616%_)))
                        (let ((_%hd8060280623%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8060380619%_)))
                              (_%tl8060180626%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8060380619%_))))
                          (if (gx#stx-pair? _%tl8060180626%_)
                              (let ((_%e8060680629%_
                                     (gx#syntax-e _%tl8060180626%_)))
                                (let ((_%hd8060580633%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8060680629%_)))
                                      (_%tl8060480636%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8060680629%_))))
                                  (if (gx#stx-null? _%tl8060480636%_)
                                      ((lambda (_%L80639%_)
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
                                       (cons _%L80639%_
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
                                       _%hd8060580633%_)
                                      (_%g8059880612%_ _%g8059980616%_))))
                              (_%g8059880612%_ _%g8059980616%_))))
                      (_%g8059880612%_ _%g8059980616%_)))))
          (_%g8059780653%_ _%$stx80594%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx80657%_)
        (let* ((_%g8066180675%_
                (lambda (_%g8066280671%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8066280671%_)))
               (_%g8066080716%_
                (lambda (_%g8066280679%_)
                  (if (gx#stx-pair? _%g8066280679%_)
                      (let ((_%e8066680682%_ (gx#syntax-e _%g8066280679%_)))
                        (let ((_%hd8066580686%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8066680682%_)))
                              (_%tl8066480689%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8066680682%_))))
                          (if (gx#stx-pair? _%tl8066480689%_)
                              (let ((_%e8066980692%_
                                     (gx#syntax-e _%tl8066480689%_)))
                                (let ((_%hd8066880696%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8066980692%_)))
                                      (_%tl8066780699%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8066980692%_))))
                                  (if (gx#stx-null? _%tl8066780699%_)
                                      ((lambda (_%L80702%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L80702%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd8066880696%_)
                                      (_%g8066180675%_ _%g8066280679%_))))
                              (_%g8066180675%_ _%g8066280679%_))))
                      (_%g8066180675%_ _%g8066280679%_)))))
          (_%g8066080716%_ _%$stx80657%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx80720%_)
        (let* ((_%g8072480734%_
                (lambda (_%g8072580730%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8072580730%_)))
               (_%g8072380755%_
                (lambda (_%g8072580738%_)
                  (if (gx#stx-pair? _%g8072580738%_)
                      (let ((_%e8072880741%_ (gx#syntax-e _%g8072580738%_)))
                        (let ((_%hd8072780745%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8072880741%_)))
                              (_%tl8072680748%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8072880741%_))))
                          (if (gx#stx-null? _%tl8072680748%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g8072480734%_ _%g8072580738%_))))
                      (_%g8072480734%_ _%g8072580738%_)))))
          (_%g8072380755%_ _%$stx80720%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx80759%_)
        (let* ((_%g8076380781%_
                (lambda (_%g8076480777%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8076480777%_)))
               (_%g8076280836%_
                (lambda (_%g8076480785%_)
                  (if (gx#stx-pair? _%g8076480785%_)
                      (let ((_%e8076980788%_ (gx#syntax-e _%g8076480785%_)))
                        (let ((_%hd8076880792%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8076980788%_)))
                              (_%tl8076780795%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8076980788%_))))
                          (if (gx#stx-pair? _%tl8076780795%_)
                              (let ((_%e8077280798%_
                                     (gx#syntax-e _%tl8076780795%_)))
                                (let ((_%hd8077180802%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8077280798%_)))
                                      (_%tl8077080805%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8077280798%_))))
                                  (if (gx#stx-pair? _%tl8077080805%_)
                                      (let ((_%e8077580808%_
                                             (gx#syntax-e _%tl8077080805%_)))
                                        (let ((_%hd8077480812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8077580808%_)))
                                              (_%tl8077380815%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8077580808%_))))
                                          (if (gx#stx-null? _%tl8077380815%_)
                                              ((lambda (_%L80818%_ _%L80820%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L80820%_
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
                 (cons (cons _%L80818%_
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
                                               _%hd8077480812%_
                                               _%hd8077180802%_)
                                              (_%g8076380781%_
                                               _%g8076480785%_))))
                                      (_%g8076380781%_ _%g8076480785%_))))
                              (_%g8076380781%_ _%g8076480785%_))))
                      (_%g8076380781%_ _%g8076480785%_)))))
          (_%g8076280836%_ _%$stx80759%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx80840%_)
        (let* ((_%g8084480862%_
                (lambda (_%g8084580858%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8084580858%_)))
               (_%g8084380917%_
                (lambda (_%g8084580866%_)
                  (if (gx#stx-pair? _%g8084580866%_)
                      (let ((_%e8085080869%_ (gx#syntax-e _%g8084580866%_)))
                        (let ((_%hd8084980873%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8085080869%_)))
                              (_%tl8084880876%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8085080869%_))))
                          (if (gx#stx-pair? _%tl8084880876%_)
                              (let ((_%e8085380879%_
                                     (gx#syntax-e _%tl8084880876%_)))
                                (let ((_%hd8085280883%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8085380879%_)))
                                      (_%tl8085180886%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8085380879%_))))
                                  (if (gx#stx-pair? _%tl8085180886%_)
                                      (let ((_%e8085680889%_
                                             (gx#syntax-e _%tl8085180886%_)))
                                        (let ((_%hd8085580893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8085680889%_)))
                                              (_%tl8085480896%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8085680889%_))))
                                          (if (gx#stx-null? _%tl8085480896%_)
                                              ((lambda (_%L80899%_ _%L80901%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L80901%_
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
                                               (cons (cons _%L80899%_
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
                                               _%hd8085580893%_
                                               _%hd8085280883%_)
                                              (_%g8084480862%_
                                               _%g8084580866%_))))
                                      (_%g8084480862%_ _%g8084580866%_))))
                              (_%g8084480862%_ _%g8084580866%_))))
                      (_%g8084480862%_ _%g8084580866%_)))))
          (_%g8084380917%_ _%$stx80840%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx80921%_)
        (let* ((_%g8092580943%_
                (lambda (_%g8092680939%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8092680939%_)))
               (_%g8092480998%_
                (lambda (_%g8092680947%_)
                  (if (gx#stx-pair? _%g8092680947%_)
                      (let ((_%e8093180950%_ (gx#syntax-e _%g8092680947%_)))
                        (let ((_%hd8093080954%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8093180950%_)))
                              (_%tl8092980957%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8093180950%_))))
                          (if (gx#stx-pair? _%tl8092980957%_)
                              (let ((_%e8093480960%_
                                     (gx#syntax-e _%tl8092980957%_)))
                                (let ((_%hd8093380964%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8093480960%_)))
                                      (_%tl8093280967%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8093480960%_))))
                                  (if (gx#stx-pair? _%tl8093280967%_)
                                      (let ((_%e8093780970%_
                                             (gx#syntax-e _%tl8093280967%_)))
                                        (let ((_%hd8093680974%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8093780970%_)))
                                              (_%tl8093580977%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8093780970%_))))
                                          (if (gx#stx-null? _%tl8093580977%_)
                                              ((lambda (_%L80980%_ _%L80982%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L80982%_
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
                                               (cons (cons _%L80980%_
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
                                               _%hd8093680974%_
                                               _%hd8093380964%_)
                                              (_%g8092580943%_
                                               _%g8092680947%_))))
                                      (_%g8092580943%_ _%g8092680947%_))))
                              (_%g8092580943%_ _%g8092680947%_))))
                      (_%g8092580943%_ _%g8092680947%_)))))
          (_%g8092480998%_ _%$stx80921%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx81002%_)
        (let* ((_%g8100681017%_
                (lambda (_%g8100781013%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8100781013%_)))
               (_%g8100581046%_
                (lambda (_%g8100781021%_)
                  (if (gx#stx-pair? _%g8100781021%_)
                      (let ((_%e8101181024%_ (gx#syntax-e _%g8100781021%_)))
                        (let ((_%hd8101081028%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8101181024%_)))
                              (_%tl8100981031%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8101181024%_))))
                          ((lambda (_%L81034%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L81034%_)))
                           _%tl8100981031%_)))
                      (_%g8100681017%_ _%g8100781021%_)))))
          (_%g8100581046%_ _%$stx81002%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx81050%_)
        (let* ((_%__stx8701387014%_ _%$stx81050%_)
               (_%g8106181275%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8701387014%_))))
          (let ((_%__kont8701687017%_
                 (lambda (_%L82128%_
                          _%L82130%_
                          _%L82131%_
                          _%L82132%_
                          _%L82133%_)
                   (cons _%L82133%_
                         (cons '2
                               (cons '()
                                     (cons (let ((__tmp87480
                                                  (lambda (_%g8216382166%_
                                                           _%g8216482169%_)
                                                    (cons _%g8216382166%_
                                                          _%g8216482169%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp87480
                                              '()
                                              _%L82131%_))
                                           (cons _%L82132%_
                                                 (cons _%L82130%_
                                                       (cons _%L82128%_
                                                             '())))))))))
                (_%__kont8702087021%_
                 (lambda (_%L81981%_ _%L81983%_ _%L81984%_ _%L81985%_)
                   (cons _%L81985%_
                         (cons '2
                               (cons '()
                                     (cons (let ((__tmp87481
                                                  (lambda (_%g8200882011%_
                                                           _%g8200982014%_)
                                                    (cons _%g8200882011%_
                                                          _%g8200982014%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp87481
                                              '()
                                              _%L81983%_))
                                           (cons _%L81984%_
                                                 (cons _%L81981%_
                                                       (cons _%L81981%_
                                                             '())))))))))
                (_%__kont8702487025%_
                 (lambda (_%L81884%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L81884%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont8702687027%_
                 (lambda (_%L81807%_
                          _%L81809%_
                          _%L81810%_
                          _%L81811%_
                          _%L81812%_
                          _%L81813%_)
                   (cons _%L81813%_
                         (cons '2
                               (cons (cons (cons _%L81811%_
                                                 (cons _%L81810%_ '()))
                                           _%L81812%_)
                                     (cons _%L81809%_ _%L81807%_))))))
                (_%__kont8702887029%_
                 (lambda (_%L81688%_
                          _%L81690%_
                          _%L81691%_
                          _%L81692%_
                          _%L81693%_)
                   (cons _%L81693%_
                         (cons '2
                               (cons (cons (cons _%L81691%_
                                                 (cons _%L81691%_ '()))
                                           _%L81692%_)
                                     (cons _%L81690%_ _%L81688%_))))))
                (_%__kont8703087031%_
                 (lambda (_%L81605%_ _%L81607%_ _%L81608%_)
                   (cons _%L81608%_
                         (cons '3 (cons '() (cons _%L81607%_ _%L81605%_))))))
                (_%__kont8703287033%_
                 (lambda (_%L81526%_
                          _%L81528%_
                          _%L81529%_
                          _%L81530%_
                          _%L81531%_)
                   (cons _%L81531%_
                         (cons '3
                               (cons (cons _%L81529%_ _%L81530%_)
                                     (cons _%L81528%_ _%L81526%_))))))
                (_%__kont8703487035%_
                 (lambda (_%L81410%_
                          _%L81412%_
                          _%L81413%_
                          _%L81414%_
                          _%L81415%_
                          _%L81416%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L81413%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L81410%_ '())))
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
                                       (cons (let ((__tmp87482
                                                    (lambda (_%g8145081453%_
                                                             _%g8145181456%_)
                                                      (cons _%g8145081453%_
                                                            _%g8145181456%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp87482
                                                '()
                                                _%L81415%_))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (let ((__tmp87483
                                                    (lambda (_%g8144881459%_
                                                             _%g8144981462%_)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '() (cons _%g8144881459%_ '())))
                    _%g8144981462%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp87483
                                                '()
                                                _%L81414%_)))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L81412%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match8736487365%_
                    (lambda (_%e8123381282%_
                             _%hd8123281286%_
                             _%tl8123181289%_
                             _%e8123681292%_
                             _%hd8123581296%_
                             _%tl8123481299%_
                             _%e8123781302%_
                             _%e8124081306%_
                             _%hd8123981310%_
                             _%tl8123881313%_
                             _%__splice8703687037%_
                             _%target8124181316%_
                             _%tl8124381319%_)
                      (letrec ((_%loop8124481322%_
                                (lambda (_%hd8124281326%_
                                         _%exprs8124881329%_
                                         _%names8124981331%_)
                                  (if (gx#stx-pair? _%hd8124281326%_)
                                      (let ((_%e8124581334%_
                                             (gx#syntax-e _%hd8124281326%_)))
                                        (let ((_%lp-tl8124781341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8124581334%_)))
                                              (_%lp-hd8124681338%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8124581334%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd8124681338%_)
                                              (let ((_%e8125481344%_
                                                     (gx#syntax-e
                                                      _%lp-hd8124681338%_)))
                                                (let ((_%tl8125281351%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8125481344%_)))
                                                      (_%hd8125381348%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8125481344%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8125281351%_)
                                                      (let ((_%e8125781354%_
                                                             (gx#syntax-e
                                                              _%tl8125281351%_)))
                                                        (let ((_%tl8125581361%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8125781354%_)))
                      (_%hd8125681358%_
                       (let () (declare (not safe)) (##car _%e8125781354%_))))
                  (if (gx#stx-null? _%tl8125581361%_)
                      (_%loop8124481322%_
                       _%lp-tl8124781341%_
                       (cons _%hd8125681358%_ _%exprs8124881329%_)
                       (cons _%hd8125381348%_ _%names8124981331%_))
                      (let () (declare (not safe)) (_%g8106181275%_)))))
              (let () (declare (not safe)) (_%g8106181275%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g8106181275%_)))))
                                      (let ((_%names8125181367%_
                                             (reverse _%names8124981331%_))
                                            (_%exprs8125081364%_
                                             (reverse _%exprs8124881329%_)))
                                        (if (gx#stx-pair? _%tl8123881313%_)
                                            (let ((_%e8126081370%_
                                                   (gx#syntax-e
                                                    _%tl8123881313%_)))
                                              (let ((_%tl8125881377%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8126081370%_)))
                                                    (_%hd8125981374%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8126081370%_))))
                                                (if (gx#stx-null?
                                                     _%hd8125981374%_)
                                                    (if (gx#stx-pair?
                                                         _%tl8125881377%_)
                                                        (let ((_%e8126381380%_
                                                               (gx#syntax-e
                                                                _%tl8125881377%_)))
                                                          (let ((_%tl8126181387%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8126381380%_)))
                        (_%hd8126281384%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8126381380%_))))
                    (if (gx#stx-pair? _%tl8126181387%_)
                        (let ((_%e8126681390%_ (gx#syntax-e _%tl8126181387%_)))
                          (let ((_%tl8126481397%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8126681390%_)))
                                (_%hd8126581394%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8126681390%_))))
                            (if (gx#stx-pair? _%tl8126481397%_)
                                (let ((_%e8126981400%_
                                       (gx#syntax-e _%tl8126481397%_)))
                                  (let ((_%tl8126781407%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8126981400%_)))
                                        (_%hd8126881404%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8126981400%_))))
                                    (if (gx#stx-null? _%tl8126781407%_)
                                        (_%__kont8703487035%_
                                         _%hd8126881404%_
                                         _%hd8126581394%_
                                         _%hd8126281384%_
                                         _%exprs8125081364%_
                                         _%names8125181367%_
                                         _%hd8123281286%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8106181275%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8106181275%_)))))
                        (let () (declare (not safe)) (_%g8106181275%_)))))
                (let () (declare (not safe)) (_%g8106181275%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8106181275%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8106181275%_))))))))
                        (_%loop8124481322%_ _%target8124181316%_ '() '()))))
                   (_%__match8714287143%_
                    (lambda (_%e8110581907%_
                             _%hd8110481911%_
                             _%tl8110381914%_
                             _%e8110881917%_
                             _%hd8110781921%_
                             _%tl8110681924%_
                             _%e8110981927%_
                             _%e8111281931%_
                             _%hd8111181935%_
                             _%tl8111081938%_
                             _%__splice8702287023%_
                             _%target8111381941%_
                             _%tl8111581944%_
                             _%e8112481947%_
                             _%hd8112381951%_
                             _%tl8112281954%_)
                      (letrec ((_%loop8111681957%_
                                (lambda (_%hd8111481961%_ _%exprs8112081964%_)
                                  (if (gx#stx-pair? _%hd8111481961%_)
                                      (let ((_%e8111781967%_
                                             (gx#syntax-e _%hd8111481961%_)))
                                        (let ((_%lp-tl8111981974%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8111781967%_)))
                                              (_%lp-hd8111881971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8111781967%_))))
                                          (_%loop8111681957%_
                                           _%lp-tl8111981974%_
                                           (cons _%lp-hd8111881971%_
                                                 _%exprs8112081964%_))))
                                      (let ((_%exprs8112181977%_
                                             (reverse _%exprs8112081964%_)))
                                        (_%__kont8702087021%_
                                         _%hd8112381951%_
                                         _%exprs8112181977%_
                                         _%hd8111181935%_
                                         _%hd8110481911%_))))))
                        (_%loop8111681957%_ _%target8111381941%_ '()))))
                   (_%__match8710287103%_
                    (lambda (_%e8107082024%_
                             _%hd8106982028%_
                             _%tl8106882031%_
                             _%e8107382034%_
                             _%hd8107282038%_
                             _%tl8107182041%_
                             _%e8107482044%_
                             _%e8107782048%_
                             _%hd8107682052%_
                             _%tl8107582055%_
                             _%__splice8701887019%_
                             _%target8107882058%_
                             _%tl8108082061%_
                             _%e8108982064%_
                             _%hd8108882068%_
                             _%tl8108782071%_
                             _%e8109282074%_
                             _%hd8109182078%_
                             _%tl8109082081%_
                             _%e8109582084%_
                             _%hd8109482088%_
                             _%tl8109382091%_
                             _%e8109882094%_
                             _%hd8109782098%_
                             _%tl8109682101%_)
                      (letrec ((_%loop8108182104%_
                                (lambda (_%hd8107982108%_ _%exprs8108582111%_)
                                  (if (gx#stx-pair? _%hd8107982108%_)
                                      (let ((_%e8108282114%_
                                             (gx#syntax-e _%hd8107982108%_)))
                                        (let ((_%lp-tl8108482121%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8108282114%_)))
                                              (_%lp-hd8108382118%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8108282114%_))))
                                          (_%loop8108182104%_
                                           _%lp-tl8108482121%_
                                           (cons _%lp-hd8108382118%_
                                                 _%exprs8108582111%_))))
                                      (let ((_%exprs8108682124%_
                                             (reverse _%exprs8108582111%_)))
                                        (_%__kont8701687017%_
                                         _%hd8109782098%_
                                         _%hd8109482088%_
                                         _%exprs8108682124%_
                                         _%hd8107682052%_
                                         _%hd8106982028%_))))))
                        (_%loop8108182104%_ _%target8107882058%_ '())))))
              (if (gx#stx-pair? _%__stx8701387014%_)
                  (let ((_%e8107082024%_ (gx#syntax-e _%__stx8701387014%_)))
                    (let ((_%tl8106882031%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e8107082024%_)))
                          (_%hd8106982028%_
                           (let ()
                             (declare (not safe))
                             (##car _%e8107082024%_))))
                      (if (gx#stx-pair? _%tl8106882031%_)
                          (let ((_%e8107382034%_
                                 (gx#syntax-e _%tl8106882031%_)))
                            (let ((_%tl8107182041%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e8107382034%_)))
                                  (_%hd8107282038%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e8107382034%_))))
                              (if (gx#stx-datum? _%hd8107282038%_)
                                  (let ((_%e8107482044%_
                                         (gx#stx-e _%hd8107282038%_)))
                                    (if (equal? _%e8107482044%_ '1)
                                        (if (gx#stx-pair? _%tl8107182041%_)
                                            (let ((_%e8107782048%_
                                                   (gx#syntax-e
                                                    _%tl8107182041%_)))
                                              (let ((_%tl8107582055%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8107782048%_)))
                                                    (_%hd8107682052%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8107782048%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl8107582055%_)
                                                    (if (let ((__tmp87484
                                                               (gx#stx-length
                                                                _%tl8107582055%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp87484
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice8701887019%_
                       (gx#syntax-split-splice _%tl8107582055%_ '2)))
                  (let ((_%tl8108082061%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8701887019%_ '1)))
                        (_%target8107882058%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8701887019%_ '0))))
                    (if (gx#stx-pair? _%tl8108082061%_)
                        (let ((_%e8108982064%_ (gx#syntax-e _%tl8108082061%_)))
                          (let ((_%tl8108782071%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8108982064%_)))
                                (_%hd8108882068%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8108982064%_))))
                            (if (gx#stx-pair? _%hd8108882068%_)
                                (let ((_%e8109282074%_
                                       (gx#syntax-e _%hd8108882068%_)))
                                  (let ((_%tl8109082081%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8109282074%_)))
                                        (_%hd8109182078%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8109282074%_))))
                                    (if (gx#identifier? _%hd8109182078%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g87485_|
                                             _%hd8109182078%_)
                                            (if (gx#stx-pair? _%tl8109082081%_)
                                                (let ((_%e8109582084%_
                                                       (gx#syntax-e
                                                        _%tl8109082081%_)))
                                                  (let ((_%tl8109382091%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8109582084%_)))
                                                        (_%hd8109482088%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8109582084%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8109382091%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8108782071%_)
                                                            (let ((_%e8109882094%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8108782071%_)))
                      (let ((_%tl8109682101%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8109882094%_)))
                            (_%hd8109782098%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8109882094%_))))
                        (if (gx#stx-null? _%tl8109682101%_)
                            (_%__match8710287103%_
                             _%e8107082024%_
                             _%hd8106982028%_
                             _%tl8106882031%_
                             _%e8107382034%_
                             _%hd8107282038%_
                             _%tl8107182041%_
                             _%e8107482044%_
                             _%e8107782048%_
                             _%hd8107682052%_
                             _%tl8107582055%_
                             _%__splice8701887019%_
                             _%target8107882058%_
                             _%tl8108082061%_
                             _%e8108982064%_
                             _%hd8108882068%_
                             _%tl8108782071%_
                             _%e8109282074%_
                             _%hd8109182078%_
                             _%tl8109082081%_
                             _%e8109582084%_
                             _%hd8109482088%_
                             _%tl8109382091%_
                             _%e8109882094%_
                             _%hd8109782098%_
                             _%tl8109682101%_)
                            (if (let ((__tmp87486
                                       (gx#stx-length _%tl8107582055%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp87486 '1))
                                (let ((_%__splice8702287023%_
                                       (gx#syntax-split-splice
                                        _%tl8107582055%_
                                        '1)))
                                  (let ((_%tl8111581944%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8702287023%_
                                            '1)))
                                        (_%target8111381941%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8702287023%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl8111581944%_)
                                        (let ((_%e8112481947%_
                                               (gx#syntax-e _%tl8111581944%_)))
                                          (let ((_%tl8112281954%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e8112481947%_)))
                                                (_%hd8112381951%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e8112481947%_))))
                                            (if (gx#stx-null? _%tl8112281954%_)
                                                (_%__match8714287143%_
                                                 _%e8107082024%_
                                                 _%hd8106982028%_
                                                 _%tl8106882031%_
                                                 _%e8107382034%_
                                                 _%hd8107282038%_
                                                 _%tl8107182041%_
                                                 _%e8107482044%_
                                                 _%e8107782048%_
                                                 _%hd8107682052%_
                                                 _%tl8107582055%_
                                                 _%__splice8702287023%_
                                                 _%target8111381941%_
                                                 _%tl8111581944%_
                                                 _%e8112481947%_
                                                 _%hd8112381951%_
                                                 _%tl8112281954%_)
                                                (if (gx#stx-null?
                                                     _%tl8107582055%_)
                                                    (_%__kont8702487025%_
                                                     _%hd8107682052%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8106181275%_))))))
                                        (if (gx#stx-null? _%tl8107582055%_)
                                            (_%__kont8702487025%_
                                             _%hd8107682052%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8106181275%_))))))
                                (if (gx#stx-null? _%tl8107582055%_)
                                    (_%__kont8702487025%_ _%hd8107682052%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8106181275%_)))))))
                    (if (let ((__tmp87487 (gx#stx-length _%tl8107582055%_)))
                          (declare (not safe))
                          (##fx>= __tmp87487 '1))
                        (let ((_%__splice8702287023%_
                               (gx#syntax-split-splice _%tl8107582055%_ '1)))
                          (let ((_%tl8111581944%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8702287023%_ '1)))
                                (_%target8111381941%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8702287023%_ '0))))
                            (if (gx#stx-pair? _%tl8111581944%_)
                                (let ((_%e8112481947%_
                                       (gx#syntax-e _%tl8111581944%_)))
                                  (let ((_%tl8112281954%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8112481947%_)))
                                        (_%hd8112381951%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8112481947%_))))
                                    (if (gx#stx-null? _%tl8112281954%_)
                                        (_%__match8714287143%_
                                         _%e8107082024%_
                                         _%hd8106982028%_
                                         _%tl8106882031%_
                                         _%e8107382034%_
                                         _%hd8107282038%_
                                         _%tl8107182041%_
                                         _%e8107482044%_
                                         _%e8107782048%_
                                         _%hd8107682052%_
                                         _%tl8107582055%_
                                         _%__splice8702287023%_
                                         _%target8111381941%_
                                         _%tl8111581944%_
                                         _%e8112481947%_
                                         _%hd8112381951%_
                                         _%tl8112281954%_)
                                        (if (gx#stx-null? _%tl8107582055%_)
                                            (_%__kont8702487025%_
                                             _%hd8107682052%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8106181275%_))))))
                                (if (gx#stx-null? _%tl8107582055%_)
                                    (_%__kont8702487025%_ _%hd8107682052%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8106181275%_))))))
                        (if (gx#stx-null? _%tl8107582055%_)
                            (_%__kont8702487025%_ _%hd8107682052%_)
                            (let () (declare (not safe)) (_%g8106181275%_)))))
                (if (let ((__tmp87488 (gx#stx-length _%tl8107582055%_)))
                      (declare (not safe))
                      (##fx>= __tmp87488 '1))
                    (let ((_%__splice8702287023%_
                           (gx#syntax-split-splice _%tl8107582055%_ '1)))
                      (let ((_%tl8111581944%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8702287023%_ '1)))
                            (_%target8111381941%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8702287023%_ '0))))
                        (if (gx#stx-pair? _%tl8111581944%_)
                            (let ((_%e8112481947%_
                                   (gx#syntax-e _%tl8111581944%_)))
                              (let ((_%tl8112281954%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8112481947%_)))
                                    (_%hd8112381951%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8112481947%_))))
                                (if (gx#stx-null? _%tl8112281954%_)
                                    (_%__match8714287143%_
                                     _%e8107082024%_
                                     _%hd8106982028%_
                                     _%tl8106882031%_
                                     _%e8107382034%_
                                     _%hd8107282038%_
                                     _%tl8107182041%_
                                     _%e8107482044%_
                                     _%e8107782048%_
                                     _%hd8107682052%_
                                     _%tl8107582055%_
                                     _%__splice8702287023%_
                                     _%target8111381941%_
                                     _%tl8111581944%_
                                     _%e8112481947%_
                                     _%hd8112381951%_
                                     _%tl8112281954%_)
                                    (if (gx#stx-null? _%tl8107582055%_)
                                        (_%__kont8702487025%_ _%hd8107682052%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8106181275%_))))))
                            (if (gx#stx-null? _%tl8107582055%_)
                                (_%__kont8702487025%_ _%hd8107682052%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8106181275%_))))))
                    (if (gx#stx-null? _%tl8107582055%_)
                        (_%__kont8702487025%_ _%hd8107682052%_)
                        (let () (declare (not safe)) (_%g8106181275%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp87489
                                                           (gx#stx-length
                                                            _%tl8107582055%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp87489 '1))
                                                    (let ((_%__splice8702287023%_
                                                           (gx#syntax-split-splice
                                                            _%tl8107582055%_
                                                            '1)))
                                                      (let ((_%tl8111581944%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8702287023%_ '1)))
                    (_%target8111381941%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8702287023%_ '0))))
                (if (gx#stx-pair? _%tl8111581944%_)
                    (let ((_%e8112481947%_ (gx#syntax-e _%tl8111581944%_)))
                      (let ((_%tl8112281954%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8112481947%_)))
                            (_%hd8112381951%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8112481947%_))))
                        (if (gx#stx-null? _%tl8112281954%_)
                            (_%__match8714287143%_
                             _%e8107082024%_
                             _%hd8106982028%_
                             _%tl8106882031%_
                             _%e8107382034%_
                             _%hd8107282038%_
                             _%tl8107182041%_
                             _%e8107482044%_
                             _%e8107782048%_
                             _%hd8107682052%_
                             _%tl8107582055%_
                             _%__splice8702287023%_
                             _%target8111381941%_
                             _%tl8111581944%_
                             _%e8112481947%_
                             _%hd8112381951%_
                             _%tl8112281954%_)
                            (if (gx#stx-null? _%tl8107582055%_)
                                (_%__kont8702487025%_ _%hd8107682052%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8106181275%_))))))
                    (if (gx#stx-null? _%tl8107582055%_)
                        (_%__kont8702487025%_ _%hd8107682052%_)
                        (let () (declare (not safe)) (_%g8106181275%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8107582055%_)
                                                        (_%__kont8702487025%_
                                                         _%hd8107682052%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8106181275%_)))))
                                            (if (let ((__tmp87490
                                                       (gx#stx-length
                                                        _%tl8107582055%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp87490 '1))
                                                (let ((_%__splice8702287023%_
                                                       (gx#syntax-split-splice
                                                        _%tl8107582055%_
                                                        '1)))
                                                  (let ((_%tl8111581944%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8702287023%_
                                                            '1)))
                                                        (_%target8111381941%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8702287023%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl8111581944%_)
                                                        (let ((_%e8112481947%_
                                                               (gx#syntax-e
                                                                _%tl8111581944%_)))
                                                          (let ((_%tl8112281954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8112481947%_)))
                        (_%hd8112381951%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8112481947%_))))
                    (if (gx#stx-null? _%tl8112281954%_)
                        (_%__match8714287143%_
                         _%e8107082024%_
                         _%hd8106982028%_
                         _%tl8106882031%_
                         _%e8107382034%_
                         _%hd8107282038%_
                         _%tl8107182041%_
                         _%e8107482044%_
                         _%e8107782048%_
                         _%hd8107682052%_
                         _%tl8107582055%_
                         _%__splice8702287023%_
                         _%target8111381941%_
                         _%tl8111581944%_
                         _%e8112481947%_
                         _%hd8112381951%_
                         _%tl8112281954%_)
                        (if (gx#stx-null? _%tl8107582055%_)
                            (_%__kont8702487025%_ _%hd8107682052%_)
                            (let () (declare (not safe)) (_%g8106181275%_))))))
                (if (gx#stx-null? _%tl8107582055%_)
                    (_%__kont8702487025%_ _%hd8107682052%_)
                    (let () (declare (not safe)) (_%g8106181275%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl8107582055%_)
                                                    (_%__kont8702487025%_
                                                     _%hd8107682052%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8106181275%_)))))
                                        (if (let ((__tmp87491
                                                   (gx#stx-length
                                                    _%tl8107582055%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp87491 '1))
                                            (let ((_%__splice8702287023%_
                                                   (gx#syntax-split-splice
                                                    _%tl8107582055%_
                                                    '1)))
                                              (let ((_%tl8111581944%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8702287023%_
                                                        '1)))
                                                    (_%target8111381941%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8702287023%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl8111581944%_)
                                                    (let ((_%e8112481947%_
                                                           (gx#syntax-e
                                                            _%tl8111581944%_)))
                                                      (let ((_%tl8112281954%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8112481947%_)))
                    (_%hd8112381951%_
                     (let () (declare (not safe)) (##car _%e8112481947%_))))
                (if (gx#stx-null? _%tl8112281954%_)
                    (_%__match8714287143%_
                     _%e8107082024%_
                     _%hd8106982028%_
                     _%tl8106882031%_
                     _%e8107382034%_
                     _%hd8107282038%_
                     _%tl8107182041%_
                     _%e8107482044%_
                     _%e8107782048%_
                     _%hd8107682052%_
                     _%tl8107582055%_
                     _%__splice8702287023%_
                     _%target8111381941%_
                     _%tl8111581944%_
                     _%e8112481947%_
                     _%hd8112381951%_
                     _%tl8112281954%_)
                    (if (gx#stx-null? _%tl8107582055%_)
                        (_%__kont8702487025%_ _%hd8107682052%_)
                        (let () (declare (not safe)) (_%g8106181275%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8107582055%_)
                                                        (_%__kont8702487025%_
                                                         _%hd8107682052%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8106181275%_))))))
                                            (if (gx#stx-null? _%tl8107582055%_)
                                                (_%__kont8702487025%_
                                                 _%hd8107682052%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8106181275%_)))))))
                                (if (let ((__tmp87492
                                           (gx#stx-length _%tl8107582055%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp87492 '1))
                                    (let ((_%__splice8702287023%_
                                           (gx#syntax-split-splice
                                            _%tl8107582055%_
                                            '1)))
                                      (let ((_%tl8111581944%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8702287023%_
                                                '1)))
                                            (_%target8111381941%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8702287023%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl8111581944%_)
                                            (let ((_%e8112481947%_
                                                   (gx#syntax-e
                                                    _%tl8111581944%_)))
                                              (let ((_%tl8112281954%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8112481947%_)))
                                                    (_%hd8112381951%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8112481947%_))))
                                                (if (gx#stx-null?
                                                     _%tl8112281954%_)
                                                    (_%__match8714287143%_
                                                     _%e8107082024%_
                                                     _%hd8106982028%_
                                                     _%tl8106882031%_
                                                     _%e8107382034%_
                                                     _%hd8107282038%_
                                                     _%tl8107182041%_
                                                     _%e8107482044%_
                                                     _%e8107782048%_
                                                     _%hd8107682052%_
                                                     _%tl8107582055%_
                                                     _%__splice8702287023%_
                                                     _%target8111381941%_
                                                     _%tl8111581944%_
                                                     _%e8112481947%_
                                                     _%hd8112381951%_
                                                     _%tl8112281954%_)
                                                    (if (gx#stx-null?
                                                         _%tl8107582055%_)
                                                        (_%__kont8702487025%_
                                                         _%hd8107682052%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8106181275%_))))))
                                            (if (gx#stx-null? _%tl8107582055%_)
                                                (_%__kont8702487025%_
                                                 _%hd8107682052%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8106181275%_))))))
                                    (if (gx#stx-null? _%tl8107582055%_)
                                        (_%__kont8702487025%_ _%hd8107682052%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8106181275%_)))))))
                        (if (let ((__tmp87493
                                   (gx#stx-length _%tl8107582055%_)))
                              (declare (not safe))
                              (##fx>= __tmp87493 '1))
                            (let ((_%__splice8702287023%_
                                   (gx#syntax-split-splice
                                    _%tl8107582055%_
                                    '1)))
                              (let ((_%tl8111581944%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8702287023%_
                                        '1)))
                                    (_%target8111381941%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8702287023%_
                                        '0))))
                                (if (gx#stx-pair? _%tl8111581944%_)
                                    (let ((_%e8112481947%_
                                           (gx#syntax-e _%tl8111581944%_)))
                                      (let ((_%tl8112281954%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8112481947%_)))
                                            (_%hd8112381951%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8112481947%_))))
                                        (if (gx#stx-null? _%tl8112281954%_)
                                            (_%__match8714287143%_
                                             _%e8107082024%_
                                             _%hd8106982028%_
                                             _%tl8106882031%_
                                             _%e8107382034%_
                                             _%hd8107282038%_
                                             _%tl8107182041%_
                                             _%e8107482044%_
                                             _%e8107782048%_
                                             _%hd8107682052%_
                                             _%tl8107582055%_
                                             _%__splice8702287023%_
                                             _%target8111381941%_
                                             _%tl8111581944%_
                                             _%e8112481947%_
                                             _%hd8112381951%_
                                             _%tl8112281954%_)
                                            (if (gx#stx-null? _%tl8107582055%_)
                                                (_%__kont8702487025%_
                                                 _%hd8107682052%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8106181275%_))))))
                                    (if (gx#stx-null? _%tl8107582055%_)
                                        (_%__kont8702487025%_ _%hd8107682052%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8106181275%_))))))
                            (if (gx#stx-null? _%tl8107582055%_)
                                (_%__kont8702487025%_ _%hd8107682052%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8106181275%_)))))))
                (if (let ((__tmp87494 (gx#stx-length _%tl8107582055%_)))
                      (declare (not safe))
                      (##fx>= __tmp87494 '1))
                    (let ((_%__splice8702287023%_
                           (gx#syntax-split-splice _%tl8107582055%_ '1)))
                      (let ((_%tl8111581944%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8702287023%_ '1)))
                            (_%target8111381941%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8702287023%_ '0))))
                        (if (gx#stx-pair? _%tl8111581944%_)
                            (let ((_%e8112481947%_
                                   (gx#syntax-e _%tl8111581944%_)))
                              (let ((_%tl8112281954%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8112481947%_)))
                                    (_%hd8112381951%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8112481947%_))))
                                (if (gx#stx-null? _%tl8112281954%_)
                                    (_%__match8714287143%_
                                     _%e8107082024%_
                                     _%hd8106982028%_
                                     _%tl8106882031%_
                                     _%e8107382034%_
                                     _%hd8107282038%_
                                     _%tl8107182041%_
                                     _%e8107482044%_
                                     _%e8107782048%_
                                     _%hd8107682052%_
                                     _%tl8107582055%_
                                     _%__splice8702287023%_
                                     _%target8111381941%_
                                     _%tl8111581944%_
                                     _%e8112481947%_
                                     _%hd8112381951%_
                                     _%tl8112281954%_)
                                    (if (gx#stx-null? _%tl8107582055%_)
                                        (_%__kont8702487025%_ _%hd8107682052%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8106181275%_))))))
                            (if (gx#stx-null? _%tl8107582055%_)
                                (_%__kont8702487025%_ _%hd8107682052%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8106181275%_))))))
                    (if (gx#stx-null? _%tl8107582055%_)
                        (_%__kont8702487025%_ _%hd8107682052%_)
                        (let () (declare (not safe)) (_%g8106181275%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8107582055%_)
                                                        (_%__kont8702487025%_
                                                         _%hd8107682052%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8106181275%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8106181275%_)))
                                        (if (equal? _%e8107482044%_ '2)
                                            (if (gx#stx-pair? _%tl8107182041%_)
                                                (let ((_%e8115181747%_
                                                       (gx#syntax-e
                                                        _%tl8107182041%_)))
                                                  (let ((_%tl8114981754%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8115181747%_)))
                                                        (_%hd8115081751%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8115181747%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl8114981754%_)
                                                        (let ((_%e8115481757%_
                                                               (gx#syntax-e
                                                                _%tl8114981754%_)))
                                                          (let ((_%tl8115281764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8115481757%_)))
                        (_%hd8115381761%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8115481757%_))))
                    (if (gx#stx-pair? _%hd8115381761%_)
                        (let ((_%e8115781767%_ (gx#syntax-e _%hd8115381761%_)))
                          (let ((_%tl8115581774%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8115781767%_)))
                                (_%hd8115681771%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8115781767%_))))
                            (if (gx#stx-pair? _%hd8115681771%_)
                                (let ((_%e8116081777%_
                                       (gx#syntax-e _%hd8115681771%_)))
                                  (let ((_%tl8115881784%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8116081777%_)))
                                        (_%hd8115981781%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8116081777%_))))
                                    (if (gx#identifier? _%hd8115981781%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g87495_|
                                             _%hd8115981781%_)
                                            (if (gx#stx-pair? _%tl8115881784%_)
                                                (let ((_%e8116381787%_
                                                       (gx#syntax-e
                                                        _%tl8115881784%_)))
                                                  (let ((_%tl8116181794%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8116381787%_)))
                                                        (_%hd8116281791%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8116381787%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8116181794%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8115581774%_)
                                                            (let ((_%e8116681797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8115581774%_)))
                      (let ((_%tl8116481804%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8116681797%_)))
                            (_%hd8116581801%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8116681797%_))))
                        (_%__kont8702687027%_
                         _%tl8115281764%_
                         _%tl8116481804%_
                         _%hd8116581801%_
                         _%hd8116281791%_
                         _%hd8115081751%_
                         _%hd8106982028%_)))
                    (_%__kont8702887029%_
                     _%tl8115281764%_
                     _%tl8115581774%_
                     _%hd8115681771%_
                     _%hd8115081751%_
                     _%hd8106982028%_))
                (_%__kont8702887029%_
                 _%tl8115281764%_
                 _%tl8115581774%_
                 _%hd8115681771%_
                 _%hd8115081751%_
                 _%hd8106982028%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont8702887029%_
                                                 _%tl8115281764%_
                                                 _%tl8115581774%_
                                                 _%hd8115681771%_
                                                 _%hd8115081751%_
                                                 _%hd8106982028%_))
                                            (_%__kont8702887029%_
                                             _%tl8115281764%_
                                             _%tl8115581774%_
                                             _%hd8115681771%_
                                             _%hd8115081751%_
                                             _%hd8106982028%_))
                                        (_%__kont8702887029%_
                                         _%tl8115281764%_
                                         _%tl8115581774%_
                                         _%hd8115681771%_
                                         _%hd8115081751%_
                                         _%hd8106982028%_))))
                                (_%__kont8702887029%_
                                 _%tl8115281764%_
                                 _%tl8115581774%_
                                 _%hd8115681771%_
                                 _%hd8115081751%_
                                 _%hd8106982028%_))))
                        (if (gx#stx-null? _%hd8115381761%_)
                            (_%__kont8703087031%_
                             _%tl8115281764%_
                             _%hd8115081751%_
                             _%hd8106982028%_)
                            (let () (declare (not safe)) (_%g8106181275%_))))))
                (let () (declare (not safe)) (_%g8106181275%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8106181275%_)))
                                            (if (equal? _%e8107482044%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl8107182041%_)
                                                    (let ((_%e8121881496%_
                                                           (gx#syntax-e
                                                            _%tl8107182041%_)))
                                                      (let ((_%tl8121681503%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8121881496%_)))
                    (_%hd8121781500%_
                     (let () (declare (not safe)) (##car _%e8121881496%_))))
                (if (gx#stx-pair? _%tl8121681503%_)
                    (let ((_%e8122181506%_ (gx#syntax-e _%tl8121681503%_)))
                      (let ((_%tl8121981513%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8122181506%_)))
                            (_%hd8122081510%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8122181506%_))))
                        (if (gx#stx-pair? _%hd8122081510%_)
                            (let ((_%e8122481516%_
                                   (gx#syntax-e _%hd8122081510%_)))
                              (let ((_%tl8122281523%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8122481516%_)))
                                    (_%hd8122381520%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8122481516%_))))
                                (_%__kont8703287033%_
                                 _%tl8121981513%_
                                 _%tl8122281523%_
                                 _%hd8122381520%_
                                 _%hd8121781500%_
                                 _%hd8106982028%_)))
                            (if (gx#stx-pair/null? _%hd8121781500%_)
                                (let ((_%__splice8703687037%_
                                       (gx#syntax-split-splice
                                        _%hd8121781500%_
                                        '0)))
                                  (let ((_%tl8124381319%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8703687037%_
                                            '1)))
                                        (_%target8124181316%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8703687037%_
                                            '0))))
                                    (if (gx#stx-null? _%tl8124381319%_)
                                        (_%__match8736487365%_
                                         _%e8107082024%_
                                         _%hd8106982028%_
                                         _%tl8106882031%_
                                         _%e8107382034%_
                                         _%hd8107282038%_
                                         _%tl8107182041%_
                                         _%e8107482044%_
                                         _%e8121881496%_
                                         _%hd8121781500%_
                                         _%tl8121681503%_
                                         _%__splice8703687037%_
                                         _%target8124181316%_
                                         _%tl8124381319%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8106181275%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8106181275%_))))))
                    (if (gx#stx-pair/null? _%hd8121781500%_)
                        (let ((_%__splice8703687037%_
                               (gx#syntax-split-splice _%hd8121781500%_ '0)))
                          (let ((_%tl8124381319%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8703687037%_ '1)))
                                (_%target8124181316%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8703687037%_ '0))))
                            (if (gx#stx-null? _%tl8124381319%_)
                                (_%__match8736487365%_
                                 _%e8107082024%_
                                 _%hd8106982028%_
                                 _%tl8106882031%_
                                 _%e8107382034%_
                                 _%hd8107282038%_
                                 _%tl8107182041%_
                                 _%e8107482044%_
                                 _%e8121881496%_
                                 _%hd8121781500%_
                                 _%tl8121681503%_
                                 _%__splice8703687037%_
                                 _%target8124181316%_
                                 _%tl8124381319%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8106181275%_)))))
                        (let () (declare (not safe)) (_%g8106181275%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8106181275%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8106181275%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g8106181275%_)))))
                          (let () (declare (not safe)) (_%g8106181275%_)))))
                  (let () (declare (not safe)) (_%g8106181275%_))))))))))
