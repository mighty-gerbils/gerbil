(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g119058_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id118340%_)
       (arg . _%arg118403%_)
       (arg118316 . _%arg118316118387%_)
       (arg118315 . _%arg118315118373%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g119059_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g119058_|)))
  (define |[1]#_g119061_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g119062_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g119061_|)))
  (define |[1]#_g119063_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id118474%_)
       (arg118451 . _%arg118451118521%_)
       (arg . _%arg118537%_)
       (arg118450 . _%arg118450118507%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g119064_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g119063_|)))
  (define |[1]#_g119066_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g119067_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g119066_|)))
  (define |[1]#_g119068_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id118608%_)
       (arg . _%arg118671%_)
       (arg118585 . _%arg118585118655%_)
       (arg118584 . _%arg118584118641%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g119069_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g119068_|)))
  (define |[1]#_g119071_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g119072_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g119071_|)))
  (begin
    (define |[:0:]#@make-promise|
      (lambda (_%$stx118297%_)
        (let* ((_%__stx118967118968%_ _%$stx118297%_)
               (_%g118302118323%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx118967118968%_))))
          (let ((_%__kont118970118971%_
                 (lambda (_%g118304118389%_)
                   (cons (gx#datum->syntax
                          |[1]#_g119059_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp119060
                                                  (lambda (_%g118404118407%_
                                                           _%g118405118410%_)
                                                    (cons _%g118404118407%_
                                                          _%g118405118410%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp119060
                                              '()
                                              _%g118304118389%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g119062_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'thunk)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':procedure) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__make-promise)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'thunk)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont118974118975%_
                 (lambda (_%g118317118330%_)
                   (gx#datum->syntax '#f 'make-promise))))
            (let* ((_%g118301118342%_
                    (lambda ()
                      (let ((_%g118317118330%_ _%__stx118967118968%_))
                        (if (gx#identifier? _%g118317118330%_)
                            (_%__kont118974118975%_ _%g118317118330%_)
                            (let ()
                              (declare (not safe))
                              (_%g118302118323%_))))))
                   (_%__match118990118991%_
                    (lambda (_%e118305118349%_
                             _%hd118306118353%_
                             _%tl118307118356%_
                             _%__splice118972118973%_
                             _%target118308118359%_
                             _%tl118310118362%_)
                      (letrec ((_%loop118311118365%_
                                (lambda (_%hd118309118369%_
                                         _%arg118315118372%_)
                                  (if (gx#stx-pair? _%hd118309118369%_)
                                      (let ((_%e118312118375%_
                                             (gx#syntax-e _%hd118309118369%_)))
                                        (let ((_%lp-tl118314118382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e118312118375%_)))
                                              (_%lp-hd118313118379%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e118312118375%_))))
                                          (_%loop118311118365%_
                                           _%lp-tl118314118382%_
                                           (cons _%lp-hd118313118379%_
                                                 _%arg118315118372%_))))
                                      (let ((_%arg118316118385%_
                                             (reverse _%arg118315118372%_)))
                                        (_%__kont118970118971%_
                                         _%arg118316118385%_))))))
                        (_%loop118311118365%_ _%target118308118359%_ '())))))
              (if (gx#stx-pair? _%__stx118967118968%_)
                  (let ((_%e118305118349%_
                         (gx#syntax-e _%__stx118967118968%_)))
                    (let ((_%tl118307118356%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e118305118349%_)))
                          (_%hd118306118353%_
                           (let ()
                             (declare (not safe))
                             (##car _%e118305118349%_))))
                      (if (gx#stx-pair/null? _%tl118307118356%_)
                          (let ((_%__splice118972118973%_
                                 (gx#syntax-split-splice->vector
                                  _%tl118307118356%_
                                  '0)))
                            (let ((_%tl118310118362%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice118972118973%_
                                      '1)))
                                  (_%target118308118359%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice118972118973%_
                                      '0))))
                              (if (gx#stx-null? _%tl118310118362%_)
                                  (_%__match118990118991%_
                                   _%e118305118349%_
                                   _%hd118306118353%_
                                   _%tl118307118356%_
                                   _%__splice118972118973%_
                                   _%target118308118359%_
                                   _%tl118310118362%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g118301118342%_)))))
                          (let () (declare (not safe)) (_%g118301118342%_)))))
                  (let () (declare (not safe)) (_%g118301118342%_))))))))
    (define |[:0:]#@make-atomic-promise|
      (lambda (_%$stx118432%_)
        (let* ((_%__stx118993118994%_ _%$stx118432%_)
               (_%g118437118458%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx118993118994%_))))
          (let ((_%__kont118996118997%_
                 (lambda (_%g118439118523%_)
                   (cons (gx#datum->syntax
                          |[1]#_g119064_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp119065
                                                  (lambda (_%g118538118541%_
                                                           _%g118539118544%_)
                                                    (cons _%g118538118541%_
                                                          _%g118539118544%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp119065
                                              '()
                                              _%g118439118523%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g119067_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'thunk)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':procedure) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__make-atomic-promise)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'thunk)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont119000119001%_
                 (lambda (_%g118452118465%_)
                   (gx#datum->syntax '#f 'make-atomic-promise))))
            (let* ((_%g118436118476%_
                    (lambda ()
                      (let ((_%g118452118465%_ _%__stx118993118994%_))
                        (if (gx#identifier? _%g118452118465%_)
                            (_%__kont119000119001%_ _%g118452118465%_)
                            (let ()
                              (declare (not safe))
                              (_%g118437118458%_))))))
                   (_%__match119016119017%_
                    (lambda (_%e118440118483%_
                             _%hd118441118487%_
                             _%tl118442118490%_
                             _%__splice118998118999%_
                             _%target118443118493%_
                             _%tl118445118496%_)
                      (letrec ((_%loop118446118499%_
                                (lambda (_%hd118444118503%_
                                         _%arg118450118506%_)
                                  (if (gx#stx-pair? _%hd118444118503%_)
                                      (let ((_%e118447118509%_
                                             (gx#syntax-e _%hd118444118503%_)))
                                        (let ((_%lp-tl118449118516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e118447118509%_)))
                                              (_%lp-hd118448118513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e118447118509%_))))
                                          (_%loop118446118499%_
                                           _%lp-tl118449118516%_
                                           (cons _%lp-hd118448118513%_
                                                 _%arg118450118506%_))))
                                      (let ((_%arg118451118519%_
                                             (reverse _%arg118450118506%_)))
                                        (_%__kont118996118997%_
                                         _%arg118451118519%_))))))
                        (_%loop118446118499%_ _%target118443118493%_ '())))))
              (if (gx#stx-pair? _%__stx118993118994%_)
                  (let ((_%e118440118483%_
                         (gx#syntax-e _%__stx118993118994%_)))
                    (let ((_%tl118442118490%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e118440118483%_)))
                          (_%hd118441118487%_
                           (let ()
                             (declare (not safe))
                             (##car _%e118440118483%_))))
                      (if (gx#stx-pair/null? _%tl118442118490%_)
                          (let ((_%__splice118998118999%_
                                 (gx#syntax-split-splice->vector
                                  _%tl118442118490%_
                                  '0)))
                            (let ((_%tl118445118496%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice118998118999%_
                                      '1)))
                                  (_%target118443118493%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice118998118999%_
                                      '0))))
                              (if (gx#stx-null? _%tl118445118496%_)
                                  (_%__match119016119017%_
                                   _%e118440118483%_
                                   _%hd118441118487%_
                                   _%tl118442118490%_
                                   _%__splice118998118999%_
                                   _%target118443118493%_
                                   _%tl118445118496%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g118436118476%_)))))
                          (let () (declare (not safe)) (_%g118436118476%_)))))
                  (let () (declare (not safe)) (_%g118436118476%_))))))))
    (define |[:0:]#@with-unwind-protect|
      (lambda (_%$stx118566%_)
        (let* ((_%__stx119019119020%_ _%$stx118566%_)
               (_%g118571118592%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx119019119020%_))))
          (let ((_%__kont119022119023%_
                 (lambda (_%g118573118657%_)
                   (cons (gx#datum->syntax
                          |[1]#_g119069_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'K)
                                           (cons (gx#datum->syntax '#f 'fini)
                                                 '()))
                                     (cons (let ((__tmp119070
                                                  (lambda (_%g118672118675%_
                                                           _%g118673118678%_)
                                                    (cons _%g118672118675%_
                                                          _%g118673118678%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp119070
                                              '()
                                              _%g118573118657%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g119072_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'K)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':procedure) '())))
               (cons (cons (gx#datum->syntax '#f 'fini)
                           (cons (gx#datum->syntax '#f ':)
                                 (cons (gx#datum->syntax '#f ':procedure)
                                       '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__with-unwind-protect)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'K)
                           (cons (gx#datum->syntax '#f 'fini) '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont119026119027%_
                 (lambda (_%g118586118599%_)
                   (gx#datum->syntax '#f 'with-unwind-protect))))
            (let* ((_%g118570118610%_
                    (lambda ()
                      (let ((_%g118586118599%_ _%__stx119019119020%_))
                        (if (gx#identifier? _%g118586118599%_)
                            (_%__kont119026119027%_ _%g118586118599%_)
                            (let ()
                              (declare (not safe))
                              (_%g118571118592%_))))))
                   (_%__match119042119043%_
                    (lambda (_%e118574118617%_
                             _%hd118575118621%_
                             _%tl118576118624%_
                             _%__splice119024119025%_
                             _%target118577118627%_
                             _%tl118579118630%_)
                      (letrec ((_%loop118580118633%_
                                (lambda (_%hd118578118637%_
                                         _%arg118584118640%_)
                                  (if (gx#stx-pair? _%hd118578118637%_)
                                      (let ((_%e118581118643%_
                                             (gx#syntax-e _%hd118578118637%_)))
                                        (let ((_%lp-tl118583118650%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e118581118643%_)))
                                              (_%lp-hd118582118647%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e118581118643%_))))
                                          (_%loop118580118633%_
                                           _%lp-tl118583118650%_
                                           (cons _%lp-hd118582118647%_
                                                 _%arg118584118640%_))))
                                      (let ((_%arg118585118653%_
                                             (reverse _%arg118584118640%_)))
                                        (_%__kont119022119023%_
                                         _%arg118585118653%_))))))
                        (_%loop118580118633%_ _%target118577118627%_ '())))))
              (if (gx#stx-pair? _%__stx119019119020%_)
                  (let ((_%e118574118617%_
                         (gx#syntax-e _%__stx119019119020%_)))
                    (let ((_%tl118576118624%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e118574118617%_)))
                          (_%hd118575118621%_
                           (let ()
                             (declare (not safe))
                             (##car _%e118574118617%_))))
                      (if (gx#stx-pair/null? _%tl118576118624%_)
                          (let ((_%__splice119024119025%_
                                 (gx#syntax-split-splice->vector
                                  _%tl118576118624%_
                                  '0)))
                            (let ((_%tl118579118630%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119024119025%_
                                      '1)))
                                  (_%target118577118627%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119024119025%_
                                      '0))))
                              (if (gx#stx-null? _%tl118579118630%_)
                                  (_%__match119042119043%_
                                   _%e118574118617%_
                                   _%hd118575118621%_
                                   _%tl118576118624%_
                                   _%__splice119024119025%_
                                   _%target118577118627%_
                                   _%tl118579118630%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g118570118610%_)))))
                          (let () (declare (not safe)) (_%g118570118610%_)))))
                  (let () (declare (not safe)) (_%g118570118610%_))))))))))
