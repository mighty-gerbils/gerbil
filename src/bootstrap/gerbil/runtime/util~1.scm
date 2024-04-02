(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g87354_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g87364_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx80381%_)
        (let* ((_%g8038580403%_
                (lambda (_%g8038680399%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8038680399%_)))
               (_%g8038480459%_
                (lambda (_%g8038680407%_)
                  (if (gx#stx-pair? _%g8038680407%_)
                      (let ((_%e8039180410%_ (gx#syntax-e _%g8038680407%_)))
                        (let ((_%hd8039080414%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8039180410%_)))
                              (_%tl8038980417%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8039180410%_))))
                          (if (gx#stx-pair? _%tl8038980417%_)
                              (let ((_%e8039480420%_
                                     (gx#syntax-e _%tl8038980417%_)))
                                (let ((_%hd8039380424%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8039480420%_)))
                                      (_%tl8039280427%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8039480420%_))))
                                  (if (gx#stx-pair? _%tl8039280427%_)
                                      (let ((_%e8039780430%_
                                             (gx#syntax-e _%tl8039280427%_)))
                                        (let ((_%hd8039680434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8039780430%_)))
                                              (_%tl8039580437%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8039780430%_))))
                                          (if (gx#stx-null? _%tl8039580437%_)
                                              ((lambda (_%L80440%_ _%L80442%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L80442%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L80440%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8039680434%_
                                               _%hd8039380424%_)
                                              (_%g8038580403%_
                                               _%g8038680407%_))))
                                      (_%g8038580403%_ _%g8038680407%_))))
                              (_%g8038580403%_ _%g8038680407%_))))
                      (_%g8038580403%_ _%g8038680407%_)))))
          (_%g8038480459%_ _%$stx80381%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx80463%_)
        (let* ((_%g8046780481%_
                (lambda (_%g8046880477%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8046880477%_)))
               (_%g8046680522%_
                (lambda (_%g8046880485%_)
                  (if (gx#stx-pair? _%g8046880485%_)
                      (let ((_%e8047280488%_ (gx#syntax-e _%g8046880485%_)))
                        (let ((_%hd8047180492%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8047280488%_)))
                              (_%tl8047080495%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8047280488%_))))
                          (if (gx#stx-pair? _%tl8047080495%_)
                              (let ((_%e8047580498%_
                                     (gx#syntax-e _%tl8047080495%_)))
                                (let ((_%hd8047480502%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8047580498%_)))
                                      (_%tl8047380505%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8047580498%_))))
                                  (if (gx#stx-null? _%tl8047380505%_)
                                      ((lambda (_%L80508%_)
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
                                       (cons _%L80508%_
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
                                       _%hd8047480502%_)
                                      (_%g8046780481%_ _%g8046880485%_))))
                              (_%g8046780481%_ _%g8046880485%_))))
                      (_%g8046780481%_ _%g8046880485%_)))))
          (_%g8046680522%_ _%$stx80463%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx80526%_)
        (let* ((_%g8053080544%_
                (lambda (_%g8053180540%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8053180540%_)))
               (_%g8052980585%_
                (lambda (_%g8053180548%_)
                  (if (gx#stx-pair? _%g8053180548%_)
                      (let ((_%e8053580551%_ (gx#syntax-e _%g8053180548%_)))
                        (let ((_%hd8053480555%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8053580551%_)))
                              (_%tl8053380558%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8053580551%_))))
                          (if (gx#stx-pair? _%tl8053380558%_)
                              (let ((_%e8053880561%_
                                     (gx#syntax-e _%tl8053380558%_)))
                                (let ((_%hd8053780565%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8053880561%_)))
                                      (_%tl8053680568%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8053880561%_))))
                                  (if (gx#stx-null? _%tl8053680568%_)
                                      ((lambda (_%L80571%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L80571%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd8053780565%_)
                                      (_%g8053080544%_ _%g8053180548%_))))
                              (_%g8053080544%_ _%g8053180548%_))))
                      (_%g8053080544%_ _%g8053180548%_)))))
          (_%g8052980585%_ _%$stx80526%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx80589%_)
        (let* ((_%g8059380603%_
                (lambda (_%g8059480599%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8059480599%_)))
               (_%g8059280624%_
                (lambda (_%g8059480607%_)
                  (if (gx#stx-pair? _%g8059480607%_)
                      (let ((_%e8059780610%_ (gx#syntax-e _%g8059480607%_)))
                        (let ((_%hd8059680614%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8059780610%_)))
                              (_%tl8059580617%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8059780610%_))))
                          (if (gx#stx-null? _%tl8059580617%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g8059380603%_ _%g8059480607%_))))
                      (_%g8059380603%_ _%g8059480607%_)))))
          (_%g8059280624%_ _%$stx80589%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx80628%_)
        (let* ((_%g8063280650%_
                (lambda (_%g8063380646%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8063380646%_)))
               (_%g8063180705%_
                (lambda (_%g8063380654%_)
                  (if (gx#stx-pair? _%g8063380654%_)
                      (let ((_%e8063880657%_ (gx#syntax-e _%g8063380654%_)))
                        (let ((_%hd8063780661%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8063880657%_)))
                              (_%tl8063680664%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8063880657%_))))
                          (if (gx#stx-pair? _%tl8063680664%_)
                              (let ((_%e8064180667%_
                                     (gx#syntax-e _%tl8063680664%_)))
                                (let ((_%hd8064080671%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8064180667%_)))
                                      (_%tl8063980674%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8064180667%_))))
                                  (if (gx#stx-pair? _%tl8063980674%_)
                                      (let ((_%e8064480677%_
                                             (gx#syntax-e _%tl8063980674%_)))
                                        (let ((_%hd8064380681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8064480677%_)))
                                              (_%tl8064280684%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8064480677%_))))
                                          (if (gx#stx-null? _%tl8064280684%_)
                                              ((lambda (_%L80687%_ _%L80689%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L80689%_
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
                 (cons (cons _%L80687%_
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
                                               _%hd8064380681%_
                                               _%hd8064080671%_)
                                              (_%g8063280650%_
                                               _%g8063380654%_))))
                                      (_%g8063280650%_ _%g8063380654%_))))
                              (_%g8063280650%_ _%g8063380654%_))))
                      (_%g8063280650%_ _%g8063380654%_)))))
          (_%g8063180705%_ _%$stx80628%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx80709%_)
        (let* ((_%g8071380731%_
                (lambda (_%g8071480727%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8071480727%_)))
               (_%g8071280786%_
                (lambda (_%g8071480735%_)
                  (if (gx#stx-pair? _%g8071480735%_)
                      (let ((_%e8071980738%_ (gx#syntax-e _%g8071480735%_)))
                        (let ((_%hd8071880742%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8071980738%_)))
                              (_%tl8071780745%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8071980738%_))))
                          (if (gx#stx-pair? _%tl8071780745%_)
                              (let ((_%e8072280748%_
                                     (gx#syntax-e _%tl8071780745%_)))
                                (let ((_%hd8072180752%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8072280748%_)))
                                      (_%tl8072080755%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8072280748%_))))
                                  (if (gx#stx-pair? _%tl8072080755%_)
                                      (let ((_%e8072580758%_
                                             (gx#syntax-e _%tl8072080755%_)))
                                        (let ((_%hd8072480762%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8072580758%_)))
                                              (_%tl8072380765%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8072580758%_))))
                                          (if (gx#stx-null? _%tl8072380765%_)
                                              ((lambda (_%L80768%_ _%L80770%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L80770%_
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
                                               (cons (cons _%L80768%_
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
                                               _%hd8072480762%_
                                               _%hd8072180752%_)
                                              (_%g8071380731%_
                                               _%g8071480735%_))))
                                      (_%g8071380731%_ _%g8071480735%_))))
                              (_%g8071380731%_ _%g8071480735%_))))
                      (_%g8071380731%_ _%g8071480735%_)))))
          (_%g8071280786%_ _%$stx80709%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx80790%_)
        (let* ((_%g8079480812%_
                (lambda (_%g8079580808%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8079580808%_)))
               (_%g8079380867%_
                (lambda (_%g8079580816%_)
                  (if (gx#stx-pair? _%g8079580816%_)
                      (let ((_%e8080080819%_ (gx#syntax-e _%g8079580816%_)))
                        (let ((_%hd8079980823%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8080080819%_)))
                              (_%tl8079880826%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8080080819%_))))
                          (if (gx#stx-pair? _%tl8079880826%_)
                              (let ((_%e8080380829%_
                                     (gx#syntax-e _%tl8079880826%_)))
                                (let ((_%hd8080280833%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8080380829%_)))
                                      (_%tl8080180836%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8080380829%_))))
                                  (if (gx#stx-pair? _%tl8080180836%_)
                                      (let ((_%e8080680839%_
                                             (gx#syntax-e _%tl8080180836%_)))
                                        (let ((_%hd8080580843%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8080680839%_)))
                                              (_%tl8080480846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8080680839%_))))
                                          (if (gx#stx-null? _%tl8080480846%_)
                                              ((lambda (_%L80849%_ _%L80851%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L80851%_
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
                                               (cons (cons _%L80849%_
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
                                               _%hd8080580843%_
                                               _%hd8080280833%_)
                                              (_%g8079480812%_
                                               _%g8079580816%_))))
                                      (_%g8079480812%_ _%g8079580816%_))))
                              (_%g8079480812%_ _%g8079580816%_))))
                      (_%g8079480812%_ _%g8079580816%_)))))
          (_%g8079380867%_ _%$stx80790%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx80871%_)
        (let* ((_%g8087580886%_
                (lambda (_%g8087680882%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8087680882%_)))
               (_%g8087480915%_
                (lambda (_%g8087680890%_)
                  (if (gx#stx-pair? _%g8087680890%_)
                      (let ((_%e8088080893%_ (gx#syntax-e _%g8087680890%_)))
                        (let ((_%hd8087980897%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8088080893%_)))
                              (_%tl8087880900%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8088080893%_))))
                          ((lambda (_%L80903%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L80903%_)))
                           _%tl8087880900%_)))
                      (_%g8087580886%_ _%g8087680890%_)))))
          (_%g8087480915%_ _%$stx80871%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx80919%_)
        (let* ((_%__stx8688286883%_ _%$stx80919%_)
               (_%g8093081144%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8688286883%_))))
          (let ((_%__kont8688586886%_
                 (lambda (_%L81997%_
                          _%L81999%_
                          _%L82000%_
                          _%L82001%_
                          _%L82002%_)
                   (cons _%L82002%_
                         (cons '2
                               (cons '()
                                     (cons (let ((__tmp87349
                                                  (lambda (_%g8203282035%_
                                                           _%g8203382038%_)
                                                    (cons _%g8203282035%_
                                                          _%g8203382038%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp87349
                                              '()
                                              _%L82000%_))
                                           (cons _%L82001%_
                                                 (cons _%L81999%_
                                                       (cons _%L81997%_
                                                             '())))))))))
                (_%__kont8688986890%_
                 (lambda (_%L81850%_ _%L81852%_ _%L81853%_ _%L81854%_)
                   (cons _%L81854%_
                         (cons '2
                               (cons '()
                                     (cons (let ((__tmp87350
                                                  (lambda (_%g8187781880%_
                                                           _%g8187881883%_)
                                                    (cons _%g8187781880%_
                                                          _%g8187881883%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp87350
                                              '()
                                              _%L81852%_))
                                           (cons _%L81853%_
                                                 (cons _%L81850%_
                                                       (cons _%L81850%_
                                                             '())))))))))
                (_%__kont8689386894%_
                 (lambda (_%L81753%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L81753%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont8689586896%_
                 (lambda (_%L81676%_
                          _%L81678%_
                          _%L81679%_
                          _%L81680%_
                          _%L81681%_
                          _%L81682%_)
                   (cons _%L81682%_
                         (cons '2
                               (cons (cons (cons _%L81680%_
                                                 (cons _%L81679%_ '()))
                                           _%L81681%_)
                                     (cons _%L81678%_ _%L81676%_))))))
                (_%__kont8689786898%_
                 (lambda (_%L81557%_
                          _%L81559%_
                          _%L81560%_
                          _%L81561%_
                          _%L81562%_)
                   (cons _%L81562%_
                         (cons '2
                               (cons (cons (cons _%L81560%_
                                                 (cons _%L81560%_ '()))
                                           _%L81561%_)
                                     (cons _%L81559%_ _%L81557%_))))))
                (_%__kont8689986900%_
                 (lambda (_%L81474%_ _%L81476%_ _%L81477%_)
                   (cons _%L81477%_
                         (cons '3 (cons '() (cons _%L81476%_ _%L81474%_))))))
                (_%__kont8690186902%_
                 (lambda (_%L81395%_
                          _%L81397%_
                          _%L81398%_
                          _%L81399%_
                          _%L81400%_)
                   (cons _%L81400%_
                         (cons '3
                               (cons (cons _%L81398%_ _%L81399%_)
                                     (cons _%L81397%_ _%L81395%_))))))
                (_%__kont8690386904%_
                 (lambda (_%L81279%_
                          _%L81281%_
                          _%L81282%_
                          _%L81283%_
                          _%L81284%_
                          _%L81285%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L81282%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L81279%_ '())))
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
                                       (cons (let ((__tmp87351
                                                    (lambda (_%g8131981322%_
                                                             _%g8132081325%_)
                                                      (cons _%g8131981322%_
                                                            _%g8132081325%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp87351
                                                '()
                                                _%L81284%_))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (let ((__tmp87352
                                                    (lambda (_%g8131781328%_
                                                             _%g8131881331%_)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '() (cons _%g8131781328%_ '())))
                    _%g8131881331%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp87352
                                                '()
                                                _%L81283%_)))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L81281%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match8723387234%_
                    (lambda (_%e8110281151%_
                             _%hd8110181155%_
                             _%tl8110081158%_
                             _%e8110581161%_
                             _%hd8110481165%_
                             _%tl8110381168%_
                             _%e8110681171%_
                             _%e8110981175%_
                             _%hd8110881179%_
                             _%tl8110781182%_
                             _%__splice8690586906%_
                             _%target8111081185%_
                             _%tl8111281188%_)
                      (letrec ((_%loop8111381191%_
                                (lambda (_%hd8111181195%_
                                         _%exprs8111781198%_
                                         _%names8111881200%_)
                                  (if (gx#stx-pair? _%hd8111181195%_)
                                      (let ((_%e8111481203%_
                                             (gx#syntax-e _%hd8111181195%_)))
                                        (let ((_%lp-tl8111681210%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8111481203%_)))
                                              (_%lp-hd8111581207%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8111481203%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd8111581207%_)
                                              (let ((_%e8112381213%_
                                                     (gx#syntax-e
                                                      _%lp-hd8111581207%_)))
                                                (let ((_%tl8112181220%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8112381213%_)))
                                                      (_%hd8112281217%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8112381213%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8112181220%_)
                                                      (let ((_%e8112681223%_
                                                             (gx#syntax-e
                                                              _%tl8112181220%_)))
                                                        (let ((_%tl8112481230%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8112681223%_)))
                      (_%hd8112581227%_
                       (let () (declare (not safe)) (##car _%e8112681223%_))))
                  (if (gx#stx-null? _%tl8112481230%_)
                      (_%loop8111381191%_
                       _%lp-tl8111681210%_
                       (cons _%hd8112581227%_ _%exprs8111781198%_)
                       (cons _%hd8112281217%_ _%names8111881200%_))
                      (let () (declare (not safe)) (_%g8093081144%_)))))
              (let () (declare (not safe)) (_%g8093081144%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g8093081144%_)))))
                                      (let ((_%names8112081236%_
                                             (reverse _%names8111881200%_))
                                            (_%exprs8111981233%_
                                             (reverse _%exprs8111781198%_)))
                                        (if (gx#stx-pair? _%tl8110781182%_)
                                            (let ((_%e8112981239%_
                                                   (gx#syntax-e
                                                    _%tl8110781182%_)))
                                              (let ((_%tl8112781246%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8112981239%_)))
                                                    (_%hd8112881243%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8112981239%_))))
                                                (if (gx#stx-null?
                                                     _%hd8112881243%_)
                                                    (if (gx#stx-pair?
                                                         _%tl8112781246%_)
                                                        (let ((_%e8113281249%_
                                                               (gx#syntax-e
                                                                _%tl8112781246%_)))
                                                          (let ((_%tl8113081256%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8113281249%_)))
                        (_%hd8113181253%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8113281249%_))))
                    (if (gx#stx-pair? _%tl8113081256%_)
                        (let ((_%e8113581259%_ (gx#syntax-e _%tl8113081256%_)))
                          (let ((_%tl8113381266%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8113581259%_)))
                                (_%hd8113481263%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8113581259%_))))
                            (if (gx#stx-pair? _%tl8113381266%_)
                                (let ((_%e8113881269%_
                                       (gx#syntax-e _%tl8113381266%_)))
                                  (let ((_%tl8113681276%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8113881269%_)))
                                        (_%hd8113781273%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8113881269%_))))
                                    (if (gx#stx-null? _%tl8113681276%_)
                                        (_%__kont8690386904%_
                                         _%hd8113781273%_
                                         _%hd8113481263%_
                                         _%hd8113181253%_
                                         _%exprs8111981233%_
                                         _%names8112081236%_
                                         _%hd8110181155%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8093081144%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8093081144%_)))))
                        (let () (declare (not safe)) (_%g8093081144%_)))))
                (let () (declare (not safe)) (_%g8093081144%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8093081144%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8093081144%_))))))))
                        (_%loop8111381191%_ _%target8111081185%_ '() '()))))
                   (_%__match8701187012%_
                    (lambda (_%e8097481776%_
                             _%hd8097381780%_
                             _%tl8097281783%_
                             _%e8097781786%_
                             _%hd8097681790%_
                             _%tl8097581793%_
                             _%e8097881796%_
                             _%e8098181800%_
                             _%hd8098081804%_
                             _%tl8097981807%_
                             _%__splice8689186892%_
                             _%target8098281810%_
                             _%tl8098481813%_
                             _%e8099381816%_
                             _%hd8099281820%_
                             _%tl8099181823%_)
                      (letrec ((_%loop8098581826%_
                                (lambda (_%hd8098381830%_ _%exprs8098981833%_)
                                  (if (gx#stx-pair? _%hd8098381830%_)
                                      (let ((_%e8098681836%_
                                             (gx#syntax-e _%hd8098381830%_)))
                                        (let ((_%lp-tl8098881843%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8098681836%_)))
                                              (_%lp-hd8098781840%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8098681836%_))))
                                          (_%loop8098581826%_
                                           _%lp-tl8098881843%_
                                           (cons _%lp-hd8098781840%_
                                                 _%exprs8098981833%_))))
                                      (let ((_%exprs8099081846%_
                                             (reverse _%exprs8098981833%_)))
                                        (_%__kont8688986890%_
                                         _%hd8099281820%_
                                         _%exprs8099081846%_
                                         _%hd8098081804%_
                                         _%hd8097381780%_))))))
                        (_%loop8098581826%_ _%target8098281810%_ '()))))
                   (_%__match8697186972%_
                    (lambda (_%e8093981893%_
                             _%hd8093881897%_
                             _%tl8093781900%_
                             _%e8094281903%_
                             _%hd8094181907%_
                             _%tl8094081910%_
                             _%e8094381913%_
                             _%e8094681917%_
                             _%hd8094581921%_
                             _%tl8094481924%_
                             _%__splice8688786888%_
                             _%target8094781927%_
                             _%tl8094981930%_
                             _%e8095881933%_
                             _%hd8095781937%_
                             _%tl8095681940%_
                             _%e8096181943%_
                             _%hd8096081947%_
                             _%tl8095981950%_
                             _%e8096481953%_
                             _%hd8096381957%_
                             _%tl8096281960%_
                             _%e8096781963%_
                             _%hd8096681967%_
                             _%tl8096581970%_)
                      (letrec ((_%loop8095081973%_
                                (lambda (_%hd8094881977%_ _%exprs8095481980%_)
                                  (if (gx#stx-pair? _%hd8094881977%_)
                                      (let ((_%e8095181983%_
                                             (gx#syntax-e _%hd8094881977%_)))
                                        (let ((_%lp-tl8095381990%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8095181983%_)))
                                              (_%lp-hd8095281987%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8095181983%_))))
                                          (_%loop8095081973%_
                                           _%lp-tl8095381990%_
                                           (cons _%lp-hd8095281987%_
                                                 _%exprs8095481980%_))))
                                      (let ((_%exprs8095581993%_
                                             (reverse _%exprs8095481980%_)))
                                        (_%__kont8688586886%_
                                         _%hd8096681967%_
                                         _%hd8096381957%_
                                         _%exprs8095581993%_
                                         _%hd8094581921%_
                                         _%hd8093881897%_))))))
                        (_%loop8095081973%_ _%target8094781927%_ '())))))
              (if (gx#stx-pair? _%__stx8688286883%_)
                  (let ((_%e8093981893%_ (gx#syntax-e _%__stx8688286883%_)))
                    (let ((_%tl8093781900%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e8093981893%_)))
                          (_%hd8093881897%_
                           (let ()
                             (declare (not safe))
                             (##car _%e8093981893%_))))
                      (if (gx#stx-pair? _%tl8093781900%_)
                          (let ((_%e8094281903%_
                                 (gx#syntax-e _%tl8093781900%_)))
                            (let ((_%tl8094081910%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e8094281903%_)))
                                  (_%hd8094181907%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e8094281903%_))))
                              (if (gx#stx-datum? _%hd8094181907%_)
                                  (let ((_%e8094381913%_
                                         (gx#stx-e _%hd8094181907%_)))
                                    (if (equal? _%e8094381913%_ '1)
                                        (if (gx#stx-pair? _%tl8094081910%_)
                                            (let ((_%e8094681917%_
                                                   (gx#syntax-e
                                                    _%tl8094081910%_)))
                                              (let ((_%tl8094481924%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8094681917%_)))
                                                    (_%hd8094581921%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8094681917%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl8094481924%_)
                                                    (if (let ((__tmp87353
                                                               (gx#stx-length
                                                                _%tl8094481924%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp87353
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice8688786888%_
                       (gx#syntax-split-splice _%tl8094481924%_ '2)))
                  (let ((_%tl8094981930%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8688786888%_ '1)))
                        (_%target8094781927%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8688786888%_ '0))))
                    (if (gx#stx-pair? _%tl8094981930%_)
                        (let ((_%e8095881933%_ (gx#syntax-e _%tl8094981930%_)))
                          (let ((_%tl8095681940%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8095881933%_)))
                                (_%hd8095781937%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8095881933%_))))
                            (if (gx#stx-pair? _%hd8095781937%_)
                                (let ((_%e8096181943%_
                                       (gx#syntax-e _%hd8095781937%_)))
                                  (let ((_%tl8095981950%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8096181943%_)))
                                        (_%hd8096081947%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8096181943%_))))
                                    (if (gx#identifier? _%hd8096081947%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g87354_|
                                             _%hd8096081947%_)
                                            (if (gx#stx-pair? _%tl8095981950%_)
                                                (let ((_%e8096481953%_
                                                       (gx#syntax-e
                                                        _%tl8095981950%_)))
                                                  (let ((_%tl8096281960%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8096481953%_)))
                                                        (_%hd8096381957%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8096481953%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8096281960%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8095681940%_)
                                                            (let ((_%e8096781963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8095681940%_)))
                      (let ((_%tl8096581970%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8096781963%_)))
                            (_%hd8096681967%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8096781963%_))))
                        (if (gx#stx-null? _%tl8096581970%_)
                            (_%__match8697186972%_
                             _%e8093981893%_
                             _%hd8093881897%_
                             _%tl8093781900%_
                             _%e8094281903%_
                             _%hd8094181907%_
                             _%tl8094081910%_
                             _%e8094381913%_
                             _%e8094681917%_
                             _%hd8094581921%_
                             _%tl8094481924%_
                             _%__splice8688786888%_
                             _%target8094781927%_
                             _%tl8094981930%_
                             _%e8095881933%_
                             _%hd8095781937%_
                             _%tl8095681940%_
                             _%e8096181943%_
                             _%hd8096081947%_
                             _%tl8095981950%_
                             _%e8096481953%_
                             _%hd8096381957%_
                             _%tl8096281960%_
                             _%e8096781963%_
                             _%hd8096681967%_
                             _%tl8096581970%_)
                            (if (let ((__tmp87355
                                       (gx#stx-length _%tl8094481924%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp87355 '1))
                                (let ((_%__splice8689186892%_
                                       (gx#syntax-split-splice
                                        _%tl8094481924%_
                                        '1)))
                                  (let ((_%tl8098481813%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8689186892%_
                                            '1)))
                                        (_%target8098281810%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8689186892%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl8098481813%_)
                                        (let ((_%e8099381816%_
                                               (gx#syntax-e _%tl8098481813%_)))
                                          (let ((_%tl8099181823%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e8099381816%_)))
                                                (_%hd8099281820%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e8099381816%_))))
                                            (if (gx#stx-null? _%tl8099181823%_)
                                                (_%__match8701187012%_
                                                 _%e8093981893%_
                                                 _%hd8093881897%_
                                                 _%tl8093781900%_
                                                 _%e8094281903%_
                                                 _%hd8094181907%_
                                                 _%tl8094081910%_
                                                 _%e8094381913%_
                                                 _%e8094681917%_
                                                 _%hd8094581921%_
                                                 _%tl8094481924%_
                                                 _%__splice8689186892%_
                                                 _%target8098281810%_
                                                 _%tl8098481813%_
                                                 _%e8099381816%_
                                                 _%hd8099281820%_
                                                 _%tl8099181823%_)
                                                (if (gx#stx-null?
                                                     _%tl8094481924%_)
                                                    (_%__kont8689386894%_
                                                     _%hd8094581921%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8093081144%_))))))
                                        (if (gx#stx-null? _%tl8094481924%_)
                                            (_%__kont8689386894%_
                                             _%hd8094581921%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8093081144%_))))))
                                (if (gx#stx-null? _%tl8094481924%_)
                                    (_%__kont8689386894%_ _%hd8094581921%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8093081144%_)))))))
                    (if (let ((__tmp87356 (gx#stx-length _%tl8094481924%_)))
                          (declare (not safe))
                          (##fx>= __tmp87356 '1))
                        (let ((_%__splice8689186892%_
                               (gx#syntax-split-splice _%tl8094481924%_ '1)))
                          (let ((_%tl8098481813%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8689186892%_ '1)))
                                (_%target8098281810%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8689186892%_ '0))))
                            (if (gx#stx-pair? _%tl8098481813%_)
                                (let ((_%e8099381816%_
                                       (gx#syntax-e _%tl8098481813%_)))
                                  (let ((_%tl8099181823%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8099381816%_)))
                                        (_%hd8099281820%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8099381816%_))))
                                    (if (gx#stx-null? _%tl8099181823%_)
                                        (_%__match8701187012%_
                                         _%e8093981893%_
                                         _%hd8093881897%_
                                         _%tl8093781900%_
                                         _%e8094281903%_
                                         _%hd8094181907%_
                                         _%tl8094081910%_
                                         _%e8094381913%_
                                         _%e8094681917%_
                                         _%hd8094581921%_
                                         _%tl8094481924%_
                                         _%__splice8689186892%_
                                         _%target8098281810%_
                                         _%tl8098481813%_
                                         _%e8099381816%_
                                         _%hd8099281820%_
                                         _%tl8099181823%_)
                                        (if (gx#stx-null? _%tl8094481924%_)
                                            (_%__kont8689386894%_
                                             _%hd8094581921%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8093081144%_))))))
                                (if (gx#stx-null? _%tl8094481924%_)
                                    (_%__kont8689386894%_ _%hd8094581921%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8093081144%_))))))
                        (if (gx#stx-null? _%tl8094481924%_)
                            (_%__kont8689386894%_ _%hd8094581921%_)
                            (let () (declare (not safe)) (_%g8093081144%_)))))
                (if (let ((__tmp87357 (gx#stx-length _%tl8094481924%_)))
                      (declare (not safe))
                      (##fx>= __tmp87357 '1))
                    (let ((_%__splice8689186892%_
                           (gx#syntax-split-splice _%tl8094481924%_ '1)))
                      (let ((_%tl8098481813%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8689186892%_ '1)))
                            (_%target8098281810%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8689186892%_ '0))))
                        (if (gx#stx-pair? _%tl8098481813%_)
                            (let ((_%e8099381816%_
                                   (gx#syntax-e _%tl8098481813%_)))
                              (let ((_%tl8099181823%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8099381816%_)))
                                    (_%hd8099281820%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8099381816%_))))
                                (if (gx#stx-null? _%tl8099181823%_)
                                    (_%__match8701187012%_
                                     _%e8093981893%_
                                     _%hd8093881897%_
                                     _%tl8093781900%_
                                     _%e8094281903%_
                                     _%hd8094181907%_
                                     _%tl8094081910%_
                                     _%e8094381913%_
                                     _%e8094681917%_
                                     _%hd8094581921%_
                                     _%tl8094481924%_
                                     _%__splice8689186892%_
                                     _%target8098281810%_
                                     _%tl8098481813%_
                                     _%e8099381816%_
                                     _%hd8099281820%_
                                     _%tl8099181823%_)
                                    (if (gx#stx-null? _%tl8094481924%_)
                                        (_%__kont8689386894%_ _%hd8094581921%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8093081144%_))))))
                            (if (gx#stx-null? _%tl8094481924%_)
                                (_%__kont8689386894%_ _%hd8094581921%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8093081144%_))))))
                    (if (gx#stx-null? _%tl8094481924%_)
                        (_%__kont8689386894%_ _%hd8094581921%_)
                        (let () (declare (not safe)) (_%g8093081144%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp87358
                                                           (gx#stx-length
                                                            _%tl8094481924%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp87358 '1))
                                                    (let ((_%__splice8689186892%_
                                                           (gx#syntax-split-splice
                                                            _%tl8094481924%_
                                                            '1)))
                                                      (let ((_%tl8098481813%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8689186892%_ '1)))
                    (_%target8098281810%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8689186892%_ '0))))
                (if (gx#stx-pair? _%tl8098481813%_)
                    (let ((_%e8099381816%_ (gx#syntax-e _%tl8098481813%_)))
                      (let ((_%tl8099181823%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8099381816%_)))
                            (_%hd8099281820%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8099381816%_))))
                        (if (gx#stx-null? _%tl8099181823%_)
                            (_%__match8701187012%_
                             _%e8093981893%_
                             _%hd8093881897%_
                             _%tl8093781900%_
                             _%e8094281903%_
                             _%hd8094181907%_
                             _%tl8094081910%_
                             _%e8094381913%_
                             _%e8094681917%_
                             _%hd8094581921%_
                             _%tl8094481924%_
                             _%__splice8689186892%_
                             _%target8098281810%_
                             _%tl8098481813%_
                             _%e8099381816%_
                             _%hd8099281820%_
                             _%tl8099181823%_)
                            (if (gx#stx-null? _%tl8094481924%_)
                                (_%__kont8689386894%_ _%hd8094581921%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8093081144%_))))))
                    (if (gx#stx-null? _%tl8094481924%_)
                        (_%__kont8689386894%_ _%hd8094581921%_)
                        (let () (declare (not safe)) (_%g8093081144%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8094481924%_)
                                                        (_%__kont8689386894%_
                                                         _%hd8094581921%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8093081144%_)))))
                                            (if (let ((__tmp87359
                                                       (gx#stx-length
                                                        _%tl8094481924%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp87359 '1))
                                                (let ((_%__splice8689186892%_
                                                       (gx#syntax-split-splice
                                                        _%tl8094481924%_
                                                        '1)))
                                                  (let ((_%tl8098481813%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8689186892%_
                                                            '1)))
                                                        (_%target8098281810%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8689186892%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl8098481813%_)
                                                        (let ((_%e8099381816%_
                                                               (gx#syntax-e
                                                                _%tl8098481813%_)))
                                                          (let ((_%tl8099181823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8099381816%_)))
                        (_%hd8099281820%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8099381816%_))))
                    (if (gx#stx-null? _%tl8099181823%_)
                        (_%__match8701187012%_
                         _%e8093981893%_
                         _%hd8093881897%_
                         _%tl8093781900%_
                         _%e8094281903%_
                         _%hd8094181907%_
                         _%tl8094081910%_
                         _%e8094381913%_
                         _%e8094681917%_
                         _%hd8094581921%_
                         _%tl8094481924%_
                         _%__splice8689186892%_
                         _%target8098281810%_
                         _%tl8098481813%_
                         _%e8099381816%_
                         _%hd8099281820%_
                         _%tl8099181823%_)
                        (if (gx#stx-null? _%tl8094481924%_)
                            (_%__kont8689386894%_ _%hd8094581921%_)
                            (let () (declare (not safe)) (_%g8093081144%_))))))
                (if (gx#stx-null? _%tl8094481924%_)
                    (_%__kont8689386894%_ _%hd8094581921%_)
                    (let () (declare (not safe)) (_%g8093081144%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl8094481924%_)
                                                    (_%__kont8689386894%_
                                                     _%hd8094581921%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8093081144%_)))))
                                        (if (let ((__tmp87360
                                                   (gx#stx-length
                                                    _%tl8094481924%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp87360 '1))
                                            (let ((_%__splice8689186892%_
                                                   (gx#syntax-split-splice
                                                    _%tl8094481924%_
                                                    '1)))
                                              (let ((_%tl8098481813%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8689186892%_
                                                        '1)))
                                                    (_%target8098281810%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8689186892%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl8098481813%_)
                                                    (let ((_%e8099381816%_
                                                           (gx#syntax-e
                                                            _%tl8098481813%_)))
                                                      (let ((_%tl8099181823%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8099381816%_)))
                    (_%hd8099281820%_
                     (let () (declare (not safe)) (##car _%e8099381816%_))))
                (if (gx#stx-null? _%tl8099181823%_)
                    (_%__match8701187012%_
                     _%e8093981893%_
                     _%hd8093881897%_
                     _%tl8093781900%_
                     _%e8094281903%_
                     _%hd8094181907%_
                     _%tl8094081910%_
                     _%e8094381913%_
                     _%e8094681917%_
                     _%hd8094581921%_
                     _%tl8094481924%_
                     _%__splice8689186892%_
                     _%target8098281810%_
                     _%tl8098481813%_
                     _%e8099381816%_
                     _%hd8099281820%_
                     _%tl8099181823%_)
                    (if (gx#stx-null? _%tl8094481924%_)
                        (_%__kont8689386894%_ _%hd8094581921%_)
                        (let () (declare (not safe)) (_%g8093081144%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8094481924%_)
                                                        (_%__kont8689386894%_
                                                         _%hd8094581921%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8093081144%_))))))
                                            (if (gx#stx-null? _%tl8094481924%_)
                                                (_%__kont8689386894%_
                                                 _%hd8094581921%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8093081144%_)))))))
                                (if (let ((__tmp87361
                                           (gx#stx-length _%tl8094481924%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp87361 '1))
                                    (let ((_%__splice8689186892%_
                                           (gx#syntax-split-splice
                                            _%tl8094481924%_
                                            '1)))
                                      (let ((_%tl8098481813%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8689186892%_
                                                '1)))
                                            (_%target8098281810%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8689186892%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl8098481813%_)
                                            (let ((_%e8099381816%_
                                                   (gx#syntax-e
                                                    _%tl8098481813%_)))
                                              (let ((_%tl8099181823%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8099381816%_)))
                                                    (_%hd8099281820%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8099381816%_))))
                                                (if (gx#stx-null?
                                                     _%tl8099181823%_)
                                                    (_%__match8701187012%_
                                                     _%e8093981893%_
                                                     _%hd8093881897%_
                                                     _%tl8093781900%_
                                                     _%e8094281903%_
                                                     _%hd8094181907%_
                                                     _%tl8094081910%_
                                                     _%e8094381913%_
                                                     _%e8094681917%_
                                                     _%hd8094581921%_
                                                     _%tl8094481924%_
                                                     _%__splice8689186892%_
                                                     _%target8098281810%_
                                                     _%tl8098481813%_
                                                     _%e8099381816%_
                                                     _%hd8099281820%_
                                                     _%tl8099181823%_)
                                                    (if (gx#stx-null?
                                                         _%tl8094481924%_)
                                                        (_%__kont8689386894%_
                                                         _%hd8094581921%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8093081144%_))))))
                                            (if (gx#stx-null? _%tl8094481924%_)
                                                (_%__kont8689386894%_
                                                 _%hd8094581921%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8093081144%_))))))
                                    (if (gx#stx-null? _%tl8094481924%_)
                                        (_%__kont8689386894%_ _%hd8094581921%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8093081144%_)))))))
                        (if (let ((__tmp87362
                                   (gx#stx-length _%tl8094481924%_)))
                              (declare (not safe))
                              (##fx>= __tmp87362 '1))
                            (let ((_%__splice8689186892%_
                                   (gx#syntax-split-splice
                                    _%tl8094481924%_
                                    '1)))
                              (let ((_%tl8098481813%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8689186892%_
                                        '1)))
                                    (_%target8098281810%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8689186892%_
                                        '0))))
                                (if (gx#stx-pair? _%tl8098481813%_)
                                    (let ((_%e8099381816%_
                                           (gx#syntax-e _%tl8098481813%_)))
                                      (let ((_%tl8099181823%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8099381816%_)))
                                            (_%hd8099281820%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8099381816%_))))
                                        (if (gx#stx-null? _%tl8099181823%_)
                                            (_%__match8701187012%_
                                             _%e8093981893%_
                                             _%hd8093881897%_
                                             _%tl8093781900%_
                                             _%e8094281903%_
                                             _%hd8094181907%_
                                             _%tl8094081910%_
                                             _%e8094381913%_
                                             _%e8094681917%_
                                             _%hd8094581921%_
                                             _%tl8094481924%_
                                             _%__splice8689186892%_
                                             _%target8098281810%_
                                             _%tl8098481813%_
                                             _%e8099381816%_
                                             _%hd8099281820%_
                                             _%tl8099181823%_)
                                            (if (gx#stx-null? _%tl8094481924%_)
                                                (_%__kont8689386894%_
                                                 _%hd8094581921%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8093081144%_))))))
                                    (if (gx#stx-null? _%tl8094481924%_)
                                        (_%__kont8689386894%_ _%hd8094581921%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8093081144%_))))))
                            (if (gx#stx-null? _%tl8094481924%_)
                                (_%__kont8689386894%_ _%hd8094581921%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8093081144%_)))))))
                (if (let ((__tmp87363 (gx#stx-length _%tl8094481924%_)))
                      (declare (not safe))
                      (##fx>= __tmp87363 '1))
                    (let ((_%__splice8689186892%_
                           (gx#syntax-split-splice _%tl8094481924%_ '1)))
                      (let ((_%tl8098481813%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8689186892%_ '1)))
                            (_%target8098281810%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8689186892%_ '0))))
                        (if (gx#stx-pair? _%tl8098481813%_)
                            (let ((_%e8099381816%_
                                   (gx#syntax-e _%tl8098481813%_)))
                              (let ((_%tl8099181823%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8099381816%_)))
                                    (_%hd8099281820%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8099381816%_))))
                                (if (gx#stx-null? _%tl8099181823%_)
                                    (_%__match8701187012%_
                                     _%e8093981893%_
                                     _%hd8093881897%_
                                     _%tl8093781900%_
                                     _%e8094281903%_
                                     _%hd8094181907%_
                                     _%tl8094081910%_
                                     _%e8094381913%_
                                     _%e8094681917%_
                                     _%hd8094581921%_
                                     _%tl8094481924%_
                                     _%__splice8689186892%_
                                     _%target8098281810%_
                                     _%tl8098481813%_
                                     _%e8099381816%_
                                     _%hd8099281820%_
                                     _%tl8099181823%_)
                                    (if (gx#stx-null? _%tl8094481924%_)
                                        (_%__kont8689386894%_ _%hd8094581921%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8093081144%_))))))
                            (if (gx#stx-null? _%tl8094481924%_)
                                (_%__kont8689386894%_ _%hd8094581921%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8093081144%_))))))
                    (if (gx#stx-null? _%tl8094481924%_)
                        (_%__kont8689386894%_ _%hd8094581921%_)
                        (let () (declare (not safe)) (_%g8093081144%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8094481924%_)
                                                        (_%__kont8689386894%_
                                                         _%hd8094581921%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8093081144%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8093081144%_)))
                                        (if (equal? _%e8094381913%_ '2)
                                            (if (gx#stx-pair? _%tl8094081910%_)
                                                (let ((_%e8102081616%_
                                                       (gx#syntax-e
                                                        _%tl8094081910%_)))
                                                  (let ((_%tl8101881623%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8102081616%_)))
                                                        (_%hd8101981620%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8102081616%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl8101881623%_)
                                                        (let ((_%e8102381626%_
                                                               (gx#syntax-e
                                                                _%tl8101881623%_)))
                                                          (let ((_%tl8102181633%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8102381626%_)))
                        (_%hd8102281630%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8102381626%_))))
                    (if (gx#stx-pair? _%hd8102281630%_)
                        (let ((_%e8102681636%_ (gx#syntax-e _%hd8102281630%_)))
                          (let ((_%tl8102481643%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8102681636%_)))
                                (_%hd8102581640%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8102681636%_))))
                            (if (gx#stx-pair? _%hd8102581640%_)
                                (let ((_%e8102981646%_
                                       (gx#syntax-e _%hd8102581640%_)))
                                  (let ((_%tl8102781653%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8102981646%_)))
                                        (_%hd8102881650%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8102981646%_))))
                                    (if (gx#identifier? _%hd8102881650%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g87364_|
                                             _%hd8102881650%_)
                                            (if (gx#stx-pair? _%tl8102781653%_)
                                                (let ((_%e8103281656%_
                                                       (gx#syntax-e
                                                        _%tl8102781653%_)))
                                                  (let ((_%tl8103081663%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8103281656%_)))
                                                        (_%hd8103181660%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8103281656%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8103081663%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8102481643%_)
                                                            (let ((_%e8103581666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8102481643%_)))
                      (let ((_%tl8103381673%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8103581666%_)))
                            (_%hd8103481670%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8103581666%_))))
                        (_%__kont8689586896%_
                         _%tl8102181633%_
                         _%tl8103381673%_
                         _%hd8103481670%_
                         _%hd8103181660%_
                         _%hd8101981620%_
                         _%hd8093881897%_)))
                    (_%__kont8689786898%_
                     _%tl8102181633%_
                     _%tl8102481643%_
                     _%hd8102581640%_
                     _%hd8101981620%_
                     _%hd8093881897%_))
                (_%__kont8689786898%_
                 _%tl8102181633%_
                 _%tl8102481643%_
                 _%hd8102581640%_
                 _%hd8101981620%_
                 _%hd8093881897%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont8689786898%_
                                                 _%tl8102181633%_
                                                 _%tl8102481643%_
                                                 _%hd8102581640%_
                                                 _%hd8101981620%_
                                                 _%hd8093881897%_))
                                            (_%__kont8689786898%_
                                             _%tl8102181633%_
                                             _%tl8102481643%_
                                             _%hd8102581640%_
                                             _%hd8101981620%_
                                             _%hd8093881897%_))
                                        (_%__kont8689786898%_
                                         _%tl8102181633%_
                                         _%tl8102481643%_
                                         _%hd8102581640%_
                                         _%hd8101981620%_
                                         _%hd8093881897%_))))
                                (_%__kont8689786898%_
                                 _%tl8102181633%_
                                 _%tl8102481643%_
                                 _%hd8102581640%_
                                 _%hd8101981620%_
                                 _%hd8093881897%_))))
                        (if (gx#stx-null? _%hd8102281630%_)
                            (_%__kont8689986900%_
                             _%tl8102181633%_
                             _%hd8101981620%_
                             _%hd8093881897%_)
                            (let () (declare (not safe)) (_%g8093081144%_))))))
                (let () (declare (not safe)) (_%g8093081144%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8093081144%_)))
                                            (if (equal? _%e8094381913%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl8094081910%_)
                                                    (let ((_%e8108781365%_
                                                           (gx#syntax-e
                                                            _%tl8094081910%_)))
                                                      (let ((_%tl8108581372%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8108781365%_)))
                    (_%hd8108681369%_
                     (let () (declare (not safe)) (##car _%e8108781365%_))))
                (if (gx#stx-pair? _%tl8108581372%_)
                    (let ((_%e8109081375%_ (gx#syntax-e _%tl8108581372%_)))
                      (let ((_%tl8108881382%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8109081375%_)))
                            (_%hd8108981379%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8109081375%_))))
                        (if (gx#stx-pair? _%hd8108981379%_)
                            (let ((_%e8109381385%_
                                   (gx#syntax-e _%hd8108981379%_)))
                              (let ((_%tl8109181392%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8109381385%_)))
                                    (_%hd8109281389%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8109381385%_))))
                                (_%__kont8690186902%_
                                 _%tl8108881382%_
                                 _%tl8109181392%_
                                 _%hd8109281389%_
                                 _%hd8108681369%_
                                 _%hd8093881897%_)))
                            (if (gx#stx-pair/null? _%hd8108681369%_)
                                (let ((_%__splice8690586906%_
                                       (gx#syntax-split-splice
                                        _%hd8108681369%_
                                        '0)))
                                  (let ((_%tl8111281188%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8690586906%_
                                            '1)))
                                        (_%target8111081185%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8690586906%_
                                            '0))))
                                    (if (gx#stx-null? _%tl8111281188%_)
                                        (_%__match8723387234%_
                                         _%e8093981893%_
                                         _%hd8093881897%_
                                         _%tl8093781900%_
                                         _%e8094281903%_
                                         _%hd8094181907%_
                                         _%tl8094081910%_
                                         _%e8094381913%_
                                         _%e8108781365%_
                                         _%hd8108681369%_
                                         _%tl8108581372%_
                                         _%__splice8690586906%_
                                         _%target8111081185%_
                                         _%tl8111281188%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8093081144%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8093081144%_))))))
                    (if (gx#stx-pair/null? _%hd8108681369%_)
                        (let ((_%__splice8690586906%_
                               (gx#syntax-split-splice _%hd8108681369%_ '0)))
                          (let ((_%tl8111281188%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8690586906%_ '1)))
                                (_%target8111081185%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8690586906%_ '0))))
                            (if (gx#stx-null? _%tl8111281188%_)
                                (_%__match8723387234%_
                                 _%e8093981893%_
                                 _%hd8093881897%_
                                 _%tl8093781900%_
                                 _%e8094281903%_
                                 _%hd8094181907%_
                                 _%tl8094081910%_
                                 _%e8094381913%_
                                 _%e8108781365%_
                                 _%hd8108681369%_
                                 _%tl8108581372%_
                                 _%__splice8690586906%_
                                 _%target8111081185%_
                                 _%tl8111281188%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8093081144%_)))))
                        (let () (declare (not safe)) (_%g8093081144%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8093081144%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8093081144%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g8093081144%_)))))
                          (let () (declare (not safe)) (_%g8093081144%_)))))
                  (let () (declare (not safe)) (_%g8093081144%_))))))))))
