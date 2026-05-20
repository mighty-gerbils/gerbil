(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#do-raw-table-lock|
    (lambda (_%$stx115841%_)
      (let* ((_%g115845115863%_
              (lambda (_%g115846115859%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g115846115859%_)))
             (_%g115844115919%_
              (lambda (_%g115846115867%_)
                (if (gx#stx-pair? _%g115846115867%_)
                    (let ((_%e115849115870%_ (gx#syntax-e _%g115846115867%_)))
                      (let ((_%hd115850115874%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115849115870%_)))
                            (_%tl115851115877%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115849115870%_))))
                        (if (gx#stx-pair? _%tl115851115877%_)
                            (let ((_%e115852115880%_
                                   (gx#syntax-e _%tl115851115877%_)))
                              (let ((_%hd115853115884%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115852115880%_)))
                                    (_%tl115854115887%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115852115880%_))))
                                (if (gx#stx-pair? _%tl115854115887%_)
                                    (let ((_%e115855115890%_
                                           (gx#syntax-e _%tl115854115887%_)))
                                      (let ((_%hd115856115894%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115855115890%_)))
                                            (_%tl115857115897%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115855115890%_))))
                                        (if (gx#stx-null? _%tl115857115897%_)
                                            (cons (gx#datum->syntax '#f 'let)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'lock)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '&raw-table-lock)
                                  (cons _%hd115853115884%_ '()))
                            '()))
                (cons (cons (gx#datum->syntax '#f '__do-inline-lock!)
                            (cons (gx#datum->syntax '#f 'lock)
                                  (cons _%hd115856115894%_ '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g115845115863%_
                                             _%g115846115867%_))))
                                    (_%g115845115863%_ _%g115846115867%_))))
                            (_%g115845115863%_ _%g115846115867%_))))
                    (_%g115845115863%_ _%g115846115867%_)))))
        (_%g115844115919%_ _%$stx115841%_))))
  (define |[:0:]#deftable|
    (lambda (_%stx115923%_)
      (let* ((_%g115926115948%_
              (lambda (_%g115927115944%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g115927115944%_)))
             (_%g115925116261%_
              (lambda (_%g115927115952%_)
                (if (gx#stx-pair? _%g115927115952%_)
                    (let ((_%e115931115955%_ (gx#syntax-e _%g115927115952%_)))
                      (let ((_%hd115932115959%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115931115955%_)))
                            (_%tl115933115962%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115931115955%_))))
                        (if (gx#stx-pair? _%tl115933115962%_)
                            (let ((_%e115934115965%_
                                   (gx#syntax-e _%tl115933115962%_)))
                              (let ((_%hd115935115969%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e115934115965%_)))
                                    (_%tl115936115972%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e115934115965%_))))
                                (if (gx#stx-pair? _%tl115936115972%_)
                                    (let ((_%e115937115975%_
                                           (gx#syntax-e _%tl115936115972%_)))
                                      (let ((_%hd115938115979%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e115937115975%_)))
                                            (_%tl115939115982%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e115937115975%_))))
                                        (if (gx#stx-pair? _%tl115939115982%_)
                                            (let ((_%e115940115985%_
                                                   (gx#syntax-e
                                                    _%tl115939115982%_)))
                                              (let ((_%hd115941115989%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e115940115985%_)))
                                                    (_%tl115942115992%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e115940115985%_))))
                                                (if (gx#stx-null?
                                                     _%tl115942115992%_)
                                                    (let* ((_%g116017116072%_
                                                            (lambda (_%g116018116068%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g116018116068%_)))
                                                           (_%g116016116257%_
                                                            (lambda (_%g116018116076%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g116018116076%_)
                          (let ((_%e116031116079%_
                                 (gx#syntax-e _%g116018116076%_)))
                            (let ((_%hd116032116083%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e116031116079%_)))
                                  (_%tl116033116086%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e116031116079%_))))
                              (if (gx#stx-pair? _%tl116033116086%_)
                                  (let ((_%e116034116089%_
                                         (gx#syntax-e _%tl116033116086%_)))
                                    (let ((_%hd116035116093%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e116034116089%_)))
                                          (_%tl116036116096%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e116034116089%_))))
                                      (if (gx#stx-pair? _%tl116036116096%_)
                                          (let ((_%e116037116099%_
                                                 (gx#syntax-e
                                                  _%tl116036116096%_)))
                                            (let ((_%hd116038116103%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e116037116099%_)))
                                                  (_%tl116039116106%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e116037116099%_))))
                                              (if (gx#stx-pair?
                                                   _%tl116039116106%_)
                                                  (let ((_%e116040116109%_
                                                         (gx#syntax-e
                                                          _%tl116039116106%_)))
                                                    (let ((_%hd116041116113%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e116040116109%_)))
                                                          (_%tl116042116116%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e116040116109%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl116042116116%_)
                                                          (let ((_%e116043116119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl116042116116%_)))
                    (let ((_%hd116044116123%_
                           (let ()
                             (declare (not safe))
                             (##car _%e116043116119%_)))
                          (_%tl116045116126%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e116043116119%_))))
                      (if (gx#stx-pair? _%tl116045116126%_)
                          (let ((_%e116046116129%_
                                 (gx#syntax-e _%tl116045116126%_)))
                            (let ((_%hd116047116133%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e116046116129%_)))
                                  (_%tl116048116136%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e116046116129%_))))
                              (if (gx#stx-pair? _%tl116048116136%_)
                                  (let ((_%e116049116139%_
                                         (gx#syntax-e _%tl116048116136%_)))
                                    (let ((_%hd116050116143%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e116049116139%_)))
                                          (_%tl116051116146%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e116049116139%_))))
                                      (if (gx#stx-pair? _%tl116051116146%_)
                                          (let ((_%e116052116149%_
                                                 (gx#syntax-e
                                                  _%tl116051116146%_)))
                                            (let ((_%hd116053116153%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e116052116149%_)))
                                                  (_%tl116054116156%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e116052116149%_))))
                                              (if (gx#stx-pair?
                                                   _%tl116054116156%_)
                                                  (let ((_%e116055116159%_
                                                         (gx#syntax-e
                                                          _%tl116054116156%_)))
                                                    (let ((_%hd116056116163%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e116055116159%_)))
                                                          (_%tl116057116166%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e116055116159%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl116057116166%_)
                                                          (let ((_%e116058116169%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl116057116166%_)))
                    (let ((_%hd116059116173%_
                           (let ()
                             (declare (not safe))
                             (##car _%e116058116169%_)))
                          (_%tl116060116176%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e116058116169%_))))
                      (if (gx#stx-pair? _%tl116060116176%_)
                          (let ((_%e116061116179%_
                                 (gx#syntax-e _%tl116060116176%_)))
                            (let ((_%hd116062116183%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e116061116179%_)))
                                  (_%tl116063116186%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e116061116179%_))))
                              (if (gx#stx-pair? _%tl116063116186%_)
                                  (let ((_%e116064116189%_
                                         (gx#syntax-e _%tl116063116186%_)))
                                    (let ((_%hd116065116193%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e116064116189%_)))
                                          (_%tl116066116196%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e116064116189%_))))
                                      (if (gx#stx-null? _%tl116066116196%_)
                                          (cons (gx#datum->syntax '#f 'begin)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'def)
                                                            (cons (cons _%hd116032116083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax '#f 'size-hint)
                                            (cons '#f '()))
                                      (cons (cons (gx#datum->syntax '#f 'seed)
                                                  (cons '0 '()))
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'make-raw-table)
                                      (cons (gx#datum->syntax '#f 'size-hint)
                                            (cons _%hd115938115979%_
                                                  (cons _%hd115941115989%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'seed)
                                                              '())))))
                                '())))
              (cons (cons (gx#datum->syntax '#f 'def)
                          (cons (cons _%hd116035116093%_
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'size-hint)
                                                  (cons '#f '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'seed)
                                                        (cons '0 '()))
                                                  '())))
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'make-raw-table/lock)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'size-hint)
                                                  (cons _%hd115938115979%_
                                                        (cons _%hd115941115989%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'seed)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _%hd116038116103%_
                                            (cons (gx#datum->syntax '#f 'tab)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'key)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'default)
                                                              '()))))
                                      (cons (cons (gx#datum->syntax '#f 'let)
                                                  (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'table)
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         '&raw-table-table)
                                        (cons (gx#datum->syntax '#f 'tab) '()))
                                  '()))
                      (cons (cons (gx#datum->syntax '#f 'seed)
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               '&raw-table-seed)
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    '()))
                                        '()))
                            '()))
                (cons (cons (gx#datum->syntax '#f '__table-ref)
                            (cons (gx#datum->syntax '#f 'table)
                                  (cons (gx#datum->syntax '#f 'seed)
                                        (cons _%hd115938115979%_
                                              (cons _%hd115941115989%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'default)
                        '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'def)
                                      (cons (cons _%hd116041116113%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'tab)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'key)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'default)
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'do-raw-table-lock)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'tab)
                                                              (cons (cons _%hd116038116103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (gx#datum->syntax '#f 'tab)
                                        (cons (gx#datum->syntax '#f 'key)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'default)
                                                    '()))))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons (cons (gx#datum->syntax '#f 'def)
                                            (cons (cons _%hd116044116123%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'tab)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'key)
                            (cons (gx#datum->syntax '#f 'value) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'let)
                                                              (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         '#f
                                         'table)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '&raw-table-table)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          '()))
                                              '()))
                                  (cons (cons (gx#datum->syntax '#f 'seed)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '&raw-table-seed)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                            (cons (cons (gx#datum->syntax '#f '__table-set!)
                                        (cons (gx#datum->syntax '#f 'table)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'seed)
                                                    (cons _%hd115938115979%_
                                                          (cons _%hd115941115989%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'key)
                              (cons (gx#datum->syntax '#f 'value)
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons '()
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'set!)
                          (cons (cons (gx#datum->syntax '#f '&raw-table-free)
                                      (cons (gx#datum->syntax '#f 'tab) '()))
                                (cons (cons (gx#datum->syntax '#f 'fx-)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '&raw-table-free)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'tab)
                                                              '()))
                                                  (cons '1 '())))
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'set!)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             '&raw-table-count)
                                            (cons (gx#datum->syntax '#f 'tab)
                                                  '()))
                                      (cons (cons (gx#datum->syntax '#f 'fx+)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-count)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'tab)
                            '()))
                (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons '()
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'set!)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             '&raw-table-count)
                                            (cons (gx#datum->syntax '#f 'tab)
                                                  '()))
                                      (cons (cons (gx#datum->syntax '#f 'fx+)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-count)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'tab)
                            '()))
                (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons (cons (gx#datum->syntax '#f 'def)
                                                  (cons (cons _%hd116047116133%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'tab)
                            (cons (gx#datum->syntax '#f 'key)
                                  (cons (gx#datum->syntax '#f 'value) '()))))
                (cons (cons (gx#datum->syntax '#f 'when)
                            (cons (cons (gx#datum->syntax '#f 'fx<)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '&raw-table-free)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'fxquotient)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'vector-length)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           '&raw-table-table)
                                          (cons (gx#datum->syntax '#f 'tab)
                                                '()))
                                    '()))
                        (cons '4 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               '__raw-table-rehash!)
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    '()))
                                        '())))
                      (cons (cons _%hd116044116123%_
                                  (cons (gx#datum->syntax '#f 'tab)
                                        (cons (gx#datum->syntax '#f 'key)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'value)
                                                    '()))))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons (cons _%hd116050116143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'tab)
                                  (cons (gx#datum->syntax '#f 'key)
                                        (cons (gx#datum->syntax '#f 'value)
                                              '()))))
                      (cons (cons (gx#datum->syntax '#f 'do-raw-table-lock)
                                  (cons (gx#datum->syntax '#f 'tab)
                                        (cons (cons _%hd116047116133%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons (gx#datum->syntax '#f 'value) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons (cons _%hd116053116153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (gx#datum->syntax '#f 'tab)
                                        (cons (gx#datum->syntax '#f 'key)
                                              (cons _%hd116056116163%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'default)
                                                          '())))))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'table)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '&raw-table-table)
                              (cons (gx#datum->syntax '#f 'tab) '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'seed)
                        (cons (cons (gx#datum->syntax '#f '&raw-table-seed)
                                    (cons (gx#datum->syntax '#f 'tab) '()))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '__table-update!)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'table)
                        (cons (gx#datum->syntax '#f 'seed)
                              (cons _%hd115938115979%_
                                    (cons _%hd115941115989%_
                                          (cons (gx#datum->syntax '#f 'key)
                                                (cons _%hd116056116163%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'default)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'lambda)
                                (cons '()
                                      (cons (cons (gx#datum->syntax '#f 'set!)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-free)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'tab)
                            '()))
                (cons (cons (gx#datum->syntax '#f 'fx-)
                            (cons (cons (gx#datum->syntax '#f '&raw-table-free)
                                        (cons (gx#datum->syntax '#f 'tab) '()))
                                  (cons '1 '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'set!)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '&raw-table-count)
                            (cons (gx#datum->syntax '#f 'tab) '()))
                      (cons (cons (gx#datum->syntax '#f 'fx+)
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               '&raw-table-count)
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    '()))
                                        (cons '1 '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                          (cons (cons (gx#datum->syntax '#f 'lambda)
                                      (cons '()
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'set!)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '&raw-table-count)
                            (cons (gx#datum->syntax '#f 'tab) '()))
                      (cons (cons (gx#datum->syntax '#f 'fx+)
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               '&raw-table-count)
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    '()))
                                        (cons '1 '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons (cons _%hd116056116163%_
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (gx#datum->syntax '#f 'key)
                                                    (cons _%hd116056116163%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'default)
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (cons (cons (gx#datum->syntax '#f 'when)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'fx<)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '&raw-table-free)
                              (cons (gx#datum->syntax '#f 'tab) '()))
                        (cons (cons (gx#datum->syntax '#f 'fxquotient)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-length)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '&raw-table-table)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'tab)
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons '4 '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '__raw-table-rehash!)
                        (cons (gx#datum->syntax '#f 'tab) '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons _%hd116053116153%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons _%hd116056116163%_
                              (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons (cons _%hd116059116173%_
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons _%hd116056116163%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'default)
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'do-raw-table-lock)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (cons _%hd116056116163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'tab)
                                    (cons (gx#datum->syntax '#f 'key)
                                          (cons _%hd116056116163%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'default)
                                                      '())))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%hd116062116183%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'let)
                                                          (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'table)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 '&raw-table-table)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'tab)
                                                      '()))
                                          '()))
                              (cons (cons (gx#datum->syntax '#f 'seed)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '&raw-table-seed)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'tab)
                                                            '()))
                                                '()))
                                    '()))
                        (cons (cons (gx#datum->syntax '#f '__table-del!)
                                    (cons (gx#datum->syntax '#f 'table)
                                          (cons (gx#datum->syntax '#f 'seed)
                                                (cons _%hd115938115979%_
                                                      (cons _%hd115941115989%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'key)
                          (cons (cons (gx#datum->syntax '#f 'lambda)
                                      (cons '()
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'set!)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '&raw-table-count)
                            (cons (gx#datum->syntax '#f 'tab) '()))
                      (cons (cons (gx#datum->syntax '#f 'fx-)
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               '&raw-table-count)
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    '()))
                                        (cons '1 '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons (cons (gx#datum->syntax '#f 'def)
                                              (cons (cons _%hd116065116193%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (gx#datum->syntax '#f 'key) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'do-raw-table-lock)
                        (cons (gx#datum->syntax '#f 'tab)
                              (cons (cons _%hd116062116183%_
                                          (cons (gx#datum->syntax '#f 'tab)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'key)
                                                      '())))
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g116017116072%_
                                           _%g116018116076%_))))
                                  (_%g116017116072%_ _%g116018116076%_))))
                          (_%g116017116072%_ _%g116018116076%_))))
                  (_%g116017116072%_ _%g116018116076%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g116017116072%_
                                                   _%g116018116076%_))))
                                          (_%g116017116072%_
                                           _%g116018116076%_))))
                                  (_%g116017116072%_ _%g116018116076%_))))
                          (_%g116017116072%_ _%g116018116076%_))))
                  (_%g116017116072%_ _%g116018116076%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g116017116072%_
                                                   _%g116018116076%_))))
                                          (_%g116017116072%_
                                           _%g116018116076%_))))
                                  (_%g116017116072%_ _%g116018116076%_))))
                          (_%g116017116072%_ _%g116018116076%_)))))
              (_%g116016116257%_
               (list (gx#stx-identifier
                      _%hd115935115969%_
                      '"make-"
                      _%hd115935115969%_)
                     (gx#stx-identifier
                      _%hd115935115969%_
                      '"make-"
                      _%hd115935115969%_
                      '"/lock")
                     (gx#stx-identifier
                      _%hd115935115969%_
                      _%hd115935115969%_
                      '"-ref")
                     (gx#stx-identifier
                      _%hd115935115969%_
                      _%hd115935115969%_
                      '"-ref/lock")
                     (gx#stx-identifier
                      _%hd115935115969%_
                      '"__"
                      _%hd115935115969%_
                      '"-set!")
                     (gx#stx-identifier
                      _%hd115935115969%_
                      _%hd115935115969%_
                      '"-set!")
                     (gx#stx-identifier
                      _%hd115935115969%_
                      _%hd115935115969%_
                      '"-set!/lock")
                     (gx#stx-identifier
                      _%hd115935115969%_
                      '"__"
                      _%hd115935115969%_
                      '"-update!")
                     (gx#stx-identifier
                      _%hd115935115969%_
                      _%hd115935115969%_
                      '"-update!")
                     (gx#stx-identifier
                      _%hd115935115969%_
                      _%hd115935115969%_
                      '"-update!/lock")
                     (gx#stx-identifier
                      _%hd115935115969%_
                      _%hd115935115969%_
                      '"-delete!")
                     (gx#stx-identifier
                      _%hd115935115969%_
                      _%hd115935115969%_
                      '"-delete!/lock"))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g115926115948%_
                                                     _%g115927115952%_))))
                                            (_%g115926115948%_
                                             _%g115927115952%_))))
                                    (_%g115926115948%_ _%g115927115952%_))))
                            (_%g115926115948%_ _%g115927115952%_))))
                    (_%g115926115948%_ _%g115927115952%_)))))
        (_%g115925116261%_ _%stx115923%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx116265%_)
      (let* ((_%g116269116291%_
              (lambda (_%g116270116287%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g116270116287%_)))
             (_%g116268116360%_
              (lambda (_%g116270116295%_)
                (if (gx#stx-pair? _%g116270116295%_)
                    (let ((_%e116274116298%_ (gx#syntax-e _%g116270116295%_)))
                      (let ((_%hd116275116302%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116274116298%_)))
                            (_%tl116276116305%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116274116298%_))))
                        (if (gx#stx-pair? _%tl116276116305%_)
                            (let ((_%e116277116308%_
                                   (gx#syntax-e _%tl116276116305%_)))
                              (let ((_%hd116278116312%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116277116308%_)))
                                    (_%tl116279116315%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116277116308%_))))
                                (if (gx#stx-pair? _%tl116279116315%_)
                                    (let ((_%e116280116318%_
                                           (gx#syntax-e _%tl116279116315%_)))
                                      (let ((_%hd116281116322%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e116280116318%_)))
                                            (_%tl116282116325%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e116280116318%_))))
                                        (if (gx#stx-pair? _%tl116282116325%_)
                                            (let ((_%e116283116328%_
                                                   (gx#syntax-e
                                                    _%tl116282116325%_)))
                                              (let ((_%hd116284116332%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e116283116328%_)))
                                                    (_%tl116285116335%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e116283116328%_))))
                                                (if (gx#stx-null?
                                                     _%tl116285116335%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'let)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'next-probe)
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons _%hd116278116312%_
                                                (cons _%hd116281116322%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'fx*)
                          (cons _%hd116281116322%_
                                (cons _%hd116281116322%_ '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                    (cons (gx#datum->syntax '#f 'next-probe)
                                          (cons _%hd116284116332%_ '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g116269116291%_
                                                     _%g116270116295%_))))
                                            (_%g116269116291%_
                                             _%g116270116295%_))))
                                    (_%g116269116291%_ _%g116270116295%_))))
                            (_%g116269116291%_ _%g116270116295%_))))
                    (_%g116269116291%_ _%g116270116295%_)))))
        (_%g116268116360%_ _%$stx116265%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx116364%_)
      (let* ((_%g116368116402%_
              (lambda (_%g116369116398%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g116369116398%_)))
             (_%g116367116513%_
              (lambda (_%g116369116406%_)
                (if (gx#stx-pair? _%g116369116406%_)
                    (let ((_%e116376116409%_ (gx#syntax-e _%g116369116406%_)))
                      (let ((_%hd116377116413%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116376116409%_)))
                            (_%tl116378116416%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116376116409%_))))
                        (if (gx#stx-pair? _%tl116378116416%_)
                            (let ((_%e116379116419%_
                                   (gx#syntax-e _%tl116378116416%_)))
                              (let ((_%hd116380116423%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116379116419%_)))
                                    (_%tl116381116426%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116379116419%_))))
                                (if (gx#stx-pair? _%tl116381116426%_)
                                    (let ((_%e116382116429%_
                                           (gx#syntax-e _%tl116381116426%_)))
                                      (let ((_%hd116383116433%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e116382116429%_)))
                                            (_%tl116384116436%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e116382116429%_))))
                                        (if (gx#stx-pair? _%tl116384116436%_)
                                            (let ((_%e116385116439%_
                                                   (gx#syntax-e
                                                    _%tl116384116436%_)))
                                              (let ((_%hd116386116443%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e116385116439%_)))
                                                    (_%tl116387116446%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e116385116439%_))))
                                                (if (gx#stx-pair?
                                                     _%tl116387116446%_)
                                                    (let ((_%e116388116449%_
                                                           (gx#syntax-e
                                                            _%tl116387116446%_)))
                                                      (let ((_%hd116389116453%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e116388116449%_)))
                    (_%tl116390116456%_
                     (let () (declare (not safe)) (##cdr _%e116388116449%_))))
                (if (gx#stx-pair? _%tl116390116456%_)
                    (let ((_%e116391116459%_ (gx#syntax-e _%tl116390116456%_)))
                      (let ((_%hd116392116463%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116391116459%_)))
                            (_%tl116393116466%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116391116459%_))))
                        (if (gx#stx-pair? _%tl116393116466%_)
                            (let ((_%e116394116469%_
                                   (gx#syntax-e _%tl116393116466%_)))
                              (let ((_%hd116395116473%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116394116469%_)))
                                    (_%tl116396116476%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116394116469%_))))
                                (if (gx#stx-null? _%tl116396116476%_)
                                    (cons (gx#datum->syntax '#f 'let*)
                                          (cons (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'h)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'fxxor)
                                (cons (cons _%hd116386116443%_
                                            (cons _%hd116392116463%_ '()))
                                      (cons _%hd116383116433%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'size)
                          (cons (cons (gx#datum->syntax '#f 'vector-length)
                                      (cons _%hd116380116423%_ '()))
                                '()))
                    (cons (cons (gx#datum->syntax '#f 'entries)
                                (cons (cons (gx#datum->syntax '#f 'fxquotient)
                                            (cons (gx#datum->syntax '#f 'size)
                                                  (cons '2 '())))
                                      '()))
                          (cons (cons (gx#datum->syntax '#f 'start)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'fxarithmetic-shift-left)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'fxmodulo)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'h)
                            (cons (gx#datum->syntax '#f 'entries) '())))
                (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'let)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'loop)
                          (cons (cons (cons (gx#datum->syntax '#f 'probe)
                                            (cons (gx#datum->syntax '#f 'start)
                                                  '()))
                                      (cons (cons (gx#datum->syntax '#f 'i)
                                                  (cons '1 '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'deleted)
                                                        (cons '#f '()))
                                                  '())))
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'k)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'vector-ref)
                            (cons _%hd116380116423%_
                                  (cons (gx#datum->syntax '#f 'probe) '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'cond)
                                                              (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         '#f
                                         'eq?)
                                        (cons (gx#datum->syntax '#f 'k)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'macro-unused-obj)
                                                          '())
                                                    '())))
                                  (cons _%hd116395116473%_ '()))
                            (cons (cons (cons (gx#datum->syntax '#f 'eq?)
                                              (cons (gx#datum->syntax '#f 'k)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'macro-deleted-obj)
                        '())
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'loop)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe-step)
                        (cons (gx#datum->syntax '#f 'start)
                              (cons (gx#datum->syntax '#f 'i)
                                    (cons (gx#datum->syntax '#f 'size) '()))))
                  (cons (cons (gx#datum->syntax '#f 'fx+)
                              (cons (gx#datum->syntax '#f 'i) (cons '1 '())))
                        (cons (cons (gx#datum->syntax '#f 'or)
                                    (cons (gx#datum->syntax '#f 'deleted)
                                          (cons (gx#datum->syntax '#f 'probe)
                                                '())))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons (cons _%hd116389116453%_
                                                    (cons _%hd116392116463%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-ref)
                                                          (cons _%hd116380116423%_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'fx+)
                                    (cons (gx#datum->syntax '#f 'probe)
                                          (cons '1 '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'else)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'loop)
                        (cons (cons (gx#datum->syntax '#f 'probe-step)
                                    (cons (gx#datum->syntax '#f 'start)
                                          (cons (gx#datum->syntax '#f 'i)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'size)
                                                      '()))))
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons (gx#datum->syntax '#f 'i)
                                                (cons '1 '())))
                                    (cons (gx#datum->syntax '#f 'deleted)
                                          '()))))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()))))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%g116368116402%_ _%g116369116406%_))))
                            (_%g116368116402%_ _%g116369116406%_))))
                    (_%g116368116402%_ _%g116369116406%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g116368116402%_
                                                     _%g116369116406%_))))
                                            (_%g116368116402%_
                                             _%g116369116406%_))))
                                    (_%g116368116402%_ _%g116369116406%_))))
                            (_%g116368116402%_ _%g116369116406%_))))
                    (_%g116368116402%_ _%g116369116406%_)))))
        (_%g116367116513%_ _%$stx116364%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx116517%_)
      (let* ((_%g116521116563%_
              (lambda (_%g116522116559%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g116522116559%_)))
             (_%g116520116702%_
              (lambda (_%g116522116567%_)
                (if (gx#stx-pair? _%g116522116567%_)
                    (let ((_%e116531116570%_ (gx#syntax-e _%g116522116567%_)))
                      (let ((_%hd116532116574%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116531116570%_)))
                            (_%tl116533116577%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116531116570%_))))
                        (if (gx#stx-pair? _%tl116533116577%_)
                            (let ((_%e116534116580%_
                                   (gx#syntax-e _%tl116533116577%_)))
                              (let ((_%hd116535116584%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116534116580%_)))
                                    (_%tl116536116587%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116534116580%_))))
                                (if (gx#stx-pair? _%tl116536116587%_)
                                    (let ((_%e116537116590%_
                                           (gx#syntax-e _%tl116536116587%_)))
                                      (let ((_%hd116538116594%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e116537116590%_)))
                                            (_%tl116539116597%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e116537116590%_))))
                                        (if (gx#stx-pair? _%tl116539116597%_)
                                            (let ((_%e116540116600%_
                                                   (gx#syntax-e
                                                    _%tl116539116597%_)))
                                              (let ((_%hd116541116604%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e116540116600%_)))
                                                    (_%tl116542116607%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e116540116600%_))))
                                                (if (gx#stx-pair?
                                                     _%tl116542116607%_)
                                                    (let ((_%e116543116610%_
                                                           (gx#syntax-e
                                                            _%tl116542116607%_)))
                                                      (let ((_%hd116544116614%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e116543116610%_)))
                    (_%tl116545116617%_
                     (let () (declare (not safe)) (##cdr _%e116543116610%_))))
                (if (gx#stx-pair? _%tl116545116617%_)
                    (let ((_%e116546116620%_ (gx#syntax-e _%tl116545116617%_)))
                      (let ((_%hd116547116624%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116546116620%_)))
                            (_%tl116548116627%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116546116620%_))))
                        (if (gx#stx-pair? _%tl116548116627%_)
                            (let ((_%e116549116630%_
                                   (gx#syntax-e _%tl116548116627%_)))
                              (let ((_%hd116550116634%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116549116630%_)))
                                    (_%tl116551116637%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116549116630%_))))
                                (if (gx#stx-pair? _%tl116551116637%_)
                                    (let ((_%e116552116640%_
                                           (gx#syntax-e _%tl116551116637%_)))
                                      (let ((_%hd116553116644%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e116552116640%_)))
                                            (_%tl116554116647%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e116552116640%_))))
                                        (if (gx#stx-pair? _%tl116554116647%_)
                                            (let ((_%e116555116650%_
                                                   (gx#syntax-e
                                                    _%tl116554116647%_)))
                                              (let ((_%hd116556116654%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e116555116650%_)))
                                                    (_%tl116557116657%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e116555116650%_))))
                                                (if (gx#stx-null?
                                                     _%tl116557116657%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'let*)
                                                          (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'h)
                                    (cons (cons (gx#datum->syntax '#f 'fxxor)
                                                (cons (cons _%hd116541116604%_
                                                            (cons _%hd116547116624%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%hd116538116594%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              (cons (cons (gx#datum->syntax '#f 'size)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'vector-length)
                                                      (cons _%hd116535116584%_
                                                            '()))
                                                '()))
                                    (cons (cons (gx#datum->syntax '#f 'entries)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'fxquotient)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'size)
                          (cons '2 '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'start)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'fxarithmetic-shift-left)
                          (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                      (cons (gx#datum->syntax '#f 'h)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'entries)
                                                  '())))
                                (cons '1 '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        (cons (cons (gx#datum->syntax '#f 'let)
                                    (cons (gx#datum->syntax '#f 'loop)
                                          (cons (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'probe)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'start)
                          '()))
              (cons (cons (gx#datum->syntax '#f 'i) (cons '1 '()))
                    (cons (cons (gx#datum->syntax '#f 'deleted) (cons '#f '()))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'let)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'k)
                                (cons (cons (gx#datum->syntax '#f 'vector-ref)
                                            (cons _%hd116535116584%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'probe)
                                                        '())))
                                      '()))
                          (cons (cons (gx#datum->syntax '#f 'cond)
                                      (cons (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'eq?)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'k)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'macro-unused-obj)
                                  '())
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'deleted)
                            (cons (cons (gx#datum->syntax '#f 'begin)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'vector-set!)
                                                    (cons _%hd116535116584%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'deleted)
                        (cons _%hd116547116624%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%hd116535116584%_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'fx+)
                                    (cons (gx#datum->syntax '#f 'deleted)
                                          (cons '1 '())))
                              (cons _%hd116550116634%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%hd116556116654%_
                                                                '())
                                                          '()))))
                                  (cons (cons (gx#datum->syntax '#f 'begin)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%hd116535116584%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'probe)
                              (cons _%hd116547116624%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-set!)
                        (cons _%hd116535116584%_
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons (gx#datum->syntax '#f 'probe)
                                                (cons '1 '())))
                                    (cons _%hd116550116634%_ '()))))
                  (cons (cons _%hd116553116644%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'eq?)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'k)
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'macro-deleted-obj)
                                        '())
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'loop)
                            (cons (cons (gx#datum->syntax '#f 'probe-step)
                                        (cons (gx#datum->syntax '#f 'start)
                                              (cons (gx#datum->syntax '#f 'i)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'size)
                                                          '()))))
                                  (cons (cons (gx#datum->syntax '#f 'fx+)
                                              (cons (gx#datum->syntax '#f 'i)
                                                    (cons '1 '())))
                                        (cons (cons (gx#datum->syntax '#f 'or)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'deleted)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (cons _%hd116544116614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%hd116547116624%_
                                  (cons (gx#datum->syntax '#f 'k) '())))
                      (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                  (cons _%hd116535116584%_
                                        (cons (gx#datum->syntax '#f 'probe)
                                              (cons _%hd116547116624%_ '()))))
                            (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                        (cons _%hd116535116584%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'fx+)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe)
                        (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%hd116550116634%_
                                                          '()))))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'else)
                            (cons (cons (gx#datum->syntax '#f 'loop)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'probe-step)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'start)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'i)
                        (cons (gx#datum->syntax '#f 'size) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'fx+)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'i)
                        (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'deleted)
                                                          '()))))
                                  '()))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '())))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g116521116563%_
                                                     _%g116522116567%_))))
                                            (_%g116521116563%_
                                             _%g116522116567%_))))
                                    (_%g116521116563%_ _%g116522116567%_))))
                            (_%g116521116563%_ _%g116522116567%_))))
                    (_%g116521116563%_ _%g116522116567%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g116521116563%_
                                                     _%g116522116567%_))))
                                            (_%g116521116563%_
                                             _%g116522116567%_))))
                                    (_%g116521116563%_ _%g116522116567%_))))
                            (_%g116521116563%_ _%g116522116567%_))))
                    (_%g116521116563%_ _%g116522116567%_)))))
        (_%g116520116702%_ _%$stx116517%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx116706%_)
      (let* ((_%g116710116756%_
              (lambda (_%g116711116752%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g116711116752%_)))
             (_%g116709116909%_
              (lambda (_%g116711116760%_)
                (if (gx#stx-pair? _%g116711116760%_)
                    (let ((_%e116721116763%_ (gx#syntax-e _%g116711116760%_)))
                      (let ((_%hd116722116767%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116721116763%_)))
                            (_%tl116723116770%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116721116763%_))))
                        (if (gx#stx-pair? _%tl116723116770%_)
                            (let ((_%e116724116773%_
                                   (gx#syntax-e _%tl116723116770%_)))
                              (let ((_%hd116725116777%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116724116773%_)))
                                    (_%tl116726116780%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116724116773%_))))
                                (if (gx#stx-pair? _%tl116726116780%_)
                                    (let ((_%e116727116783%_
                                           (gx#syntax-e _%tl116726116780%_)))
                                      (let ((_%hd116728116787%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e116727116783%_)))
                                            (_%tl116729116790%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e116727116783%_))))
                                        (if (gx#stx-pair? _%tl116729116790%_)
                                            (let ((_%e116730116793%_
                                                   (gx#syntax-e
                                                    _%tl116729116790%_)))
                                              (let ((_%hd116731116797%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e116730116793%_)))
                                                    (_%tl116732116800%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e116730116793%_))))
                                                (if (gx#stx-pair?
                                                     _%tl116732116800%_)
                                                    (let ((_%e116733116803%_
                                                           (gx#syntax-e
                                                            _%tl116732116800%_)))
                                                      (let ((_%hd116734116807%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e116733116803%_)))
                    (_%tl116735116810%_
                     (let () (declare (not safe)) (##cdr _%e116733116803%_))))
                (if (gx#stx-pair? _%tl116735116810%_)
                    (let ((_%e116736116813%_ (gx#syntax-e _%tl116735116810%_)))
                      (let ((_%hd116737116817%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116736116813%_)))
                            (_%tl116738116820%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116736116813%_))))
                        (if (gx#stx-pair? _%tl116738116820%_)
                            (let ((_%e116739116823%_
                                   (gx#syntax-e _%tl116738116820%_)))
                              (let ((_%hd116740116827%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116739116823%_)))
                                    (_%tl116741116830%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116739116823%_))))
                                (if (gx#stx-pair? _%tl116741116830%_)
                                    (let ((_%e116742116833%_
                                           (gx#syntax-e _%tl116741116830%_)))
                                      (let ((_%hd116743116837%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e116742116833%_)))
                                            (_%tl116744116840%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e116742116833%_))))
                                        (if (gx#stx-pair? _%tl116744116840%_)
                                            (let ((_%e116745116843%_
                                                   (gx#syntax-e
                                                    _%tl116744116840%_)))
                                              (let ((_%hd116746116847%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e116745116843%_)))
                                                    (_%tl116747116850%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e116745116843%_))))
                                                (if (gx#stx-pair?
                                                     _%tl116747116850%_)
                                                    (let ((_%e116748116853%_
                                                           (gx#syntax-e
                                                            _%tl116747116850%_)))
                                                      (let ((_%hd116749116857%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e116748116853%_)))
                    (_%tl116750116860%_
                     (let () (declare (not safe)) (##cdr _%e116748116853%_))))
                (if (gx#stx-null? _%tl116750116860%_)
                    (cons (gx#datum->syntax '#f 'let*)
                          (cons (cons (cons (gx#datum->syntax '#f 'h)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'fxxor)
                                                        (cons (cons _%hd116731116797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%hd116737116817%_ '()))
                      (cons _%hd116728116787%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      (cons (cons (gx#datum->syntax '#f 'size)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'vector-length)
                                                              (cons _%hd116725116777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'entries)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'fxquotient)
                            (cons (gx#datum->syntax '#f 'size) (cons '2 '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'start)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'fxarithmetic-shift-left)
                                  (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                              (cons (gx#datum->syntax '#f 'h)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'entries)
                                                          '())))
                                        (cons '1 '())))
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons (gx#datum->syntax '#f 'loop)
                                                  (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'probe)
                            (cons (gx#datum->syntax '#f 'start) '()))
                      (cons (cons (gx#datum->syntax '#f 'i) (cons '1 '()))
                            (cons (cons (gx#datum->syntax '#f 'deleted)
                                        (cons '#f '()))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'let)
                            (cons (cons (gx#datum->syntax '#f 'k)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'vector-ref)
                                                    (cons _%hd116725116777%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons (gx#datum->syntax '#f 'cond)
                                              (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?)
                        (cons (gx#datum->syntax '#f 'k)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'macro-unused-obj)
                                          '())
                                    '())))
                  (cons (cons (gx#datum->syntax '#f 'if)
                              (cons (gx#datum->syntax '#f 'deleted)
                                    (cons (cons (gx#datum->syntax '#f 'begin)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'vector-set!)
                                                            (cons _%hd116725116777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'deleted)
                                (cons _%hd116737116817%_ '()))))
              (cons (cons (gx#datum->syntax '#f 'vector-set!)
                          (cons _%hd116725116777%_
                                (cons (cons (gx#datum->syntax '#f 'fx+)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'deleted)
                                                  (cons '1 '())))
                                      (cons (cons _%hd116740116827%_
                                                  (cons _%hd116743116837%_
                                                        '()))
                                            '()))))
                    (cons (cons _%hd116749116857%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'vector-set!)
                          (cons _%hd116725116777%_
                                (cons (gx#datum->syntax '#f 'probe)
                                      (cons _%hd116737116817%_ '()))))
                    (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                (cons _%hd116725116777%_
                                      (cons (cons (gx#datum->syntax '#f 'fx+)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'probe)
                                                        (cons '1 '())))
                                            (cons (cons _%hd116740116827%_
                                                        (cons _%hd116743116837%_
                                                              '()))
                                                  '()))))
                          (cons (cons _%hd116746116847%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'eq?)
                              (cons (gx#datum->syntax '#f 'k)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'macro-deleted-obj)
                                                '())
                                          '())))
                        (cons (cons (gx#datum->syntax '#f 'loop)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'probe-step)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'start)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'i)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'size)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'fx+)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'i)
                                                            (cons '1 '())))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'or)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'deleted)
                          (cons (gx#datum->syntax '#f 'probe) '())))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '()))
                  (cons (cons (cons _%hd116734116807%_
                                    (cons _%hd116737116817%_
                                          (cons (gx#datum->syntax '#f 'k)
                                                '())))
                              (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                          (cons _%hd116725116777%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'probe)
                                                      (cons _%hd116737116817%_
                                                            '()))))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons _%hd116725116777%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'fx+)
                          (cons (gx#datum->syntax '#f 'probe) (cons '1 '())))
                    (cons (cons _%hd116740116827%_
                                (cons (cons (gx#datum->syntax '#f 'vector-ref)
                                            (cons _%hd116725116777%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'fx+)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'probe)
                            (cons '1 '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (cons (cons (gx#datum->syntax '#f 'else)
                                    (cons (cons (gx#datum->syntax '#f 'loop)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'probe-step)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'start)
                          (cons (gx#datum->syntax '#f 'i)
                                (cons (gx#datum->syntax '#f 'size) '()))))
              (cons (cons (gx#datum->syntax '#f 'fx+)
                          (cons (gx#datum->syntax '#f 'i) (cons '1 '())))
                    (cons (gx#datum->syntax '#f 'deleted) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (_%g116710116756%_ _%g116711116760%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g116710116756%_
                                                     _%g116711116760%_))))
                                            (_%g116710116756%_
                                             _%g116711116760%_))))
                                    (_%g116710116756%_ _%g116711116760%_))))
                            (_%g116710116756%_ _%g116711116760%_))))
                    (_%g116710116756%_ _%g116711116760%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g116710116756%_
                                                     _%g116711116760%_))))
                                            (_%g116710116756%_
                                             _%g116711116760%_))))
                                    (_%g116710116756%_ _%g116711116760%_))))
                            (_%g116710116756%_ _%g116711116760%_))))
                    (_%g116710116756%_ _%g116711116760%_)))))
        (_%g116709116909%_ _%$stx116706%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx116913%_)
      (let* ((_%g116917116951%_
              (lambda (_%g116918116947%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g116918116947%_)))
             (_%g116916117062%_
              (lambda (_%g116918116955%_)
                (if (gx#stx-pair? _%g116918116955%_)
                    (let ((_%e116925116958%_ (gx#syntax-e _%g116918116955%_)))
                      (let ((_%hd116926116962%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116925116958%_)))
                            (_%tl116927116965%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116925116958%_))))
                        (if (gx#stx-pair? _%tl116927116965%_)
                            (let ((_%e116928116968%_
                                   (gx#syntax-e _%tl116927116965%_)))
                              (let ((_%hd116929116972%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116928116968%_)))
                                    (_%tl116930116975%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116928116968%_))))
                                (if (gx#stx-pair? _%tl116930116975%_)
                                    (let ((_%e116931116978%_
                                           (gx#syntax-e _%tl116930116975%_)))
                                      (let ((_%hd116932116982%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e116931116978%_)))
                                            (_%tl116933116985%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e116931116978%_))))
                                        (if (gx#stx-pair? _%tl116933116985%_)
                                            (let ((_%e116934116988%_
                                                   (gx#syntax-e
                                                    _%tl116933116985%_)))
                                              (let ((_%hd116935116992%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e116934116988%_)))
                                                    (_%tl116936116995%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e116934116988%_))))
                                                (if (gx#stx-pair?
                                                     _%tl116936116995%_)
                                                    (let ((_%e116937116998%_
                                                           (gx#syntax-e
                                                            _%tl116936116995%_)))
                                                      (let ((_%hd116938117002%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e116937116998%_)))
                    (_%tl116939117005%_
                     (let () (declare (not safe)) (##cdr _%e116937116998%_))))
                (if (gx#stx-pair? _%tl116939117005%_)
                    (let ((_%e116940117008%_ (gx#syntax-e _%tl116939117005%_)))
                      (let ((_%hd116941117012%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116940117008%_)))
                            (_%tl116942117015%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116940117008%_))))
                        (if (gx#stx-pair? _%tl116942117015%_)
                            (let ((_%e116943117018%_
                                   (gx#syntax-e _%tl116942117015%_)))
                              (let ((_%hd116944117022%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e116943117018%_)))
                                    (_%tl116945117025%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e116943117018%_))))
                                (if (gx#stx-null? _%tl116945117025%_)
                                    (cons (gx#datum->syntax '#f 'let*)
                                          (cons (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'h)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'fxxor)
                                (cons (cons _%hd116935116992%_
                                            (cons _%hd116941117012%_ '()))
                                      (cons _%hd116932116982%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'size)
                          (cons (cons (gx#datum->syntax '#f 'vector-length)
                                      (cons _%hd116929116972%_ '()))
                                '()))
                    (cons (cons (gx#datum->syntax '#f 'entries)
                                (cons (cons (gx#datum->syntax '#f 'fxquotient)
                                            (cons (gx#datum->syntax '#f 'size)
                                                  (cons '2 '())))
                                      '()))
                          (cons (cons (gx#datum->syntax '#f 'start)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'fxarithmetic-shift-left)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'fxmodulo)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'h)
                            (cons (gx#datum->syntax '#f 'entries) '())))
                (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'let)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'loop)
                          (cons (cons (cons (gx#datum->syntax '#f 'probe)
                                            (cons (gx#datum->syntax '#f 'start)
                                                  '()))
                                      (cons (cons (gx#datum->syntax '#f 'i)
                                                  (cons '1 '()))
                                            '()))
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'k)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'vector-ref)
                            (cons _%hd116929116972%_
                                  (cons (gx#datum->syntax '#f 'probe) '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'cond)
                                                              (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         '#f
                                         'eq?)
                                        (cons (gx#datum->syntax '#f 'k)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'macro-unused-obj)
                                                          '())
                                                    '())))
                                  (cons (cons (gx#datum->syntax '#f 'void) '())
                                        '()))
                            (cons (cons (cons (gx#datum->syntax '#f 'eq?)
                                              (cons (gx#datum->syntax '#f 'k)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'macro-deleted-obj)
                        '())
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'loop)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe-step)
                        (cons (gx#datum->syntax '#f 'start)
                              (cons (gx#datum->syntax '#f 'i)
                                    (cons (gx#datum->syntax '#f 'size) '()))))
                  (cons (cons (gx#datum->syntax '#f 'fx+)
                              (cons (gx#datum->syntax '#f 'i) (cons '1 '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons (cons _%hd116938117002%_
                                                    (cons _%hd116941117012%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%hd116929116972%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'probe)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'macro-deleted-obj)
                                          '())
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-set!)
                        (cons _%hd116929116972%_
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons (gx#datum->syntax '#f 'probe)
                                                (cons '1 '())))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'macro-absent-obj)
                                                '())
                                          '()))))
                  (cons (cons _%hd116944117022%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'else)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'loop)
                        (cons (cons (gx#datum->syntax '#f 'probe-step)
                                    (cons (gx#datum->syntax '#f 'start)
                                          (cons (gx#datum->syntax '#f 'i)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'size)
                                                      '()))))
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons (gx#datum->syntax '#f 'i)
                                                (cons '1 '())))
                                    '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()))))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%g116917116951%_ _%g116918116955%_))))
                            (_%g116917116951%_ _%g116918116955%_))))
                    (_%g116917116951%_ _%g116918116955%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g116917116951%_
                                                     _%g116918116955%_))))
                                            (_%g116917116951%_
                                             _%g116918116955%_))))
                                    (_%g116917116951%_ _%g116918116955%_))))
                            (_%g116917116951%_ _%g116918116955%_))))
                    (_%g116917116951%_ _%g116918116955%_)))))
        (_%g116916117062%_ _%$stx116913%_))))
  (define |[:0:]#do-gc-table-lock|
    (lambda (_%$stx117066%_)
      (let* ((_%g117070117088%_
              (lambda (_%g117071117084%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g117071117084%_)))
             (_%g117069117143%_
              (lambda (_%g117071117092%_)
                (if (gx#stx-pair? _%g117071117092%_)
                    (let ((_%e117074117095%_ (gx#syntax-e _%g117071117092%_)))
                      (let ((_%hd117075117099%_
                             (let ()
                               (declare (not safe))
                               (##car _%e117074117095%_)))
                            (_%tl117076117102%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e117074117095%_))))
                        (if (gx#stx-pair? _%tl117076117102%_)
                            (let ((_%e117077117105%_
                                   (gx#syntax-e _%tl117076117102%_)))
                              (let ((_%hd117078117109%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e117077117105%_)))
                                    (_%tl117079117112%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e117077117105%_))))
                                (if (gx#stx-pair? _%tl117079117112%_)
                                    (let ((_%e117080117115%_
                                           (gx#syntax-e _%tl117079117112%_)))
                                      (let ((_%hd117081117119%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e117080117115%_)))
                                            (_%tl117082117122%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e117080117115%_))))
                                        (if (gx#stx-null? _%tl117082117122%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   '__do-inline-lock!)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '&gc-table-lock)
                                                              (cons _%hd117078117109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%hd117081117119%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g117070117088%_
                                             _%g117071117092%_))))
                                    (_%g117070117088%_ _%g117071117092%_))))
                            (_%g117070117088%_ _%g117071117092%_))))
                    (_%g117070117088%_ _%g117071117092%_)))))
        (_%g117069117143%_ _%$stx117066%_)))))
