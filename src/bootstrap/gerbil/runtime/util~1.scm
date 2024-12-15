(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g92203_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g92213_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx85163%_)
        (let* ((_%g8516785185%_
                (lambda (_%g8516885181%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8516885181%_)))
               (_%g8516685241%_
                (lambda (_%g8516885189%_)
                  (if (gx#stx-pair? _%g8516885189%_)
                      (let ((_%e8517185192%_ (gx#syntax-e _%g8516885189%_)))
                        (let ((_%hd8517285196%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8517185192%_)))
                              (_%tl8517385199%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8517185192%_))))
                          (if (gx#stx-pair? _%tl8517385199%_)
                              (let ((_%e8517485202%_
                                     (gx#syntax-e _%tl8517385199%_)))
                                (let ((_%hd8517585206%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8517485202%_)))
                                      (_%tl8517685209%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8517485202%_))))
                                  (if (gx#stx-pair? _%tl8517685209%_)
                                      (let ((_%e8517785212%_
                                             (gx#syntax-e _%tl8517685209%_)))
                                        (let ((_%hd8517885216%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8517785212%_)))
                                              (_%tl8517985219%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8517785212%_))))
                                          (if (gx#stx-null? _%tl8517985219%_)
                                              ((lambda (_%L85222%_ _%L85224%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L85224%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L85222%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8517885216%_
                                               _%hd8517585206%_)
                                              (_%g8516785185%_
                                               _%g8516885189%_))))
                                      (_%g8516785185%_ _%g8516885189%_))))
                              (_%g8516785185%_ _%g8516885189%_))))
                      (_%g8516785185%_ _%g8516885189%_)))))
          (_%g8516685241%_ _%$stx85163%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx85245%_)
        (let* ((_%g8524985263%_
                (lambda (_%g8525085259%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8525085259%_)))
               (_%g8524885304%_
                (lambda (_%g8525085267%_)
                  (if (gx#stx-pair? _%g8525085267%_)
                      (let ((_%e8525285270%_ (gx#syntax-e _%g8525085267%_)))
                        (let ((_%hd8525385274%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8525285270%_)))
                              (_%tl8525485277%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8525285270%_))))
                          (if (gx#stx-pair? _%tl8525485277%_)
                              (let ((_%e8525585280%_
                                     (gx#syntax-e _%tl8525485277%_)))
                                (let ((_%hd8525685284%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8525585280%_)))
                                      (_%tl8525785287%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8525585280%_))))
                                  (if (gx#stx-null? _%tl8525785287%_)
                                      ((lambda (_%L85290%_)
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
                                       (cons _%L85290%_
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
                                       _%hd8525685284%_)
                                      (_%g8524985263%_ _%g8525085267%_))))
                              (_%g8524985263%_ _%g8525085267%_))))
                      (_%g8524985263%_ _%g8525085267%_)))))
          (_%g8524885304%_ _%$stx85245%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx85308%_)
        (let* ((_%g8531285326%_
                (lambda (_%g8531385322%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8531385322%_)))
               (_%g8531185367%_
                (lambda (_%g8531385330%_)
                  (if (gx#stx-pair? _%g8531385330%_)
                      (let ((_%e8531585333%_ (gx#syntax-e _%g8531385330%_)))
                        (let ((_%hd8531685337%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8531585333%_)))
                              (_%tl8531785340%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8531585333%_))))
                          (if (gx#stx-pair? _%tl8531785340%_)
                              (let ((_%e8531885343%_
                                     (gx#syntax-e _%tl8531785340%_)))
                                (let ((_%hd8531985347%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8531885343%_)))
                                      (_%tl8532085350%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8531885343%_))))
                                  (if (gx#stx-null? _%tl8532085350%_)
                                      ((lambda (_%L85353%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L85353%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd8531985347%_)
                                      (_%g8531285326%_ _%g8531385330%_))))
                              (_%g8531285326%_ _%g8531385330%_))))
                      (_%g8531285326%_ _%g8531385330%_)))))
          (_%g8531185367%_ _%$stx85308%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx85371%_)
        (let* ((_%g8537585385%_
                (lambda (_%g8537685381%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8537685381%_)))
               (_%g8537485406%_
                (lambda (_%g8537685389%_)
                  (if (gx#stx-pair? _%g8537685389%_)
                      (let ((_%e8537785392%_ (gx#syntax-e _%g8537685389%_)))
                        (let ((_%hd8537885396%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8537785392%_)))
                              (_%tl8537985399%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8537785392%_))))
                          (if (gx#stx-null? _%tl8537985399%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g8537585385%_ _%g8537685389%_))))
                      (_%g8537585385%_ _%g8537685389%_)))))
          (_%g8537485406%_ _%$stx85371%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx85410%_)
        (let* ((_%g8541485432%_
                (lambda (_%g8541585428%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8541585428%_)))
               (_%g8541385487%_
                (lambda (_%g8541585436%_)
                  (if (gx#stx-pair? _%g8541585436%_)
                      (let ((_%e8541885439%_ (gx#syntax-e _%g8541585436%_)))
                        (let ((_%hd8541985443%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8541885439%_)))
                              (_%tl8542085446%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8541885439%_))))
                          (if (gx#stx-pair? _%tl8542085446%_)
                              (let ((_%e8542185449%_
                                     (gx#syntax-e _%tl8542085446%_)))
                                (let ((_%hd8542285453%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8542185449%_)))
                                      (_%tl8542385456%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8542185449%_))))
                                  (if (gx#stx-pair? _%tl8542385456%_)
                                      (let ((_%e8542485459%_
                                             (gx#syntax-e _%tl8542385456%_)))
                                        (let ((_%hd8542585463%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8542485459%_)))
                                              (_%tl8542685466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8542485459%_))))
                                          (if (gx#stx-null? _%tl8542685466%_)
                                              ((lambda (_%L85469%_ _%L85471%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L85471%_
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
                 (cons (cons _%L85469%_
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
                                               _%hd8542585463%_
                                               _%hd8542285453%_)
                                              (_%g8541485432%_
                                               _%g8541585436%_))))
                                      (_%g8541485432%_ _%g8541585436%_))))
                              (_%g8541485432%_ _%g8541585436%_))))
                      (_%g8541485432%_ _%g8541585436%_)))))
          (_%g8541385487%_ _%$stx85410%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx85491%_)
        (let* ((_%g8549585513%_
                (lambda (_%g8549685509%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8549685509%_)))
               (_%g8549485568%_
                (lambda (_%g8549685517%_)
                  (if (gx#stx-pair? _%g8549685517%_)
                      (let ((_%e8549985520%_ (gx#syntax-e _%g8549685517%_)))
                        (let ((_%hd8550085524%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8549985520%_)))
                              (_%tl8550185527%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8549985520%_))))
                          (if (gx#stx-pair? _%tl8550185527%_)
                              (let ((_%e8550285530%_
                                     (gx#syntax-e _%tl8550185527%_)))
                                (let ((_%hd8550385534%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8550285530%_)))
                                      (_%tl8550485537%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8550285530%_))))
                                  (if (gx#stx-pair? _%tl8550485537%_)
                                      (let ((_%e8550585540%_
                                             (gx#syntax-e _%tl8550485537%_)))
                                        (let ((_%hd8550685544%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8550585540%_)))
                                              (_%tl8550785547%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8550585540%_))))
                                          (if (gx#stx-null? _%tl8550785547%_)
                                              ((lambda (_%L85550%_ _%L85552%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L85552%_
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
                                               (cons (cons _%L85550%_
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
                                               _%hd8550685544%_
                                               _%hd8550385534%_)
                                              (_%g8549585513%_
                                               _%g8549685517%_))))
                                      (_%g8549585513%_ _%g8549685517%_))))
                              (_%g8549585513%_ _%g8549685517%_))))
                      (_%g8549585513%_ _%g8549685517%_)))))
          (_%g8549485568%_ _%$stx85491%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx85572%_)
        (let* ((_%g8557685594%_
                (lambda (_%g8557785590%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8557785590%_)))
               (_%g8557585649%_
                (lambda (_%g8557785598%_)
                  (if (gx#stx-pair? _%g8557785598%_)
                      (let ((_%e8558085601%_ (gx#syntax-e _%g8557785598%_)))
                        (let ((_%hd8558185605%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8558085601%_)))
                              (_%tl8558285608%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8558085601%_))))
                          (if (gx#stx-pair? _%tl8558285608%_)
                              (let ((_%e8558385611%_
                                     (gx#syntax-e _%tl8558285608%_)))
                                (let ((_%hd8558485615%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8558385611%_)))
                                      (_%tl8558585618%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8558385611%_))))
                                  (if (gx#stx-pair? _%tl8558585618%_)
                                      (let ((_%e8558685621%_
                                             (gx#syntax-e _%tl8558585618%_)))
                                        (let ((_%hd8558785625%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8558685621%_)))
                                              (_%tl8558885628%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8558685621%_))))
                                          (if (gx#stx-null? _%tl8558885628%_)
                                              ((lambda (_%L85631%_ _%L85633%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L85633%_
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
                                               (cons (cons _%L85631%_
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
                                               _%hd8558785625%_
                                               _%hd8558485615%_)
                                              (_%g8557685594%_
                                               _%g8557785598%_))))
                                      (_%g8557685594%_ _%g8557785598%_))))
                              (_%g8557685594%_ _%g8557785598%_))))
                      (_%g8557685594%_ _%g8557785598%_)))))
          (_%g8557585649%_ _%$stx85572%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx85653%_)
        (let* ((_%g8565785668%_
                (lambda (_%g8565885664%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8565885664%_)))
               (_%g8565685697%_
                (lambda (_%g8565885672%_)
                  (if (gx#stx-pair? _%g8565885672%_)
                      (let ((_%e8566085675%_ (gx#syntax-e _%g8565885672%_)))
                        (let ((_%hd8566185679%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8566085675%_)))
                              (_%tl8566285682%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8566085675%_))))
                          ((lambda (_%L85685%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L85685%_)))
                           _%tl8566285682%_)))
                      (_%g8565785668%_ _%g8565885672%_)))))
          (_%g8565685697%_ _%$stx85653%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx85701%_)
        (let* ((_%__stx9175491755%_ _%$stx85701%_)
               (_%g8571285926%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9175491755%_))))
          (let ((_%__kont9175791758%_
                 (lambda (_%L86779%_
                          _%L86781%_
                          _%L86782%_
                          _%L86783%_
                          _%L86784%_)
                   (cons _%L86784%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8681486817%_
                                                     _%g8681586820%_)
                                              (cons _%g8681486817%_
                                                    _%g8681586820%_))
                                            '()
                                            _%L86782%_)
                                           (cons _%L86783%_
                                                 (cons _%L86781%_
                                                       (cons _%L86779%_
                                                             '())))))))))
                (_%__kont9176191762%_
                 (lambda (_%L86632%_ _%L86634%_ _%L86635%_ _%L86636%_)
                   (cons _%L86636%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8665986662%_
                                                     _%g8666086665%_)
                                              (cons _%g8665986662%_
                                                    _%g8666086665%_))
                                            '()
                                            _%L86634%_)
                                           (cons _%L86635%_
                                                 (cons _%L86632%_
                                                       (cons _%L86632%_
                                                             '())))))))))
                (_%__kont9176591766%_
                 (lambda (_%L86535%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L86535%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont9176791768%_
                 (lambda (_%L86458%_
                          _%L86460%_
                          _%L86461%_
                          _%L86462%_
                          _%L86463%_
                          _%L86464%_)
                   (cons _%L86464%_
                         (cons '2
                               (cons (cons (cons _%L86462%_
                                                 (cons _%L86461%_ '()))
                                           _%L86463%_)
                                     (cons _%L86460%_ _%L86458%_))))))
                (_%__kont9176991770%_
                 (lambda (_%L86339%_
                          _%L86341%_
                          _%L86342%_
                          _%L86343%_
                          _%L86344%_)
                   (cons _%L86344%_
                         (cons '2
                               (cons (cons (cons _%L86342%_
                                                 (cons _%L86342%_ '()))
                                           _%L86343%_)
                                     (cons _%L86341%_ _%L86339%_))))))
                (_%__kont9177191772%_
                 (lambda (_%L86256%_ _%L86258%_ _%L86259%_)
                   (cons _%L86259%_
                         (cons '3 (cons '() (cons _%L86258%_ _%L86256%_))))))
                (_%__kont9177391774%_
                 (lambda (_%L86177%_
                          _%L86179%_
                          _%L86180%_
                          _%L86181%_
                          _%L86182%_)
                   (cons _%L86182%_
                         (cons '3
                               (cons (cons _%L86180%_ _%L86181%_)
                                     (cons _%L86179%_ _%L86177%_))))))
                (_%__kont9177591776%_
                 (lambda (_%L86061%_
                          _%L86063%_
                          _%L86064%_
                          _%L86065%_
                          _%L86066%_
                          _%L86067%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L86064%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L86061%_ '())))
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
                                              (lambda (_%g8610186104%_
                                                       _%g8610286107%_)
                                                (cons _%g8610186104%_
                                                      _%g8610286107%_))
                                              '()
                                              _%L86066%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (__foldr1
                                              (lambda (_%g8609986110%_
                                                       _%g8610086113%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g8609986110%_ '())))
              _%g8610086113%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L86065%_))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L86063%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9210592106%_
                    (lambda (_%e8588285933%_
                             _%hd8588385937%_
                             _%tl8588485940%_
                             _%e8588585943%_
                             _%hd8588685947%_
                             _%tl8588785950%_
                             _%e8588885953%_
                             _%e8588985957%_
                             _%hd8589085961%_
                             _%tl8589185964%_
                             _%__splice9177791778%_
                             _%target8589285967%_
                             _%tl8589485970%_)
                      (letrec ((_%loop8589585973%_
                                (lambda (_%hd8589385977%_
                                         _%exprs8589985980%_
                                         _%names8590085982%_)
                                  (if (gx#stx-pair? _%hd8589385977%_)
                                      (let ((_%e8589685985%_
                                             (gx#syntax-e _%hd8589385977%_)))
                                        (let ((_%lp-tl8589885992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8589685985%_)))
                                              (_%lp-hd8589785989%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8589685985%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd8589785989%_)
                                              (let ((_%e8591585995%_
                                                     (gx#syntax-e
                                                      _%lp-hd8589785989%_)))
                                                (let ((_%tl8591786002%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8591585995%_)))
                                                      (_%hd8591685999%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8591585995%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8591786002%_)
                                                      (let ((_%e8591886005%_
                                                             (gx#syntax-e
                                                              _%tl8591786002%_)))
                                                        (let ((_%tl8592086012%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8591886005%_)))
                      (_%hd8591986009%_
                       (let () (declare (not safe)) (##car _%e8591886005%_))))
                  (if (gx#stx-null? _%tl8592086012%_)
                      (_%loop8589585973%_
                       _%lp-tl8589885992%_
                       (cons _%hd8591986009%_ _%exprs8589985980%_)
                       (cons _%hd8591685999%_ _%names8590085982%_))
                      (let () (declare (not safe)) (_%g8571285926%_)))))
              (let () (declare (not safe)) (_%g8571285926%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g8571285926%_)))))
                                      (let ((_%names8590286018%_
                                             (reverse _%names8590085982%_))
                                            (_%exprs8590186015%_
                                             (reverse _%exprs8589985980%_)))
                                        (if (gx#stx-pair? _%tl8589185964%_)
                                            (let ((_%e8590386021%_
                                                   (gx#syntax-e
                                                    _%tl8589185964%_)))
                                              (let ((_%tl8590586028%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8590386021%_)))
                                                    (_%hd8590486025%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8590386021%_))))
                                                (if (gx#stx-null?
                                                     _%hd8590486025%_)
                                                    (if (gx#stx-pair?
                                                         _%tl8590586028%_)
                                                        (let ((_%e8590686031%_
                                                               (gx#syntax-e
                                                                _%tl8590586028%_)))
                                                          (let ((_%tl8590886038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8590686031%_)))
                        (_%hd8590786035%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8590686031%_))))
                    (if (gx#stx-pair? _%tl8590886038%_)
                        (let ((_%e8590986041%_ (gx#syntax-e _%tl8590886038%_)))
                          (let ((_%tl8591186048%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8590986041%_)))
                                (_%hd8591086045%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8590986041%_))))
                            (if (gx#stx-pair? _%tl8591186048%_)
                                (let ((_%e8591286051%_
                                       (gx#syntax-e _%tl8591186048%_)))
                                  (let ((_%tl8591486058%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8591286051%_)))
                                        (_%hd8591386055%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8591286051%_))))
                                    (if (gx#stx-null? _%tl8591486058%_)
                                        (_%__kont9177591776%_
                                         _%hd8591386055%_
                                         _%hd8591086045%_
                                         _%hd8590786035%_
                                         _%exprs8590186015%_
                                         _%names8590286018%_
                                         _%hd8588385937%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8571285926%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8571285926%_)))))
                        (let () (declare (not safe)) (_%g8571285926%_)))))
                (let () (declare (not safe)) (_%g8571285926%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8571285926%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8571285926%_))))))))
                        (_%loop8589585973%_ _%target8589285967%_ '() '()))))
                   (_%__match9188391884%_
                    (lambda (_%e8575486558%_
                             _%hd8575586562%_
                             _%tl8575686565%_
                             _%e8575786568%_
                             _%hd8575886572%_
                             _%tl8575986575%_
                             _%e8576086578%_
                             _%e8576186582%_
                             _%hd8576286586%_
                             _%tl8576386589%_
                             _%__splice9176391764%_
                             _%target8576486592%_
                             _%tl8576686595%_
                             _%e8577386598%_
                             _%hd8577486602%_
                             _%tl8577586605%_)
                      (letrec ((_%loop8576786608%_
                                (lambda (_%hd8576586612%_ _%exprs8577186615%_)
                                  (if (gx#stx-pair? _%hd8576586612%_)
                                      (let ((_%e8576886618%_
                                             (gx#syntax-e _%hd8576586612%_)))
                                        (let ((_%lp-tl8577086625%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8576886618%_)))
                                              (_%lp-hd8576986622%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8576886618%_))))
                                          (_%loop8576786608%_
                                           _%lp-tl8577086625%_
                                           (cons _%lp-hd8576986622%_
                                                 _%exprs8577186615%_))))
                                      (let ((_%exprs8577286628%_
                                             (reverse _%exprs8577186615%_)))
                                        (_%__kont9176191762%_
                                         _%hd8577486602%_
                                         _%exprs8577286628%_
                                         _%hd8576286586%_
                                         _%hd8575586562%_))))))
                        (_%loop8576786608%_ _%target8576486592%_ '()))))
                   (_%__match9184391844%_
                    (lambda (_%e8571986675%_
                             _%hd8572086679%_
                             _%tl8572186682%_
                             _%e8572286685%_
                             _%hd8572386689%_
                             _%tl8572486692%_
                             _%e8572586695%_
                             _%e8572686699%_
                             _%hd8572786703%_
                             _%tl8572886706%_
                             _%__splice9175991760%_
                             _%target8572986709%_
                             _%tl8573186712%_
                             _%e8573886715%_
                             _%hd8573986719%_
                             _%tl8574086722%_
                             _%e8574186725%_
                             _%hd8574286729%_
                             _%tl8574386732%_
                             _%e8574486735%_
                             _%hd8574586739%_
                             _%tl8574686742%_
                             _%e8574786745%_
                             _%hd8574886749%_
                             _%tl8574986752%_)
                      (letrec ((_%loop8573286755%_
                                (lambda (_%hd8573086759%_ _%exprs8573686762%_)
                                  (if (gx#stx-pair? _%hd8573086759%_)
                                      (let ((_%e8573386765%_
                                             (gx#syntax-e _%hd8573086759%_)))
                                        (let ((_%lp-tl8573586772%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8573386765%_)))
                                              (_%lp-hd8573486769%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8573386765%_))))
                                          (_%loop8573286755%_
                                           _%lp-tl8573586772%_
                                           (cons _%lp-hd8573486769%_
                                                 _%exprs8573686762%_))))
                                      (let ((_%exprs8573786775%_
                                             (reverse _%exprs8573686762%_)))
                                        (_%__kont9175791758%_
                                         _%hd8574886749%_
                                         _%hd8574586739%_
                                         _%exprs8573786775%_
                                         _%hd8572786703%_
                                         _%hd8572086679%_))))))
                        (_%loop8573286755%_ _%target8572986709%_ '())))))
              (if (gx#stx-pair? _%__stx9175491755%_)
                  (let ((_%e8571986675%_ (gx#syntax-e _%__stx9175491755%_)))
                    (let ((_%tl8572186682%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e8571986675%_)))
                          (_%hd8572086679%_
                           (let ()
                             (declare (not safe))
                             (##car _%e8571986675%_))))
                      (if (gx#stx-pair? _%tl8572186682%_)
                          (let ((_%e8572286685%_
                                 (gx#syntax-e _%tl8572186682%_)))
                            (let ((_%tl8572486692%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e8572286685%_)))
                                  (_%hd8572386689%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e8572286685%_))))
                              (if (gx#stx-datum? _%hd8572386689%_)
                                  (let ((_%e8572586695%_
                                         (gx#stx-e _%hd8572386689%_)))
                                    (if (equal? _%e8572586695%_ '1)
                                        (if (gx#stx-pair? _%tl8572486692%_)
                                            (let ((_%e8572686699%_
                                                   (gx#syntax-e
                                                    _%tl8572486692%_)))
                                              (let ((_%tl8572886706%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8572686699%_)))
                                                    (_%hd8572786703%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8572686699%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl8572886706%_)
                                                    (if (let ((__tmp92202
                                                               (gx#stx-length
                                                                _%tl8572886706%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp92202
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice9175991760%_
                       (gx#syntax-split-splice _%tl8572886706%_ '2)))
                  (let ((_%tl8573186712%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9175991760%_ '1)))
                        (_%target8572986709%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9175991760%_ '0))))
                    (if (gx#stx-pair? _%tl8573186712%_)
                        (let ((_%e8573886715%_ (gx#syntax-e _%tl8573186712%_)))
                          (let ((_%tl8574086722%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8573886715%_)))
                                (_%hd8573986719%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8573886715%_))))
                            (if (gx#stx-pair? _%hd8573986719%_)
                                (let ((_%e8574186725%_
                                       (gx#syntax-e _%hd8573986719%_)))
                                  (let ((_%tl8574386732%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8574186725%_)))
                                        (_%hd8574286729%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8574186725%_))))
                                    (if (gx#identifier? _%hd8574286729%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g92203_|
                                             _%hd8574286729%_)
                                            (if (gx#stx-pair? _%tl8574386732%_)
                                                (let ((_%e8574486735%_
                                                       (gx#syntax-e
                                                        _%tl8574386732%_)))
                                                  (let ((_%tl8574686742%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8574486735%_)))
                                                        (_%hd8574586739%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8574486735%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8574686742%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8574086722%_)
                                                            (let ((_%e8574786745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8574086722%_)))
                      (let ((_%tl8574986752%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8574786745%_)))
                            (_%hd8574886749%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8574786745%_))))
                        (if (gx#stx-null? _%tl8574986752%_)
                            (_%__match9184391844%_
                             _%e8571986675%_
                             _%hd8572086679%_
                             _%tl8572186682%_
                             _%e8572286685%_
                             _%hd8572386689%_
                             _%tl8572486692%_
                             _%e8572586695%_
                             _%e8572686699%_
                             _%hd8572786703%_
                             _%tl8572886706%_
                             _%__splice9175991760%_
                             _%target8572986709%_
                             _%tl8573186712%_
                             _%e8573886715%_
                             _%hd8573986719%_
                             _%tl8574086722%_
                             _%e8574186725%_
                             _%hd8574286729%_
                             _%tl8574386732%_
                             _%e8574486735%_
                             _%hd8574586739%_
                             _%tl8574686742%_
                             _%e8574786745%_
                             _%hd8574886749%_
                             _%tl8574986752%_)
                            (if (let ((__tmp92204
                                       (gx#stx-length _%tl8572886706%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp92204 '1))
                                (let ((_%__splice9176391764%_
                                       (gx#syntax-split-splice
                                        _%tl8572886706%_
                                        '1)))
                                  (let ((_%tl8576686595%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9176391764%_
                                            '1)))
                                        (_%target8576486592%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9176391764%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl8576686595%_)
                                        (let ((_%e8577386598%_
                                               (gx#syntax-e _%tl8576686595%_)))
                                          (let ((_%tl8577586605%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e8577386598%_)))
                                                (_%hd8577486602%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e8577386598%_))))
                                            (if (gx#stx-null? _%tl8577586605%_)
                                                (_%__match9188391884%_
                                                 _%e8571986675%_
                                                 _%hd8572086679%_
                                                 _%tl8572186682%_
                                                 _%e8572286685%_
                                                 _%hd8572386689%_
                                                 _%tl8572486692%_
                                                 _%e8572586695%_
                                                 _%e8572686699%_
                                                 _%hd8572786703%_
                                                 _%tl8572886706%_
                                                 _%__splice9176391764%_
                                                 _%target8576486592%_
                                                 _%tl8576686595%_
                                                 _%e8577386598%_
                                                 _%hd8577486602%_
                                                 _%tl8577586605%_)
                                                (if (gx#stx-null?
                                                     _%tl8572886706%_)
                                                    (_%__kont9176591766%_
                                                     _%hd8572786703%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8571285926%_))))))
                                        (if (gx#stx-null? _%tl8572886706%_)
                                            (_%__kont9176591766%_
                                             _%hd8572786703%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8571285926%_))))))
                                (if (gx#stx-null? _%tl8572886706%_)
                                    (_%__kont9176591766%_ _%hd8572786703%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8571285926%_)))))))
                    (if (let ((__tmp92205 (gx#stx-length _%tl8572886706%_)))
                          (declare (not safe))
                          (##fx>= __tmp92205 '1))
                        (let ((_%__splice9176391764%_
                               (gx#syntax-split-splice _%tl8572886706%_ '1)))
                          (let ((_%tl8576686595%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9176391764%_ '1)))
                                (_%target8576486592%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9176391764%_ '0))))
                            (if (gx#stx-pair? _%tl8576686595%_)
                                (let ((_%e8577386598%_
                                       (gx#syntax-e _%tl8576686595%_)))
                                  (let ((_%tl8577586605%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8577386598%_)))
                                        (_%hd8577486602%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8577386598%_))))
                                    (if (gx#stx-null? _%tl8577586605%_)
                                        (_%__match9188391884%_
                                         _%e8571986675%_
                                         _%hd8572086679%_
                                         _%tl8572186682%_
                                         _%e8572286685%_
                                         _%hd8572386689%_
                                         _%tl8572486692%_
                                         _%e8572586695%_
                                         _%e8572686699%_
                                         _%hd8572786703%_
                                         _%tl8572886706%_
                                         _%__splice9176391764%_
                                         _%target8576486592%_
                                         _%tl8576686595%_
                                         _%e8577386598%_
                                         _%hd8577486602%_
                                         _%tl8577586605%_)
                                        (if (gx#stx-null? _%tl8572886706%_)
                                            (_%__kont9176591766%_
                                             _%hd8572786703%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8571285926%_))))))
                                (if (gx#stx-null? _%tl8572886706%_)
                                    (_%__kont9176591766%_ _%hd8572786703%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8571285926%_))))))
                        (if (gx#stx-null? _%tl8572886706%_)
                            (_%__kont9176591766%_ _%hd8572786703%_)
                            (let () (declare (not safe)) (_%g8571285926%_)))))
                (if (let ((__tmp92206 (gx#stx-length _%tl8572886706%_)))
                      (declare (not safe))
                      (##fx>= __tmp92206 '1))
                    (let ((_%__splice9176391764%_
                           (gx#syntax-split-splice _%tl8572886706%_ '1)))
                      (let ((_%tl8576686595%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9176391764%_ '1)))
                            (_%target8576486592%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9176391764%_ '0))))
                        (if (gx#stx-pair? _%tl8576686595%_)
                            (let ((_%e8577386598%_
                                   (gx#syntax-e _%tl8576686595%_)))
                              (let ((_%tl8577586605%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8577386598%_)))
                                    (_%hd8577486602%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8577386598%_))))
                                (if (gx#stx-null? _%tl8577586605%_)
                                    (_%__match9188391884%_
                                     _%e8571986675%_
                                     _%hd8572086679%_
                                     _%tl8572186682%_
                                     _%e8572286685%_
                                     _%hd8572386689%_
                                     _%tl8572486692%_
                                     _%e8572586695%_
                                     _%e8572686699%_
                                     _%hd8572786703%_
                                     _%tl8572886706%_
                                     _%__splice9176391764%_
                                     _%target8576486592%_
                                     _%tl8576686595%_
                                     _%e8577386598%_
                                     _%hd8577486602%_
                                     _%tl8577586605%_)
                                    (if (gx#stx-null? _%tl8572886706%_)
                                        (_%__kont9176591766%_ _%hd8572786703%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8571285926%_))))))
                            (if (gx#stx-null? _%tl8572886706%_)
                                (_%__kont9176591766%_ _%hd8572786703%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8571285926%_))))))
                    (if (gx#stx-null? _%tl8572886706%_)
                        (_%__kont9176591766%_ _%hd8572786703%_)
                        (let () (declare (not safe)) (_%g8571285926%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp92207
                                                           (gx#stx-length
                                                            _%tl8572886706%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp92207 '1))
                                                    (let ((_%__splice9176391764%_
                                                           (gx#syntax-split-splice
                                                            _%tl8572886706%_
                                                            '1)))
                                                      (let ((_%tl8576686595%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9176391764%_ '1)))
                    (_%target8576486592%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9176391764%_ '0))))
                (if (gx#stx-pair? _%tl8576686595%_)
                    (let ((_%e8577386598%_ (gx#syntax-e _%tl8576686595%_)))
                      (let ((_%tl8577586605%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8577386598%_)))
                            (_%hd8577486602%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8577386598%_))))
                        (if (gx#stx-null? _%tl8577586605%_)
                            (_%__match9188391884%_
                             _%e8571986675%_
                             _%hd8572086679%_
                             _%tl8572186682%_
                             _%e8572286685%_
                             _%hd8572386689%_
                             _%tl8572486692%_
                             _%e8572586695%_
                             _%e8572686699%_
                             _%hd8572786703%_
                             _%tl8572886706%_
                             _%__splice9176391764%_
                             _%target8576486592%_
                             _%tl8576686595%_
                             _%e8577386598%_
                             _%hd8577486602%_
                             _%tl8577586605%_)
                            (if (gx#stx-null? _%tl8572886706%_)
                                (_%__kont9176591766%_ _%hd8572786703%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8571285926%_))))))
                    (if (gx#stx-null? _%tl8572886706%_)
                        (_%__kont9176591766%_ _%hd8572786703%_)
                        (let () (declare (not safe)) (_%g8571285926%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8572886706%_)
                                                        (_%__kont9176591766%_
                                                         _%hd8572786703%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8571285926%_)))))
                                            (if (let ((__tmp92208
                                                       (gx#stx-length
                                                        _%tl8572886706%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp92208 '1))
                                                (let ((_%__splice9176391764%_
                                                       (gx#syntax-split-splice
                                                        _%tl8572886706%_
                                                        '1)))
                                                  (let ((_%tl8576686595%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9176391764%_
                                                            '1)))
                                                        (_%target8576486592%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9176391764%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl8576686595%_)
                                                        (let ((_%e8577386598%_
                                                               (gx#syntax-e
                                                                _%tl8576686595%_)))
                                                          (let ((_%tl8577586605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8577386598%_)))
                        (_%hd8577486602%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8577386598%_))))
                    (if (gx#stx-null? _%tl8577586605%_)
                        (_%__match9188391884%_
                         _%e8571986675%_
                         _%hd8572086679%_
                         _%tl8572186682%_
                         _%e8572286685%_
                         _%hd8572386689%_
                         _%tl8572486692%_
                         _%e8572586695%_
                         _%e8572686699%_
                         _%hd8572786703%_
                         _%tl8572886706%_
                         _%__splice9176391764%_
                         _%target8576486592%_
                         _%tl8576686595%_
                         _%e8577386598%_
                         _%hd8577486602%_
                         _%tl8577586605%_)
                        (if (gx#stx-null? _%tl8572886706%_)
                            (_%__kont9176591766%_ _%hd8572786703%_)
                            (let () (declare (not safe)) (_%g8571285926%_))))))
                (if (gx#stx-null? _%tl8572886706%_)
                    (_%__kont9176591766%_ _%hd8572786703%_)
                    (let () (declare (not safe)) (_%g8571285926%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl8572886706%_)
                                                    (_%__kont9176591766%_
                                                     _%hd8572786703%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8571285926%_)))))
                                        (if (let ((__tmp92209
                                                   (gx#stx-length
                                                    _%tl8572886706%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp92209 '1))
                                            (let ((_%__splice9176391764%_
                                                   (gx#syntax-split-splice
                                                    _%tl8572886706%_
                                                    '1)))
                                              (let ((_%tl8576686595%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9176391764%_
                                                        '1)))
                                                    (_%target8576486592%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9176391764%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl8576686595%_)
                                                    (let ((_%e8577386598%_
                                                           (gx#syntax-e
                                                            _%tl8576686595%_)))
                                                      (let ((_%tl8577586605%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8577386598%_)))
                    (_%hd8577486602%_
                     (let () (declare (not safe)) (##car _%e8577386598%_))))
                (if (gx#stx-null? _%tl8577586605%_)
                    (_%__match9188391884%_
                     _%e8571986675%_
                     _%hd8572086679%_
                     _%tl8572186682%_
                     _%e8572286685%_
                     _%hd8572386689%_
                     _%tl8572486692%_
                     _%e8572586695%_
                     _%e8572686699%_
                     _%hd8572786703%_
                     _%tl8572886706%_
                     _%__splice9176391764%_
                     _%target8576486592%_
                     _%tl8576686595%_
                     _%e8577386598%_
                     _%hd8577486602%_
                     _%tl8577586605%_)
                    (if (gx#stx-null? _%tl8572886706%_)
                        (_%__kont9176591766%_ _%hd8572786703%_)
                        (let () (declare (not safe)) (_%g8571285926%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8572886706%_)
                                                        (_%__kont9176591766%_
                                                         _%hd8572786703%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8571285926%_))))))
                                            (if (gx#stx-null? _%tl8572886706%_)
                                                (_%__kont9176591766%_
                                                 _%hd8572786703%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8571285926%_)))))))
                                (if (let ((__tmp92210
                                           (gx#stx-length _%tl8572886706%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp92210 '1))
                                    (let ((_%__splice9176391764%_
                                           (gx#syntax-split-splice
                                            _%tl8572886706%_
                                            '1)))
                                      (let ((_%tl8576686595%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9176391764%_
                                                '1)))
                                            (_%target8576486592%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9176391764%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl8576686595%_)
                                            (let ((_%e8577386598%_
                                                   (gx#syntax-e
                                                    _%tl8576686595%_)))
                                              (let ((_%tl8577586605%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8577386598%_)))
                                                    (_%hd8577486602%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8577386598%_))))
                                                (if (gx#stx-null?
                                                     _%tl8577586605%_)
                                                    (_%__match9188391884%_
                                                     _%e8571986675%_
                                                     _%hd8572086679%_
                                                     _%tl8572186682%_
                                                     _%e8572286685%_
                                                     _%hd8572386689%_
                                                     _%tl8572486692%_
                                                     _%e8572586695%_
                                                     _%e8572686699%_
                                                     _%hd8572786703%_
                                                     _%tl8572886706%_
                                                     _%__splice9176391764%_
                                                     _%target8576486592%_
                                                     _%tl8576686595%_
                                                     _%e8577386598%_
                                                     _%hd8577486602%_
                                                     _%tl8577586605%_)
                                                    (if (gx#stx-null?
                                                         _%tl8572886706%_)
                                                        (_%__kont9176591766%_
                                                         _%hd8572786703%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8571285926%_))))))
                                            (if (gx#stx-null? _%tl8572886706%_)
                                                (_%__kont9176591766%_
                                                 _%hd8572786703%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8571285926%_))))))
                                    (if (gx#stx-null? _%tl8572886706%_)
                                        (_%__kont9176591766%_ _%hd8572786703%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8571285926%_)))))))
                        (if (let ((__tmp92211
                                   (gx#stx-length _%tl8572886706%_)))
                              (declare (not safe))
                              (##fx>= __tmp92211 '1))
                            (let ((_%__splice9176391764%_
                                   (gx#syntax-split-splice
                                    _%tl8572886706%_
                                    '1)))
                              (let ((_%tl8576686595%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9176391764%_
                                        '1)))
                                    (_%target8576486592%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9176391764%_
                                        '0))))
                                (if (gx#stx-pair? _%tl8576686595%_)
                                    (let ((_%e8577386598%_
                                           (gx#syntax-e _%tl8576686595%_)))
                                      (let ((_%tl8577586605%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8577386598%_)))
                                            (_%hd8577486602%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8577386598%_))))
                                        (if (gx#stx-null? _%tl8577586605%_)
                                            (_%__match9188391884%_
                                             _%e8571986675%_
                                             _%hd8572086679%_
                                             _%tl8572186682%_
                                             _%e8572286685%_
                                             _%hd8572386689%_
                                             _%tl8572486692%_
                                             _%e8572586695%_
                                             _%e8572686699%_
                                             _%hd8572786703%_
                                             _%tl8572886706%_
                                             _%__splice9176391764%_
                                             _%target8576486592%_
                                             _%tl8576686595%_
                                             _%e8577386598%_
                                             _%hd8577486602%_
                                             _%tl8577586605%_)
                                            (if (gx#stx-null? _%tl8572886706%_)
                                                (_%__kont9176591766%_
                                                 _%hd8572786703%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8571285926%_))))))
                                    (if (gx#stx-null? _%tl8572886706%_)
                                        (_%__kont9176591766%_ _%hd8572786703%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8571285926%_))))))
                            (if (gx#stx-null? _%tl8572886706%_)
                                (_%__kont9176591766%_ _%hd8572786703%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8571285926%_)))))))
                (if (let ((__tmp92212 (gx#stx-length _%tl8572886706%_)))
                      (declare (not safe))
                      (##fx>= __tmp92212 '1))
                    (let ((_%__splice9176391764%_
                           (gx#syntax-split-splice _%tl8572886706%_ '1)))
                      (let ((_%tl8576686595%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9176391764%_ '1)))
                            (_%target8576486592%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9176391764%_ '0))))
                        (if (gx#stx-pair? _%tl8576686595%_)
                            (let ((_%e8577386598%_
                                   (gx#syntax-e _%tl8576686595%_)))
                              (let ((_%tl8577586605%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8577386598%_)))
                                    (_%hd8577486602%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8577386598%_))))
                                (if (gx#stx-null? _%tl8577586605%_)
                                    (_%__match9188391884%_
                                     _%e8571986675%_
                                     _%hd8572086679%_
                                     _%tl8572186682%_
                                     _%e8572286685%_
                                     _%hd8572386689%_
                                     _%tl8572486692%_
                                     _%e8572586695%_
                                     _%e8572686699%_
                                     _%hd8572786703%_
                                     _%tl8572886706%_
                                     _%__splice9176391764%_
                                     _%target8576486592%_
                                     _%tl8576686595%_
                                     _%e8577386598%_
                                     _%hd8577486602%_
                                     _%tl8577586605%_)
                                    (if (gx#stx-null? _%tl8572886706%_)
                                        (_%__kont9176591766%_ _%hd8572786703%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8571285926%_))))))
                            (if (gx#stx-null? _%tl8572886706%_)
                                (_%__kont9176591766%_ _%hd8572786703%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8571285926%_))))))
                    (if (gx#stx-null? _%tl8572886706%_)
                        (_%__kont9176591766%_ _%hd8572786703%_)
                        (let () (declare (not safe)) (_%g8571285926%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8572886706%_)
                                                        (_%__kont9176591766%_
                                                         _%hd8572786703%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8571285926%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8571285926%_)))
                                        (if (equal? _%e8572586695%_ '2)
                                            (if (gx#stx-pair? _%tl8572486692%_)
                                                (let ((_%e8580086398%_
                                                       (gx#syntax-e
                                                        _%tl8572486692%_)))
                                                  (let ((_%tl8580286405%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8580086398%_)))
                                                        (_%hd8580186402%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8580086398%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl8580286405%_)
                                                        (let ((_%e8580386408%_
                                                               (gx#syntax-e
                                                                _%tl8580286405%_)))
                                                          (let ((_%tl8580586415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8580386408%_)))
                        (_%hd8580486412%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8580386408%_))))
                    (if (gx#stx-pair? _%hd8580486412%_)
                        (let ((_%e8580686418%_ (gx#syntax-e _%hd8580486412%_)))
                          (let ((_%tl8580886425%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8580686418%_)))
                                (_%hd8580786422%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8580686418%_))))
                            (if (gx#stx-pair? _%hd8580786422%_)
                                (let ((_%e8580986428%_
                                       (gx#syntax-e _%hd8580786422%_)))
                                  (let ((_%tl8581186435%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8580986428%_)))
                                        (_%hd8581086432%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8580986428%_))))
                                    (if (gx#identifier? _%hd8581086432%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g92213_|
                                             _%hd8581086432%_)
                                            (if (gx#stx-pair? _%tl8581186435%_)
                                                (let ((_%e8581286438%_
                                                       (gx#syntax-e
                                                        _%tl8581186435%_)))
                                                  (let ((_%tl8581486445%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8581286438%_)))
                                                        (_%hd8581386442%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8581286438%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8581486445%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8580886425%_)
                                                            (let ((_%e8581586448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8580886425%_)))
                      (let ((_%tl8581786455%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8581586448%_)))
                            (_%hd8581686452%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8581586448%_))))
                        (_%__kont9176791768%_
                         _%tl8580586415%_
                         _%tl8581786455%_
                         _%hd8581686452%_
                         _%hd8581386442%_
                         _%hd8580186402%_
                         _%hd8572086679%_)))
                    (_%__kont9176991770%_
                     _%tl8580586415%_
                     _%tl8580886425%_
                     _%hd8580786422%_
                     _%hd8580186402%_
                     _%hd8572086679%_))
                (_%__kont9176991770%_
                 _%tl8580586415%_
                 _%tl8580886425%_
                 _%hd8580786422%_
                 _%hd8580186402%_
                 _%hd8572086679%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont9176991770%_
                                                 _%tl8580586415%_
                                                 _%tl8580886425%_
                                                 _%hd8580786422%_
                                                 _%hd8580186402%_
                                                 _%hd8572086679%_))
                                            (_%__kont9176991770%_
                                             _%tl8580586415%_
                                             _%tl8580886425%_
                                             _%hd8580786422%_
                                             _%hd8580186402%_
                                             _%hd8572086679%_))
                                        (_%__kont9176991770%_
                                         _%tl8580586415%_
                                         _%tl8580886425%_
                                         _%hd8580786422%_
                                         _%hd8580186402%_
                                         _%hd8572086679%_))))
                                (_%__kont9176991770%_
                                 _%tl8580586415%_
                                 _%tl8580886425%_
                                 _%hd8580786422%_
                                 _%hd8580186402%_
                                 _%hd8572086679%_))))
                        (if (gx#stx-null? _%hd8580486412%_)
                            (_%__kont9177191772%_
                             _%tl8580586415%_
                             _%hd8580186402%_
                             _%hd8572086679%_)
                            (let () (declare (not safe)) (_%g8571285926%_))))))
                (let () (declare (not safe)) (_%g8571285926%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8571285926%_)))
                                            (if (equal? _%e8572586695%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl8572486692%_)
                                                    (let ((_%e8586786147%_
                                                           (gx#syntax-e
                                                            _%tl8572486692%_)))
                                                      (let ((_%tl8586986154%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8586786147%_)))
                    (_%hd8586886151%_
                     (let () (declare (not safe)) (##car _%e8586786147%_))))
                (if (gx#stx-pair? _%tl8586986154%_)
                    (let ((_%e8587086157%_ (gx#syntax-e _%tl8586986154%_)))
                      (let ((_%tl8587286164%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8587086157%_)))
                            (_%hd8587186161%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8587086157%_))))
                        (if (gx#stx-pair? _%hd8587186161%_)
                            (let ((_%e8587386167%_
                                   (gx#syntax-e _%hd8587186161%_)))
                              (let ((_%tl8587586174%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8587386167%_)))
                                    (_%hd8587486171%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8587386167%_))))
                                (_%__kont9177391774%_
                                 _%tl8587286164%_
                                 _%tl8587586174%_
                                 _%hd8587486171%_
                                 _%hd8586886151%_
                                 _%hd8572086679%_)))
                            (if (gx#stx-pair/null? _%hd8586886151%_)
                                (let ((_%__splice9177791778%_
                                       (gx#syntax-split-splice
                                        _%hd8586886151%_
                                        '0)))
                                  (let ((_%tl8589485970%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9177791778%_
                                            '1)))
                                        (_%target8589285967%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9177791778%_
                                            '0))))
                                    (if (gx#stx-null? _%tl8589485970%_)
                                        (_%__match9210592106%_
                                         _%e8571986675%_
                                         _%hd8572086679%_
                                         _%tl8572186682%_
                                         _%e8572286685%_
                                         _%hd8572386689%_
                                         _%tl8572486692%_
                                         _%e8572586695%_
                                         _%e8586786147%_
                                         _%hd8586886151%_
                                         _%tl8586986154%_
                                         _%__splice9177791778%_
                                         _%target8589285967%_
                                         _%tl8589485970%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8571285926%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8571285926%_))))))
                    (if (gx#stx-pair/null? _%hd8586886151%_)
                        (let ((_%__splice9177791778%_
                               (gx#syntax-split-splice _%hd8586886151%_ '0)))
                          (let ((_%tl8589485970%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9177791778%_ '1)))
                                (_%target8589285967%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9177791778%_ '0))))
                            (if (gx#stx-null? _%tl8589485970%_)
                                (_%__match9210592106%_
                                 _%e8571986675%_
                                 _%hd8572086679%_
                                 _%tl8572186682%_
                                 _%e8572286685%_
                                 _%hd8572386689%_
                                 _%tl8572486692%_
                                 _%e8572586695%_
                                 _%e8586786147%_
                                 _%hd8586886151%_
                                 _%tl8586986154%_
                                 _%__splice9177791778%_
                                 _%target8589285967%_
                                 _%tl8589485970%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8571285926%_)))))
                        (let () (declare (not safe)) (_%g8571285926%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8571285926%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8571285926%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g8571285926%_)))))
                          (let () (declare (not safe)) (_%g8571285926%_)))))
                  (let () (declare (not safe)) (_%g8571285926%_))))))))))
