(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g104729_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g104739_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx97521%_)
        (let* ((_%g9752597543%_
                (lambda (_%g9752697539%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9752697539%_)))
               (_%g9752497599%_
                (lambda (_%g9752697547%_)
                  (if (gx#stx-pair? _%g9752697547%_)
                      (let ((_%e9752997550%_ (gx#syntax-e _%g9752697547%_)))
                        (let ((_%hd9753097554%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9752997550%_)))
                              (_%tl9753197557%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9752997550%_))))
                          (if (gx#stx-pair? _%tl9753197557%_)
                              (let ((_%e9753297560%_
                                     (gx#syntax-e _%tl9753197557%_)))
                                (let ((_%hd9753397564%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9753297560%_)))
                                      (_%tl9753497567%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9753297560%_))))
                                  (if (gx#stx-pair? _%tl9753497567%_)
                                      (let ((_%e9753597570%_
                                             (gx#syntax-e _%tl9753497567%_)))
                                        (let ((_%hd9753697574%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9753597570%_)))
                                              (_%tl9753797577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9753597570%_))))
                                          (if (gx#stx-null? _%tl9753797577%_)
                                              ((lambda (_%g9752797580%_
                                                        _%g9752897582%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%g9752897582%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%g9752797580%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd9753697574%_
                                               _%hd9753397564%_)
                                              (_%g9752597543%_
                                               _%g9752697547%_))))
                                      (_%g9752597543%_ _%g9752697547%_))))
                              (_%g9752597543%_ _%g9752697547%_))))
                      (_%g9752597543%_ _%g9752697547%_)))))
          (_%g9752497599%_ _%$stx97521%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx97603%_)
        (let* ((_%g9760797617%_
                (lambda (_%g9760897613%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9760897613%_)))
               (_%g9760697638%_
                (lambda (_%g9760897621%_)
                  (if (gx#stx-pair? _%g9760897621%_)
                      (let ((_%e9760997624%_ (gx#syntax-e _%g9760897621%_)))
                        (let ((_%hd9761097628%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9760997624%_)))
                              (_%tl9761197631%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9760997624%_))))
                          (if (gx#stx-null? _%tl9761197631%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 (cons '#f '())))))
                              (_%g9760797617%_ _%g9760897621%_))))
                      (_%g9760797617%_ _%g9760897621%_)))))
          (_%g9760697638%_ _%$stx97603%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx97642%_)
        (let* ((_%__stx104206104207%_ _%$stx97642%_)
               (_%g9764797672%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx104206104207%_))))
          (let ((_%__kont104209104210%_
                 (lambda (_%g9764997750%_ _%g9765097752%_)
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
                                                               (cons _%g9765097752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '0 (cons '1 (cons '0 '())))))
                 (cons '0 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-set!)
                                                         (cons _%g9765097752%_
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
                                                               (cons _%g9764997750%_
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
                                                     (cons _%g9765097752%_
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
                (_%__kont104211104212%_
                 (lambda (_%g9766097699%_)
                   (cons (gx#datum->syntax '#f '__lock-inline!)
                         (cons _%g9766097699%_ (cons '10 '()))))))
            (if (gx#stx-pair? _%__stx104206104207%_)
                (let ((_%e9765197720%_ (gx#syntax-e _%__stx104206104207%_)))
                  (let ((_%tl9765397727%_
                         (let () (declare (not safe)) (##cdr _%e9765197720%_)))
                        (_%hd9765297724%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9765197720%_))))
                    (if (gx#stx-pair? _%tl9765397727%_)
                        (let ((_%e9765497730%_ (gx#syntax-e _%tl9765397727%_)))
                          (let ((_%tl9765697737%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9765497730%_)))
                                (_%hd9765597734%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9765497730%_))))
                            (if (gx#stx-pair? _%tl9765697737%_)
                                (let ((_%e9765797740%_
                                       (gx#syntax-e _%tl9765697737%_)))
                                  (let ((_%tl9765997747%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9765797740%_)))
                                        (_%hd9765897744%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9765797740%_))))
                                    (if (gx#stx-null? _%tl9765997747%_)
                                        (_%__kont104209104210%_
                                         _%hd9765897744%_
                                         _%hd9765597734%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9764797672%_)))))
                                (if (gx#stx-null? _%tl9765697737%_)
                                    (_%__kont104211104212%_ _%hd9765597734%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g9764797672%_))))))
                        (let () (declare (not safe)) (_%g9764797672%_)))))
                (let () (declare (not safe)) (_%g9764797672%_)))))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx97771%_)
        (let* ((_%g9777597789%_
                (lambda (_%g9777697785%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9777697785%_)))
               (_%g9777497830%_
                (lambda (_%g9777697793%_)
                  (if (gx#stx-pair? _%g9777697793%_)
                      (let ((_%e9777897796%_ (gx#syntax-e _%g9777697793%_)))
                        (let ((_%hd9777997800%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9777897796%_)))
                              (_%tl9778097803%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9777897796%_))))
                          (if (gx#stx-pair? _%tl9778097803%_)
                              (let ((_%e9778197806%_
                                     (gx#syntax-e _%tl9778097803%_)))
                                (let ((_%hd9778297810%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9778197806%_)))
                                      (_%tl9778397813%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9778197806%_))))
                                  (if (gx#stx-null? _%tl9778397813%_)
                                      ((lambda (_%g9777797816%_)
                                         (cons (gx#datum->syntax '#f 'begin)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##vector-set!)
                                                           (cons _%g9777797816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 (cons '#f '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##vector-cas!)
                         (cons _%g9777797816%_
                               (cons '0 (cons '0 (cons '1 '())))))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd9778297810%_)
                                      (_%g9777597789%_ _%g9777697793%_))))
                              (_%g9777597789%_ _%g9777697793%_))))
                      (_%g9777597789%_ _%g9777697793%_)))))
          (_%g9777497830%_ _%$stx97771%_))))
    (define |[:0:]#__do-inline-lock!|
      (lambda (_%$stx97834%_)
        (let* ((_%g9783897856%_
                (lambda (_%g9783997852%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9783997852%_)))
               (_%g9783797911%_
                (lambda (_%g9783997860%_)
                  (if (gx#stx-pair? _%g9783997860%_)
                      (let ((_%e9784297863%_ (gx#syntax-e _%g9783997860%_)))
                        (let ((_%hd9784397867%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9784297863%_)))
                              (_%tl9784497870%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9784297863%_))))
                          (if (gx#stx-pair? _%tl9784497870%_)
                              (let ((_%e9784597873%_
                                     (gx#syntax-e _%tl9784497870%_)))
                                (let ((_%hd9784697877%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9784597873%_)))
                                      (_%tl9784797880%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9784597873%_))))
                                  (if (gx#stx-pair? _%tl9784797880%_)
                                      (let ((_%e9784897883%_
                                             (gx#syntax-e _%tl9784797880%_)))
                                        (let ((_%hd9784997887%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9784897883%_)))
                                              (_%tl9785097890%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9784897883%_))))
                                          (if (gx#stx-null? _%tl9785097890%_)
                                              ((lambda (_%g9784097893%_
                                                        _%g9784197895%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '__lock-inline!)
                           (cons _%g9784197895%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'begin0)
                                 (cons _%g9784097893%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '__unlock-inline!)
                                                   (cons _%g9784197895%_ '()))
                                             '())))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd9784997887%_
                                               _%hd9784697877%_)
                                              (_%g9783897856%_
                                               _%g9783997860%_))))
                                      (_%g9783897856%_ _%g9783997860%_))))
                              (_%g9783897856%_ _%g9783997860%_))))
                      (_%g9783897856%_ _%g9783997860%_)))))
          (_%g9783797911%_ _%$stx97834%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx97915%_)
        (let* ((_%g9791997937%_
                (lambda (_%g9792097933%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9792097933%_)))
               (_%g9791897992%_
                (lambda (_%g9792097941%_)
                  (if (gx#stx-pair? _%g9792097941%_)
                      (let ((_%e9792397944%_ (gx#syntax-e _%g9792097941%_)))
                        (let ((_%hd9792497948%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9792397944%_)))
                              (_%tl9792597951%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9792397944%_))))
                          (if (gx#stx-pair? _%tl9792597951%_)
                              (let ((_%e9792697954%_
                                     (gx#syntax-e _%tl9792597951%_)))
                                (let ((_%hd9792797958%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9792697954%_)))
                                      (_%tl9792897961%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9792697954%_))))
                                  (if (gx#stx-pair? _%tl9792897961%_)
                                      (let ((_%e9792997964%_
                                             (gx#syntax-e _%tl9792897961%_)))
                                        (let ((_%hd9793097968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9792997964%_)))
                                              (_%tl9793197971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9792997964%_))))
                                          (if (gx#stx-null? _%tl9793197971%_)
                                              ((lambda (_%g9792197974%_
                                                        _%g9792297976%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%g9792297976%_
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
                 (cons (cons _%g9792197974%_
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
                                               _%hd9793097968%_
                                               _%hd9792797958%_)
                                              (_%g9791997937%_
                                               _%g9792097941%_))))
                                      (_%g9791997937%_ _%g9792097941%_))))
                              (_%g9791997937%_ _%g9792097941%_))))
                      (_%g9791997937%_ _%g9792097941%_)))))
          (_%g9791897992%_ _%$stx97915%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx97996%_)
        (let* ((_%g9800098018%_
                (lambda (_%g9800198014%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9800198014%_)))
               (_%g9799998073%_
                (lambda (_%g9800198022%_)
                  (if (gx#stx-pair? _%g9800198022%_)
                      (let ((_%e9800498025%_ (gx#syntax-e _%g9800198022%_)))
                        (let ((_%hd9800598029%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9800498025%_)))
                              (_%tl9800698032%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9800498025%_))))
                          (if (gx#stx-pair? _%tl9800698032%_)
                              (let ((_%e9800798035%_
                                     (gx#syntax-e _%tl9800698032%_)))
                                (let ((_%hd9800898039%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9800798035%_)))
                                      (_%tl9800998042%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9800798035%_))))
                                  (if (gx#stx-pair? _%tl9800998042%_)
                                      (let ((_%e9801098045%_
                                             (gx#syntax-e _%tl9800998042%_)))
                                        (let ((_%hd9801198049%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9801098045%_)))
                                              (_%tl9801298052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9801098045%_))))
                                          (if (gx#stx-null? _%tl9801298052%_)
                                              ((lambda (_%g9800298055%_
                                                        _%g9800398057%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%g9800398057%_
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
                                               (cons (cons _%g9800298055%_
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
                                               _%hd9801198049%_
                                               _%hd9800898039%_)
                                              (_%g9800098018%_
                                               _%g9800198022%_))))
                                      (_%g9800098018%_ _%g9800198022%_))))
                              (_%g9800098018%_ _%g9800198022%_))))
                      (_%g9800098018%_ _%g9800198022%_)))))
          (_%g9799998073%_ _%$stx97996%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx98077%_)
        (let* ((_%g9808198099%_
                (lambda (_%g9808298095%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9808298095%_)))
               (_%g9808098154%_
                (lambda (_%g9808298103%_)
                  (if (gx#stx-pair? _%g9808298103%_)
                      (let ((_%e9808598106%_ (gx#syntax-e _%g9808298103%_)))
                        (let ((_%hd9808698110%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9808598106%_)))
                              (_%tl9808798113%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9808598106%_))))
                          (if (gx#stx-pair? _%tl9808798113%_)
                              (let ((_%e9808898116%_
                                     (gx#syntax-e _%tl9808798113%_)))
                                (let ((_%hd9808998120%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9808898116%_)))
                                      (_%tl9809098123%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9808898116%_))))
                                  (if (gx#stx-pair? _%tl9809098123%_)
                                      (let ((_%e9809198126%_
                                             (gx#syntax-e _%tl9809098123%_)))
                                        (let ((_%hd9809298130%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9809198126%_)))
                                              (_%tl9809398133%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9809198126%_))))
                                          (if (gx#stx-null? _%tl9809398133%_)
                                              ((lambda (_%g9808398136%_
                                                        _%g9808498138%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%g9808498138%_
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
                                               (cons (cons _%g9808398136%_
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
                                               _%hd9809298130%_
                                               _%hd9808998120%_)
                                              (_%g9808198099%_
                                               _%g9808298103%_))))
                                      (_%g9808198099%_ _%g9808298103%_))))
                              (_%g9808198099%_ _%g9808298103%_))))
                      (_%g9808198099%_ _%g9808298103%_)))))
          (_%g9808098154%_ _%$stx98077%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx98158%_)
        (let* ((_%g9816298173%_
                (lambda (_%g9816398169%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9816398169%_)))
               (_%g9816198202%_
                (lambda (_%g9816398177%_)
                  (if (gx#stx-pair? _%g9816398177%_)
                      (let ((_%e9816598180%_ (gx#syntax-e _%g9816398177%_)))
                        (let ((_%hd9816698184%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9816598180%_)))
                              (_%tl9816798187%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9816598180%_))))
                          ((lambda (_%g9816498190%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%g9816498190%_)))
                           _%tl9816798187%_)))
                      (_%g9816298173%_ _%g9816398177%_)))))
          (_%g9816198202%_ _%$stx98158%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx98206%_)
        (let* ((_%__stx104281104282%_ _%$stx98206%_)
               (_%g9821798431%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx104281104282%_))))
          (let ((_%__kont104284104285%_
                 (lambda (_%g9821999276%_
                          _%g9822099278%_
                          _%g9822199279%_
                          _%g9822299280%_
                          _%g9822399281%_)
                   (cons _%g9822399281%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g9931199314%_
                                                     _%g9931299317%_)
                                              (cons _%g9931199314%_
                                                    _%g9931299317%_))
                                            '()
                                            _%g9822199279%_)
                                           (cons _%g9822299280%_
                                                 (cons _%g9822099278%_
                                                       (cons _%g9821999276%_
                                                             '())))))))))
                (_%__kont104288104289%_
                 (lambda (_%g9825599131%_
                          _%g9825699133%_
                          _%g9825799134%_
                          _%g9825899135%_)
                   (cons _%g9825899135%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g9915899161%_
                                                     _%g9915999164%_)
                                              (cons _%g9915899161%_
                                                    _%g9915999164%_))
                                            '()
                                            _%g9825699133%_)
                                           (cons _%g9825799134%_
                                                 (cons _%g9825599131%_
                                                       (cons _%g9825599131%_
                                                             '())))))))))
                (_%__kont104292104293%_
                 (lambda (_%g9828199036%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%g9828199036%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont104294104295%_
                 (lambda (_%g9829298959%_
                          _%g9829398961%_
                          _%g9829498962%_
                          _%g9829598963%_
                          _%g9829698964%_
                          _%g9829798965%_)
                   (cons _%g9829798965%_
                         (cons '2
                               (cons (cons (cons _%g9829598963%_
                                                 (cons _%g9829498962%_ '()))
                                           _%g9829698964%_)
                                     (cons _%g9829398961%_
                                           _%g9829298959%_))))))
                (_%__kont104296104297%_
                 (lambda (_%g9832398840%_
                          _%g9832498842%_
                          _%g9832598843%_
                          _%g9832698844%_
                          _%g9832798845%_)
                   (cons _%g9832798845%_
                         (cons '2
                               (cons (cons (cons _%g9832598843%_
                                                 (cons _%g9832598843%_ '()))
                                           _%g9832698844%_)
                                     (cons _%g9832498842%_
                                           _%g9832398840%_))))))
                (_%__kont104298104299%_
                 (lambda (_%g9834498757%_ _%g9834598759%_ _%g9834698760%_)
                   (cons _%g9834698760%_
                         (cons '3
                               (cons '()
                                     (cons _%g9834598759%_
                                           _%g9834498757%_))))))
                (_%__kont104300104301%_
                 (lambda (_%g9836098678%_
                          _%g9836198680%_
                          _%g9836298681%_
                          _%g9836398682%_
                          _%g9836498683%_)
                   (cons _%g9836498683%_
                         (cons '3
                               (cons (cons _%g9836298681%_ _%g9836398682%_)
                                     (cons _%g9836198680%_
                                           _%g9836098678%_))))))
                (_%__kont104302104303%_
                 (lambda (_%g9838198562%_
                          _%g9838298564%_
                          _%g9838398565%_
                          _%g9838498566%_
                          _%g9838598567%_
                          _%g9838698568%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%g9838398565%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g9838198562%_ '())))
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
                                              (lambda (_%g9860098605%_
                                                       _%g9860198608%_)
                                                (cons _%g9860098605%_
                                                      _%g9860198608%_))
                                              '()
                                              _%g9838598567%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (__foldr1
                                              (lambda (_%g9860298611%_
                                                       _%g9860398614%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g9860298611%_ '())))
              _%g9860398614%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%g9838498566%_))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%g9838298564%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match104632104633%_
                    (lambda (_%e9838798438%_
                             _%hd9838898442%_
                             _%tl9838998445%_
                             _%e9839098448%_
                             _%hd9839198452%_
                             _%tl9839298455%_
                             _%e9839398458%_
                             _%e9839498462%_
                             _%hd9839598466%_
                             _%tl9839698469%_
                             _%__splice104304104305%_
                             _%target9839798472%_
                             _%tl9839998475%_)
                      (letrec ((_%loop9840098478%_
                                (lambda (_%hd9839898482%_
                                         _%exprs9840498485%_
                                         _%names9840598486%_)
                                  (if (gx#stx-pair? _%hd9839898482%_)
                                      (let ((_%e9840198488%_
                                             (gx#syntax-e _%hd9839898482%_)))
                                        (let ((_%lp-tl9840398495%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9840198488%_)))
                                              (_%lp-hd9840298492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9840198488%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd9840298492%_)
                                              (let ((_%e9840898498%_
                                                     (gx#syntax-e
                                                      _%lp-hd9840298492%_)))
                                                (let ((_%tl9841098505%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e9840898498%_)))
                                                      (_%hd9840998502%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e9840898498%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl9841098505%_)
                                                      (let ((_%e9841198508%_
                                                             (gx#syntax-e
                                                              _%tl9841098505%_)))
                                                        (let ((_%tl9841398515%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e9841198508%_)))
                      (_%hd9841298512%_
                       (let () (declare (not safe)) (##car _%e9841198508%_))))
                  (if (gx#stx-null? _%tl9841398515%_)
                      (_%loop9840098478%_
                       _%lp-tl9840398495%_
                       (cons _%hd9841298512%_ _%exprs9840498485%_)
                       (cons _%hd9840998502%_ _%names9840598486%_))
                      (let () (declare (not safe)) (_%g9821798431%_)))))
              (let () (declare (not safe)) (_%g9821798431%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g9821798431%_)))))
                                      (let ((_%names9840798520%_
                                             (reverse _%names9840598486%_))
                                            (_%exprs9840698518%_
                                             (reverse _%exprs9840498485%_)))
                                        (if (gx#stx-pair? _%tl9839698469%_)
                                            (let ((_%e9841498522%_
                                                   (gx#syntax-e
                                                    _%tl9839698469%_)))
                                              (let ((_%tl9841698529%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9841498522%_)))
                                                    (_%hd9841598526%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9841498522%_))))
                                                (if (gx#stx-null?
                                                     _%hd9841598526%_)
                                                    (if (gx#stx-pair?
                                                         _%tl9841698529%_)
                                                        (let ((_%e9841798532%_
                                                               (gx#syntax-e
                                                                _%tl9841698529%_)))
                                                          (let ((_%tl9841998539%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e9841798532%_)))
                        (_%hd9841898536%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9841798532%_))))
                    (if (gx#stx-pair? _%tl9841998539%_)
                        (let ((_%e9842098542%_ (gx#syntax-e _%tl9841998539%_)))
                          (let ((_%tl9842298549%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9842098542%_)))
                                (_%hd9842198546%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9842098542%_))))
                            (if (gx#stx-pair? _%tl9842298549%_)
                                (let ((_%e9842398552%_
                                       (gx#syntax-e _%tl9842298549%_)))
                                  (let ((_%tl9842598559%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9842398552%_)))
                                        (_%hd9842498556%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9842398552%_))))
                                    (if (gx#stx-null? _%tl9842598559%_)
                                        (_%__kont104302104303%_
                                         _%hd9842498556%_
                                         _%hd9842198546%_
                                         _%hd9841898536%_
                                         _%exprs9840698518%_
                                         _%names9840798520%_
                                         _%hd9838898442%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9821798431%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9821798431%_)))))
                        (let () (declare (not safe)) (_%g9821798431%_)))))
                (let () (declare (not safe)) (_%g9821798431%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9821798431%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g9821798431%_))))))))
                        (_%loop9840098478%_ _%target9839798472%_ '() '()))))
                   (_%__match104410104411%_
                    (lambda (_%e9825999059%_
                             _%hd9826099063%_
                             _%tl9826199066%_
                             _%e9826299069%_
                             _%hd9826399073%_
                             _%tl9826499076%_
                             _%e9826599079%_
                             _%e9826699083%_
                             _%hd9826799087%_
                             _%tl9826899090%_
                             _%__splice104290104291%_
                             _%target9826999093%_
                             _%tl9827199096%_
                             _%e9827899099%_
                             _%hd9827999103%_
                             _%tl9828099106%_)
                      (letrec ((_%loop9827299109%_
                                (lambda (_%hd9827099113%_ _%exprs9827699116%_)
                                  (if (gx#stx-pair? _%hd9827099113%_)
                                      (let ((_%e9827399118%_
                                             (gx#syntax-e _%hd9827099113%_)))
                                        (let ((_%lp-tl9827599125%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9827399118%_)))
                                              (_%lp-hd9827499122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9827399118%_))))
                                          (_%loop9827299109%_
                                           _%lp-tl9827599125%_
                                           (cons _%lp-hd9827499122%_
                                                 _%exprs9827699116%_))))
                                      (let ((_%exprs9827799128%_
                                             (reverse _%exprs9827699116%_)))
                                        (_%__kont104288104289%_
                                         _%hd9827999103%_
                                         _%exprs9827799128%_
                                         _%hd9826799087%_
                                         _%hd9826099063%_))))))
                        (_%loop9827299109%_ _%target9826999093%_ '()))))
                   (_%__match104370104371%_
                    (lambda (_%e9822499174%_
                             _%hd9822599178%_
                             _%tl9822699181%_
                             _%e9822799184%_
                             _%hd9822899188%_
                             _%tl9822999191%_
                             _%e9823099194%_
                             _%e9823199198%_
                             _%hd9823299202%_
                             _%tl9823399205%_
                             _%__splice104286104287%_
                             _%target9823499208%_
                             _%tl9823699211%_
                             _%e9824399214%_
                             _%hd9824499218%_
                             _%tl9824599221%_
                             _%e9824699224%_
                             _%hd9824799228%_
                             _%tl9824899231%_
                             _%e9824999234%_
                             _%hd9825099238%_
                             _%tl9825199241%_
                             _%e9825299244%_
                             _%hd9825399248%_
                             _%tl9825499251%_)
                      (letrec ((_%loop9823799254%_
                                (lambda (_%hd9823599258%_ _%exprs9824199261%_)
                                  (if (gx#stx-pair? _%hd9823599258%_)
                                      (let ((_%e9823899263%_
                                             (gx#syntax-e _%hd9823599258%_)))
                                        (let ((_%lp-tl9824099270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9823899263%_)))
                                              (_%lp-hd9823999267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9823899263%_))))
                                          (_%loop9823799254%_
                                           _%lp-tl9824099270%_
                                           (cons _%lp-hd9823999267%_
                                                 _%exprs9824199261%_))))
                                      (let ((_%exprs9824299273%_
                                             (reverse _%exprs9824199261%_)))
                                        (_%__kont104284104285%_
                                         _%hd9825399248%_
                                         _%hd9825099238%_
                                         _%exprs9824299273%_
                                         _%hd9823299202%_
                                         _%hd9822599178%_))))))
                        (_%loop9823799254%_ _%target9823499208%_ '())))))
              (if (gx#stx-pair? _%__stx104281104282%_)
                  (let ((_%e9822499174%_ (gx#syntax-e _%__stx104281104282%_)))
                    (let ((_%tl9822699181%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e9822499174%_)))
                          (_%hd9822599178%_
                           (let ()
                             (declare (not safe))
                             (##car _%e9822499174%_))))
                      (if (gx#stx-pair? _%tl9822699181%_)
                          (let ((_%e9822799184%_
                                 (gx#syntax-e _%tl9822699181%_)))
                            (let ((_%tl9822999191%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e9822799184%_)))
                                  (_%hd9822899188%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e9822799184%_))))
                              (if (gx#stx-datum? _%hd9822899188%_)
                                  (let ((_%e9823099194%_
                                         (gx#stx-e _%hd9822899188%_)))
                                    (if (equal? _%e9823099194%_ '1)
                                        (if (gx#stx-pair? _%tl9822999191%_)
                                            (let ((_%e9823199198%_
                                                   (gx#syntax-e
                                                    _%tl9822999191%_)))
                                              (let ((_%tl9823399205%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9823199198%_)))
                                                    (_%hd9823299202%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9823199198%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl9823399205%_)
                                                    (if (let ((__tmp104728
                                                               (gx#stx-length
                                                                _%tl9823399205%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp104728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice104286104287%_
                       (gx#syntax-split-splice->vector _%tl9823399205%_ '2)))
                  (let ((_%tl9823699211%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice104286104287%_ '1)))
                        (_%target9823499208%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice104286104287%_ '0))))
                    (if (gx#stx-pair? _%tl9823699211%_)
                        (let ((_%e9824399214%_ (gx#syntax-e _%tl9823699211%_)))
                          (let ((_%tl9824599221%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9824399214%_)))
                                (_%hd9824499218%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9824399214%_))))
                            (if (gx#stx-pair? _%hd9824499218%_)
                                (let ((_%e9824699224%_
                                       (gx#syntax-e _%hd9824499218%_)))
                                  (let ((_%tl9824899231%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9824699224%_)))
                                        (_%hd9824799228%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9824699224%_))))
                                    (if (gx#identifier? _%hd9824799228%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g104729_|
                                             _%hd9824799228%_)
                                            (if (gx#stx-pair? _%tl9824899231%_)
                                                (let ((_%e9824999234%_
                                                       (gx#syntax-e
                                                        _%tl9824899231%_)))
                                                  (let ((_%tl9825199241%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e9824999234%_)))
                                                        (_%hd9825099238%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e9824999234%_))))
                                                    (if (gx#stx-null?
                                                         _%tl9825199241%_)
                                                        (if (gx#stx-pair?
                                                             _%tl9824599221%_)
                                                            (let ((_%e9825299244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl9824599221%_)))
                      (let ((_%tl9825499251%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9825299244%_)))
                            (_%hd9825399248%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9825299244%_))))
                        (if (gx#stx-null? _%tl9825499251%_)
                            (_%__match104370104371%_
                             _%e9822499174%_
                             _%hd9822599178%_
                             _%tl9822699181%_
                             _%e9822799184%_
                             _%hd9822899188%_
                             _%tl9822999191%_
                             _%e9823099194%_
                             _%e9823199198%_
                             _%hd9823299202%_
                             _%tl9823399205%_
                             _%__splice104286104287%_
                             _%target9823499208%_
                             _%tl9823699211%_
                             _%e9824399214%_
                             _%hd9824499218%_
                             _%tl9824599221%_
                             _%e9824699224%_
                             _%hd9824799228%_
                             _%tl9824899231%_
                             _%e9824999234%_
                             _%hd9825099238%_
                             _%tl9825199241%_
                             _%e9825299244%_
                             _%hd9825399248%_
                             _%tl9825499251%_)
                            (if (let ((__tmp104730
                                       (gx#stx-length _%tl9823399205%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp104730 '1))
                                (let ((_%__splice104290104291%_
                                       (gx#syntax-split-splice->vector
                                        _%tl9823399205%_
                                        '1)))
                                  (let ((_%tl9827199096%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice104290104291%_
                                            '1)))
                                        (_%target9826999093%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice104290104291%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl9827199096%_)
                                        (let ((_%e9827899099%_
                                               (gx#syntax-e _%tl9827199096%_)))
                                          (let ((_%tl9828099106%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e9827899099%_)))
                                                (_%hd9827999103%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e9827899099%_))))
                                            (if (gx#stx-null? _%tl9828099106%_)
                                                (_%__match104410104411%_
                                                 _%e9822499174%_
                                                 _%hd9822599178%_
                                                 _%tl9822699181%_
                                                 _%e9822799184%_
                                                 _%hd9822899188%_
                                                 _%tl9822999191%_
                                                 _%e9823099194%_
                                                 _%e9823199198%_
                                                 _%hd9823299202%_
                                                 _%tl9823399205%_
                                                 _%__splice104290104291%_
                                                 _%target9826999093%_
                                                 _%tl9827199096%_
                                                 _%e9827899099%_
                                                 _%hd9827999103%_
                                                 _%tl9828099106%_)
                                                (if (gx#stx-null?
                                                     _%tl9823399205%_)
                                                    (_%__kont104292104293%_
                                                     _%hd9823299202%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9821798431%_))))))
                                        (if (gx#stx-null? _%tl9823399205%_)
                                            (_%__kont104292104293%_
                                             _%hd9823299202%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g9821798431%_))))))
                                (if (gx#stx-null? _%tl9823399205%_)
                                    (_%__kont104292104293%_ _%hd9823299202%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g9821798431%_)))))))
                    (if (let ((__tmp104731 (gx#stx-length _%tl9823399205%_)))
                          (declare (not safe))
                          (##fx>= __tmp104731 '1))
                        (let ((_%__splice104290104291%_
                               (gx#syntax-split-splice->vector
                                _%tl9823399205%_
                                '1)))
                          (let ((_%tl9827199096%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice104290104291%_ '1)))
                                (_%target9826999093%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice104290104291%_
                                    '0))))
                            (if (gx#stx-pair? _%tl9827199096%_)
                                (let ((_%e9827899099%_
                                       (gx#syntax-e _%tl9827199096%_)))
                                  (let ((_%tl9828099106%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9827899099%_)))
                                        (_%hd9827999103%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9827899099%_))))
                                    (if (gx#stx-null? _%tl9828099106%_)
                                        (_%__match104410104411%_
                                         _%e9822499174%_
                                         _%hd9822599178%_
                                         _%tl9822699181%_
                                         _%e9822799184%_
                                         _%hd9822899188%_
                                         _%tl9822999191%_
                                         _%e9823099194%_
                                         _%e9823199198%_
                                         _%hd9823299202%_
                                         _%tl9823399205%_
                                         _%__splice104290104291%_
                                         _%target9826999093%_
                                         _%tl9827199096%_
                                         _%e9827899099%_
                                         _%hd9827999103%_
                                         _%tl9828099106%_)
                                        (if (gx#stx-null? _%tl9823399205%_)
                                            (_%__kont104292104293%_
                                             _%hd9823299202%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g9821798431%_))))))
                                (if (gx#stx-null? _%tl9823399205%_)
                                    (_%__kont104292104293%_ _%hd9823299202%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g9821798431%_))))))
                        (if (gx#stx-null? _%tl9823399205%_)
                            (_%__kont104292104293%_ _%hd9823299202%_)
                            (let () (declare (not safe)) (_%g9821798431%_)))))
                (if (let ((__tmp104732 (gx#stx-length _%tl9823399205%_)))
                      (declare (not safe))
                      (##fx>= __tmp104732 '1))
                    (let ((_%__splice104290104291%_
                           (gx#syntax-split-splice->vector
                            _%tl9823399205%_
                            '1)))
                      (let ((_%tl9827199096%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice104290104291%_ '1)))
                            (_%target9826999093%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice104290104291%_ '0))))
                        (if (gx#stx-pair? _%tl9827199096%_)
                            (let ((_%e9827899099%_
                                   (gx#syntax-e _%tl9827199096%_)))
                              (let ((_%tl9828099106%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9827899099%_)))
                                    (_%hd9827999103%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9827899099%_))))
                                (if (gx#stx-null? _%tl9828099106%_)
                                    (_%__match104410104411%_
                                     _%e9822499174%_
                                     _%hd9822599178%_
                                     _%tl9822699181%_
                                     _%e9822799184%_
                                     _%hd9822899188%_
                                     _%tl9822999191%_
                                     _%e9823099194%_
                                     _%e9823199198%_
                                     _%hd9823299202%_
                                     _%tl9823399205%_
                                     _%__splice104290104291%_
                                     _%target9826999093%_
                                     _%tl9827199096%_
                                     _%e9827899099%_
                                     _%hd9827999103%_
                                     _%tl9828099106%_)
                                    (if (gx#stx-null? _%tl9823399205%_)
                                        (_%__kont104292104293%_
                                         _%hd9823299202%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9821798431%_))))))
                            (if (gx#stx-null? _%tl9823399205%_)
                                (_%__kont104292104293%_ _%hd9823299202%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9821798431%_))))))
                    (if (gx#stx-null? _%tl9823399205%_)
                        (_%__kont104292104293%_ _%hd9823299202%_)
                        (let () (declare (not safe)) (_%g9821798431%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp104733
                                                           (gx#stx-length
                                                            _%tl9823399205%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp104733 '1))
                                                    (let ((_%__splice104290104291%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl9823399205%_
                                                            '1)))
                                                      (let ((_%tl9827199096%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice104290104291%_ '1)))
                    (_%target9826999093%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice104290104291%_ '0))))
                (if (gx#stx-pair? _%tl9827199096%_)
                    (let ((_%e9827899099%_ (gx#syntax-e _%tl9827199096%_)))
                      (let ((_%tl9828099106%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9827899099%_)))
                            (_%hd9827999103%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9827899099%_))))
                        (if (gx#stx-null? _%tl9828099106%_)
                            (_%__match104410104411%_
                             _%e9822499174%_
                             _%hd9822599178%_
                             _%tl9822699181%_
                             _%e9822799184%_
                             _%hd9822899188%_
                             _%tl9822999191%_
                             _%e9823099194%_
                             _%e9823199198%_
                             _%hd9823299202%_
                             _%tl9823399205%_
                             _%__splice104290104291%_
                             _%target9826999093%_
                             _%tl9827199096%_
                             _%e9827899099%_
                             _%hd9827999103%_
                             _%tl9828099106%_)
                            (if (gx#stx-null? _%tl9823399205%_)
                                (_%__kont104292104293%_ _%hd9823299202%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9821798431%_))))))
                    (if (gx#stx-null? _%tl9823399205%_)
                        (_%__kont104292104293%_ _%hd9823299202%_)
                        (let () (declare (not safe)) (_%g9821798431%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl9823399205%_)
                                                        (_%__kont104292104293%_
                                                         _%hd9823299202%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9821798431%_)))))
                                            (if (let ((__tmp104734
                                                       (gx#stx-length
                                                        _%tl9823399205%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp104734 '1))
                                                (let ((_%__splice104290104291%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl9823399205%_
                                                        '1)))
                                                  (let ((_%tl9827199096%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice104290104291%_
                                                            '1)))
                                                        (_%target9826999093%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice104290104291%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl9827199096%_)
                                                        (let ((_%e9827899099%_
                                                               (gx#syntax-e
                                                                _%tl9827199096%_)))
                                                          (let ((_%tl9828099106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e9827899099%_)))
                        (_%hd9827999103%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9827899099%_))))
                    (if (gx#stx-null? _%tl9828099106%_)
                        (_%__match104410104411%_
                         _%e9822499174%_
                         _%hd9822599178%_
                         _%tl9822699181%_
                         _%e9822799184%_
                         _%hd9822899188%_
                         _%tl9822999191%_
                         _%e9823099194%_
                         _%e9823199198%_
                         _%hd9823299202%_
                         _%tl9823399205%_
                         _%__splice104290104291%_
                         _%target9826999093%_
                         _%tl9827199096%_
                         _%e9827899099%_
                         _%hd9827999103%_
                         _%tl9828099106%_)
                        (if (gx#stx-null? _%tl9823399205%_)
                            (_%__kont104292104293%_ _%hd9823299202%_)
                            (let () (declare (not safe)) (_%g9821798431%_))))))
                (if (gx#stx-null? _%tl9823399205%_)
                    (_%__kont104292104293%_ _%hd9823299202%_)
                    (let () (declare (not safe)) (_%g9821798431%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl9823399205%_)
                                                    (_%__kont104292104293%_
                                                     _%hd9823299202%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9821798431%_)))))
                                        (if (let ((__tmp104735
                                                   (gx#stx-length
                                                    _%tl9823399205%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp104735 '1))
                                            (let ((_%__splice104290104291%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl9823399205%_
                                                    '1)))
                                              (let ((_%tl9827199096%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice104290104291%_
                                                        '1)))
                                                    (_%target9826999093%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice104290104291%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl9827199096%_)
                                                    (let ((_%e9827899099%_
                                                           (gx#syntax-e
                                                            _%tl9827199096%_)))
                                                      (let ((_%tl9828099106%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e9827899099%_)))
                    (_%hd9827999103%_
                     (let () (declare (not safe)) (##car _%e9827899099%_))))
                (if (gx#stx-null? _%tl9828099106%_)
                    (_%__match104410104411%_
                     _%e9822499174%_
                     _%hd9822599178%_
                     _%tl9822699181%_
                     _%e9822799184%_
                     _%hd9822899188%_
                     _%tl9822999191%_
                     _%e9823099194%_
                     _%e9823199198%_
                     _%hd9823299202%_
                     _%tl9823399205%_
                     _%__splice104290104291%_
                     _%target9826999093%_
                     _%tl9827199096%_
                     _%e9827899099%_
                     _%hd9827999103%_
                     _%tl9828099106%_)
                    (if (gx#stx-null? _%tl9823399205%_)
                        (_%__kont104292104293%_ _%hd9823299202%_)
                        (let () (declare (not safe)) (_%g9821798431%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl9823399205%_)
                                                        (_%__kont104292104293%_
                                                         _%hd9823299202%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9821798431%_))))))
                                            (if (gx#stx-null? _%tl9823399205%_)
                                                (_%__kont104292104293%_
                                                 _%hd9823299202%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9821798431%_)))))))
                                (if (let ((__tmp104736
                                           (gx#stx-length _%tl9823399205%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp104736 '1))
                                    (let ((_%__splice104290104291%_
                                           (gx#syntax-split-splice->vector
                                            _%tl9823399205%_
                                            '1)))
                                      (let ((_%tl9827199096%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice104290104291%_
                                                '1)))
                                            (_%target9826999093%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice104290104291%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl9827199096%_)
                                            (let ((_%e9827899099%_
                                                   (gx#syntax-e
                                                    _%tl9827199096%_)))
                                              (let ((_%tl9828099106%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9827899099%_)))
                                                    (_%hd9827999103%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9827899099%_))))
                                                (if (gx#stx-null?
                                                     _%tl9828099106%_)
                                                    (_%__match104410104411%_
                                                     _%e9822499174%_
                                                     _%hd9822599178%_
                                                     _%tl9822699181%_
                                                     _%e9822799184%_
                                                     _%hd9822899188%_
                                                     _%tl9822999191%_
                                                     _%e9823099194%_
                                                     _%e9823199198%_
                                                     _%hd9823299202%_
                                                     _%tl9823399205%_
                                                     _%__splice104290104291%_
                                                     _%target9826999093%_
                                                     _%tl9827199096%_
                                                     _%e9827899099%_
                                                     _%hd9827999103%_
                                                     _%tl9828099106%_)
                                                    (if (gx#stx-null?
                                                         _%tl9823399205%_)
                                                        (_%__kont104292104293%_
                                                         _%hd9823299202%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9821798431%_))))))
                                            (if (gx#stx-null? _%tl9823399205%_)
                                                (_%__kont104292104293%_
                                                 _%hd9823299202%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9821798431%_))))))
                                    (if (gx#stx-null? _%tl9823399205%_)
                                        (_%__kont104292104293%_
                                         _%hd9823299202%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9821798431%_)))))))
                        (if (let ((__tmp104737
                                   (gx#stx-length _%tl9823399205%_)))
                              (declare (not safe))
                              (##fx>= __tmp104737 '1))
                            (let ((_%__splice104290104291%_
                                   (gx#syntax-split-splice->vector
                                    _%tl9823399205%_
                                    '1)))
                              (let ((_%tl9827199096%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice104290104291%_
                                        '1)))
                                    (_%target9826999093%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice104290104291%_
                                        '0))))
                                (if (gx#stx-pair? _%tl9827199096%_)
                                    (let ((_%e9827899099%_
                                           (gx#syntax-e _%tl9827199096%_)))
                                      (let ((_%tl9828099106%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9827899099%_)))
                                            (_%hd9827999103%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9827899099%_))))
                                        (if (gx#stx-null? _%tl9828099106%_)
                                            (_%__match104410104411%_
                                             _%e9822499174%_
                                             _%hd9822599178%_
                                             _%tl9822699181%_
                                             _%e9822799184%_
                                             _%hd9822899188%_
                                             _%tl9822999191%_
                                             _%e9823099194%_
                                             _%e9823199198%_
                                             _%hd9823299202%_
                                             _%tl9823399205%_
                                             _%__splice104290104291%_
                                             _%target9826999093%_
                                             _%tl9827199096%_
                                             _%e9827899099%_
                                             _%hd9827999103%_
                                             _%tl9828099106%_)
                                            (if (gx#stx-null? _%tl9823399205%_)
                                                (_%__kont104292104293%_
                                                 _%hd9823299202%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9821798431%_))))))
                                    (if (gx#stx-null? _%tl9823399205%_)
                                        (_%__kont104292104293%_
                                         _%hd9823299202%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9821798431%_))))))
                            (if (gx#stx-null? _%tl9823399205%_)
                                (_%__kont104292104293%_ _%hd9823299202%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9821798431%_)))))))
                (if (let ((__tmp104738 (gx#stx-length _%tl9823399205%_)))
                      (declare (not safe))
                      (##fx>= __tmp104738 '1))
                    (let ((_%__splice104290104291%_
                           (gx#syntax-split-splice->vector
                            _%tl9823399205%_
                            '1)))
                      (let ((_%tl9827199096%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice104290104291%_ '1)))
                            (_%target9826999093%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice104290104291%_ '0))))
                        (if (gx#stx-pair? _%tl9827199096%_)
                            (let ((_%e9827899099%_
                                   (gx#syntax-e _%tl9827199096%_)))
                              (let ((_%tl9828099106%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9827899099%_)))
                                    (_%hd9827999103%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9827899099%_))))
                                (if (gx#stx-null? _%tl9828099106%_)
                                    (_%__match104410104411%_
                                     _%e9822499174%_
                                     _%hd9822599178%_
                                     _%tl9822699181%_
                                     _%e9822799184%_
                                     _%hd9822899188%_
                                     _%tl9822999191%_
                                     _%e9823099194%_
                                     _%e9823199198%_
                                     _%hd9823299202%_
                                     _%tl9823399205%_
                                     _%__splice104290104291%_
                                     _%target9826999093%_
                                     _%tl9827199096%_
                                     _%e9827899099%_
                                     _%hd9827999103%_
                                     _%tl9828099106%_)
                                    (if (gx#stx-null? _%tl9823399205%_)
                                        (_%__kont104292104293%_
                                         _%hd9823299202%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9821798431%_))))))
                            (if (gx#stx-null? _%tl9823399205%_)
                                (_%__kont104292104293%_ _%hd9823299202%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9821798431%_))))))
                    (if (gx#stx-null? _%tl9823399205%_)
                        (_%__kont104292104293%_ _%hd9823299202%_)
                        (let () (declare (not safe)) (_%g9821798431%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl9823399205%_)
                                                        (_%__kont104292104293%_
                                                         _%hd9823299202%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9821798431%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g9821798431%_)))
                                        (if (equal? _%e9823099194%_ '2)
                                            (if (gx#stx-pair? _%tl9822999191%_)
                                                (let ((_%e9830598899%_
                                                       (gx#syntax-e
                                                        _%tl9822999191%_)))
                                                  (let ((_%tl9830798906%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e9830598899%_)))
                                                        (_%hd9830698903%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e9830598899%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl9830798906%_)
                                                        (let ((_%e9830898909%_
                                                               (gx#syntax-e
                                                                _%tl9830798906%_)))
                                                          (let ((_%tl9831098916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e9830898909%_)))
                        (_%hd9830998913%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9830898909%_))))
                    (if (gx#stx-pair? _%hd9830998913%_)
                        (let ((_%e9831198919%_ (gx#syntax-e _%hd9830998913%_)))
                          (let ((_%tl9831398926%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9831198919%_)))
                                (_%hd9831298923%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9831198919%_))))
                            (if (gx#stx-pair? _%hd9831298923%_)
                                (let ((_%e9831498929%_
                                       (gx#syntax-e _%hd9831298923%_)))
                                  (let ((_%tl9831698936%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9831498929%_)))
                                        (_%hd9831598933%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9831498929%_))))
                                    (if (gx#identifier? _%hd9831598933%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g104739_|
                                             _%hd9831598933%_)
                                            (if (gx#stx-pair? _%tl9831698936%_)
                                                (let ((_%e9831798939%_
                                                       (gx#syntax-e
                                                        _%tl9831698936%_)))
                                                  (let ((_%tl9831998946%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e9831798939%_)))
                                                        (_%hd9831898943%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e9831798939%_))))
                                                    (if (gx#stx-null?
                                                         _%tl9831998946%_)
                                                        (if (gx#stx-pair?
                                                             _%tl9831398926%_)
                                                            (let ((_%e9832098949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl9831398926%_)))
                      (let ((_%tl9832298956%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9832098949%_)))
                            (_%hd9832198953%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9832098949%_))))
                        (_%__kont104294104295%_
                         _%tl9831098916%_
                         _%tl9832298956%_
                         _%hd9832198953%_
                         _%hd9831898943%_
                         _%hd9830698903%_
                         _%hd9822599178%_)))
                    (_%__kont104296104297%_
                     _%tl9831098916%_
                     _%tl9831398926%_
                     _%hd9831298923%_
                     _%hd9830698903%_
                     _%hd9822599178%_))
                (_%__kont104296104297%_
                 _%tl9831098916%_
                 _%tl9831398926%_
                 _%hd9831298923%_
                 _%hd9830698903%_
                 _%hd9822599178%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont104296104297%_
                                                 _%tl9831098916%_
                                                 _%tl9831398926%_
                                                 _%hd9831298923%_
                                                 _%hd9830698903%_
                                                 _%hd9822599178%_))
                                            (_%__kont104296104297%_
                                             _%tl9831098916%_
                                             _%tl9831398926%_
                                             _%hd9831298923%_
                                             _%hd9830698903%_
                                             _%hd9822599178%_))
                                        (_%__kont104296104297%_
                                         _%tl9831098916%_
                                         _%tl9831398926%_
                                         _%hd9831298923%_
                                         _%hd9830698903%_
                                         _%hd9822599178%_))))
                                (_%__kont104296104297%_
                                 _%tl9831098916%_
                                 _%tl9831398926%_
                                 _%hd9831298923%_
                                 _%hd9830698903%_
                                 _%hd9822599178%_))))
                        (if (gx#stx-null? _%hd9830998913%_)
                            (_%__kont104298104299%_
                             _%tl9831098916%_
                             _%hd9830698903%_
                             _%hd9822599178%_)
                            (let () (declare (not safe)) (_%g9821798431%_))))))
                (let () (declare (not safe)) (_%g9821798431%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9821798431%_)))
                                            (if (equal? _%e9823099194%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl9822999191%_)
                                                    (let ((_%e9837298648%_
                                                           (gx#syntax-e
                                                            _%tl9822999191%_)))
                                                      (let ((_%tl9837498655%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e9837298648%_)))
                    (_%hd9837398652%_
                     (let () (declare (not safe)) (##car _%e9837298648%_))))
                (if (gx#stx-pair? _%tl9837498655%_)
                    (let ((_%e9837598658%_ (gx#syntax-e _%tl9837498655%_)))
                      (let ((_%tl9837798665%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9837598658%_)))
                            (_%hd9837698662%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9837598658%_))))
                        (if (gx#stx-pair? _%hd9837698662%_)
                            (let ((_%e9837898668%_
                                   (gx#syntax-e _%hd9837698662%_)))
                              (let ((_%tl9838098675%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9837898668%_)))
                                    (_%hd9837998672%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9837898668%_))))
                                (_%__kont104300104301%_
                                 _%tl9837798665%_
                                 _%tl9838098675%_
                                 _%hd9837998672%_
                                 _%hd9837398652%_
                                 _%hd9822599178%_)))
                            (if (gx#stx-pair/null? _%hd9837398652%_)
                                (let ((_%__splice104304104305%_
                                       (gx#syntax-split-splice->vector
                                        _%hd9837398652%_
                                        '0)))
                                  (let ((_%tl9839998475%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice104304104305%_
                                            '1)))
                                        (_%target9839798472%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice104304104305%_
                                            '0))))
                                    (if (gx#stx-null? _%tl9839998475%_)
                                        (_%__match104632104633%_
                                         _%e9822499174%_
                                         _%hd9822599178%_
                                         _%tl9822699181%_
                                         _%e9822799184%_
                                         _%hd9822899188%_
                                         _%tl9822999191%_
                                         _%e9823099194%_
                                         _%e9837298648%_
                                         _%hd9837398652%_
                                         _%tl9837498655%_
                                         _%__splice104304104305%_
                                         _%target9839798472%_
                                         _%tl9839998475%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9821798431%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9821798431%_))))))
                    (if (gx#stx-pair/null? _%hd9837398652%_)
                        (let ((_%__splice104304104305%_
                               (gx#syntax-split-splice->vector
                                _%hd9837398652%_
                                '0)))
                          (let ((_%tl9839998475%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice104304104305%_ '1)))
                                (_%target9839798472%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice104304104305%_
                                    '0))))
                            (if (gx#stx-null? _%tl9839998475%_)
                                (_%__match104632104633%_
                                 _%e9822499174%_
                                 _%hd9822599178%_
                                 _%tl9822699181%_
                                 _%e9822799184%_
                                 _%hd9822899188%_
                                 _%tl9822999191%_
                                 _%e9823099194%_
                                 _%e9837298648%_
                                 _%hd9837398652%_
                                 _%tl9837498655%_
                                 _%__splice104304104305%_
                                 _%target9839798472%_
                                 _%tl9839998475%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9821798431%_)))))
                        (let () (declare (not safe)) (_%g9821798431%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9821798431%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9821798431%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g9821798431%_)))))
                          (let () (declare (not safe)) (_%g9821798431%_)))))
                  (let () (declare (not safe)) (_%g9821798431%_))))))))))
