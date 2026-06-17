(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g176924_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176926_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176928_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176930_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176931_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176933_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176934_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176936_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176937_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176939_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176940_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176942_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj176920
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj176920 'gerbil#AST::t '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj176920 'syntax '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj176920 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj176920 '(e source) '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj176920 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj176920 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj176920 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj176920 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj176920 '#f '13 '#f '#f))
        (let ((__tmp176923 |gx[1]#_g176924_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj176920 __tmp176923 '4 '#f '#f))
        (let ((__tmp176925 |gx[1]#_g176926_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj176920 __tmp176925 '14 '#f '#f))
        (let ((__tmp176927 |gx[1]#_g176928_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj176920 __tmp176927 '15 '#f '#f))
        (let ((__tmp176929
               (cons (cons 'e |gx[1]#_g176930_|)
                     (cons (cons 'source |gx[1]#_g176931_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj176920 __tmp176929 '16 '#f '#f))
        (let ((__tmp176932
               (cons (cons 'e |gx[1]#_g176933_|)
                     (cons (cons 'source |gx[1]#_g176934_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj176920 __tmp176932 '17 '#f '#f))
        (let ((__tmp176935
               (cons (cons 'e |gx[1]#_g176936_|)
                     (cons (cons 'source |gx[1]#_g176937_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj176920 __tmp176935 '18 '#f '#f))
        (let ((__tmp176938
               (cons (cons 'e |gx[1]#_g176939_|)
                     (cons (cons 'source |gx[1]#_g176940_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj176920 __tmp176938 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj176920 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj176920 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj176920 '() '21 '#f '#f))
        __obj176920))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx175517%_)
        (let* ((_%$%g175521175535%_
                (lambda (_%$%g175522175531%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g175522175531%_)))
               (_%$%g175520175577%_
                (lambda (_%$%g175522175539%_)
                  (if (gx#stx-pair? _%$%g175522175539%_)
                      (let ((_%$%e175524175542%_
                             (gx#syntax-e _%$%g175522175539%_)))
                        (let ((_%$%hd175525175546%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e175524175542%_)))
                              (_%$%tl175526175549%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e175524175542%_))))
                          (if (gx#stx-pair? _%$%tl175526175549%_)
                              (let ((_%$%e175527175552%_
                                     (gx#syntax-e _%$%tl175526175549%_)))
                                (let ((_%$%hd175528175556%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e175527175552%_)))
                                      (_%$%tl175529175559%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e175527175552%_))))
                                  (if (gx#stx-null? _%$%tl175529175559%_)
                                      (cons (gx#datum->syntax '#f 'unless)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'procedure?)
                                                        (cons _%$%hd175528175556%_
                                                              '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'error)
                                                              (cons '"expected procedure"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd175528175556%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g175521175535%_
                                       _%$%g175522175539%_))))
                              (_%$%g175521175535%_ _%$%g175522175539%_))))
                      (_%$%g175521175535%_ _%$%g175522175539%_)))))
          (_%$%g175520175577%_ _%$stx175517%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx175581%_)
        (letrec ((_%generate175584%_
                  (lambda (_%tgt175733%_ _%kws175735%_ _%clauses175736%_)
                    (letrec ((_%generate-clause175738%_
                              (lambda (_%hd176671%_ _%E176673%_)
                                (let* ((_%__stx176823176824%_ _%hd176671%_)
                                       (_%$%g176677176704%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx176823176824%_))))
                                  (let ((_%__kont176826176827%_
                                         (lambda (_%$%g176679176800%_
                                                  _%$%g176680176802%_)
                                           (_%generate1175740%_
                                            _%hd176671%_
                                            _%$%g176680176802%_
                                            '#t
                                            _%$%g176679176800%_
                                            _%E176673%_)))
                                        (_%__kont176828176829%_
                                         (lambda (_%$%g176687176752%_
                                                  _%$%g176688176754%_
                                                  _%$%g176689176755%_)
                                           (_%generate1175740%_
                                            _%hd176671%_
                                            _%$%g176689176755%_
                                            _%$%g176688176754%_
                                            _%$%g176687176752%_
                                            _%E176673%_)))
                                        (_%__kont176830176831%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx175581%_
                                            _%hd176671%_))))
                                    (if (gx#stx-pair? _%__stx176823176824%_)
                                        (let ((_%$%e176681176780%_
                                               (gx#syntax-e
                                                _%__stx176823176824%_)))
                                          (let ((_%$%tl176683176787%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e176681176780%_)))
                                                (_%$%hd176682176784%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e176681176780%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl176683176787%_)
                                                (let ((_%$%e176684176790%_
                                                       (gx#syntax-e
                                                        _%$%tl176683176787%_)))
                                                  (let ((_%$%tl176686176797%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e176684176790%_)))
                                                        (_%$%hd176685176794%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e176684176790%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl176686176797%_)
                                                        (_%__kont176826176827%_
                                                         _%$%hd176685176794%_
                                                         _%$%hd176682176784%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl176686176797%_)
                                                            (let ((_%$%e176696176742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%tl176686176797%_)))
                      (let ((_%$%tl176698176749%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e176696176742%_)))
                            (_%$%hd176697176746%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e176696176742%_))))
                        (if (gx#stx-null? _%$%tl176698176749%_)
                            (_%__kont176828176829%_
                             _%$%hd176697176746%_
                             _%$%hd176685176794%_
                             _%$%hd176682176784%_)
                            (_%__kont176830176831%_))))
                    (_%__kont176830176831%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont176830176831%_))))
                                        (_%__kont176830176831%_))))))
                             (_%generate1175740%_
                              (lambda (_%where176124%_
                                       _%hd176126%_
                                       _%fender176127%_
                                       _%body176128%_
                                       _%E176129%_)
                                (letrec ((_%recur176131%_
                                          (lambda (_%hd176134%_
                                                   _%tgt176136%_
                                                   _%K176137%_)
                                            (let* ((_%__stx176869176870%_
                                                    _%hd176134%_)
                                                   (_%$%g176140176152%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx176869176870%_))))
                                              (let ((_%__kont176872176873%_
                                                     (lambda (_%$%g176142176461%_
                                                              _%$%g176143176463%_)
                                                       (let* ((_%$%g176474176482%_
                                                               (lambda (_%$%g176475176478%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g176475176478%_)))
                      (_%$%g176473176663%_
                       (lambda (_%$%g176475176486%_)
                         (let* ((_%$%g176501176509%_
                                 (lambda (_%$%g176502176505%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g176502176505%_)))
                                (_%$%g176500176659%_
                                 (lambda (_%$%g176502176513%_)
                                   (let* ((_%$%g176529176537%_
                                           (lambda (_%$%g176530176533%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g176530176533%_)))
                                          (_%$%g176528176655%_
                                           (lambda (_%$%g176530176541%_)
                                             (let* ((_%$%g176557176565%_
                                                     (lambda (_%$%g176558176561%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g176558176561%_)))
                                                    (_%$%g176556176651%_
                                                     (lambda (_%$%g176558176569%_)
                                                       (let* ((_%$%g176585176593%_
                                                               (lambda (_%$%g176586176589%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g176586176589%_)))
                      (_%$%g176584176647%_
                       (lambda (_%$%g176586176597%_)
                         (let* ((_%$%g176613176621%_
                                 (lambda (_%$%g176614176617%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g176614176617%_)))
                                (_%$%g176612176643%_
                                 (lambda (_%$%g176614176625%_)
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'stx-pair?)
                                                     (cons _%$%g176475176486%_
                                                           '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _%$%g176502176513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'syntax-e)
                                                 (cons _%$%g176475176486%_
                                                       '()))
                                           '()))
                               '())
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%$%g176530176541%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##car)
                           (cons _%$%g176502176513%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%$%g176558176569%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##cdr)
                                 (cons _%$%g176502176513%_ '()))
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%$%g176586176597%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%$%g176614176625%_
                                                           '())))))))
                           (_%$%g176612176643%_ _%E176129%_)))))
                 (_%$%g176584176647%_
                  (_%recur176131%_
                   _%$%g176143176463%_
                   _%$%g176530176541%_
                   (_%recur176131%_
                    _%$%g176142176461%_
                    _%$%g176558176569%_
                    _%K176137%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g176556176651%_
                                                (gx#genident 'tl))))))
                                     (_%$%g176528176655%_
                                      (gx#genident 'hd))))))
                           (_%$%g176500176659%_ (gx#genident 'e))))))
                 (_%$%g176473176663%_ _%tgt176136%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont176874176875%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd176134%_)
                                                           (if (gx#underscore?
                                                                _%hd176134%_)
                                                               _%K176137%_
                                                               (if (let ((__tmp176941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%$%g176166176168%_)
                                    (gx#bound-identifier=?
                                     _%$%g176166176168%_
                                     _%hd176134%_))))
                             (declare (not safe))
                             (__find __tmp176941 _%kws175735%_))
                           (let* ((_%$%g176174176189%_
                                   (lambda (_%$%g176175176185%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g176175176185%_)))
                                  (_%$%g176173176242%_
                                   (lambda (_%$%g176175176193%_)
                                     (if (gx#stx-pair? _%$%g176175176193%_)
                                         (let ((_%$%e176178176196%_
                                                (gx#syntax-e
                                                 _%$%g176175176193%_)))
                                           (let ((_%$%hd176179176200%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e176178176196%_)))
                                                 (_%$%tl176180176203%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e176178176196%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl176180176203%_)
                                                 (let ((_%$%e176181176206%_
                                                        (gx#syntax-e
                                                         _%$%tl176180176203%_)))
                                                   (let ((_%$%hd176182176210%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e176181176206%_)))
                                                         (_%$%tl176183176213%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e176181176206%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl176183176213%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'and)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'identifier?)
                                               (cons _%$%hd176179176200%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'core-identifier=?)
                                                     (cons _%$%hd176179176200%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _%$%hd176182176210%_ '()))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons _%K176137%_ (cons _%E176129%_ '()))))
                 (_%$%g176174176189%_ _%$%g176175176193%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g176174176189%_
                                                  _%$%g176175176193%_))))
                                         (_%$%g176174176189%_
                                          _%$%g176175176193%_)))))
                             (_%$%g176173176242%_
                              (list _%tgt176136%_ _%hd176134%_)))
                           (let* ((_%$%g176248176263%_
                                   (lambda (_%$%g176249176259%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g176249176259%_)))
                                  (_%$%g176247176308%_
                                   (lambda (_%$%g176249176267%_)
                                     (if (gx#stx-pair? _%$%g176249176267%_)
                                         (let ((_%$%e176252176270%_
                                                (gx#syntax-e
                                                 _%$%g176249176267%_)))
                                           (let ((_%$%hd176253176274%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e176252176270%_)))
                                                 (_%$%tl176254176277%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e176252176270%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl176254176277%_)
                                                 (let ((_%$%e176255176280%_
                                                        (gx#syntax-e
                                                         _%$%tl176254176277%_)))
                                                   (let ((_%$%hd176256176284%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e176255176280%_)))
                                                         (_%$%tl176257176287%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e176255176280%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl176257176287%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _%$%hd176256176284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons _%$%hd176253176274%_ '()))
                                   '())
                             (cons _%K176137%_ '())))
                 (_%$%g176248176263%_ _%$%g176249176267%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g176248176263%_
                                                  _%$%g176249176267%_))))
                                         (_%$%g176248176263%_
                                          _%$%g176249176267%_)))))
                             (_%$%g176247176308%_
                              (list _%tgt176136%_ _%hd176134%_)))))
                   (if (gx#stx-null? _%hd176134%_)
                       (let* ((_%$%g176314176322%_
                               (lambda (_%$%g176315176318%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%$%g176315176318%_)))
                              (_%$%g176313176341%_
                               (lambda (_%$%g176315176326%_)
                                 (cons (gx#datum->syntax '#f 'if)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'stx-null?)
                                                   (cons _%$%g176315176326%_
                                                         '()))
                                             (cons _%K176137%_
                                                   (cons _%E176129%_ '())))))))
                         (_%$%g176313176341%_ _%tgt176136%_))
                       (if (gx#stx-datum? _%hd176134%_)
                           (let* ((_%$%g176347176366%_
                                   (lambda (_%$%g176348176362%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g176348176362%_)))
                                  (_%$%g176346176425%_
                                   (lambda (_%$%g176348176370%_)
                                     (if (gx#stx-pair? _%$%g176348176370%_)
                                         (let ((_%$%e176352176373%_
                                                (gx#syntax-e
                                                 _%$%g176348176370%_)))
                                           (let ((_%$%hd176353176377%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e176352176373%_)))
                                                 (_%$%tl176354176380%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e176352176373%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl176354176380%_)
                                                 (let ((_%$%e176355176383%_
                                                        (gx#syntax-e
                                                         _%$%tl176354176380%_)))
                                                   (let ((_%$%hd176356176387%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e176355176383%_)))
                                                         (_%$%tl176357176390%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e176355176383%_))))
                                                     (if (gx#stx-pair?
                                                          _%$%tl176357176390%_)
                                                         (let ((_%$%e176358176393%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl176357176390%_)))
                   (let ((_%$%hd176359176397%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e176358176393%_)))
                         (_%$%tl176360176400%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e176358176393%_))))
                     (if (gx#stx-null? _%$%tl176360176400%_)
                         (cons (gx#datum->syntax '#f 'if)
                               (cons (cons _%$%hd176359176397%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-e)
                                                       (cons _%$%hd176353176377%_
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%$%hd176356176387%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons _%K176137%_
                                           (cons _%E176129%_ '()))))
                         (_%$%g176347176366%_ _%$%g176348176370%_))))
                 (_%$%g176347176366%_ _%$%g176348176370%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g176347176366%_
                                                  _%$%g176348176370%_))))
                                         (_%$%g176347176366%_
                                          _%$%g176348176370%_)))))
                             (_%$%g176346176425%_
                              (list _%tgt176136%_
                                    _%hd176134%_
                                    (let ((_%e176429%_
                                           (gx#stx-e _%hd176134%_)))
                                      (if (or (keyword? _%e176429%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e176429%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e176429%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx175581%_
                            _%where176124%_
                            _%hd176134%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx176869176870%_)
                                                    (let ((_%$%e176144176451%_
                                                           (gx#syntax-e
                                                            _%__stx176869176870%_)))
                                                      (let ((_%$%tl176146176458%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e176144176451%_)))
                    (_%$%hd176145176455%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e176144176451%_))))
                (_%__kont176872176873%_
                 _%$%tl176146176458%_
                 _%$%hd176145176455%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont176874176875%_)))))))
                                  (_%recur176131%_
                                   _%hd176126%_
                                   _%tgt175733%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender176127%_
                                               (cons _%body176128%_
                                                     (cons _%E176129%_
                                                           '()))))))))
                             (_%generate-clauses175741%_
                              (lambda (_%clauses175862%_)
                                (let _%lp175865%_ ((_%rest175868%_
                                                    _%clauses175862%_)
                                                   (_%E175870%_
                                                    (gx#genident 'E))
                                                   (_%r175871%_ '()))
                                  (let* ((_%__stx176905176906%_ _%rest175868%_)
                                         (_%$%g175874175886%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx176905176906%_))))
                                    (let ((_%__kont176908176909%_
                                           (lambda (_%$%g175876175951%_
                                                    _%$%g175877175953%_)
                                             (let* ((_%__stx176885176886%_
                                                     _%$%g175877175953%_)
                                                    (_%$%g175965175976%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx176885176886%_))))
                                               (let ((_%__kont176888176889%_
                                                      (lambda (_%$%g175967176105%_)
                                                        (if (gx#stx-null?
                                                             _%$%g175876175951%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g175967176105%_)
                             (not (gx#stx-null? _%$%g175967176105%_)))
                        (cons (cons _%E175870%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%$%g175967176105%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%$%g175877175953%_))
                                          '()))
                              _%r175871%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx175581%_
                         _%$%g175877175953%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx175581%_
                     _%$%g175877175953%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont176890176891%_
                                                      (lambda ()
                                                        (let* ((_%$%g175987175995%_
                                                                (lambda (_%$%g175988175991%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g175988175991%_)))
                       (_%$%g175986176084%_
                        (lambda (_%$%g175988175999%_)
                          (let* ((_%$%g176018176026%_
                                  (lambda (_%$%g176019176022%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g176019176022%_)))
                                 (_%$%g176017176080%_
                                  (lambda (_%$%g176019176030%_)
                                    (let* ((_%$%g176046176054%_
                                            (lambda (_%$%g176047176050%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g176047176050%_)))
                                           (_%$%g176045176076%_
                                            (lambda (_%$%g176047176058%_)
                                              (_%lp175865%_
                                               _%$%g175876175951%_
                                               _%$%g175988175999%_
                                               (cons (cons _%E175870%_
                                                           (cons _%$%g176047176058%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r175871%_)))))
                                      (_%$%g176045176076%_
                                       (gx#stx-wrap-source
                                        (cons (gx#datum->syntax '#f 'lambda)
                                              (cons '()
                                                    (cons _%$%g176019176030%_
                                                          '())))
                                        (gx#stx-source
                                         _%$%g175877175953%_)))))))
                            (_%$%g176017176080%_
                             (_%generate-clause175738%_
                              _%$%g175877175953%_
                              (cons _%$%g175988175999%_ '())))))))
                  (_%$%g175986176084%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx176885176886%_)
                                                     (let ((_%$%e175968176095%_
                                                            (gx#syntax-e
                                                             _%__stx176885176886%_)))
                                                       (let ((_%$%tl175970176102%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e175968176095%_)))
                     (_%$%hd175969176099%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e175968176095%_))))
                 (if (gx#identifier? _%$%hd175969176099%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g176942_|
                          _%$%hd175969176099%_)
                         (_%__kont176888176889%_ _%$%tl175970176102%_)
                         (_%__kont176890176891%_))
                     (_%__kont176890176891%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont176890176891%_))))))
                                          (_%__kont176910176911%_
                                           (lambda ()
                                             (let* ((_%$%g175897175905%_
                                                     (lambda (_%$%g175898175901%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g175898175901%_)))
                                                    (_%$%g175896175930%_
                                                     (lambda (_%$%g175898175909%_)
                                                       (cons (cons _%E175870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '()
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'raise-syntax-error)
                                                          (cons '#f
                                                                (cons '"Bad syntax; invalid syntax-case clause"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%g175898175909%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (gx#stx-source _%stx175581%_))
                                 '()))
                     _%r175871%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g175896175930%_
                                                _%tgt175733%_)))))
                                      (if (gx#stx-pair? _%__stx176905176906%_)
                                          (let ((_%$%e175878175941%_
                                                 (gx#syntax-e
                                                  _%__stx176905176906%_)))
                                            (let ((_%$%tl175880175948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e175878175941%_)))
                                                  (_%$%hd175879175945%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e175878175941%_))))
                                              (_%__kont176908176909%_
                                               _%$%tl175880175948%_
                                               _%$%hd175879175945%_)))
                                          (_%__kont176910176911%_))))))))
                      (let* ((_%bind175743%_
                              (_%generate-clauses175741%_ _%clauses175736%_))
                             (_%$%g175746175763%_
                              (lambda (_%$%g175747175759%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g175747175759%_)))
                             (_%$%g175745175858%_
                              (lambda (_%$%g175747175767%_)
                                (if (gx#stx-pair/null? _%$%g175747175767%_)
                                    (let ((_g176943_
                                           (gx#syntax-split-splice
                                            _%$%g175747175767%_
                                            '0)))
                                      (begin
                                        (let ((_g176944_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g176943_)
                                                     (##values-length
                                                      _g176943_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g176944_ 2)))
                                              (error "Context expects 2 values"
                                                     _g176944_)))
                                        (let ((_%$%target175749175770%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g176943_ 0)))
                                              (_%$%tl175751175773%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g176943_ 1))))
                                          (if (gx#stx-null?
                                               _%$%tl175751175773%_)
                                              (letrec ((_%$%loop175752175776%_
                                                        (lambda (_%$%hd175750175780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%bind-try175756175783%_)
                  (if (gx#stx-pair? _%$%hd175750175780%_)
                      (let ((_%$%e175753175785%_
                             (gx#syntax-e _%$%hd175750175780%_)))
                        (let ((_%$%lp-hd175754175789%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e175753175785%_)))
                              (_%$%lp-tl175755175792%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e175753175785%_))))
                          (_%$%loop175752175776%_
                           _%$%lp-tl175755175792%_
                           (cons _%$%lp-hd175754175789%_
                                 _%$%bind-try175756175783%_))))
                      (let* ((_%$%bind-try175757175795%_
                              (reverse _%$%bind-try175756175783%_))
                             (_%$%g175816175824%_
                              (lambda (_%$%g175817175820%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g175817175820%_)))
                             (_%$%g175815175854%_
                              (lambda (_%$%g175817175828%_)
                                (cons (gx#datum->syntax '#f 'let*)
                                      (cons (let ((__tmp176945
                                                   (lambda (_%$%g175845175848%_
                                                            _%$%g175846175851%_)
                                                     (cons _%$%g175845175848%_
                                                           _%$%g175846175851%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp176945
                                               '()
                                               _%$%bind-try175757175795%_))
                                            (cons (cons _%$%g175817175828%_
                                                        '())
                                                  '()))))))
                        (_%$%g175815175854%_ (car (last _%bind175743%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop175752175776%_
                                                 _%$%target175749175770%_
                                                 '()))
                                              (_%$%g175746175763%_
                                               _%$%g175747175767%_)))))
                                    (_%$%g175746175763%_
                                     _%$%g175747175767%_)))))
                        (_%$%g175745175858%_ _%bind175743%_))))))
          (let* ((_%$%g175587175606%_
                  (lambda (_%$%g175588175602%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g175588175602%_)))
                 (_%$%g175586175729%_
                  (lambda (_%$%g175588175610%_)
                    (if (gx#stx-pair? _%$%g175588175610%_)
                        (let ((_%$%e175592175613%_
                               (gx#syntax-e _%$%g175588175610%_)))
                          (let ((_%$%hd175593175617%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e175592175613%_)))
                                (_%$%tl175594175620%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e175592175613%_))))
                            (if (gx#stx-pair? _%$%tl175594175620%_)
                                (let ((_%$%e175595175623%_
                                       (gx#syntax-e _%$%tl175594175620%_)))
                                  (let ((_%$%hd175596175627%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e175595175623%_)))
                                        (_%$%tl175597175630%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e175595175623%_))))
                                    (if (gx#stx-pair? _%$%tl175597175630%_)
                                        (let ((_%$%e175598175633%_
                                               (gx#syntax-e
                                                _%$%tl175597175630%_)))
                                          (let ((_%$%hd175599175637%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e175598175633%_)))
                                                (_%$%tl175600175640%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e175598175633%_))))
                                            (if (and (gx#identifier-list?
                                                      _%$%hd175599175637%_)
                                                     (gx#stx-list?
                                                      _%$%tl175600175640%_))
                                                (let* ((_%$%g175664175672%_
                                                        (lambda (_%$%g175665175668%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%$%g175665175668%_)))
                                                       (_%$%g175663175725%_
                                                        (lambda (_%$%g175665175676%_)
                                                          (let* ((_%$%g175691175699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%g175692175695%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%$%g175692175695%_)))
                         (_%$%g175690175721%_
                          (lambda (_%$%g175692175703%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (cons _%$%g175665175676%_
                                                    (cons _%$%hd175596175627%_
                                                          '()))
                                              '())
                                        (cons _%$%g175692175703%_ '()))))))
                    (_%$%g175690175721%_
                     (_%generate175584%_
                      _%$%g175665175676%_
                      (gx#syntax->list _%$%hd175599175637%_)
                      _%$%tl175600175640%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g175663175725%_
                                                   (gx#genident 'e)))
                                                (_%$%g175587175606%_
                                                 _%$%g175588175610%_))))
                                        (_%$%g175587175606%_
                                         _%$%g175588175610%_))))
                                (_%$%g175587175606%_ _%$%g175588175610%_))))
                        (_%$%g175587175606%_ _%$%g175588175610%_)))))
            (_%$%g175586175729%_ _%stx175581%_)))))))
