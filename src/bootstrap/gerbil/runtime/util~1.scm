(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g100155_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g100165_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx92947%_)
        (let* ((_%g9295192969%_
                (lambda (_%g9295292965%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9295292965%_)))
               (_%g9295093025%_
                (lambda (_%g9295292973%_)
                  (if (gx#stx-pair? _%g9295292973%_)
                      (let ((_%e9295592976%_ (gx#syntax-e _%g9295292973%_)))
                        (let ((_%hd9295692980%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9295592976%_)))
                              (_%tl9295792983%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9295592976%_))))
                          (if (gx#stx-pair? _%tl9295792983%_)
                              (let ((_%e9295892986%_
                                     (gx#syntax-e _%tl9295792983%_)))
                                (let ((_%hd9295992990%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9295892986%_)))
                                      (_%tl9296092993%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9295892986%_))))
                                  (if (gx#stx-pair? _%tl9296092993%_)
                                      (let ((_%e9296192996%_
                                             (gx#syntax-e _%tl9296092993%_)))
                                        (let ((_%hd9296293000%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9296192996%_)))
                                              (_%tl9296393003%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9296192996%_))))
                                          (if (gx#stx-null? _%tl9296393003%_)
                                              ((lambda (_%g9295393006%_
                                                        _%g9295493008%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%g9295493008%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%g9295393006%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd9296293000%_
                                               _%hd9295992990%_)
                                              (_%g9295192969%_
                                               _%g9295292973%_))))
                                      (_%g9295192969%_ _%g9295292973%_))))
                              (_%g9295192969%_ _%g9295292973%_))))
                      (_%g9295192969%_ _%g9295292973%_)))))
          (_%g9295093025%_ _%$stx92947%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx93029%_)
        (let* ((_%g9303393043%_
                (lambda (_%g9303493039%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9303493039%_)))
               (_%g9303293064%_
                (lambda (_%g9303493047%_)
                  (if (gx#stx-pair? _%g9303493047%_)
                      (let ((_%e9303593050%_ (gx#syntax-e _%g9303493047%_)))
                        (let ((_%hd9303693054%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9303593050%_)))
                              (_%tl9303793057%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9303593050%_))))
                          (if (gx#stx-null? _%tl9303793057%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 (cons '#f '())))))
                              (_%g9303393043%_ _%g9303493047%_))))
                      (_%g9303393043%_ _%g9303493047%_)))))
          (_%g9303293064%_ _%$stx93029%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx93068%_)
        (let* ((_%__stx9963299633%_ _%$stx93068%_)
               (_%g9307393098%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9963299633%_))))
          (let ((_%__kont9963599636%_
                 (lambda (_%g9307593176%_ _%g9307693178%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (cons (cons (gx#datum->syntax '#f 'declare)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'not)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'interrupts-enabled)
                                                             '()))
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'let)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'again)
                                                       (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'spin)
                                 (cons '0 '()))
                           '())
                     (cons (cons (gx#datum->syntax '#f 'cond)
                                 (cons (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##fx=)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##vector-cas!)
                                                               (cons _%g9307693178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '0 (cons '1 (cons '0 '())))))
                 (cons '0 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-set!)
                                                         (cons _%g9307693178%_
                                                               (cons '1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'current-thread)
                                         '())
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       (cons (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##fx<)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'spin)
                                                               (cons _%g9307593176%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##thread-yield!)
                                                               '())
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'again)
                             (cons (cons (gx#datum->syntax '#f '##fx+)
                                         (cons (gx#datum->syntax '#f 'spin)
                                               (cons '1 '())))
                                   '()))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'else)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'let)
                             (cons (cons (gx#datum->syntax '#f 'owner)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##vector-ref)
                                                     (cons _%g9307693178%_
                                                           (cons '1 '())))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'eq?)
                         (cons (gx#datum->syntax '#f 'owner)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            'macro-current-thread)
                                           '())
                                     '())))
                   (cons (cons (gx#datum->syntax
                                '#f
                                '##thread-deadlock-action!)
                               '())
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'not)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            'macro-thread-end-condvar)
                                           (cons (gx#datum->syntax '#f 'owner)
                                                 '()))
                                     '()))
                         (cons (cons (gx#datum->syntax
                                      '#f
                                      '##thread-deadlock-action!)
                                     '())
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'else)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '##thread-yield!)
                                           '())
                                     (cons (cons (gx#datum->syntax '#f 'again)
                                                 (cons '0 '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont9963799638%_
                 (lambda (_%g9308693125%_)
                   (cons (gx#datum->syntax '#f '__lock-inline!)
                         (cons _%g9308693125%_ (cons '10 '()))))))
            (if (gx#stx-pair? _%__stx9963299633%_)
                (let ((_%e9307793146%_ (gx#syntax-e _%__stx9963299633%_)))
                  (let ((_%tl9307993153%_
                         (let () (declare (not safe)) (##cdr _%e9307793146%_)))
                        (_%hd9307893150%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9307793146%_))))
                    (if (gx#stx-pair? _%tl9307993153%_)
                        (let ((_%e9308093156%_ (gx#syntax-e _%tl9307993153%_)))
                          (let ((_%tl9308293163%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9308093156%_)))
                                (_%hd9308193160%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9308093156%_))))
                            (if (gx#stx-pair? _%tl9308293163%_)
                                (let ((_%e9308393166%_
                                       (gx#syntax-e _%tl9308293163%_)))
                                  (let ((_%tl9308593173%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9308393166%_)))
                                        (_%hd9308493170%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9308393166%_))))
                                    (if (gx#stx-null? _%tl9308593173%_)
                                        (_%__kont9963599636%_
                                         _%hd9308493170%_
                                         _%hd9308193160%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9307393098%_)))))
                                (if (gx#stx-null? _%tl9308293163%_)
                                    (_%__kont9963799638%_ _%hd9308193160%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g9307393098%_))))))
                        (let () (declare (not safe)) (_%g9307393098%_)))))
                (let () (declare (not safe)) (_%g9307393098%_)))))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx93197%_)
        (let* ((_%g9320193215%_
                (lambda (_%g9320293211%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9320293211%_)))
               (_%g9320093256%_
                (lambda (_%g9320293219%_)
                  (if (gx#stx-pair? _%g9320293219%_)
                      (let ((_%e9320493222%_ (gx#syntax-e _%g9320293219%_)))
                        (let ((_%hd9320593226%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9320493222%_)))
                              (_%tl9320693229%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9320493222%_))))
                          (if (gx#stx-pair? _%tl9320693229%_)
                              (let ((_%e9320793232%_
                                     (gx#syntax-e _%tl9320693229%_)))
                                (let ((_%hd9320893236%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9320793232%_)))
                                      (_%tl9320993239%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9320793232%_))))
                                  (if (gx#stx-null? _%tl9320993239%_)
                                      ((lambda (_%g9320393242%_)
                                         (cons (gx#datum->syntax '#f 'begin)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##vector-set!)
                                                           (cons _%g9320393242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 (cons '#f '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##vector-cas!)
                         (cons _%g9320393242%_
                               (cons '0 (cons '0 (cons '1 '())))))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd9320893236%_)
                                      (_%g9320193215%_ _%g9320293219%_))))
                              (_%g9320193215%_ _%g9320293219%_))))
                      (_%g9320193215%_ _%g9320293219%_)))))
          (_%g9320093256%_ _%$stx93197%_))))
    (define |[:0:]#__do-inline-lock!|
      (lambda (_%$stx93260%_)
        (let* ((_%g9326493282%_
                (lambda (_%g9326593278%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9326593278%_)))
               (_%g9326393337%_
                (lambda (_%g9326593286%_)
                  (if (gx#stx-pair? _%g9326593286%_)
                      (let ((_%e9326893289%_ (gx#syntax-e _%g9326593286%_)))
                        (let ((_%hd9326993293%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9326893289%_)))
                              (_%tl9327093296%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9326893289%_))))
                          (if (gx#stx-pair? _%tl9327093296%_)
                              (let ((_%e9327193299%_
                                     (gx#syntax-e _%tl9327093296%_)))
                                (let ((_%hd9327293303%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9327193299%_)))
                                      (_%tl9327393306%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9327193299%_))))
                                  (if (gx#stx-pair? _%tl9327393306%_)
                                      (let ((_%e9327493309%_
                                             (gx#syntax-e _%tl9327393306%_)))
                                        (let ((_%hd9327593313%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9327493309%_)))
                                              (_%tl9327693316%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9327493309%_))))
                                          (if (gx#stx-null? _%tl9327693316%_)
                                              ((lambda (_%g9326693319%_
                                                        _%g9326793321%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '__lock-inline!)
                           (cons _%g9326793321%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'begin0)
                                 (cons _%g9326693319%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '__unlock-inline!)
                                                   (cons _%g9326793321%_ '()))
                                             '())))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd9327593313%_
                                               _%hd9327293303%_)
                                              (_%g9326493282%_
                                               _%g9326593286%_))))
                                      (_%g9326493282%_ _%g9326593286%_))))
                              (_%g9326493282%_ _%g9326593286%_))))
                      (_%g9326493282%_ _%g9326593286%_)))))
          (_%g9326393337%_ _%$stx93260%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx93341%_)
        (let* ((_%g9334593363%_
                (lambda (_%g9334693359%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9334693359%_)))
               (_%g9334493418%_
                (lambda (_%g9334693367%_)
                  (if (gx#stx-pair? _%g9334693367%_)
                      (let ((_%e9334993370%_ (gx#syntax-e _%g9334693367%_)))
                        (let ((_%hd9335093374%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9334993370%_)))
                              (_%tl9335193377%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9334993370%_))))
                          (if (gx#stx-pair? _%tl9335193377%_)
                              (let ((_%e9335293380%_
                                     (gx#syntax-e _%tl9335193377%_)))
                                (let ((_%hd9335393384%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9335293380%_)))
                                      (_%tl9335493387%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9335293380%_))))
                                  (if (gx#stx-pair? _%tl9335493387%_)
                                      (let ((_%e9335593390%_
                                             (gx#syntax-e _%tl9335493387%_)))
                                        (let ((_%hd9335693394%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9335593390%_)))
                                              (_%tl9335793397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9335593390%_))))
                                          (if (gx#stx-null? _%tl9335793397%_)
                                              ((lambda (_%g9334793400%_
                                                        _%g9334893402%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%g9334893402%_
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
                 (cons (cons _%g9334793400%_
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
                                               _%hd9335693394%_
                                               _%hd9335393384%_)
                                              (_%g9334593363%_
                                               _%g9334693367%_))))
                                      (_%g9334593363%_ _%g9334693367%_))))
                              (_%g9334593363%_ _%g9334693367%_))))
                      (_%g9334593363%_ _%g9334693367%_)))))
          (_%g9334493418%_ _%$stx93341%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx93422%_)
        (let* ((_%g9342693444%_
                (lambda (_%g9342793440%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9342793440%_)))
               (_%g9342593499%_
                (lambda (_%g9342793448%_)
                  (if (gx#stx-pair? _%g9342793448%_)
                      (let ((_%e9343093451%_ (gx#syntax-e _%g9342793448%_)))
                        (let ((_%hd9343193455%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9343093451%_)))
                              (_%tl9343293458%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9343093451%_))))
                          (if (gx#stx-pair? _%tl9343293458%_)
                              (let ((_%e9343393461%_
                                     (gx#syntax-e _%tl9343293458%_)))
                                (let ((_%hd9343493465%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9343393461%_)))
                                      (_%tl9343593468%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9343393461%_))))
                                  (if (gx#stx-pair? _%tl9343593468%_)
                                      (let ((_%e9343693471%_
                                             (gx#syntax-e _%tl9343593468%_)))
                                        (let ((_%hd9343793475%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9343693471%_)))
                                              (_%tl9343893478%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9343693471%_))))
                                          (if (gx#stx-null? _%tl9343893478%_)
                                              ((lambda (_%g9342893481%_
                                                        _%g9342993483%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%g9342993483%_
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
                                               (cons (cons _%g9342893481%_
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
                                               _%hd9343793475%_
                                               _%hd9343493465%_)
                                              (_%g9342693444%_
                                               _%g9342793448%_))))
                                      (_%g9342693444%_ _%g9342793448%_))))
                              (_%g9342693444%_ _%g9342793448%_))))
                      (_%g9342693444%_ _%g9342793448%_)))))
          (_%g9342593499%_ _%$stx93422%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx93503%_)
        (let* ((_%g9350793525%_
                (lambda (_%g9350893521%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9350893521%_)))
               (_%g9350693580%_
                (lambda (_%g9350893529%_)
                  (if (gx#stx-pair? _%g9350893529%_)
                      (let ((_%e9351193532%_ (gx#syntax-e _%g9350893529%_)))
                        (let ((_%hd9351293536%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9351193532%_)))
                              (_%tl9351393539%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9351193532%_))))
                          (if (gx#stx-pair? _%tl9351393539%_)
                              (let ((_%e9351493542%_
                                     (gx#syntax-e _%tl9351393539%_)))
                                (let ((_%hd9351593546%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9351493542%_)))
                                      (_%tl9351693549%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9351493542%_))))
                                  (if (gx#stx-pair? _%tl9351693549%_)
                                      (let ((_%e9351793552%_
                                             (gx#syntax-e _%tl9351693549%_)))
                                        (let ((_%hd9351893556%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9351793552%_)))
                                              (_%tl9351993559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9351793552%_))))
                                          (if (gx#stx-null? _%tl9351993559%_)
                                              ((lambda (_%g9350993562%_
                                                        _%g9351093564%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%g9351093564%_
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
                                               (cons (cons _%g9350993562%_
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
                                               _%hd9351893556%_
                                               _%hd9351593546%_)
                                              (_%g9350793525%_
                                               _%g9350893529%_))))
                                      (_%g9350793525%_ _%g9350893529%_))))
                              (_%g9350793525%_ _%g9350893529%_))))
                      (_%g9350793525%_ _%g9350893529%_)))))
          (_%g9350693580%_ _%$stx93503%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx93584%_)
        (let* ((_%g9358893599%_
                (lambda (_%g9358993595%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9358993595%_)))
               (_%g9358793628%_
                (lambda (_%g9358993603%_)
                  (if (gx#stx-pair? _%g9358993603%_)
                      (let ((_%e9359193606%_ (gx#syntax-e _%g9358993603%_)))
                        (let ((_%hd9359293610%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9359193606%_)))
                              (_%tl9359393613%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9359193606%_))))
                          ((lambda (_%g9359093616%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%g9359093616%_)))
                           _%tl9359393613%_)))
                      (_%g9358893599%_ _%g9358993603%_)))))
          (_%g9358793628%_ _%$stx93584%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx93632%_)
        (let* ((_%__stx9970799708%_ _%$stx93632%_)
               (_%g9364393857%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9970799708%_))))
          (let ((_%__kont9971099711%_
                 (lambda (_%g9364594702%_
                          _%g9364694704%_
                          _%g9364794705%_
                          _%g9364894706%_
                          _%g9364994707%_)
                   (cons _%g9364994707%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g9473794740%_
                                                     _%g9473894743%_)
                                              (cons _%g9473794740%_
                                                    _%g9473894743%_))
                                            '()
                                            _%g9364794705%_)
                                           (cons _%g9364894706%_
                                                 (cons _%g9364694704%_
                                                       (cons _%g9364594702%_
                                                             '())))))))))
                (_%__kont9971499715%_
                 (lambda (_%g9368194557%_
                          _%g9368294559%_
                          _%g9368394560%_
                          _%g9368494561%_)
                   (cons _%g9368494561%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g9458494587%_
                                                     _%g9458594590%_)
                                              (cons _%g9458494587%_
                                                    _%g9458594590%_))
                                            '()
                                            _%g9368294559%_)
                                           (cons _%g9368394560%_
                                                 (cons _%g9368194557%_
                                                       (cons _%g9368194557%_
                                                             '())))))))))
                (_%__kont9971899719%_
                 (lambda (_%g9370794462%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%g9370794462%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont9972099721%_
                 (lambda (_%g9371894385%_
                          _%g9371994387%_
                          _%g9372094388%_
                          _%g9372194389%_
                          _%g9372294390%_
                          _%g9372394391%_)
                   (cons _%g9372394391%_
                         (cons '2
                               (cons (cons (cons _%g9372194389%_
                                                 (cons _%g9372094388%_ '()))
                                           _%g9372294390%_)
                                     (cons _%g9371994387%_
                                           _%g9371894385%_))))))
                (_%__kont9972299723%_
                 (lambda (_%g9374994266%_
                          _%g9375094268%_
                          _%g9375194269%_
                          _%g9375294270%_
                          _%g9375394271%_)
                   (cons _%g9375394271%_
                         (cons '2
                               (cons (cons (cons _%g9375194269%_
                                                 (cons _%g9375194269%_ '()))
                                           _%g9375294270%_)
                                     (cons _%g9375094268%_
                                           _%g9374994266%_))))))
                (_%__kont9972499725%_
                 (lambda (_%g9377094183%_ _%g9377194185%_ _%g9377294186%_)
                   (cons _%g9377294186%_
                         (cons '3
                               (cons '()
                                     (cons _%g9377194185%_
                                           _%g9377094183%_))))))
                (_%__kont9972699727%_
                 (lambda (_%g9378694104%_
                          _%g9378794106%_
                          _%g9378894107%_
                          _%g9378994108%_
                          _%g9379094109%_)
                   (cons _%g9379094109%_
                         (cons '3
                               (cons (cons _%g9378894107%_ _%g9378994108%_)
                                     (cons _%g9378794106%_
                                           _%g9378694104%_))))))
                (_%__kont9972899729%_
                 (lambda (_%g9380793988%_
                          _%g9380893990%_
                          _%g9380993991%_
                          _%g9381093992%_
                          _%g9381193993%_
                          _%g9381293994%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%g9380993991%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g9380793988%_ '())))
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
                                              (lambda (_%g9402694031%_
                                                       _%g9402794034%_)
                                                (cons _%g9402694031%_
                                                      _%g9402794034%_))
                                              '()
                                              _%g9381193993%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (__foldr1
                                              (lambda (_%g9402894037%_
                                                       _%g9402994040%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g9402894037%_ '())))
              _%g9402994040%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%g9381093992%_))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%g9380893990%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match100058100059%_
                    (lambda (_%e9381393864%_
                             _%hd9381493868%_
                             _%tl9381593871%_
                             _%e9381693874%_
                             _%hd9381793878%_
                             _%tl9381893881%_
                             _%e9381993884%_
                             _%e9382093888%_
                             _%hd9382193892%_
                             _%tl9382293895%_
                             _%__splice9973099731%_
                             _%target9382393898%_
                             _%tl9382593901%_)
                      (letrec ((_%loop9382693904%_
                                (lambda (_%hd9382493908%_
                                         _%exprs9383093911%_
                                         _%names9383193912%_)
                                  (if (gx#stx-pair? _%hd9382493908%_)
                                      (let ((_%e9382793914%_
                                             (gx#syntax-e _%hd9382493908%_)))
                                        (let ((_%lp-tl9382993921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9382793914%_)))
                                              (_%lp-hd9382893918%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9382793914%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd9382893918%_)
                                              (let ((_%e9383493924%_
                                                     (gx#syntax-e
                                                      _%lp-hd9382893918%_)))
                                                (let ((_%tl9383693931%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e9383493924%_)))
                                                      (_%hd9383593928%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e9383493924%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl9383693931%_)
                                                      (let ((_%e9383793934%_
                                                             (gx#syntax-e
                                                              _%tl9383693931%_)))
                                                        (let ((_%tl9383993941%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e9383793934%_)))
                      (_%hd9383893938%_
                       (let () (declare (not safe)) (##car _%e9383793934%_))))
                  (if (gx#stx-null? _%tl9383993941%_)
                      (_%loop9382693904%_
                       _%lp-tl9382993921%_
                       (cons _%hd9383893938%_ _%exprs9383093911%_)
                       (cons _%hd9383593928%_ _%names9383193912%_))
                      (let () (declare (not safe)) (_%g9364393857%_)))))
              (let () (declare (not safe)) (_%g9364393857%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g9364393857%_)))))
                                      (let ((_%names9383393946%_
                                             (reverse _%names9383193912%_))
                                            (_%exprs9383293944%_
                                             (reverse _%exprs9383093911%_)))
                                        (if (gx#stx-pair? _%tl9382293895%_)
                                            (let ((_%e9384093948%_
                                                   (gx#syntax-e
                                                    _%tl9382293895%_)))
                                              (let ((_%tl9384293955%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9384093948%_)))
                                                    (_%hd9384193952%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9384093948%_))))
                                                (if (gx#stx-null?
                                                     _%hd9384193952%_)
                                                    (if (gx#stx-pair?
                                                         _%tl9384293955%_)
                                                        (let ((_%e9384393958%_
                                                               (gx#syntax-e
                                                                _%tl9384293955%_)))
                                                          (let ((_%tl9384593965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e9384393958%_)))
                        (_%hd9384493962%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9384393958%_))))
                    (if (gx#stx-pair? _%tl9384593965%_)
                        (let ((_%e9384693968%_ (gx#syntax-e _%tl9384593965%_)))
                          (let ((_%tl9384893975%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9384693968%_)))
                                (_%hd9384793972%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9384693968%_))))
                            (if (gx#stx-pair? _%tl9384893975%_)
                                (let ((_%e9384993978%_
                                       (gx#syntax-e _%tl9384893975%_)))
                                  (let ((_%tl9385193985%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9384993978%_)))
                                        (_%hd9385093982%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9384993978%_))))
                                    (if (gx#stx-null? _%tl9385193985%_)
                                        (_%__kont9972899729%_
                                         _%hd9385093982%_
                                         _%hd9384793972%_
                                         _%hd9384493962%_
                                         _%exprs9383293944%_
                                         _%names9383393946%_
                                         _%hd9381493868%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9364393857%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9364393857%_)))))
                        (let () (declare (not safe)) (_%g9364393857%_)))))
                (let () (declare (not safe)) (_%g9364393857%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9364393857%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g9364393857%_))))))))
                        (_%loop9382693904%_ _%target9382393898%_ '() '()))))
                   (_%__match9983699837%_
                    (lambda (_%e9368594485%_
                             _%hd9368694489%_
                             _%tl9368794492%_
                             _%e9368894495%_
                             _%hd9368994499%_
                             _%tl9369094502%_
                             _%e9369194505%_
                             _%e9369294509%_
                             _%hd9369394513%_
                             _%tl9369494516%_
                             _%__splice9971699717%_
                             _%target9369594519%_
                             _%tl9369794522%_
                             _%e9370494525%_
                             _%hd9370594529%_
                             _%tl9370694532%_)
                      (letrec ((_%loop9369894535%_
                                (lambda (_%hd9369694539%_ _%exprs9370294542%_)
                                  (if (gx#stx-pair? _%hd9369694539%_)
                                      (let ((_%e9369994544%_
                                             (gx#syntax-e _%hd9369694539%_)))
                                        (let ((_%lp-tl9370194551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9369994544%_)))
                                              (_%lp-hd9370094548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9369994544%_))))
                                          (_%loop9369894535%_
                                           _%lp-tl9370194551%_
                                           (cons _%lp-hd9370094548%_
                                                 _%exprs9370294542%_))))
                                      (let ((_%exprs9370394554%_
                                             (reverse _%exprs9370294542%_)))
                                        (_%__kont9971499715%_
                                         _%hd9370594529%_
                                         _%exprs9370394554%_
                                         _%hd9369394513%_
                                         _%hd9368694489%_))))))
                        (_%loop9369894535%_ _%target9369594519%_ '()))))
                   (_%__match9979699797%_
                    (lambda (_%e9365094600%_
                             _%hd9365194604%_
                             _%tl9365294607%_
                             _%e9365394610%_
                             _%hd9365494614%_
                             _%tl9365594617%_
                             _%e9365694620%_
                             _%e9365794624%_
                             _%hd9365894628%_
                             _%tl9365994631%_
                             _%__splice9971299713%_
                             _%target9366094634%_
                             _%tl9366294637%_
                             _%e9366994640%_
                             _%hd9367094644%_
                             _%tl9367194647%_
                             _%e9367294650%_
                             _%hd9367394654%_
                             _%tl9367494657%_
                             _%e9367594660%_
                             _%hd9367694664%_
                             _%tl9367794667%_
                             _%e9367894670%_
                             _%hd9367994674%_
                             _%tl9368094677%_)
                      (letrec ((_%loop9366394680%_
                                (lambda (_%hd9366194684%_ _%exprs9366794687%_)
                                  (if (gx#stx-pair? _%hd9366194684%_)
                                      (let ((_%e9366494689%_
                                             (gx#syntax-e _%hd9366194684%_)))
                                        (let ((_%lp-tl9366694696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9366494689%_)))
                                              (_%lp-hd9366594693%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9366494689%_))))
                                          (_%loop9366394680%_
                                           _%lp-tl9366694696%_
                                           (cons _%lp-hd9366594693%_
                                                 _%exprs9366794687%_))))
                                      (let ((_%exprs9366894699%_
                                             (reverse _%exprs9366794687%_)))
                                        (_%__kont9971099711%_
                                         _%hd9367994674%_
                                         _%hd9367694664%_
                                         _%exprs9366894699%_
                                         _%hd9365894628%_
                                         _%hd9365194604%_))))))
                        (_%loop9366394680%_ _%target9366094634%_ '())))))
              (if (gx#stx-pair? _%__stx9970799708%_)
                  (let ((_%e9365094600%_ (gx#syntax-e _%__stx9970799708%_)))
                    (let ((_%tl9365294607%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e9365094600%_)))
                          (_%hd9365194604%_
                           (let ()
                             (declare (not safe))
                             (##car _%e9365094600%_))))
                      (if (gx#stx-pair? _%tl9365294607%_)
                          (let ((_%e9365394610%_
                                 (gx#syntax-e _%tl9365294607%_)))
                            (let ((_%tl9365594617%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e9365394610%_)))
                                  (_%hd9365494614%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e9365394610%_))))
                              (if (gx#stx-datum? _%hd9365494614%_)
                                  (let ((_%e9365694620%_
                                         (gx#stx-e _%hd9365494614%_)))
                                    (if (equal? _%e9365694620%_ '1)
                                        (if (gx#stx-pair? _%tl9365594617%_)
                                            (let ((_%e9365794624%_
                                                   (gx#syntax-e
                                                    _%tl9365594617%_)))
                                              (let ((_%tl9365994631%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9365794624%_)))
                                                    (_%hd9365894628%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9365794624%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl9365994631%_)
                                                    (if (let ((__tmp100154
                                                               (gx#stx-length
                                                                _%tl9365994631%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp100154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice9971299713%_
                       (gx#syntax-split-splice->vector _%tl9365994631%_ '2)))
                  (let ((_%tl9366294637%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9971299713%_ '1)))
                        (_%target9366094634%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9971299713%_ '0))))
                    (if (gx#stx-pair? _%tl9366294637%_)
                        (let ((_%e9366994640%_ (gx#syntax-e _%tl9366294637%_)))
                          (let ((_%tl9367194647%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9366994640%_)))
                                (_%hd9367094644%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9366994640%_))))
                            (if (gx#stx-pair? _%hd9367094644%_)
                                (let ((_%e9367294650%_
                                       (gx#syntax-e _%hd9367094644%_)))
                                  (let ((_%tl9367494657%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9367294650%_)))
                                        (_%hd9367394654%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9367294650%_))))
                                    (if (gx#identifier? _%hd9367394654%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g100155_|
                                             _%hd9367394654%_)
                                            (if (gx#stx-pair? _%tl9367494657%_)
                                                (let ((_%e9367594660%_
                                                       (gx#syntax-e
                                                        _%tl9367494657%_)))
                                                  (let ((_%tl9367794667%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e9367594660%_)))
                                                        (_%hd9367694664%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e9367594660%_))))
                                                    (if (gx#stx-null?
                                                         _%tl9367794667%_)
                                                        (if (gx#stx-pair?
                                                             _%tl9367194647%_)
                                                            (let ((_%e9367894670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl9367194647%_)))
                      (let ((_%tl9368094677%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9367894670%_)))
                            (_%hd9367994674%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9367894670%_))))
                        (if (gx#stx-null? _%tl9368094677%_)
                            (_%__match9979699797%_
                             _%e9365094600%_
                             _%hd9365194604%_
                             _%tl9365294607%_
                             _%e9365394610%_
                             _%hd9365494614%_
                             _%tl9365594617%_
                             _%e9365694620%_
                             _%e9365794624%_
                             _%hd9365894628%_
                             _%tl9365994631%_
                             _%__splice9971299713%_
                             _%target9366094634%_
                             _%tl9366294637%_
                             _%e9366994640%_
                             _%hd9367094644%_
                             _%tl9367194647%_
                             _%e9367294650%_
                             _%hd9367394654%_
                             _%tl9367494657%_
                             _%e9367594660%_
                             _%hd9367694664%_
                             _%tl9367794667%_
                             _%e9367894670%_
                             _%hd9367994674%_
                             _%tl9368094677%_)
                            (if (let ((__tmp100156
                                       (gx#stx-length _%tl9365994631%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp100156 '1))
                                (let ((_%__splice9971699717%_
                                       (gx#syntax-split-splice->vector
                                        _%tl9365994631%_
                                        '1)))
                                  (let ((_%tl9369794522%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9971699717%_
                                            '1)))
                                        (_%target9369594519%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9971699717%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl9369794522%_)
                                        (let ((_%e9370494525%_
                                               (gx#syntax-e _%tl9369794522%_)))
                                          (let ((_%tl9370694532%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e9370494525%_)))
                                                (_%hd9370594529%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e9370494525%_))))
                                            (if (gx#stx-null? _%tl9370694532%_)
                                                (_%__match9983699837%_
                                                 _%e9365094600%_
                                                 _%hd9365194604%_
                                                 _%tl9365294607%_
                                                 _%e9365394610%_
                                                 _%hd9365494614%_
                                                 _%tl9365594617%_
                                                 _%e9365694620%_
                                                 _%e9365794624%_
                                                 _%hd9365894628%_
                                                 _%tl9365994631%_
                                                 _%__splice9971699717%_
                                                 _%target9369594519%_
                                                 _%tl9369794522%_
                                                 _%e9370494525%_
                                                 _%hd9370594529%_
                                                 _%tl9370694532%_)
                                                (if (gx#stx-null?
                                                     _%tl9365994631%_)
                                                    (_%__kont9971899719%_
                                                     _%hd9365894628%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9364393857%_))))))
                                        (if (gx#stx-null? _%tl9365994631%_)
                                            (_%__kont9971899719%_
                                             _%hd9365894628%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g9364393857%_))))))
                                (if (gx#stx-null? _%tl9365994631%_)
                                    (_%__kont9971899719%_ _%hd9365894628%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g9364393857%_)))))))
                    (if (let ((__tmp100157 (gx#stx-length _%tl9365994631%_)))
                          (declare (not safe))
                          (##fx>= __tmp100157 '1))
                        (let ((_%__splice9971699717%_
                               (gx#syntax-split-splice->vector
                                _%tl9365994631%_
                                '1)))
                          (let ((_%tl9369794522%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9971699717%_ '1)))
                                (_%target9369594519%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9971699717%_ '0))))
                            (if (gx#stx-pair? _%tl9369794522%_)
                                (let ((_%e9370494525%_
                                       (gx#syntax-e _%tl9369794522%_)))
                                  (let ((_%tl9370694532%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9370494525%_)))
                                        (_%hd9370594529%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9370494525%_))))
                                    (if (gx#stx-null? _%tl9370694532%_)
                                        (_%__match9983699837%_
                                         _%e9365094600%_
                                         _%hd9365194604%_
                                         _%tl9365294607%_
                                         _%e9365394610%_
                                         _%hd9365494614%_
                                         _%tl9365594617%_
                                         _%e9365694620%_
                                         _%e9365794624%_
                                         _%hd9365894628%_
                                         _%tl9365994631%_
                                         _%__splice9971699717%_
                                         _%target9369594519%_
                                         _%tl9369794522%_
                                         _%e9370494525%_
                                         _%hd9370594529%_
                                         _%tl9370694532%_)
                                        (if (gx#stx-null? _%tl9365994631%_)
                                            (_%__kont9971899719%_
                                             _%hd9365894628%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g9364393857%_))))))
                                (if (gx#stx-null? _%tl9365994631%_)
                                    (_%__kont9971899719%_ _%hd9365894628%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g9364393857%_))))))
                        (if (gx#stx-null? _%tl9365994631%_)
                            (_%__kont9971899719%_ _%hd9365894628%_)
                            (let () (declare (not safe)) (_%g9364393857%_)))))
                (if (let ((__tmp100158 (gx#stx-length _%tl9365994631%_)))
                      (declare (not safe))
                      (##fx>= __tmp100158 '1))
                    (let ((_%__splice9971699717%_
                           (gx#syntax-split-splice->vector
                            _%tl9365994631%_
                            '1)))
                      (let ((_%tl9369794522%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9971699717%_ '1)))
                            (_%target9369594519%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9971699717%_ '0))))
                        (if (gx#stx-pair? _%tl9369794522%_)
                            (let ((_%e9370494525%_
                                   (gx#syntax-e _%tl9369794522%_)))
                              (let ((_%tl9370694532%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9370494525%_)))
                                    (_%hd9370594529%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9370494525%_))))
                                (if (gx#stx-null? _%tl9370694532%_)
                                    (_%__match9983699837%_
                                     _%e9365094600%_
                                     _%hd9365194604%_
                                     _%tl9365294607%_
                                     _%e9365394610%_
                                     _%hd9365494614%_
                                     _%tl9365594617%_
                                     _%e9365694620%_
                                     _%e9365794624%_
                                     _%hd9365894628%_
                                     _%tl9365994631%_
                                     _%__splice9971699717%_
                                     _%target9369594519%_
                                     _%tl9369794522%_
                                     _%e9370494525%_
                                     _%hd9370594529%_
                                     _%tl9370694532%_)
                                    (if (gx#stx-null? _%tl9365994631%_)
                                        (_%__kont9971899719%_ _%hd9365894628%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9364393857%_))))))
                            (if (gx#stx-null? _%tl9365994631%_)
                                (_%__kont9971899719%_ _%hd9365894628%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9364393857%_))))))
                    (if (gx#stx-null? _%tl9365994631%_)
                        (_%__kont9971899719%_ _%hd9365894628%_)
                        (let () (declare (not safe)) (_%g9364393857%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp100159
                                                           (gx#stx-length
                                                            _%tl9365994631%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp100159 '1))
                                                    (let ((_%__splice9971699717%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl9365994631%_
                                                            '1)))
                                                      (let ((_%tl9369794522%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9971699717%_ '1)))
                    (_%target9369594519%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9971699717%_ '0))))
                (if (gx#stx-pair? _%tl9369794522%_)
                    (let ((_%e9370494525%_ (gx#syntax-e _%tl9369794522%_)))
                      (let ((_%tl9370694532%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9370494525%_)))
                            (_%hd9370594529%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9370494525%_))))
                        (if (gx#stx-null? _%tl9370694532%_)
                            (_%__match9983699837%_
                             _%e9365094600%_
                             _%hd9365194604%_
                             _%tl9365294607%_
                             _%e9365394610%_
                             _%hd9365494614%_
                             _%tl9365594617%_
                             _%e9365694620%_
                             _%e9365794624%_
                             _%hd9365894628%_
                             _%tl9365994631%_
                             _%__splice9971699717%_
                             _%target9369594519%_
                             _%tl9369794522%_
                             _%e9370494525%_
                             _%hd9370594529%_
                             _%tl9370694532%_)
                            (if (gx#stx-null? _%tl9365994631%_)
                                (_%__kont9971899719%_ _%hd9365894628%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9364393857%_))))))
                    (if (gx#stx-null? _%tl9365994631%_)
                        (_%__kont9971899719%_ _%hd9365894628%_)
                        (let () (declare (not safe)) (_%g9364393857%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl9365994631%_)
                                                        (_%__kont9971899719%_
                                                         _%hd9365894628%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9364393857%_)))))
                                            (if (let ((__tmp100160
                                                       (gx#stx-length
                                                        _%tl9365994631%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp100160 '1))
                                                (let ((_%__splice9971699717%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl9365994631%_
                                                        '1)))
                                                  (let ((_%tl9369794522%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9971699717%_
                                                            '1)))
                                                        (_%target9369594519%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9971699717%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl9369794522%_)
                                                        (let ((_%e9370494525%_
                                                               (gx#syntax-e
                                                                _%tl9369794522%_)))
                                                          (let ((_%tl9370694532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e9370494525%_)))
                        (_%hd9370594529%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9370494525%_))))
                    (if (gx#stx-null? _%tl9370694532%_)
                        (_%__match9983699837%_
                         _%e9365094600%_
                         _%hd9365194604%_
                         _%tl9365294607%_
                         _%e9365394610%_
                         _%hd9365494614%_
                         _%tl9365594617%_
                         _%e9365694620%_
                         _%e9365794624%_
                         _%hd9365894628%_
                         _%tl9365994631%_
                         _%__splice9971699717%_
                         _%target9369594519%_
                         _%tl9369794522%_
                         _%e9370494525%_
                         _%hd9370594529%_
                         _%tl9370694532%_)
                        (if (gx#stx-null? _%tl9365994631%_)
                            (_%__kont9971899719%_ _%hd9365894628%_)
                            (let () (declare (not safe)) (_%g9364393857%_))))))
                (if (gx#stx-null? _%tl9365994631%_)
                    (_%__kont9971899719%_ _%hd9365894628%_)
                    (let () (declare (not safe)) (_%g9364393857%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl9365994631%_)
                                                    (_%__kont9971899719%_
                                                     _%hd9365894628%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9364393857%_)))))
                                        (if (let ((__tmp100161
                                                   (gx#stx-length
                                                    _%tl9365994631%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp100161 '1))
                                            (let ((_%__splice9971699717%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl9365994631%_
                                                    '1)))
                                              (let ((_%tl9369794522%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9971699717%_
                                                        '1)))
                                                    (_%target9369594519%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9971699717%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl9369794522%_)
                                                    (let ((_%e9370494525%_
                                                           (gx#syntax-e
                                                            _%tl9369794522%_)))
                                                      (let ((_%tl9370694532%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e9370494525%_)))
                    (_%hd9370594529%_
                     (let () (declare (not safe)) (##car _%e9370494525%_))))
                (if (gx#stx-null? _%tl9370694532%_)
                    (_%__match9983699837%_
                     _%e9365094600%_
                     _%hd9365194604%_
                     _%tl9365294607%_
                     _%e9365394610%_
                     _%hd9365494614%_
                     _%tl9365594617%_
                     _%e9365694620%_
                     _%e9365794624%_
                     _%hd9365894628%_
                     _%tl9365994631%_
                     _%__splice9971699717%_
                     _%target9369594519%_
                     _%tl9369794522%_
                     _%e9370494525%_
                     _%hd9370594529%_
                     _%tl9370694532%_)
                    (if (gx#stx-null? _%tl9365994631%_)
                        (_%__kont9971899719%_ _%hd9365894628%_)
                        (let () (declare (not safe)) (_%g9364393857%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl9365994631%_)
                                                        (_%__kont9971899719%_
                                                         _%hd9365894628%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9364393857%_))))))
                                            (if (gx#stx-null? _%tl9365994631%_)
                                                (_%__kont9971899719%_
                                                 _%hd9365894628%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9364393857%_)))))))
                                (if (let ((__tmp100162
                                           (gx#stx-length _%tl9365994631%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp100162 '1))
                                    (let ((_%__splice9971699717%_
                                           (gx#syntax-split-splice->vector
                                            _%tl9365994631%_
                                            '1)))
                                      (let ((_%tl9369794522%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9971699717%_
                                                '1)))
                                            (_%target9369594519%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9971699717%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl9369794522%_)
                                            (let ((_%e9370494525%_
                                                   (gx#syntax-e
                                                    _%tl9369794522%_)))
                                              (let ((_%tl9370694532%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9370494525%_)))
                                                    (_%hd9370594529%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9370494525%_))))
                                                (if (gx#stx-null?
                                                     _%tl9370694532%_)
                                                    (_%__match9983699837%_
                                                     _%e9365094600%_
                                                     _%hd9365194604%_
                                                     _%tl9365294607%_
                                                     _%e9365394610%_
                                                     _%hd9365494614%_
                                                     _%tl9365594617%_
                                                     _%e9365694620%_
                                                     _%e9365794624%_
                                                     _%hd9365894628%_
                                                     _%tl9365994631%_
                                                     _%__splice9971699717%_
                                                     _%target9369594519%_
                                                     _%tl9369794522%_
                                                     _%e9370494525%_
                                                     _%hd9370594529%_
                                                     _%tl9370694532%_)
                                                    (if (gx#stx-null?
                                                         _%tl9365994631%_)
                                                        (_%__kont9971899719%_
                                                         _%hd9365894628%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9364393857%_))))))
                                            (if (gx#stx-null? _%tl9365994631%_)
                                                (_%__kont9971899719%_
                                                 _%hd9365894628%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9364393857%_))))))
                                    (if (gx#stx-null? _%tl9365994631%_)
                                        (_%__kont9971899719%_ _%hd9365894628%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9364393857%_)))))))
                        (if (let ((__tmp100163
                                   (gx#stx-length _%tl9365994631%_)))
                              (declare (not safe))
                              (##fx>= __tmp100163 '1))
                            (let ((_%__splice9971699717%_
                                   (gx#syntax-split-splice->vector
                                    _%tl9365994631%_
                                    '1)))
                              (let ((_%tl9369794522%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9971699717%_
                                        '1)))
                                    (_%target9369594519%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9971699717%_
                                        '0))))
                                (if (gx#stx-pair? _%tl9369794522%_)
                                    (let ((_%e9370494525%_
                                           (gx#syntax-e _%tl9369794522%_)))
                                      (let ((_%tl9370694532%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9370494525%_)))
                                            (_%hd9370594529%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9370494525%_))))
                                        (if (gx#stx-null? _%tl9370694532%_)
                                            (_%__match9983699837%_
                                             _%e9365094600%_
                                             _%hd9365194604%_
                                             _%tl9365294607%_
                                             _%e9365394610%_
                                             _%hd9365494614%_
                                             _%tl9365594617%_
                                             _%e9365694620%_
                                             _%e9365794624%_
                                             _%hd9365894628%_
                                             _%tl9365994631%_
                                             _%__splice9971699717%_
                                             _%target9369594519%_
                                             _%tl9369794522%_
                                             _%e9370494525%_
                                             _%hd9370594529%_
                                             _%tl9370694532%_)
                                            (if (gx#stx-null? _%tl9365994631%_)
                                                (_%__kont9971899719%_
                                                 _%hd9365894628%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9364393857%_))))))
                                    (if (gx#stx-null? _%tl9365994631%_)
                                        (_%__kont9971899719%_ _%hd9365894628%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9364393857%_))))))
                            (if (gx#stx-null? _%tl9365994631%_)
                                (_%__kont9971899719%_ _%hd9365894628%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9364393857%_)))))))
                (if (let ((__tmp100164 (gx#stx-length _%tl9365994631%_)))
                      (declare (not safe))
                      (##fx>= __tmp100164 '1))
                    (let ((_%__splice9971699717%_
                           (gx#syntax-split-splice->vector
                            _%tl9365994631%_
                            '1)))
                      (let ((_%tl9369794522%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9971699717%_ '1)))
                            (_%target9369594519%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9971699717%_ '0))))
                        (if (gx#stx-pair? _%tl9369794522%_)
                            (let ((_%e9370494525%_
                                   (gx#syntax-e _%tl9369794522%_)))
                              (let ((_%tl9370694532%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9370494525%_)))
                                    (_%hd9370594529%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9370494525%_))))
                                (if (gx#stx-null? _%tl9370694532%_)
                                    (_%__match9983699837%_
                                     _%e9365094600%_
                                     _%hd9365194604%_
                                     _%tl9365294607%_
                                     _%e9365394610%_
                                     _%hd9365494614%_
                                     _%tl9365594617%_
                                     _%e9365694620%_
                                     _%e9365794624%_
                                     _%hd9365894628%_
                                     _%tl9365994631%_
                                     _%__splice9971699717%_
                                     _%target9369594519%_
                                     _%tl9369794522%_
                                     _%e9370494525%_
                                     _%hd9370594529%_
                                     _%tl9370694532%_)
                                    (if (gx#stx-null? _%tl9365994631%_)
                                        (_%__kont9971899719%_ _%hd9365894628%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9364393857%_))))))
                            (if (gx#stx-null? _%tl9365994631%_)
                                (_%__kont9971899719%_ _%hd9365894628%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9364393857%_))))))
                    (if (gx#stx-null? _%tl9365994631%_)
                        (_%__kont9971899719%_ _%hd9365894628%_)
                        (let () (declare (not safe)) (_%g9364393857%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl9365994631%_)
                                                        (_%__kont9971899719%_
                                                         _%hd9365894628%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9364393857%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g9364393857%_)))
                                        (if (equal? _%e9365694620%_ '2)
                                            (if (gx#stx-pair? _%tl9365594617%_)
                                                (let ((_%e9373194325%_
                                                       (gx#syntax-e
                                                        _%tl9365594617%_)))
                                                  (let ((_%tl9373394332%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e9373194325%_)))
                                                        (_%hd9373294329%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e9373194325%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl9373394332%_)
                                                        (let ((_%e9373494335%_
                                                               (gx#syntax-e
                                                                _%tl9373394332%_)))
                                                          (let ((_%tl9373694342%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e9373494335%_)))
                        (_%hd9373594339%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9373494335%_))))
                    (if (gx#stx-pair? _%hd9373594339%_)
                        (let ((_%e9373794345%_ (gx#syntax-e _%hd9373594339%_)))
                          (let ((_%tl9373994352%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9373794345%_)))
                                (_%hd9373894349%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9373794345%_))))
                            (if (gx#stx-pair? _%hd9373894349%_)
                                (let ((_%e9374094355%_
                                       (gx#syntax-e _%hd9373894349%_)))
                                  (let ((_%tl9374294362%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9374094355%_)))
                                        (_%hd9374194359%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9374094355%_))))
                                    (if (gx#identifier? _%hd9374194359%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g100165_|
                                             _%hd9374194359%_)
                                            (if (gx#stx-pair? _%tl9374294362%_)
                                                (let ((_%e9374394365%_
                                                       (gx#syntax-e
                                                        _%tl9374294362%_)))
                                                  (let ((_%tl9374594372%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e9374394365%_)))
                                                        (_%hd9374494369%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e9374394365%_))))
                                                    (if (gx#stx-null?
                                                         _%tl9374594372%_)
                                                        (if (gx#stx-pair?
                                                             _%tl9373994352%_)
                                                            (let ((_%e9374694375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl9373994352%_)))
                      (let ((_%tl9374894382%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9374694375%_)))
                            (_%hd9374794379%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9374694375%_))))
                        (_%__kont9972099721%_
                         _%tl9373694342%_
                         _%tl9374894382%_
                         _%hd9374794379%_
                         _%hd9374494369%_
                         _%hd9373294329%_
                         _%hd9365194604%_)))
                    (_%__kont9972299723%_
                     _%tl9373694342%_
                     _%tl9373994352%_
                     _%hd9373894349%_
                     _%hd9373294329%_
                     _%hd9365194604%_))
                (_%__kont9972299723%_
                 _%tl9373694342%_
                 _%tl9373994352%_
                 _%hd9373894349%_
                 _%hd9373294329%_
                 _%hd9365194604%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont9972299723%_
                                                 _%tl9373694342%_
                                                 _%tl9373994352%_
                                                 _%hd9373894349%_
                                                 _%hd9373294329%_
                                                 _%hd9365194604%_))
                                            (_%__kont9972299723%_
                                             _%tl9373694342%_
                                             _%tl9373994352%_
                                             _%hd9373894349%_
                                             _%hd9373294329%_
                                             _%hd9365194604%_))
                                        (_%__kont9972299723%_
                                         _%tl9373694342%_
                                         _%tl9373994352%_
                                         _%hd9373894349%_
                                         _%hd9373294329%_
                                         _%hd9365194604%_))))
                                (_%__kont9972299723%_
                                 _%tl9373694342%_
                                 _%tl9373994352%_
                                 _%hd9373894349%_
                                 _%hd9373294329%_
                                 _%hd9365194604%_))))
                        (if (gx#stx-null? _%hd9373594339%_)
                            (_%__kont9972499725%_
                             _%tl9373694342%_
                             _%hd9373294329%_
                             _%hd9365194604%_)
                            (let () (declare (not safe)) (_%g9364393857%_))))))
                (let () (declare (not safe)) (_%g9364393857%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9364393857%_)))
                                            (if (equal? _%e9365694620%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl9365594617%_)
                                                    (let ((_%e9379894074%_
                                                           (gx#syntax-e
                                                            _%tl9365594617%_)))
                                                      (let ((_%tl9380094081%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e9379894074%_)))
                    (_%hd9379994078%_
                     (let () (declare (not safe)) (##car _%e9379894074%_))))
                (if (gx#stx-pair? _%tl9380094081%_)
                    (let ((_%e9380194084%_ (gx#syntax-e _%tl9380094081%_)))
                      (let ((_%tl9380394091%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9380194084%_)))
                            (_%hd9380294088%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9380194084%_))))
                        (if (gx#stx-pair? _%hd9380294088%_)
                            (let ((_%e9380494094%_
                                   (gx#syntax-e _%hd9380294088%_)))
                              (let ((_%tl9380694101%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9380494094%_)))
                                    (_%hd9380594098%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9380494094%_))))
                                (_%__kont9972699727%_
                                 _%tl9380394091%_
                                 _%tl9380694101%_
                                 _%hd9380594098%_
                                 _%hd9379994078%_
                                 _%hd9365194604%_)))
                            (if (gx#stx-pair/null? _%hd9379994078%_)
                                (let ((_%__splice9973099731%_
                                       (gx#syntax-split-splice->vector
                                        _%hd9379994078%_
                                        '0)))
                                  (let ((_%tl9382593901%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9973099731%_
                                            '1)))
                                        (_%target9382393898%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9973099731%_
                                            '0))))
                                    (if (gx#stx-null? _%tl9382593901%_)
                                        (_%__match100058100059%_
                                         _%e9365094600%_
                                         _%hd9365194604%_
                                         _%tl9365294607%_
                                         _%e9365394610%_
                                         _%hd9365494614%_
                                         _%tl9365594617%_
                                         _%e9365694620%_
                                         _%e9379894074%_
                                         _%hd9379994078%_
                                         _%tl9380094081%_
                                         _%__splice9973099731%_
                                         _%target9382393898%_
                                         _%tl9382593901%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9364393857%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9364393857%_))))))
                    (if (gx#stx-pair/null? _%hd9379994078%_)
                        (let ((_%__splice9973099731%_
                               (gx#syntax-split-splice->vector
                                _%hd9379994078%_
                                '0)))
                          (let ((_%tl9382593901%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9973099731%_ '1)))
                                (_%target9382393898%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9973099731%_ '0))))
                            (if (gx#stx-null? _%tl9382593901%_)
                                (_%__match100058100059%_
                                 _%e9365094600%_
                                 _%hd9365194604%_
                                 _%tl9365294607%_
                                 _%e9365394610%_
                                 _%hd9365494614%_
                                 _%tl9365594617%_
                                 _%e9365694620%_
                                 _%e9379894074%_
                                 _%hd9379994078%_
                                 _%tl9380094081%_
                                 _%__splice9973099731%_
                                 _%target9382393898%_
                                 _%tl9382593901%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9364393857%_)))))
                        (let () (declare (not safe)) (_%g9364393857%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9364393857%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9364393857%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g9364393857%_)))))
                          (let () (declare (not safe)) (_%g9364393857%_)))))
                  (let () (declare (not safe)) (_%g9364393857%_))))))))))
