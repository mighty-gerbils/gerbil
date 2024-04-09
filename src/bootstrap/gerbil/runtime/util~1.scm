(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g87996_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g88006_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx81021%_)
        (let* ((_%g8102581043%_
                (lambda (_%g8102681039%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8102681039%_)))
               (_%g8102481099%_
                (lambda (_%g8102681047%_)
                  (if (gx#stx-pair? _%g8102681047%_)
                      (let ((_%e8103181050%_ (gx#syntax-e _%g8102681047%_)))
                        (let ((_%hd8103081054%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8103181050%_)))
                              (_%tl8102981057%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8103181050%_))))
                          (if (gx#stx-pair? _%tl8102981057%_)
                              (let ((_%e8103481060%_
                                     (gx#syntax-e _%tl8102981057%_)))
                                (let ((_%hd8103381064%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8103481060%_)))
                                      (_%tl8103281067%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8103481060%_))))
                                  (if (gx#stx-pair? _%tl8103281067%_)
                                      (let ((_%e8103781070%_
                                             (gx#syntax-e _%tl8103281067%_)))
                                        (let ((_%hd8103681074%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8103781070%_)))
                                              (_%tl8103581077%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8103781070%_))))
                                          (if (gx#stx-null? _%tl8103581077%_)
                                              ((lambda (_%L81080%_ _%L81082%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L81082%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L81080%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8103681074%_
                                               _%hd8103381064%_)
                                              (_%g8102581043%_
                                               _%g8102681047%_))))
                                      (_%g8102581043%_ _%g8102681047%_))))
                              (_%g8102581043%_ _%g8102681047%_))))
                      (_%g8102581043%_ _%g8102681047%_)))))
          (_%g8102481099%_ _%$stx81021%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx81103%_)
        (let* ((_%g8110781121%_
                (lambda (_%g8110881117%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8110881117%_)))
               (_%g8110681162%_
                (lambda (_%g8110881125%_)
                  (if (gx#stx-pair? _%g8110881125%_)
                      (let ((_%e8111281128%_ (gx#syntax-e _%g8110881125%_)))
                        (let ((_%hd8111181132%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8111281128%_)))
                              (_%tl8111081135%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8111281128%_))))
                          (if (gx#stx-pair? _%tl8111081135%_)
                              (let ((_%e8111581138%_
                                     (gx#syntax-e _%tl8111081135%_)))
                                (let ((_%hd8111481142%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8111581138%_)))
                                      (_%tl8111381145%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8111581138%_))))
                                  (if (gx#stx-null? _%tl8111381145%_)
                                      ((lambda (_%L81148%_)
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
                                       (cons _%L81148%_
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
                                       _%hd8111481142%_)
                                      (_%g8110781121%_ _%g8110881125%_))))
                              (_%g8110781121%_ _%g8110881125%_))))
                      (_%g8110781121%_ _%g8110881125%_)))))
          (_%g8110681162%_ _%$stx81103%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx81166%_)
        (let* ((_%g8117081184%_
                (lambda (_%g8117181180%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8117181180%_)))
               (_%g8116981225%_
                (lambda (_%g8117181188%_)
                  (if (gx#stx-pair? _%g8117181188%_)
                      (let ((_%e8117581191%_ (gx#syntax-e _%g8117181188%_)))
                        (let ((_%hd8117481195%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8117581191%_)))
                              (_%tl8117381198%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8117581191%_))))
                          (if (gx#stx-pair? _%tl8117381198%_)
                              (let ((_%e8117881201%_
                                     (gx#syntax-e _%tl8117381198%_)))
                                (let ((_%hd8117781205%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8117881201%_)))
                                      (_%tl8117681208%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8117881201%_))))
                                  (if (gx#stx-null? _%tl8117681208%_)
                                      ((lambda (_%L81211%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L81211%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd8117781205%_)
                                      (_%g8117081184%_ _%g8117181188%_))))
                              (_%g8117081184%_ _%g8117181188%_))))
                      (_%g8117081184%_ _%g8117181188%_)))))
          (_%g8116981225%_ _%$stx81166%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx81229%_)
        (let* ((_%g8123381243%_
                (lambda (_%g8123481239%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8123481239%_)))
               (_%g8123281264%_
                (lambda (_%g8123481247%_)
                  (if (gx#stx-pair? _%g8123481247%_)
                      (let ((_%e8123781250%_ (gx#syntax-e _%g8123481247%_)))
                        (let ((_%hd8123681254%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8123781250%_)))
                              (_%tl8123581257%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8123781250%_))))
                          (if (gx#stx-null? _%tl8123581257%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g8123381243%_ _%g8123481247%_))))
                      (_%g8123381243%_ _%g8123481247%_)))))
          (_%g8123281264%_ _%$stx81229%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx81268%_)
        (let* ((_%g8127281290%_
                (lambda (_%g8127381286%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8127381286%_)))
               (_%g8127181345%_
                (lambda (_%g8127381294%_)
                  (if (gx#stx-pair? _%g8127381294%_)
                      (let ((_%e8127881297%_ (gx#syntax-e _%g8127381294%_)))
                        (let ((_%hd8127781301%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8127881297%_)))
                              (_%tl8127681304%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8127881297%_))))
                          (if (gx#stx-pair? _%tl8127681304%_)
                              (let ((_%e8128181307%_
                                     (gx#syntax-e _%tl8127681304%_)))
                                (let ((_%hd8128081311%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8128181307%_)))
                                      (_%tl8127981314%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8128181307%_))))
                                  (if (gx#stx-pair? _%tl8127981314%_)
                                      (let ((_%e8128481317%_
                                             (gx#syntax-e _%tl8127981314%_)))
                                        (let ((_%hd8128381321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8128481317%_)))
                                              (_%tl8128281324%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8128481317%_))))
                                          (if (gx#stx-null? _%tl8128281324%_)
                                              ((lambda (_%L81327%_ _%L81329%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L81329%_
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
                 (cons (cons _%L81327%_
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
                                               _%hd8128381321%_
                                               _%hd8128081311%_)
                                              (_%g8127281290%_
                                               _%g8127381294%_))))
                                      (_%g8127281290%_ _%g8127381294%_))))
                              (_%g8127281290%_ _%g8127381294%_))))
                      (_%g8127281290%_ _%g8127381294%_)))))
          (_%g8127181345%_ _%$stx81268%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx81349%_)
        (let* ((_%g8135381371%_
                (lambda (_%g8135481367%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8135481367%_)))
               (_%g8135281426%_
                (lambda (_%g8135481375%_)
                  (if (gx#stx-pair? _%g8135481375%_)
                      (let ((_%e8135981378%_ (gx#syntax-e _%g8135481375%_)))
                        (let ((_%hd8135881382%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8135981378%_)))
                              (_%tl8135781385%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8135981378%_))))
                          (if (gx#stx-pair? _%tl8135781385%_)
                              (let ((_%e8136281388%_
                                     (gx#syntax-e _%tl8135781385%_)))
                                (let ((_%hd8136181392%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8136281388%_)))
                                      (_%tl8136081395%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8136281388%_))))
                                  (if (gx#stx-pair? _%tl8136081395%_)
                                      (let ((_%e8136581398%_
                                             (gx#syntax-e _%tl8136081395%_)))
                                        (let ((_%hd8136481402%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8136581398%_)))
                                              (_%tl8136381405%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8136581398%_))))
                                          (if (gx#stx-null? _%tl8136381405%_)
                                              ((lambda (_%L81408%_ _%L81410%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L81410%_
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
                                               (cons (cons _%L81408%_
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
                                               _%hd8136481402%_
                                               _%hd8136181392%_)
                                              (_%g8135381371%_
                                               _%g8135481375%_))))
                                      (_%g8135381371%_ _%g8135481375%_))))
                              (_%g8135381371%_ _%g8135481375%_))))
                      (_%g8135381371%_ _%g8135481375%_)))))
          (_%g8135281426%_ _%$stx81349%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx81430%_)
        (let* ((_%g8143481452%_
                (lambda (_%g8143581448%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8143581448%_)))
               (_%g8143381507%_
                (lambda (_%g8143581456%_)
                  (if (gx#stx-pair? _%g8143581456%_)
                      (let ((_%e8144081459%_ (gx#syntax-e _%g8143581456%_)))
                        (let ((_%hd8143981463%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8144081459%_)))
                              (_%tl8143881466%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8144081459%_))))
                          (if (gx#stx-pair? _%tl8143881466%_)
                              (let ((_%e8144381469%_
                                     (gx#syntax-e _%tl8143881466%_)))
                                (let ((_%hd8144281473%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8144381469%_)))
                                      (_%tl8144181476%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8144381469%_))))
                                  (if (gx#stx-pair? _%tl8144181476%_)
                                      (let ((_%e8144681479%_
                                             (gx#syntax-e _%tl8144181476%_)))
                                        (let ((_%hd8144581483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8144681479%_)))
                                              (_%tl8144481486%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8144681479%_))))
                                          (if (gx#stx-null? _%tl8144481486%_)
                                              ((lambda (_%L81489%_ _%L81491%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L81491%_
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
                                               (cons (cons _%L81489%_
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
                                               _%hd8144581483%_
                                               _%hd8144281473%_)
                                              (_%g8143481452%_
                                               _%g8143581456%_))))
                                      (_%g8143481452%_ _%g8143581456%_))))
                              (_%g8143481452%_ _%g8143581456%_))))
                      (_%g8143481452%_ _%g8143581456%_)))))
          (_%g8143381507%_ _%$stx81430%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx81511%_)
        (let* ((_%g8151581526%_
                (lambda (_%g8151681522%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8151681522%_)))
               (_%g8151481555%_
                (lambda (_%g8151681530%_)
                  (if (gx#stx-pair? _%g8151681530%_)
                      (let ((_%e8152081533%_ (gx#syntax-e _%g8151681530%_)))
                        (let ((_%hd8151981537%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8152081533%_)))
                              (_%tl8151881540%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8152081533%_))))
                          ((lambda (_%L81543%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L81543%_)))
                           _%tl8151881540%_)))
                      (_%g8151581526%_ _%g8151681530%_)))))
          (_%g8151481555%_ _%$stx81511%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx81559%_)
        (let* ((_%__stx8752287523%_ _%$stx81559%_)
               (_%g8157081784%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8752287523%_))))
          (let ((_%__kont8752587526%_
                 (lambda (_%L82637%_
                          _%L82639%_
                          _%L82640%_
                          _%L82641%_
                          _%L82642%_)
                   (cons _%L82642%_
                         (cons '2
                               (cons '()
                                     (cons (let ((__tmp87991
                                                  (lambda (_%g8267282675%_
                                                           _%g8267382678%_)
                                                    (cons _%g8267282675%_
                                                          _%g8267382678%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp87991
                                              '()
                                              _%L82640%_))
                                           (cons _%L82641%_
                                                 (cons _%L82639%_
                                                       (cons _%L82637%_
                                                             '())))))))))
                (_%__kont8752987530%_
                 (lambda (_%L82490%_ _%L82492%_ _%L82493%_ _%L82494%_)
                   (cons _%L82494%_
                         (cons '2
                               (cons '()
                                     (cons (let ((__tmp87992
                                                  (lambda (_%g8251782520%_
                                                           _%g8251882523%_)
                                                    (cons _%g8251782520%_
                                                          _%g8251882523%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp87992
                                              '()
                                              _%L82492%_))
                                           (cons _%L82493%_
                                                 (cons _%L82490%_
                                                       (cons _%L82490%_
                                                             '())))))))))
                (_%__kont8753387534%_
                 (lambda (_%L82393%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L82393%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont8753587536%_
                 (lambda (_%L82316%_
                          _%L82318%_
                          _%L82319%_
                          _%L82320%_
                          _%L82321%_
                          _%L82322%_)
                   (cons _%L82322%_
                         (cons '2
                               (cons (cons (cons _%L82320%_
                                                 (cons _%L82319%_ '()))
                                           _%L82321%_)
                                     (cons _%L82318%_ _%L82316%_))))))
                (_%__kont8753787538%_
                 (lambda (_%L82197%_
                          _%L82199%_
                          _%L82200%_
                          _%L82201%_
                          _%L82202%_)
                   (cons _%L82202%_
                         (cons '2
                               (cons (cons (cons _%L82200%_
                                                 (cons _%L82200%_ '()))
                                           _%L82201%_)
                                     (cons _%L82199%_ _%L82197%_))))))
                (_%__kont8753987540%_
                 (lambda (_%L82114%_ _%L82116%_ _%L82117%_)
                   (cons _%L82117%_
                         (cons '3 (cons '() (cons _%L82116%_ _%L82114%_))))))
                (_%__kont8754187542%_
                 (lambda (_%L82035%_
                          _%L82037%_
                          _%L82038%_
                          _%L82039%_
                          _%L82040%_)
                   (cons _%L82040%_
                         (cons '3
                               (cons (cons _%L82038%_ _%L82039%_)
                                     (cons _%L82037%_ _%L82035%_))))))
                (_%__kont8754387544%_
                 (lambda (_%L81919%_
                          _%L81921%_
                          _%L81922%_
                          _%L81923%_
                          _%L81924%_
                          _%L81925%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L81922%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L81919%_ '())))
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
                                       (cons (let ((__tmp87993
                                                    (lambda (_%g8195981962%_
                                                             _%g8196081965%_)
                                                      (cons _%g8195981962%_
                                                            _%g8196081965%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp87993
                                                '()
                                                _%L81924%_))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (let ((__tmp87994
                                                    (lambda (_%g8195781968%_
                                                             _%g8195881971%_)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '() (cons _%g8195781968%_ '())))
                    _%g8195881971%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp87994
                                                '()
                                                _%L81923%_)))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L81921%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match8787387874%_
                    (lambda (_%e8174281791%_
                             _%hd8174181795%_
                             _%tl8174081798%_
                             _%e8174581801%_
                             _%hd8174481805%_
                             _%tl8174381808%_
                             _%e8174681811%_
                             _%e8174981815%_
                             _%hd8174881819%_
                             _%tl8174781822%_
                             _%__splice8754587546%_
                             _%target8175081825%_
                             _%tl8175281828%_)
                      (letrec ((_%loop8175381831%_
                                (lambda (_%hd8175181835%_
                                         _%exprs8175781838%_
                                         _%names8175881840%_)
                                  (if (gx#stx-pair? _%hd8175181835%_)
                                      (let ((_%e8175481843%_
                                             (gx#syntax-e _%hd8175181835%_)))
                                        (let ((_%lp-tl8175681850%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8175481843%_)))
                                              (_%lp-hd8175581847%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8175481843%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd8175581847%_)
                                              (let ((_%e8176381853%_
                                                     (gx#syntax-e
                                                      _%lp-hd8175581847%_)))
                                                (let ((_%tl8176181860%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8176381853%_)))
                                                      (_%hd8176281857%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8176381853%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8176181860%_)
                                                      (let ((_%e8176681863%_
                                                             (gx#syntax-e
                                                              _%tl8176181860%_)))
                                                        (let ((_%tl8176481870%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8176681863%_)))
                      (_%hd8176581867%_
                       (let () (declare (not safe)) (##car _%e8176681863%_))))
                  (if (gx#stx-null? _%tl8176481870%_)
                      (_%loop8175381831%_
                       _%lp-tl8175681850%_
                       (cons _%hd8176581867%_ _%exprs8175781838%_)
                       (cons _%hd8176281857%_ _%names8175881840%_))
                      (let () (declare (not safe)) (_%g8157081784%_)))))
              (let () (declare (not safe)) (_%g8157081784%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g8157081784%_)))))
                                      (let ((_%names8176081876%_
                                             (reverse _%names8175881840%_))
                                            (_%exprs8175981873%_
                                             (reverse _%exprs8175781838%_)))
                                        (if (gx#stx-pair? _%tl8174781822%_)
                                            (let ((_%e8176981879%_
                                                   (gx#syntax-e
                                                    _%tl8174781822%_)))
                                              (let ((_%tl8176781886%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8176981879%_)))
                                                    (_%hd8176881883%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8176981879%_))))
                                                (if (gx#stx-null?
                                                     _%hd8176881883%_)
                                                    (if (gx#stx-pair?
                                                         _%tl8176781886%_)
                                                        (let ((_%e8177281889%_
                                                               (gx#syntax-e
                                                                _%tl8176781886%_)))
                                                          (let ((_%tl8177081896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8177281889%_)))
                        (_%hd8177181893%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8177281889%_))))
                    (if (gx#stx-pair? _%tl8177081896%_)
                        (let ((_%e8177581899%_ (gx#syntax-e _%tl8177081896%_)))
                          (let ((_%tl8177381906%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8177581899%_)))
                                (_%hd8177481903%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8177581899%_))))
                            (if (gx#stx-pair? _%tl8177381906%_)
                                (let ((_%e8177881909%_
                                       (gx#syntax-e _%tl8177381906%_)))
                                  (let ((_%tl8177681916%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8177881909%_)))
                                        (_%hd8177781913%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8177881909%_))))
                                    (if (gx#stx-null? _%tl8177681916%_)
                                        (_%__kont8754387544%_
                                         _%hd8177781913%_
                                         _%hd8177481903%_
                                         _%hd8177181893%_
                                         _%exprs8175981873%_
                                         _%names8176081876%_
                                         _%hd8174181795%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8157081784%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8157081784%_)))))
                        (let () (declare (not safe)) (_%g8157081784%_)))))
                (let () (declare (not safe)) (_%g8157081784%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8157081784%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8157081784%_))))))))
                        (_%loop8175381831%_ _%target8175081825%_ '() '()))))
                   (_%__match8765187652%_
                    (lambda (_%e8161482416%_
                             _%hd8161382420%_
                             _%tl8161282423%_
                             _%e8161782426%_
                             _%hd8161682430%_
                             _%tl8161582433%_
                             _%e8161882436%_
                             _%e8162182440%_
                             _%hd8162082444%_
                             _%tl8161982447%_
                             _%__splice8753187532%_
                             _%target8162282450%_
                             _%tl8162482453%_
                             _%e8163382456%_
                             _%hd8163282460%_
                             _%tl8163182463%_)
                      (letrec ((_%loop8162582466%_
                                (lambda (_%hd8162382470%_ _%exprs8162982473%_)
                                  (if (gx#stx-pair? _%hd8162382470%_)
                                      (let ((_%e8162682476%_
                                             (gx#syntax-e _%hd8162382470%_)))
                                        (let ((_%lp-tl8162882483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8162682476%_)))
                                              (_%lp-hd8162782480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8162682476%_))))
                                          (_%loop8162582466%_
                                           _%lp-tl8162882483%_
                                           (cons _%lp-hd8162782480%_
                                                 _%exprs8162982473%_))))
                                      (let ((_%exprs8163082486%_
                                             (reverse _%exprs8162982473%_)))
                                        (_%__kont8752987530%_
                                         _%hd8163282460%_
                                         _%exprs8163082486%_
                                         _%hd8162082444%_
                                         _%hd8161382420%_))))))
                        (_%loop8162582466%_ _%target8162282450%_ '()))))
                   (_%__match8761187612%_
                    (lambda (_%e8157982533%_
                             _%hd8157882537%_
                             _%tl8157782540%_
                             _%e8158282543%_
                             _%hd8158182547%_
                             _%tl8158082550%_
                             _%e8158382553%_
                             _%e8158682557%_
                             _%hd8158582561%_
                             _%tl8158482564%_
                             _%__splice8752787528%_
                             _%target8158782567%_
                             _%tl8158982570%_
                             _%e8159882573%_
                             _%hd8159782577%_
                             _%tl8159682580%_
                             _%e8160182583%_
                             _%hd8160082587%_
                             _%tl8159982590%_
                             _%e8160482593%_
                             _%hd8160382597%_
                             _%tl8160282600%_
                             _%e8160782603%_
                             _%hd8160682607%_
                             _%tl8160582610%_)
                      (letrec ((_%loop8159082613%_
                                (lambda (_%hd8158882617%_ _%exprs8159482620%_)
                                  (if (gx#stx-pair? _%hd8158882617%_)
                                      (let ((_%e8159182623%_
                                             (gx#syntax-e _%hd8158882617%_)))
                                        (let ((_%lp-tl8159382630%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8159182623%_)))
                                              (_%lp-hd8159282627%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8159182623%_))))
                                          (_%loop8159082613%_
                                           _%lp-tl8159382630%_
                                           (cons _%lp-hd8159282627%_
                                                 _%exprs8159482620%_))))
                                      (let ((_%exprs8159582633%_
                                             (reverse _%exprs8159482620%_)))
                                        (_%__kont8752587526%_
                                         _%hd8160682607%_
                                         _%hd8160382597%_
                                         _%exprs8159582633%_
                                         _%hd8158582561%_
                                         _%hd8157882537%_))))))
                        (_%loop8159082613%_ _%target8158782567%_ '())))))
              (if (gx#stx-pair? _%__stx8752287523%_)
                  (let ((_%e8157982533%_ (gx#syntax-e _%__stx8752287523%_)))
                    (let ((_%tl8157782540%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e8157982533%_)))
                          (_%hd8157882537%_
                           (let ()
                             (declare (not safe))
                             (##car _%e8157982533%_))))
                      (if (gx#stx-pair? _%tl8157782540%_)
                          (let ((_%e8158282543%_
                                 (gx#syntax-e _%tl8157782540%_)))
                            (let ((_%tl8158082550%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e8158282543%_)))
                                  (_%hd8158182547%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e8158282543%_))))
                              (if (gx#stx-datum? _%hd8158182547%_)
                                  (let ((_%e8158382553%_
                                         (gx#stx-e _%hd8158182547%_)))
                                    (if (equal? _%e8158382553%_ '1)
                                        (if (gx#stx-pair? _%tl8158082550%_)
                                            (let ((_%e8158682557%_
                                                   (gx#syntax-e
                                                    _%tl8158082550%_)))
                                              (let ((_%tl8158482564%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8158682557%_)))
                                                    (_%hd8158582561%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8158682557%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl8158482564%_)
                                                    (if (let ((__tmp87995
                                                               (gx#stx-length
                                                                _%tl8158482564%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp87995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice8752787528%_
                       (gx#syntax-split-splice _%tl8158482564%_ '2)))
                  (let ((_%tl8158982570%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8752787528%_ '1)))
                        (_%target8158782567%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8752787528%_ '0))))
                    (if (gx#stx-pair? _%tl8158982570%_)
                        (let ((_%e8159882573%_ (gx#syntax-e _%tl8158982570%_)))
                          (let ((_%tl8159682580%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8159882573%_)))
                                (_%hd8159782577%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8159882573%_))))
                            (if (gx#stx-pair? _%hd8159782577%_)
                                (let ((_%e8160182583%_
                                       (gx#syntax-e _%hd8159782577%_)))
                                  (let ((_%tl8159982590%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8160182583%_)))
                                        (_%hd8160082587%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8160182583%_))))
                                    (if (gx#identifier? _%hd8160082587%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g87996_|
                                             _%hd8160082587%_)
                                            (if (gx#stx-pair? _%tl8159982590%_)
                                                (let ((_%e8160482593%_
                                                       (gx#syntax-e
                                                        _%tl8159982590%_)))
                                                  (let ((_%tl8160282600%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8160482593%_)))
                                                        (_%hd8160382597%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8160482593%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8160282600%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8159682580%_)
                                                            (let ((_%e8160782603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8159682580%_)))
                      (let ((_%tl8160582610%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8160782603%_)))
                            (_%hd8160682607%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8160782603%_))))
                        (if (gx#stx-null? _%tl8160582610%_)
                            (_%__match8761187612%_
                             _%e8157982533%_
                             _%hd8157882537%_
                             _%tl8157782540%_
                             _%e8158282543%_
                             _%hd8158182547%_
                             _%tl8158082550%_
                             _%e8158382553%_
                             _%e8158682557%_
                             _%hd8158582561%_
                             _%tl8158482564%_
                             _%__splice8752787528%_
                             _%target8158782567%_
                             _%tl8158982570%_
                             _%e8159882573%_
                             _%hd8159782577%_
                             _%tl8159682580%_
                             _%e8160182583%_
                             _%hd8160082587%_
                             _%tl8159982590%_
                             _%e8160482593%_
                             _%hd8160382597%_
                             _%tl8160282600%_
                             _%e8160782603%_
                             _%hd8160682607%_
                             _%tl8160582610%_)
                            (if (let ((__tmp87997
                                       (gx#stx-length _%tl8158482564%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp87997 '1))
                                (let ((_%__splice8753187532%_
                                       (gx#syntax-split-splice
                                        _%tl8158482564%_
                                        '1)))
                                  (let ((_%tl8162482453%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8753187532%_
                                            '1)))
                                        (_%target8162282450%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8753187532%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl8162482453%_)
                                        (let ((_%e8163382456%_
                                               (gx#syntax-e _%tl8162482453%_)))
                                          (let ((_%tl8163182463%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e8163382456%_)))
                                                (_%hd8163282460%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e8163382456%_))))
                                            (if (gx#stx-null? _%tl8163182463%_)
                                                (_%__match8765187652%_
                                                 _%e8157982533%_
                                                 _%hd8157882537%_
                                                 _%tl8157782540%_
                                                 _%e8158282543%_
                                                 _%hd8158182547%_
                                                 _%tl8158082550%_
                                                 _%e8158382553%_
                                                 _%e8158682557%_
                                                 _%hd8158582561%_
                                                 _%tl8158482564%_
                                                 _%__splice8753187532%_
                                                 _%target8162282450%_
                                                 _%tl8162482453%_
                                                 _%e8163382456%_
                                                 _%hd8163282460%_
                                                 _%tl8163182463%_)
                                                (if (gx#stx-null?
                                                     _%tl8158482564%_)
                                                    (_%__kont8753387534%_
                                                     _%hd8158582561%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8157081784%_))))))
                                        (if (gx#stx-null? _%tl8158482564%_)
                                            (_%__kont8753387534%_
                                             _%hd8158582561%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8157081784%_))))))
                                (if (gx#stx-null? _%tl8158482564%_)
                                    (_%__kont8753387534%_ _%hd8158582561%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8157081784%_)))))))
                    (if (let ((__tmp87998 (gx#stx-length _%tl8158482564%_)))
                          (declare (not safe))
                          (##fx>= __tmp87998 '1))
                        (let ((_%__splice8753187532%_
                               (gx#syntax-split-splice _%tl8158482564%_ '1)))
                          (let ((_%tl8162482453%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8753187532%_ '1)))
                                (_%target8162282450%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8753187532%_ '0))))
                            (if (gx#stx-pair? _%tl8162482453%_)
                                (let ((_%e8163382456%_
                                       (gx#syntax-e _%tl8162482453%_)))
                                  (let ((_%tl8163182463%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8163382456%_)))
                                        (_%hd8163282460%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8163382456%_))))
                                    (if (gx#stx-null? _%tl8163182463%_)
                                        (_%__match8765187652%_
                                         _%e8157982533%_
                                         _%hd8157882537%_
                                         _%tl8157782540%_
                                         _%e8158282543%_
                                         _%hd8158182547%_
                                         _%tl8158082550%_
                                         _%e8158382553%_
                                         _%e8158682557%_
                                         _%hd8158582561%_
                                         _%tl8158482564%_
                                         _%__splice8753187532%_
                                         _%target8162282450%_
                                         _%tl8162482453%_
                                         _%e8163382456%_
                                         _%hd8163282460%_
                                         _%tl8163182463%_)
                                        (if (gx#stx-null? _%tl8158482564%_)
                                            (_%__kont8753387534%_
                                             _%hd8158582561%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8157081784%_))))))
                                (if (gx#stx-null? _%tl8158482564%_)
                                    (_%__kont8753387534%_ _%hd8158582561%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8157081784%_))))))
                        (if (gx#stx-null? _%tl8158482564%_)
                            (_%__kont8753387534%_ _%hd8158582561%_)
                            (let () (declare (not safe)) (_%g8157081784%_)))))
                (if (let ((__tmp87999 (gx#stx-length _%tl8158482564%_)))
                      (declare (not safe))
                      (##fx>= __tmp87999 '1))
                    (let ((_%__splice8753187532%_
                           (gx#syntax-split-splice _%tl8158482564%_ '1)))
                      (let ((_%tl8162482453%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8753187532%_ '1)))
                            (_%target8162282450%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8753187532%_ '0))))
                        (if (gx#stx-pair? _%tl8162482453%_)
                            (let ((_%e8163382456%_
                                   (gx#syntax-e _%tl8162482453%_)))
                              (let ((_%tl8163182463%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8163382456%_)))
                                    (_%hd8163282460%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8163382456%_))))
                                (if (gx#stx-null? _%tl8163182463%_)
                                    (_%__match8765187652%_
                                     _%e8157982533%_
                                     _%hd8157882537%_
                                     _%tl8157782540%_
                                     _%e8158282543%_
                                     _%hd8158182547%_
                                     _%tl8158082550%_
                                     _%e8158382553%_
                                     _%e8158682557%_
                                     _%hd8158582561%_
                                     _%tl8158482564%_
                                     _%__splice8753187532%_
                                     _%target8162282450%_
                                     _%tl8162482453%_
                                     _%e8163382456%_
                                     _%hd8163282460%_
                                     _%tl8163182463%_)
                                    (if (gx#stx-null? _%tl8158482564%_)
                                        (_%__kont8753387534%_ _%hd8158582561%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8157081784%_))))))
                            (if (gx#stx-null? _%tl8158482564%_)
                                (_%__kont8753387534%_ _%hd8158582561%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8157081784%_))))))
                    (if (gx#stx-null? _%tl8158482564%_)
                        (_%__kont8753387534%_ _%hd8158582561%_)
                        (let () (declare (not safe)) (_%g8157081784%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp88000
                                                           (gx#stx-length
                                                            _%tl8158482564%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp88000 '1))
                                                    (let ((_%__splice8753187532%_
                                                           (gx#syntax-split-splice
                                                            _%tl8158482564%_
                                                            '1)))
                                                      (let ((_%tl8162482453%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8753187532%_ '1)))
                    (_%target8162282450%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8753187532%_ '0))))
                (if (gx#stx-pair? _%tl8162482453%_)
                    (let ((_%e8163382456%_ (gx#syntax-e _%tl8162482453%_)))
                      (let ((_%tl8163182463%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8163382456%_)))
                            (_%hd8163282460%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8163382456%_))))
                        (if (gx#stx-null? _%tl8163182463%_)
                            (_%__match8765187652%_
                             _%e8157982533%_
                             _%hd8157882537%_
                             _%tl8157782540%_
                             _%e8158282543%_
                             _%hd8158182547%_
                             _%tl8158082550%_
                             _%e8158382553%_
                             _%e8158682557%_
                             _%hd8158582561%_
                             _%tl8158482564%_
                             _%__splice8753187532%_
                             _%target8162282450%_
                             _%tl8162482453%_
                             _%e8163382456%_
                             _%hd8163282460%_
                             _%tl8163182463%_)
                            (if (gx#stx-null? _%tl8158482564%_)
                                (_%__kont8753387534%_ _%hd8158582561%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8157081784%_))))))
                    (if (gx#stx-null? _%tl8158482564%_)
                        (_%__kont8753387534%_ _%hd8158582561%_)
                        (let () (declare (not safe)) (_%g8157081784%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8158482564%_)
                                                        (_%__kont8753387534%_
                                                         _%hd8158582561%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8157081784%_)))))
                                            (if (let ((__tmp88001
                                                       (gx#stx-length
                                                        _%tl8158482564%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp88001 '1))
                                                (let ((_%__splice8753187532%_
                                                       (gx#syntax-split-splice
                                                        _%tl8158482564%_
                                                        '1)))
                                                  (let ((_%tl8162482453%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8753187532%_
                                                            '1)))
                                                        (_%target8162282450%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8753187532%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl8162482453%_)
                                                        (let ((_%e8163382456%_
                                                               (gx#syntax-e
                                                                _%tl8162482453%_)))
                                                          (let ((_%tl8163182463%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8163382456%_)))
                        (_%hd8163282460%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8163382456%_))))
                    (if (gx#stx-null? _%tl8163182463%_)
                        (_%__match8765187652%_
                         _%e8157982533%_
                         _%hd8157882537%_
                         _%tl8157782540%_
                         _%e8158282543%_
                         _%hd8158182547%_
                         _%tl8158082550%_
                         _%e8158382553%_
                         _%e8158682557%_
                         _%hd8158582561%_
                         _%tl8158482564%_
                         _%__splice8753187532%_
                         _%target8162282450%_
                         _%tl8162482453%_
                         _%e8163382456%_
                         _%hd8163282460%_
                         _%tl8163182463%_)
                        (if (gx#stx-null? _%tl8158482564%_)
                            (_%__kont8753387534%_ _%hd8158582561%_)
                            (let () (declare (not safe)) (_%g8157081784%_))))))
                (if (gx#stx-null? _%tl8158482564%_)
                    (_%__kont8753387534%_ _%hd8158582561%_)
                    (let () (declare (not safe)) (_%g8157081784%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl8158482564%_)
                                                    (_%__kont8753387534%_
                                                     _%hd8158582561%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8157081784%_)))))
                                        (if (let ((__tmp88002
                                                   (gx#stx-length
                                                    _%tl8158482564%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp88002 '1))
                                            (let ((_%__splice8753187532%_
                                                   (gx#syntax-split-splice
                                                    _%tl8158482564%_
                                                    '1)))
                                              (let ((_%tl8162482453%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8753187532%_
                                                        '1)))
                                                    (_%target8162282450%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8753187532%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl8162482453%_)
                                                    (let ((_%e8163382456%_
                                                           (gx#syntax-e
                                                            _%tl8162482453%_)))
                                                      (let ((_%tl8163182463%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8163382456%_)))
                    (_%hd8163282460%_
                     (let () (declare (not safe)) (##car _%e8163382456%_))))
                (if (gx#stx-null? _%tl8163182463%_)
                    (_%__match8765187652%_
                     _%e8157982533%_
                     _%hd8157882537%_
                     _%tl8157782540%_
                     _%e8158282543%_
                     _%hd8158182547%_
                     _%tl8158082550%_
                     _%e8158382553%_
                     _%e8158682557%_
                     _%hd8158582561%_
                     _%tl8158482564%_
                     _%__splice8753187532%_
                     _%target8162282450%_
                     _%tl8162482453%_
                     _%e8163382456%_
                     _%hd8163282460%_
                     _%tl8163182463%_)
                    (if (gx#stx-null? _%tl8158482564%_)
                        (_%__kont8753387534%_ _%hd8158582561%_)
                        (let () (declare (not safe)) (_%g8157081784%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8158482564%_)
                                                        (_%__kont8753387534%_
                                                         _%hd8158582561%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8157081784%_))))))
                                            (if (gx#stx-null? _%tl8158482564%_)
                                                (_%__kont8753387534%_
                                                 _%hd8158582561%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8157081784%_)))))))
                                (if (let ((__tmp88003
                                           (gx#stx-length _%tl8158482564%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp88003 '1))
                                    (let ((_%__splice8753187532%_
                                           (gx#syntax-split-splice
                                            _%tl8158482564%_
                                            '1)))
                                      (let ((_%tl8162482453%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8753187532%_
                                                '1)))
                                            (_%target8162282450%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8753187532%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl8162482453%_)
                                            (let ((_%e8163382456%_
                                                   (gx#syntax-e
                                                    _%tl8162482453%_)))
                                              (let ((_%tl8163182463%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8163382456%_)))
                                                    (_%hd8163282460%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8163382456%_))))
                                                (if (gx#stx-null?
                                                     _%tl8163182463%_)
                                                    (_%__match8765187652%_
                                                     _%e8157982533%_
                                                     _%hd8157882537%_
                                                     _%tl8157782540%_
                                                     _%e8158282543%_
                                                     _%hd8158182547%_
                                                     _%tl8158082550%_
                                                     _%e8158382553%_
                                                     _%e8158682557%_
                                                     _%hd8158582561%_
                                                     _%tl8158482564%_
                                                     _%__splice8753187532%_
                                                     _%target8162282450%_
                                                     _%tl8162482453%_
                                                     _%e8163382456%_
                                                     _%hd8163282460%_
                                                     _%tl8163182463%_)
                                                    (if (gx#stx-null?
                                                         _%tl8158482564%_)
                                                        (_%__kont8753387534%_
                                                         _%hd8158582561%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8157081784%_))))))
                                            (if (gx#stx-null? _%tl8158482564%_)
                                                (_%__kont8753387534%_
                                                 _%hd8158582561%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8157081784%_))))))
                                    (if (gx#stx-null? _%tl8158482564%_)
                                        (_%__kont8753387534%_ _%hd8158582561%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8157081784%_)))))))
                        (if (let ((__tmp88004
                                   (gx#stx-length _%tl8158482564%_)))
                              (declare (not safe))
                              (##fx>= __tmp88004 '1))
                            (let ((_%__splice8753187532%_
                                   (gx#syntax-split-splice
                                    _%tl8158482564%_
                                    '1)))
                              (let ((_%tl8162482453%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8753187532%_
                                        '1)))
                                    (_%target8162282450%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8753187532%_
                                        '0))))
                                (if (gx#stx-pair? _%tl8162482453%_)
                                    (let ((_%e8163382456%_
                                           (gx#syntax-e _%tl8162482453%_)))
                                      (let ((_%tl8163182463%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8163382456%_)))
                                            (_%hd8163282460%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8163382456%_))))
                                        (if (gx#stx-null? _%tl8163182463%_)
                                            (_%__match8765187652%_
                                             _%e8157982533%_
                                             _%hd8157882537%_
                                             _%tl8157782540%_
                                             _%e8158282543%_
                                             _%hd8158182547%_
                                             _%tl8158082550%_
                                             _%e8158382553%_
                                             _%e8158682557%_
                                             _%hd8158582561%_
                                             _%tl8158482564%_
                                             _%__splice8753187532%_
                                             _%target8162282450%_
                                             _%tl8162482453%_
                                             _%e8163382456%_
                                             _%hd8163282460%_
                                             _%tl8163182463%_)
                                            (if (gx#stx-null? _%tl8158482564%_)
                                                (_%__kont8753387534%_
                                                 _%hd8158582561%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8157081784%_))))))
                                    (if (gx#stx-null? _%tl8158482564%_)
                                        (_%__kont8753387534%_ _%hd8158582561%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8157081784%_))))))
                            (if (gx#stx-null? _%tl8158482564%_)
                                (_%__kont8753387534%_ _%hd8158582561%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8157081784%_)))))))
                (if (let ((__tmp88005 (gx#stx-length _%tl8158482564%_)))
                      (declare (not safe))
                      (##fx>= __tmp88005 '1))
                    (let ((_%__splice8753187532%_
                           (gx#syntax-split-splice _%tl8158482564%_ '1)))
                      (let ((_%tl8162482453%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8753187532%_ '1)))
                            (_%target8162282450%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8753187532%_ '0))))
                        (if (gx#stx-pair? _%tl8162482453%_)
                            (let ((_%e8163382456%_
                                   (gx#syntax-e _%tl8162482453%_)))
                              (let ((_%tl8163182463%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8163382456%_)))
                                    (_%hd8163282460%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8163382456%_))))
                                (if (gx#stx-null? _%tl8163182463%_)
                                    (_%__match8765187652%_
                                     _%e8157982533%_
                                     _%hd8157882537%_
                                     _%tl8157782540%_
                                     _%e8158282543%_
                                     _%hd8158182547%_
                                     _%tl8158082550%_
                                     _%e8158382553%_
                                     _%e8158682557%_
                                     _%hd8158582561%_
                                     _%tl8158482564%_
                                     _%__splice8753187532%_
                                     _%target8162282450%_
                                     _%tl8162482453%_
                                     _%e8163382456%_
                                     _%hd8163282460%_
                                     _%tl8163182463%_)
                                    (if (gx#stx-null? _%tl8158482564%_)
                                        (_%__kont8753387534%_ _%hd8158582561%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8157081784%_))))))
                            (if (gx#stx-null? _%tl8158482564%_)
                                (_%__kont8753387534%_ _%hd8158582561%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8157081784%_))))))
                    (if (gx#stx-null? _%tl8158482564%_)
                        (_%__kont8753387534%_ _%hd8158582561%_)
                        (let () (declare (not safe)) (_%g8157081784%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8158482564%_)
                                                        (_%__kont8753387534%_
                                                         _%hd8158582561%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8157081784%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8157081784%_)))
                                        (if (equal? _%e8158382553%_ '2)
                                            (if (gx#stx-pair? _%tl8158082550%_)
                                                (let ((_%e8166082256%_
                                                       (gx#syntax-e
                                                        _%tl8158082550%_)))
                                                  (let ((_%tl8165882263%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8166082256%_)))
                                                        (_%hd8165982260%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8166082256%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl8165882263%_)
                                                        (let ((_%e8166382266%_
                                                               (gx#syntax-e
                                                                _%tl8165882263%_)))
                                                          (let ((_%tl8166182273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8166382266%_)))
                        (_%hd8166282270%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8166382266%_))))
                    (if (gx#stx-pair? _%hd8166282270%_)
                        (let ((_%e8166682276%_ (gx#syntax-e _%hd8166282270%_)))
                          (let ((_%tl8166482283%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8166682276%_)))
                                (_%hd8166582280%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8166682276%_))))
                            (if (gx#stx-pair? _%hd8166582280%_)
                                (let ((_%e8166982286%_
                                       (gx#syntax-e _%hd8166582280%_)))
                                  (let ((_%tl8166782293%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8166982286%_)))
                                        (_%hd8166882290%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8166982286%_))))
                                    (if (gx#identifier? _%hd8166882290%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g88006_|
                                             _%hd8166882290%_)
                                            (if (gx#stx-pair? _%tl8166782293%_)
                                                (let ((_%e8167282296%_
                                                       (gx#syntax-e
                                                        _%tl8166782293%_)))
                                                  (let ((_%tl8167082303%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8167282296%_)))
                                                        (_%hd8167182300%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8167282296%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8167082303%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8166482283%_)
                                                            (let ((_%e8167582306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8166482283%_)))
                      (let ((_%tl8167382313%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8167582306%_)))
                            (_%hd8167482310%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8167582306%_))))
                        (_%__kont8753587536%_
                         _%tl8166182273%_
                         _%tl8167382313%_
                         _%hd8167482310%_
                         _%hd8167182300%_
                         _%hd8165982260%_
                         _%hd8157882537%_)))
                    (_%__kont8753787538%_
                     _%tl8166182273%_
                     _%tl8166482283%_
                     _%hd8166582280%_
                     _%hd8165982260%_
                     _%hd8157882537%_))
                (_%__kont8753787538%_
                 _%tl8166182273%_
                 _%tl8166482283%_
                 _%hd8166582280%_
                 _%hd8165982260%_
                 _%hd8157882537%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont8753787538%_
                                                 _%tl8166182273%_
                                                 _%tl8166482283%_
                                                 _%hd8166582280%_
                                                 _%hd8165982260%_
                                                 _%hd8157882537%_))
                                            (_%__kont8753787538%_
                                             _%tl8166182273%_
                                             _%tl8166482283%_
                                             _%hd8166582280%_
                                             _%hd8165982260%_
                                             _%hd8157882537%_))
                                        (_%__kont8753787538%_
                                         _%tl8166182273%_
                                         _%tl8166482283%_
                                         _%hd8166582280%_
                                         _%hd8165982260%_
                                         _%hd8157882537%_))))
                                (_%__kont8753787538%_
                                 _%tl8166182273%_
                                 _%tl8166482283%_
                                 _%hd8166582280%_
                                 _%hd8165982260%_
                                 _%hd8157882537%_))))
                        (if (gx#stx-null? _%hd8166282270%_)
                            (_%__kont8753987540%_
                             _%tl8166182273%_
                             _%hd8165982260%_
                             _%hd8157882537%_)
                            (let () (declare (not safe)) (_%g8157081784%_))))))
                (let () (declare (not safe)) (_%g8157081784%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8157081784%_)))
                                            (if (equal? _%e8158382553%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl8158082550%_)
                                                    (let ((_%e8172782005%_
                                                           (gx#syntax-e
                                                            _%tl8158082550%_)))
                                                      (let ((_%tl8172582012%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8172782005%_)))
                    (_%hd8172682009%_
                     (let () (declare (not safe)) (##car _%e8172782005%_))))
                (if (gx#stx-pair? _%tl8172582012%_)
                    (let ((_%e8173082015%_ (gx#syntax-e _%tl8172582012%_)))
                      (let ((_%tl8172882022%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8173082015%_)))
                            (_%hd8172982019%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8173082015%_))))
                        (if (gx#stx-pair? _%hd8172982019%_)
                            (let ((_%e8173382025%_
                                   (gx#syntax-e _%hd8172982019%_)))
                              (let ((_%tl8173182032%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8173382025%_)))
                                    (_%hd8173282029%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8173382025%_))))
                                (_%__kont8754187542%_
                                 _%tl8172882022%_
                                 _%tl8173182032%_
                                 _%hd8173282029%_
                                 _%hd8172682009%_
                                 _%hd8157882537%_)))
                            (if (gx#stx-pair/null? _%hd8172682009%_)
                                (let ((_%__splice8754587546%_
                                       (gx#syntax-split-splice
                                        _%hd8172682009%_
                                        '0)))
                                  (let ((_%tl8175281828%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8754587546%_
                                            '1)))
                                        (_%target8175081825%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8754587546%_
                                            '0))))
                                    (if (gx#stx-null? _%tl8175281828%_)
                                        (_%__match8787387874%_
                                         _%e8157982533%_
                                         _%hd8157882537%_
                                         _%tl8157782540%_
                                         _%e8158282543%_
                                         _%hd8158182547%_
                                         _%tl8158082550%_
                                         _%e8158382553%_
                                         _%e8172782005%_
                                         _%hd8172682009%_
                                         _%tl8172582012%_
                                         _%__splice8754587546%_
                                         _%target8175081825%_
                                         _%tl8175281828%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8157081784%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8157081784%_))))))
                    (if (gx#stx-pair/null? _%hd8172682009%_)
                        (let ((_%__splice8754587546%_
                               (gx#syntax-split-splice _%hd8172682009%_ '0)))
                          (let ((_%tl8175281828%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8754587546%_ '1)))
                                (_%target8175081825%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8754587546%_ '0))))
                            (if (gx#stx-null? _%tl8175281828%_)
                                (_%__match8787387874%_
                                 _%e8157982533%_
                                 _%hd8157882537%_
                                 _%tl8157782540%_
                                 _%e8158282543%_
                                 _%hd8158182547%_
                                 _%tl8158082550%_
                                 _%e8158382553%_
                                 _%e8172782005%_
                                 _%hd8172682009%_
                                 _%tl8172582012%_
                                 _%__splice8754587546%_
                                 _%target8175081825%_
                                 _%tl8175281828%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8157081784%_)))))
                        (let () (declare (not safe)) (_%g8157081784%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8157081784%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8157081784%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g8157081784%_)))))
                          (let () (declare (not safe)) (_%g8157081784%_)))))
                  (let () (declare (not safe)) (_%g8157081784%_))))))))))
