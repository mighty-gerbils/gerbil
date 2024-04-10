(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g88838_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g88848_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx81909%_)
        (let* ((_%g8191381931%_
                (lambda (_%g8191481927%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8191481927%_)))
               (_%g8191281987%_
                (lambda (_%g8191481935%_)
                  (if (gx#stx-pair? _%g8191481935%_)
                      (let ((_%e8191781938%_ (gx#syntax-e _%g8191481935%_)))
                        (let ((_%hd8191881942%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8191781938%_)))
                              (_%tl8191981945%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8191781938%_))))
                          (if (gx#stx-pair? _%tl8191981945%_)
                              (let ((_%e8192081948%_
                                     (gx#syntax-e _%tl8191981945%_)))
                                (let ((_%hd8192181952%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8192081948%_)))
                                      (_%tl8192281955%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8192081948%_))))
                                  (if (gx#stx-pair? _%tl8192281955%_)
                                      (let ((_%e8192381958%_
                                             (gx#syntax-e _%tl8192281955%_)))
                                        (let ((_%hd8192481962%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8192381958%_)))
                                              (_%tl8192581965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8192381958%_))))
                                          (if (gx#stx-null? _%tl8192581965%_)
                                              ((lambda (_%L81968%_ _%L81970%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L81970%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L81968%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8192481962%_
                                               _%hd8192181952%_)
                                              (_%g8191381931%_
                                               _%g8191481935%_))))
                                      (_%g8191381931%_ _%g8191481935%_))))
                              (_%g8191381931%_ _%g8191481935%_))))
                      (_%g8191381931%_ _%g8191481935%_)))))
          (_%g8191281987%_ _%$stx81909%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx81991%_)
        (let* ((_%g8199582009%_
                (lambda (_%g8199682005%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8199682005%_)))
               (_%g8199482050%_
                (lambda (_%g8199682013%_)
                  (if (gx#stx-pair? _%g8199682013%_)
                      (let ((_%e8199882016%_ (gx#syntax-e _%g8199682013%_)))
                        (let ((_%hd8199982020%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8199882016%_)))
                              (_%tl8200082023%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8199882016%_))))
                          (if (gx#stx-pair? _%tl8200082023%_)
                              (let ((_%e8200182026%_
                                     (gx#syntax-e _%tl8200082023%_)))
                                (let ((_%hd8200282030%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8200182026%_)))
                                      (_%tl8200382033%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8200182026%_))))
                                  (if (gx#stx-null? _%tl8200382033%_)
                                      ((lambda (_%L82036%_)
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
                                       (cons _%L82036%_
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
                                       _%hd8200282030%_)
                                      (_%g8199582009%_ _%g8199682013%_))))
                              (_%g8199582009%_ _%g8199682013%_))))
                      (_%g8199582009%_ _%g8199682013%_)))))
          (_%g8199482050%_ _%$stx81991%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx82054%_)
        (let* ((_%g8205882072%_
                (lambda (_%g8205982068%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8205982068%_)))
               (_%g8205782113%_
                (lambda (_%g8205982076%_)
                  (if (gx#stx-pair? _%g8205982076%_)
                      (let ((_%e8206182079%_ (gx#syntax-e _%g8205982076%_)))
                        (let ((_%hd8206282083%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8206182079%_)))
                              (_%tl8206382086%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8206182079%_))))
                          (if (gx#stx-pair? _%tl8206382086%_)
                              (let ((_%e8206482089%_
                                     (gx#syntax-e _%tl8206382086%_)))
                                (let ((_%hd8206582093%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8206482089%_)))
                                      (_%tl8206682096%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8206482089%_))))
                                  (if (gx#stx-null? _%tl8206682096%_)
                                      ((lambda (_%L82099%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L82099%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd8206582093%_)
                                      (_%g8205882072%_ _%g8205982076%_))))
                              (_%g8205882072%_ _%g8205982076%_))))
                      (_%g8205882072%_ _%g8205982076%_)))))
          (_%g8205782113%_ _%$stx82054%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx82117%_)
        (let* ((_%g8212182131%_
                (lambda (_%g8212282127%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8212282127%_)))
               (_%g8212082152%_
                (lambda (_%g8212282135%_)
                  (if (gx#stx-pair? _%g8212282135%_)
                      (let ((_%e8212382138%_ (gx#syntax-e _%g8212282135%_)))
                        (let ((_%hd8212482142%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8212382138%_)))
                              (_%tl8212582145%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8212382138%_))))
                          (if (gx#stx-null? _%tl8212582145%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g8212182131%_ _%g8212282135%_))))
                      (_%g8212182131%_ _%g8212282135%_)))))
          (_%g8212082152%_ _%$stx82117%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx82156%_)
        (let* ((_%g8216082178%_
                (lambda (_%g8216182174%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8216182174%_)))
               (_%g8215982233%_
                (lambda (_%g8216182182%_)
                  (if (gx#stx-pair? _%g8216182182%_)
                      (let ((_%e8216482185%_ (gx#syntax-e _%g8216182182%_)))
                        (let ((_%hd8216582189%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8216482185%_)))
                              (_%tl8216682192%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8216482185%_))))
                          (if (gx#stx-pair? _%tl8216682192%_)
                              (let ((_%e8216782195%_
                                     (gx#syntax-e _%tl8216682192%_)))
                                (let ((_%hd8216882199%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8216782195%_)))
                                      (_%tl8216982202%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8216782195%_))))
                                  (if (gx#stx-pair? _%tl8216982202%_)
                                      (let ((_%e8217082205%_
                                             (gx#syntax-e _%tl8216982202%_)))
                                        (let ((_%hd8217182209%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8217082205%_)))
                                              (_%tl8217282212%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8217082205%_))))
                                          (if (gx#stx-null? _%tl8217282212%_)
                                              ((lambda (_%L82215%_ _%L82217%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L82217%_
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
                 (cons (cons _%L82215%_
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
                                               _%hd8217182209%_
                                               _%hd8216882199%_)
                                              (_%g8216082178%_
                                               _%g8216182182%_))))
                                      (_%g8216082178%_ _%g8216182182%_))))
                              (_%g8216082178%_ _%g8216182182%_))))
                      (_%g8216082178%_ _%g8216182182%_)))))
          (_%g8215982233%_ _%$stx82156%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx82237%_)
        (let* ((_%g8224182259%_
                (lambda (_%g8224282255%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8224282255%_)))
               (_%g8224082314%_
                (lambda (_%g8224282263%_)
                  (if (gx#stx-pair? _%g8224282263%_)
                      (let ((_%e8224582266%_ (gx#syntax-e _%g8224282263%_)))
                        (let ((_%hd8224682270%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8224582266%_)))
                              (_%tl8224782273%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8224582266%_))))
                          (if (gx#stx-pair? _%tl8224782273%_)
                              (let ((_%e8224882276%_
                                     (gx#syntax-e _%tl8224782273%_)))
                                (let ((_%hd8224982280%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8224882276%_)))
                                      (_%tl8225082283%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8224882276%_))))
                                  (if (gx#stx-pair? _%tl8225082283%_)
                                      (let ((_%e8225182286%_
                                             (gx#syntax-e _%tl8225082283%_)))
                                        (let ((_%hd8225282290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8225182286%_)))
                                              (_%tl8225382293%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8225182286%_))))
                                          (if (gx#stx-null? _%tl8225382293%_)
                                              ((lambda (_%L82296%_ _%L82298%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L82298%_
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
                                               (cons (cons _%L82296%_
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
                                               _%hd8225282290%_
                                               _%hd8224982280%_)
                                              (_%g8224182259%_
                                               _%g8224282263%_))))
                                      (_%g8224182259%_ _%g8224282263%_))))
                              (_%g8224182259%_ _%g8224282263%_))))
                      (_%g8224182259%_ _%g8224282263%_)))))
          (_%g8224082314%_ _%$stx82237%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx82318%_)
        (let* ((_%g8232282340%_
                (lambda (_%g8232382336%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8232382336%_)))
               (_%g8232182395%_
                (lambda (_%g8232382344%_)
                  (if (gx#stx-pair? _%g8232382344%_)
                      (let ((_%e8232682347%_ (gx#syntax-e _%g8232382344%_)))
                        (let ((_%hd8232782351%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8232682347%_)))
                              (_%tl8232882354%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8232682347%_))))
                          (if (gx#stx-pair? _%tl8232882354%_)
                              (let ((_%e8232982357%_
                                     (gx#syntax-e _%tl8232882354%_)))
                                (let ((_%hd8233082361%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8232982357%_)))
                                      (_%tl8233182364%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8232982357%_))))
                                  (if (gx#stx-pair? _%tl8233182364%_)
                                      (let ((_%e8233282367%_
                                             (gx#syntax-e _%tl8233182364%_)))
                                        (let ((_%hd8233382371%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8233282367%_)))
                                              (_%tl8233482374%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8233282367%_))))
                                          (if (gx#stx-null? _%tl8233482374%_)
                                              ((lambda (_%L82377%_ _%L82379%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L82379%_
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
                                               (cons (cons _%L82377%_
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
                                               _%hd8233382371%_
                                               _%hd8233082361%_)
                                              (_%g8232282340%_
                                               _%g8232382344%_))))
                                      (_%g8232282340%_ _%g8232382344%_))))
                              (_%g8232282340%_ _%g8232382344%_))))
                      (_%g8232282340%_ _%g8232382344%_)))))
          (_%g8232182395%_ _%$stx82318%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx82399%_)
        (let* ((_%g8240382414%_
                (lambda (_%g8240482410%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8240482410%_)))
               (_%g8240282443%_
                (lambda (_%g8240482418%_)
                  (if (gx#stx-pair? _%g8240482418%_)
                      (let ((_%e8240682421%_ (gx#syntax-e _%g8240482418%_)))
                        (let ((_%hd8240782425%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8240682421%_)))
                              (_%tl8240882428%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8240682421%_))))
                          ((lambda (_%L82431%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L82431%_)))
                           _%tl8240882428%_)))
                      (_%g8240382414%_ _%g8240482418%_)))))
          (_%g8240282443%_ _%$stx82399%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx82447%_)
        (let* ((_%__stx8839988400%_ _%$stx82447%_)
               (_%g8245882672%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8839988400%_))))
          (let ((_%__kont8840288403%_
                 (lambda (_%L83525%_
                          _%L83527%_
                          _%L83528%_
                          _%L83529%_
                          _%L83530%_)
                   (cons _%L83530%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8356083563%_
                                                     _%g8356183566%_)
                                              (cons _%g8356083563%_
                                                    _%g8356183566%_))
                                            '()
                                            _%L83528%_)
                                           (cons _%L83529%_
                                                 (cons _%L83527%_
                                                       (cons _%L83525%_
                                                             '())))))))))
                (_%__kont8840688407%_
                 (lambda (_%L83378%_ _%L83380%_ _%L83381%_ _%L83382%_)
                   (cons _%L83382%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8340583408%_
                                                     _%g8340683411%_)
                                              (cons _%g8340583408%_
                                                    _%g8340683411%_))
                                            '()
                                            _%L83380%_)
                                           (cons _%L83381%_
                                                 (cons _%L83378%_
                                                       (cons _%L83378%_
                                                             '())))))))))
                (_%__kont8841088411%_
                 (lambda (_%L83281%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L83281%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont8841288413%_
                 (lambda (_%L83204%_
                          _%L83206%_
                          _%L83207%_
                          _%L83208%_
                          _%L83209%_
                          _%L83210%_)
                   (cons _%L83210%_
                         (cons '2
                               (cons (cons (cons _%L83208%_
                                                 (cons _%L83207%_ '()))
                                           _%L83209%_)
                                     (cons _%L83206%_ _%L83204%_))))))
                (_%__kont8841488415%_
                 (lambda (_%L83085%_
                          _%L83087%_
                          _%L83088%_
                          _%L83089%_
                          _%L83090%_)
                   (cons _%L83090%_
                         (cons '2
                               (cons (cons (cons _%L83088%_
                                                 (cons _%L83088%_ '()))
                                           _%L83089%_)
                                     (cons _%L83087%_ _%L83085%_))))))
                (_%__kont8841688417%_
                 (lambda (_%L83002%_ _%L83004%_ _%L83005%_)
                   (cons _%L83005%_
                         (cons '3 (cons '() (cons _%L83004%_ _%L83002%_))))))
                (_%__kont8841888419%_
                 (lambda (_%L82923%_
                          _%L82925%_
                          _%L82926%_
                          _%L82927%_
                          _%L82928%_)
                   (cons _%L82928%_
                         (cons '3
                               (cons (cons _%L82926%_ _%L82927%_)
                                     (cons _%L82925%_ _%L82923%_))))))
                (_%__kont8842088421%_
                 (lambda (_%L82807%_
                          _%L82809%_
                          _%L82810%_
                          _%L82811%_
                          _%L82812%_
                          _%L82813%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L82810%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L82807%_ '())))
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
                                              (lambda (_%g8284782850%_
                                                       _%g8284882853%_)
                                                (cons _%g8284782850%_
                                                      _%g8284882853%_))
                                              '()
                                              _%L82812%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (__foldr1
                                              (lambda (_%g8284582856%_
                                                       _%g8284682859%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g8284582856%_ '())))
              _%g8284682859%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L82811%_))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L82809%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match8875088751%_
                    (lambda (_%e8262882679%_
                             _%hd8262982683%_
                             _%tl8263082686%_
                             _%e8263182689%_
                             _%hd8263282693%_
                             _%tl8263382696%_
                             _%e8263482699%_
                             _%e8263582703%_
                             _%hd8263682707%_
                             _%tl8263782710%_
                             _%__splice8842288423%_
                             _%target8263882713%_
                             _%tl8264082716%_)
                      (letrec ((_%loop8264182719%_
                                (lambda (_%hd8263982723%_
                                         _%exprs8264582726%_
                                         _%names8264682728%_)
                                  (if (gx#stx-pair? _%hd8263982723%_)
                                      (let ((_%e8264282731%_
                                             (gx#syntax-e _%hd8263982723%_)))
                                        (let ((_%lp-tl8264482738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8264282731%_)))
                                              (_%lp-hd8264382735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8264282731%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd8264382735%_)
                                              (let ((_%e8266182741%_
                                                     (gx#syntax-e
                                                      _%lp-hd8264382735%_)))
                                                (let ((_%tl8266382748%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8266182741%_)))
                                                      (_%hd8266282745%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8266182741%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8266382748%_)
                                                      (let ((_%e8266482751%_
                                                             (gx#syntax-e
                                                              _%tl8266382748%_)))
                                                        (let ((_%tl8266682758%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8266482751%_)))
                      (_%hd8266582755%_
                       (let () (declare (not safe)) (##car _%e8266482751%_))))
                  (if (gx#stx-null? _%tl8266682758%_)
                      (_%loop8264182719%_
                       _%lp-tl8264482738%_
                       (cons _%hd8266582755%_ _%exprs8264582726%_)
                       (cons _%hd8266282745%_ _%names8264682728%_))
                      (let () (declare (not safe)) (_%g8245882672%_)))))
              (let () (declare (not safe)) (_%g8245882672%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g8245882672%_)))))
                                      (let ((_%names8264882764%_
                                             (reverse _%names8264682728%_))
                                            (_%exprs8264782761%_
                                             (reverse _%exprs8264582726%_)))
                                        (if (gx#stx-pair? _%tl8263782710%_)
                                            (let ((_%e8264982767%_
                                                   (gx#syntax-e
                                                    _%tl8263782710%_)))
                                              (let ((_%tl8265182774%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8264982767%_)))
                                                    (_%hd8265082771%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8264982767%_))))
                                                (if (gx#stx-null?
                                                     _%hd8265082771%_)
                                                    (if (gx#stx-pair?
                                                         _%tl8265182774%_)
                                                        (let ((_%e8265282777%_
                                                               (gx#syntax-e
                                                                _%tl8265182774%_)))
                                                          (let ((_%tl8265482784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8265282777%_)))
                        (_%hd8265382781%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8265282777%_))))
                    (if (gx#stx-pair? _%tl8265482784%_)
                        (let ((_%e8265582787%_ (gx#syntax-e _%tl8265482784%_)))
                          (let ((_%tl8265782794%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8265582787%_)))
                                (_%hd8265682791%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8265582787%_))))
                            (if (gx#stx-pair? _%tl8265782794%_)
                                (let ((_%e8265882797%_
                                       (gx#syntax-e _%tl8265782794%_)))
                                  (let ((_%tl8266082804%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8265882797%_)))
                                        (_%hd8265982801%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8265882797%_))))
                                    (if (gx#stx-null? _%tl8266082804%_)
                                        (_%__kont8842088421%_
                                         _%hd8265982801%_
                                         _%hd8265682791%_
                                         _%hd8265382781%_
                                         _%exprs8264782761%_
                                         _%names8264882764%_
                                         _%hd8262982683%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8245882672%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8245882672%_)))))
                        (let () (declare (not safe)) (_%g8245882672%_)))))
                (let () (declare (not safe)) (_%g8245882672%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8245882672%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8245882672%_))))))))
                        (_%loop8264182719%_ _%target8263882713%_ '() '()))))
                   (_%__match8852888529%_
                    (lambda (_%e8250083304%_
                             _%hd8250183308%_
                             _%tl8250283311%_
                             _%e8250383314%_
                             _%hd8250483318%_
                             _%tl8250583321%_
                             _%e8250683324%_
                             _%e8250783328%_
                             _%hd8250883332%_
                             _%tl8250983335%_
                             _%__splice8840888409%_
                             _%target8251083338%_
                             _%tl8251283341%_
                             _%e8251983344%_
                             _%hd8252083348%_
                             _%tl8252183351%_)
                      (letrec ((_%loop8251383354%_
                                (lambda (_%hd8251183358%_ _%exprs8251783361%_)
                                  (if (gx#stx-pair? _%hd8251183358%_)
                                      (let ((_%e8251483364%_
                                             (gx#syntax-e _%hd8251183358%_)))
                                        (let ((_%lp-tl8251683371%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8251483364%_)))
                                              (_%lp-hd8251583368%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8251483364%_))))
                                          (_%loop8251383354%_
                                           _%lp-tl8251683371%_
                                           (cons _%lp-hd8251583368%_
                                                 _%exprs8251783361%_))))
                                      (let ((_%exprs8251883374%_
                                             (reverse _%exprs8251783361%_)))
                                        (_%__kont8840688407%_
                                         _%hd8252083348%_
                                         _%exprs8251883374%_
                                         _%hd8250883332%_
                                         _%hd8250183308%_))))))
                        (_%loop8251383354%_ _%target8251083338%_ '()))))
                   (_%__match8848888489%_
                    (lambda (_%e8246583421%_
                             _%hd8246683425%_
                             _%tl8246783428%_
                             _%e8246883431%_
                             _%hd8246983435%_
                             _%tl8247083438%_
                             _%e8247183441%_
                             _%e8247283445%_
                             _%hd8247383449%_
                             _%tl8247483452%_
                             _%__splice8840488405%_
                             _%target8247583455%_
                             _%tl8247783458%_
                             _%e8248483461%_
                             _%hd8248583465%_
                             _%tl8248683468%_
                             _%e8248783471%_
                             _%hd8248883475%_
                             _%tl8248983478%_
                             _%e8249083481%_
                             _%hd8249183485%_
                             _%tl8249283488%_
                             _%e8249383491%_
                             _%hd8249483495%_
                             _%tl8249583498%_)
                      (letrec ((_%loop8247883501%_
                                (lambda (_%hd8247683505%_ _%exprs8248283508%_)
                                  (if (gx#stx-pair? _%hd8247683505%_)
                                      (let ((_%e8247983511%_
                                             (gx#syntax-e _%hd8247683505%_)))
                                        (let ((_%lp-tl8248183518%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8247983511%_)))
                                              (_%lp-hd8248083515%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8247983511%_))))
                                          (_%loop8247883501%_
                                           _%lp-tl8248183518%_
                                           (cons _%lp-hd8248083515%_
                                                 _%exprs8248283508%_))))
                                      (let ((_%exprs8248383521%_
                                             (reverse _%exprs8248283508%_)))
                                        (_%__kont8840288403%_
                                         _%hd8249483495%_
                                         _%hd8249183485%_
                                         _%exprs8248383521%_
                                         _%hd8247383449%_
                                         _%hd8246683425%_))))))
                        (_%loop8247883501%_ _%target8247583455%_ '())))))
              (if (gx#stx-pair? _%__stx8839988400%_)
                  (let ((_%e8246583421%_ (gx#syntax-e _%__stx8839988400%_)))
                    (let ((_%tl8246783428%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e8246583421%_)))
                          (_%hd8246683425%_
                           (let ()
                             (declare (not safe))
                             (##car _%e8246583421%_))))
                      (if (gx#stx-pair? _%tl8246783428%_)
                          (let ((_%e8246883431%_
                                 (gx#syntax-e _%tl8246783428%_)))
                            (let ((_%tl8247083438%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e8246883431%_)))
                                  (_%hd8246983435%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e8246883431%_))))
                              (if (gx#stx-datum? _%hd8246983435%_)
                                  (let ((_%e8247183441%_
                                         (gx#stx-e _%hd8246983435%_)))
                                    (if (equal? _%e8247183441%_ '1)
                                        (if (gx#stx-pair? _%tl8247083438%_)
                                            (let ((_%e8247283445%_
                                                   (gx#syntax-e
                                                    _%tl8247083438%_)))
                                              (let ((_%tl8247483452%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8247283445%_)))
                                                    (_%hd8247383449%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8247283445%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl8247483452%_)
                                                    (if (let ((__tmp88837
                                                               (gx#stx-length
                                                                _%tl8247483452%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp88837
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice8840488405%_
                       (gx#syntax-split-splice _%tl8247483452%_ '2)))
                  (let ((_%tl8247783458%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8840488405%_ '1)))
                        (_%target8247583455%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8840488405%_ '0))))
                    (if (gx#stx-pair? _%tl8247783458%_)
                        (let ((_%e8248483461%_ (gx#syntax-e _%tl8247783458%_)))
                          (let ((_%tl8248683468%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8248483461%_)))
                                (_%hd8248583465%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8248483461%_))))
                            (if (gx#stx-pair? _%hd8248583465%_)
                                (let ((_%e8248783471%_
                                       (gx#syntax-e _%hd8248583465%_)))
                                  (let ((_%tl8248983478%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8248783471%_)))
                                        (_%hd8248883475%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8248783471%_))))
                                    (if (gx#identifier? _%hd8248883475%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g88838_|
                                             _%hd8248883475%_)
                                            (if (gx#stx-pair? _%tl8248983478%_)
                                                (let ((_%e8249083481%_
                                                       (gx#syntax-e
                                                        _%tl8248983478%_)))
                                                  (let ((_%tl8249283488%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8249083481%_)))
                                                        (_%hd8249183485%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8249083481%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8249283488%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8248683468%_)
                                                            (let ((_%e8249383491%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8248683468%_)))
                      (let ((_%tl8249583498%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8249383491%_)))
                            (_%hd8249483495%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8249383491%_))))
                        (if (gx#stx-null? _%tl8249583498%_)
                            (_%__match8848888489%_
                             _%e8246583421%_
                             _%hd8246683425%_
                             _%tl8246783428%_
                             _%e8246883431%_
                             _%hd8246983435%_
                             _%tl8247083438%_
                             _%e8247183441%_
                             _%e8247283445%_
                             _%hd8247383449%_
                             _%tl8247483452%_
                             _%__splice8840488405%_
                             _%target8247583455%_
                             _%tl8247783458%_
                             _%e8248483461%_
                             _%hd8248583465%_
                             _%tl8248683468%_
                             _%e8248783471%_
                             _%hd8248883475%_
                             _%tl8248983478%_
                             _%e8249083481%_
                             _%hd8249183485%_
                             _%tl8249283488%_
                             _%e8249383491%_
                             _%hd8249483495%_
                             _%tl8249583498%_)
                            (if (let ((__tmp88839
                                       (gx#stx-length _%tl8247483452%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp88839 '1))
                                (let ((_%__splice8840888409%_
                                       (gx#syntax-split-splice
                                        _%tl8247483452%_
                                        '1)))
                                  (let ((_%tl8251283341%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8840888409%_
                                            '1)))
                                        (_%target8251083338%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8840888409%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl8251283341%_)
                                        (let ((_%e8251983344%_
                                               (gx#syntax-e _%tl8251283341%_)))
                                          (let ((_%tl8252183351%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e8251983344%_)))
                                                (_%hd8252083348%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e8251983344%_))))
                                            (if (gx#stx-null? _%tl8252183351%_)
                                                (_%__match8852888529%_
                                                 _%e8246583421%_
                                                 _%hd8246683425%_
                                                 _%tl8246783428%_
                                                 _%e8246883431%_
                                                 _%hd8246983435%_
                                                 _%tl8247083438%_
                                                 _%e8247183441%_
                                                 _%e8247283445%_
                                                 _%hd8247383449%_
                                                 _%tl8247483452%_
                                                 _%__splice8840888409%_
                                                 _%target8251083338%_
                                                 _%tl8251283341%_
                                                 _%e8251983344%_
                                                 _%hd8252083348%_
                                                 _%tl8252183351%_)
                                                (if (gx#stx-null?
                                                     _%tl8247483452%_)
                                                    (_%__kont8841088411%_
                                                     _%hd8247383449%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8245882672%_))))))
                                        (if (gx#stx-null? _%tl8247483452%_)
                                            (_%__kont8841088411%_
                                             _%hd8247383449%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8245882672%_))))))
                                (if (gx#stx-null? _%tl8247483452%_)
                                    (_%__kont8841088411%_ _%hd8247383449%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8245882672%_)))))))
                    (if (let ((__tmp88840 (gx#stx-length _%tl8247483452%_)))
                          (declare (not safe))
                          (##fx>= __tmp88840 '1))
                        (let ((_%__splice8840888409%_
                               (gx#syntax-split-splice _%tl8247483452%_ '1)))
                          (let ((_%tl8251283341%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8840888409%_ '1)))
                                (_%target8251083338%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8840888409%_ '0))))
                            (if (gx#stx-pair? _%tl8251283341%_)
                                (let ((_%e8251983344%_
                                       (gx#syntax-e _%tl8251283341%_)))
                                  (let ((_%tl8252183351%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8251983344%_)))
                                        (_%hd8252083348%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8251983344%_))))
                                    (if (gx#stx-null? _%tl8252183351%_)
                                        (_%__match8852888529%_
                                         _%e8246583421%_
                                         _%hd8246683425%_
                                         _%tl8246783428%_
                                         _%e8246883431%_
                                         _%hd8246983435%_
                                         _%tl8247083438%_
                                         _%e8247183441%_
                                         _%e8247283445%_
                                         _%hd8247383449%_
                                         _%tl8247483452%_
                                         _%__splice8840888409%_
                                         _%target8251083338%_
                                         _%tl8251283341%_
                                         _%e8251983344%_
                                         _%hd8252083348%_
                                         _%tl8252183351%_)
                                        (if (gx#stx-null? _%tl8247483452%_)
                                            (_%__kont8841088411%_
                                             _%hd8247383449%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8245882672%_))))))
                                (if (gx#stx-null? _%tl8247483452%_)
                                    (_%__kont8841088411%_ _%hd8247383449%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8245882672%_))))))
                        (if (gx#stx-null? _%tl8247483452%_)
                            (_%__kont8841088411%_ _%hd8247383449%_)
                            (let () (declare (not safe)) (_%g8245882672%_)))))
                (if (let ((__tmp88841 (gx#stx-length _%tl8247483452%_)))
                      (declare (not safe))
                      (##fx>= __tmp88841 '1))
                    (let ((_%__splice8840888409%_
                           (gx#syntax-split-splice _%tl8247483452%_ '1)))
                      (let ((_%tl8251283341%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8840888409%_ '1)))
                            (_%target8251083338%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8840888409%_ '0))))
                        (if (gx#stx-pair? _%tl8251283341%_)
                            (let ((_%e8251983344%_
                                   (gx#syntax-e _%tl8251283341%_)))
                              (let ((_%tl8252183351%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8251983344%_)))
                                    (_%hd8252083348%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8251983344%_))))
                                (if (gx#stx-null? _%tl8252183351%_)
                                    (_%__match8852888529%_
                                     _%e8246583421%_
                                     _%hd8246683425%_
                                     _%tl8246783428%_
                                     _%e8246883431%_
                                     _%hd8246983435%_
                                     _%tl8247083438%_
                                     _%e8247183441%_
                                     _%e8247283445%_
                                     _%hd8247383449%_
                                     _%tl8247483452%_
                                     _%__splice8840888409%_
                                     _%target8251083338%_
                                     _%tl8251283341%_
                                     _%e8251983344%_
                                     _%hd8252083348%_
                                     _%tl8252183351%_)
                                    (if (gx#stx-null? _%tl8247483452%_)
                                        (_%__kont8841088411%_ _%hd8247383449%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8245882672%_))))))
                            (if (gx#stx-null? _%tl8247483452%_)
                                (_%__kont8841088411%_ _%hd8247383449%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8245882672%_))))))
                    (if (gx#stx-null? _%tl8247483452%_)
                        (_%__kont8841088411%_ _%hd8247383449%_)
                        (let () (declare (not safe)) (_%g8245882672%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp88842
                                                           (gx#stx-length
                                                            _%tl8247483452%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp88842 '1))
                                                    (let ((_%__splice8840888409%_
                                                           (gx#syntax-split-splice
                                                            _%tl8247483452%_
                                                            '1)))
                                                      (let ((_%tl8251283341%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8840888409%_ '1)))
                    (_%target8251083338%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8840888409%_ '0))))
                (if (gx#stx-pair? _%tl8251283341%_)
                    (let ((_%e8251983344%_ (gx#syntax-e _%tl8251283341%_)))
                      (let ((_%tl8252183351%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8251983344%_)))
                            (_%hd8252083348%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8251983344%_))))
                        (if (gx#stx-null? _%tl8252183351%_)
                            (_%__match8852888529%_
                             _%e8246583421%_
                             _%hd8246683425%_
                             _%tl8246783428%_
                             _%e8246883431%_
                             _%hd8246983435%_
                             _%tl8247083438%_
                             _%e8247183441%_
                             _%e8247283445%_
                             _%hd8247383449%_
                             _%tl8247483452%_
                             _%__splice8840888409%_
                             _%target8251083338%_
                             _%tl8251283341%_
                             _%e8251983344%_
                             _%hd8252083348%_
                             _%tl8252183351%_)
                            (if (gx#stx-null? _%tl8247483452%_)
                                (_%__kont8841088411%_ _%hd8247383449%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8245882672%_))))))
                    (if (gx#stx-null? _%tl8247483452%_)
                        (_%__kont8841088411%_ _%hd8247383449%_)
                        (let () (declare (not safe)) (_%g8245882672%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8247483452%_)
                                                        (_%__kont8841088411%_
                                                         _%hd8247383449%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8245882672%_)))))
                                            (if (let ((__tmp88843
                                                       (gx#stx-length
                                                        _%tl8247483452%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp88843 '1))
                                                (let ((_%__splice8840888409%_
                                                       (gx#syntax-split-splice
                                                        _%tl8247483452%_
                                                        '1)))
                                                  (let ((_%tl8251283341%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8840888409%_
                                                            '1)))
                                                        (_%target8251083338%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8840888409%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl8251283341%_)
                                                        (let ((_%e8251983344%_
                                                               (gx#syntax-e
                                                                _%tl8251283341%_)))
                                                          (let ((_%tl8252183351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8251983344%_)))
                        (_%hd8252083348%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8251983344%_))))
                    (if (gx#stx-null? _%tl8252183351%_)
                        (_%__match8852888529%_
                         _%e8246583421%_
                         _%hd8246683425%_
                         _%tl8246783428%_
                         _%e8246883431%_
                         _%hd8246983435%_
                         _%tl8247083438%_
                         _%e8247183441%_
                         _%e8247283445%_
                         _%hd8247383449%_
                         _%tl8247483452%_
                         _%__splice8840888409%_
                         _%target8251083338%_
                         _%tl8251283341%_
                         _%e8251983344%_
                         _%hd8252083348%_
                         _%tl8252183351%_)
                        (if (gx#stx-null? _%tl8247483452%_)
                            (_%__kont8841088411%_ _%hd8247383449%_)
                            (let () (declare (not safe)) (_%g8245882672%_))))))
                (if (gx#stx-null? _%tl8247483452%_)
                    (_%__kont8841088411%_ _%hd8247383449%_)
                    (let () (declare (not safe)) (_%g8245882672%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl8247483452%_)
                                                    (_%__kont8841088411%_
                                                     _%hd8247383449%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8245882672%_)))))
                                        (if (let ((__tmp88844
                                                   (gx#stx-length
                                                    _%tl8247483452%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp88844 '1))
                                            (let ((_%__splice8840888409%_
                                                   (gx#syntax-split-splice
                                                    _%tl8247483452%_
                                                    '1)))
                                              (let ((_%tl8251283341%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8840888409%_
                                                        '1)))
                                                    (_%target8251083338%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8840888409%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl8251283341%_)
                                                    (let ((_%e8251983344%_
                                                           (gx#syntax-e
                                                            _%tl8251283341%_)))
                                                      (let ((_%tl8252183351%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8251983344%_)))
                    (_%hd8252083348%_
                     (let () (declare (not safe)) (##car _%e8251983344%_))))
                (if (gx#stx-null? _%tl8252183351%_)
                    (_%__match8852888529%_
                     _%e8246583421%_
                     _%hd8246683425%_
                     _%tl8246783428%_
                     _%e8246883431%_
                     _%hd8246983435%_
                     _%tl8247083438%_
                     _%e8247183441%_
                     _%e8247283445%_
                     _%hd8247383449%_
                     _%tl8247483452%_
                     _%__splice8840888409%_
                     _%target8251083338%_
                     _%tl8251283341%_
                     _%e8251983344%_
                     _%hd8252083348%_
                     _%tl8252183351%_)
                    (if (gx#stx-null? _%tl8247483452%_)
                        (_%__kont8841088411%_ _%hd8247383449%_)
                        (let () (declare (not safe)) (_%g8245882672%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8247483452%_)
                                                        (_%__kont8841088411%_
                                                         _%hd8247383449%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8245882672%_))))))
                                            (if (gx#stx-null? _%tl8247483452%_)
                                                (_%__kont8841088411%_
                                                 _%hd8247383449%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8245882672%_)))))))
                                (if (let ((__tmp88845
                                           (gx#stx-length _%tl8247483452%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp88845 '1))
                                    (let ((_%__splice8840888409%_
                                           (gx#syntax-split-splice
                                            _%tl8247483452%_
                                            '1)))
                                      (let ((_%tl8251283341%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8840888409%_
                                                '1)))
                                            (_%target8251083338%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8840888409%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl8251283341%_)
                                            (let ((_%e8251983344%_
                                                   (gx#syntax-e
                                                    _%tl8251283341%_)))
                                              (let ((_%tl8252183351%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8251983344%_)))
                                                    (_%hd8252083348%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8251983344%_))))
                                                (if (gx#stx-null?
                                                     _%tl8252183351%_)
                                                    (_%__match8852888529%_
                                                     _%e8246583421%_
                                                     _%hd8246683425%_
                                                     _%tl8246783428%_
                                                     _%e8246883431%_
                                                     _%hd8246983435%_
                                                     _%tl8247083438%_
                                                     _%e8247183441%_
                                                     _%e8247283445%_
                                                     _%hd8247383449%_
                                                     _%tl8247483452%_
                                                     _%__splice8840888409%_
                                                     _%target8251083338%_
                                                     _%tl8251283341%_
                                                     _%e8251983344%_
                                                     _%hd8252083348%_
                                                     _%tl8252183351%_)
                                                    (if (gx#stx-null?
                                                         _%tl8247483452%_)
                                                        (_%__kont8841088411%_
                                                         _%hd8247383449%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8245882672%_))))))
                                            (if (gx#stx-null? _%tl8247483452%_)
                                                (_%__kont8841088411%_
                                                 _%hd8247383449%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8245882672%_))))))
                                    (if (gx#stx-null? _%tl8247483452%_)
                                        (_%__kont8841088411%_ _%hd8247383449%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8245882672%_)))))))
                        (if (let ((__tmp88846
                                   (gx#stx-length _%tl8247483452%_)))
                              (declare (not safe))
                              (##fx>= __tmp88846 '1))
                            (let ((_%__splice8840888409%_
                                   (gx#syntax-split-splice
                                    _%tl8247483452%_
                                    '1)))
                              (let ((_%tl8251283341%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8840888409%_
                                        '1)))
                                    (_%target8251083338%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8840888409%_
                                        '0))))
                                (if (gx#stx-pair? _%tl8251283341%_)
                                    (let ((_%e8251983344%_
                                           (gx#syntax-e _%tl8251283341%_)))
                                      (let ((_%tl8252183351%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8251983344%_)))
                                            (_%hd8252083348%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8251983344%_))))
                                        (if (gx#stx-null? _%tl8252183351%_)
                                            (_%__match8852888529%_
                                             _%e8246583421%_
                                             _%hd8246683425%_
                                             _%tl8246783428%_
                                             _%e8246883431%_
                                             _%hd8246983435%_
                                             _%tl8247083438%_
                                             _%e8247183441%_
                                             _%e8247283445%_
                                             _%hd8247383449%_
                                             _%tl8247483452%_
                                             _%__splice8840888409%_
                                             _%target8251083338%_
                                             _%tl8251283341%_
                                             _%e8251983344%_
                                             _%hd8252083348%_
                                             _%tl8252183351%_)
                                            (if (gx#stx-null? _%tl8247483452%_)
                                                (_%__kont8841088411%_
                                                 _%hd8247383449%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8245882672%_))))))
                                    (if (gx#stx-null? _%tl8247483452%_)
                                        (_%__kont8841088411%_ _%hd8247383449%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8245882672%_))))))
                            (if (gx#stx-null? _%tl8247483452%_)
                                (_%__kont8841088411%_ _%hd8247383449%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8245882672%_)))))))
                (if (let ((__tmp88847 (gx#stx-length _%tl8247483452%_)))
                      (declare (not safe))
                      (##fx>= __tmp88847 '1))
                    (let ((_%__splice8840888409%_
                           (gx#syntax-split-splice _%tl8247483452%_ '1)))
                      (let ((_%tl8251283341%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8840888409%_ '1)))
                            (_%target8251083338%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8840888409%_ '0))))
                        (if (gx#stx-pair? _%tl8251283341%_)
                            (let ((_%e8251983344%_
                                   (gx#syntax-e _%tl8251283341%_)))
                              (let ((_%tl8252183351%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8251983344%_)))
                                    (_%hd8252083348%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8251983344%_))))
                                (if (gx#stx-null? _%tl8252183351%_)
                                    (_%__match8852888529%_
                                     _%e8246583421%_
                                     _%hd8246683425%_
                                     _%tl8246783428%_
                                     _%e8246883431%_
                                     _%hd8246983435%_
                                     _%tl8247083438%_
                                     _%e8247183441%_
                                     _%e8247283445%_
                                     _%hd8247383449%_
                                     _%tl8247483452%_
                                     _%__splice8840888409%_
                                     _%target8251083338%_
                                     _%tl8251283341%_
                                     _%e8251983344%_
                                     _%hd8252083348%_
                                     _%tl8252183351%_)
                                    (if (gx#stx-null? _%tl8247483452%_)
                                        (_%__kont8841088411%_ _%hd8247383449%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8245882672%_))))))
                            (if (gx#stx-null? _%tl8247483452%_)
                                (_%__kont8841088411%_ _%hd8247383449%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8245882672%_))))))
                    (if (gx#stx-null? _%tl8247483452%_)
                        (_%__kont8841088411%_ _%hd8247383449%_)
                        (let () (declare (not safe)) (_%g8245882672%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8247483452%_)
                                                        (_%__kont8841088411%_
                                                         _%hd8247383449%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8245882672%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8245882672%_)))
                                        (if (equal? _%e8247183441%_ '2)
                                            (if (gx#stx-pair? _%tl8247083438%_)
                                                (let ((_%e8254683144%_
                                                       (gx#syntax-e
                                                        _%tl8247083438%_)))
                                                  (let ((_%tl8254883151%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8254683144%_)))
                                                        (_%hd8254783148%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8254683144%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl8254883151%_)
                                                        (let ((_%e8254983154%_
                                                               (gx#syntax-e
                                                                _%tl8254883151%_)))
                                                          (let ((_%tl8255183161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8254983154%_)))
                        (_%hd8255083158%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8254983154%_))))
                    (if (gx#stx-pair? _%hd8255083158%_)
                        (let ((_%e8255283164%_ (gx#syntax-e _%hd8255083158%_)))
                          (let ((_%tl8255483171%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8255283164%_)))
                                (_%hd8255383168%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8255283164%_))))
                            (if (gx#stx-pair? _%hd8255383168%_)
                                (let ((_%e8255583174%_
                                       (gx#syntax-e _%hd8255383168%_)))
                                  (let ((_%tl8255783181%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8255583174%_)))
                                        (_%hd8255683178%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8255583174%_))))
                                    (if (gx#identifier? _%hd8255683178%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g88848_|
                                             _%hd8255683178%_)
                                            (if (gx#stx-pair? _%tl8255783181%_)
                                                (let ((_%e8255883184%_
                                                       (gx#syntax-e
                                                        _%tl8255783181%_)))
                                                  (let ((_%tl8256083191%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8255883184%_)))
                                                        (_%hd8255983188%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8255883184%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8256083191%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8255483171%_)
                                                            (let ((_%e8256183194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8255483171%_)))
                      (let ((_%tl8256383201%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8256183194%_)))
                            (_%hd8256283198%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8256183194%_))))
                        (_%__kont8841288413%_
                         _%tl8255183161%_
                         _%tl8256383201%_
                         _%hd8256283198%_
                         _%hd8255983188%_
                         _%hd8254783148%_
                         _%hd8246683425%_)))
                    (_%__kont8841488415%_
                     _%tl8255183161%_
                     _%tl8255483171%_
                     _%hd8255383168%_
                     _%hd8254783148%_
                     _%hd8246683425%_))
                (_%__kont8841488415%_
                 _%tl8255183161%_
                 _%tl8255483171%_
                 _%hd8255383168%_
                 _%hd8254783148%_
                 _%hd8246683425%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont8841488415%_
                                                 _%tl8255183161%_
                                                 _%tl8255483171%_
                                                 _%hd8255383168%_
                                                 _%hd8254783148%_
                                                 _%hd8246683425%_))
                                            (_%__kont8841488415%_
                                             _%tl8255183161%_
                                             _%tl8255483171%_
                                             _%hd8255383168%_
                                             _%hd8254783148%_
                                             _%hd8246683425%_))
                                        (_%__kont8841488415%_
                                         _%tl8255183161%_
                                         _%tl8255483171%_
                                         _%hd8255383168%_
                                         _%hd8254783148%_
                                         _%hd8246683425%_))))
                                (_%__kont8841488415%_
                                 _%tl8255183161%_
                                 _%tl8255483171%_
                                 _%hd8255383168%_
                                 _%hd8254783148%_
                                 _%hd8246683425%_))))
                        (if (gx#stx-null? _%hd8255083158%_)
                            (_%__kont8841688417%_
                             _%tl8255183161%_
                             _%hd8254783148%_
                             _%hd8246683425%_)
                            (let () (declare (not safe)) (_%g8245882672%_))))))
                (let () (declare (not safe)) (_%g8245882672%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8245882672%_)))
                                            (if (equal? _%e8247183441%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl8247083438%_)
                                                    (let ((_%e8261382893%_
                                                           (gx#syntax-e
                                                            _%tl8247083438%_)))
                                                      (let ((_%tl8261582900%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8261382893%_)))
                    (_%hd8261482897%_
                     (let () (declare (not safe)) (##car _%e8261382893%_))))
                (if (gx#stx-pair? _%tl8261582900%_)
                    (let ((_%e8261682903%_ (gx#syntax-e _%tl8261582900%_)))
                      (let ((_%tl8261882910%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8261682903%_)))
                            (_%hd8261782907%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8261682903%_))))
                        (if (gx#stx-pair? _%hd8261782907%_)
                            (let ((_%e8261982913%_
                                   (gx#syntax-e _%hd8261782907%_)))
                              (let ((_%tl8262182920%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8261982913%_)))
                                    (_%hd8262082917%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8261982913%_))))
                                (_%__kont8841888419%_
                                 _%tl8261882910%_
                                 _%tl8262182920%_
                                 _%hd8262082917%_
                                 _%hd8261482897%_
                                 _%hd8246683425%_)))
                            (if (gx#stx-pair/null? _%hd8261482897%_)
                                (let ((_%__splice8842288423%_
                                       (gx#syntax-split-splice
                                        _%hd8261482897%_
                                        '0)))
                                  (let ((_%tl8264082716%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8842288423%_
                                            '1)))
                                        (_%target8263882713%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8842288423%_
                                            '0))))
                                    (if (gx#stx-null? _%tl8264082716%_)
                                        (_%__match8875088751%_
                                         _%e8246583421%_
                                         _%hd8246683425%_
                                         _%tl8246783428%_
                                         _%e8246883431%_
                                         _%hd8246983435%_
                                         _%tl8247083438%_
                                         _%e8247183441%_
                                         _%e8261382893%_
                                         _%hd8261482897%_
                                         _%tl8261582900%_
                                         _%__splice8842288423%_
                                         _%target8263882713%_
                                         _%tl8264082716%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8245882672%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8245882672%_))))))
                    (if (gx#stx-pair/null? _%hd8261482897%_)
                        (let ((_%__splice8842288423%_
                               (gx#syntax-split-splice _%hd8261482897%_ '0)))
                          (let ((_%tl8264082716%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8842288423%_ '1)))
                                (_%target8263882713%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8842288423%_ '0))))
                            (if (gx#stx-null? _%tl8264082716%_)
                                (_%__match8875088751%_
                                 _%e8246583421%_
                                 _%hd8246683425%_
                                 _%tl8246783428%_
                                 _%e8246883431%_
                                 _%hd8246983435%_
                                 _%tl8247083438%_
                                 _%e8247183441%_
                                 _%e8261382893%_
                                 _%hd8261482897%_
                                 _%tl8261582900%_
                                 _%__splice8842288423%_
                                 _%target8263882713%_
                                 _%tl8264082716%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8245882672%_)))))
                        (let () (declare (not safe)) (_%g8245882672%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8245882672%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8245882672%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g8245882672%_)))))
                          (let () (declare (not safe)) (_%g8245882672%_)))))
                  (let () (declare (not safe)) (_%g8245882672%_))))))))))
