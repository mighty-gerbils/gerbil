(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g117076_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg116421%_)
       (id . _%id116358%_)
       (arg116334 . _%arg116334116405%_)
       (arg116333 . _%arg116333116391%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g117077_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g117076_|)))
  (define |[1]#_g117079_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g117080_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g117079_|)))
  (define |[1]#_g117081_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg116555%_)
       (id . _%id116492%_)
       (arg116469 . _%arg116469116539%_)
       (arg116468 . _%arg116468116525%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g117082_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g117081_|)))
  (define |[1]#_g117084_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g117085_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g117084_|)))
  (define |[1]#_g117086_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg116689%_)
       (arg116603 . _%arg116603116673%_)
       (id . _%id116626%_)
       (arg116602 . _%arg116602116659%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g117087_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g117086_|)))
  (define |[1]#_g117089_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g117090_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g117089_|)))
  (begin
    (define |[:0:]#@make-promise|
      (lambda (_%$stx116315%_)
        (let* ((_%__stx116985116986%_ _%$stx116315%_)
               (_%g116320116341%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx116985116986%_))))
          (let ((_%__kont116988116989%_
                 (lambda (_%g116322116407%_)
                   (cons (gx#datum->syntax
                          |[1]#_g117077_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp117078
                                                  (lambda (_%g116422116425%_
                                                           _%g116423116428%_)
                                                    (cons _%g116422116425%_
                                                          _%g116423116428%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp117078
                                              '()
                                              _%g116322116407%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g117080_|
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
                (_%__kont116992116993%_
                 (lambda (_%g116335116348%_)
                   (gx#datum->syntax '#f 'make-promise))))
            (let* ((_%g116319116360%_
                    (lambda ()
                      (let ((_%g116335116348%_ _%__stx116985116986%_))
                        (if (gx#identifier? _%g116335116348%_)
                            (_%__kont116992116993%_ _%g116335116348%_)
                            (let ()
                              (declare (not safe))
                              (_%g116320116341%_))))))
                   (_%__match117008117009%_
                    (lambda (_%e116323116367%_
                             _%hd116324116371%_
                             _%tl116325116374%_
                             _%__splice116990116991%_
                             _%target116326116377%_
                             _%tl116328116380%_)
                      (letrec ((_%loop116329116383%_
                                (lambda (_%hd116327116387%_
                                         _%arg116333116390%_)
                                  (if (gx#stx-pair? _%hd116327116387%_)
                                      (let ((_%e116330116393%_
                                             (gx#syntax-e _%hd116327116387%_)))
                                        (let ((_%lp-tl116332116400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e116330116393%_)))
                                              (_%lp-hd116331116397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e116330116393%_))))
                                          (_%loop116329116383%_
                                           _%lp-tl116332116400%_
                                           (cons _%lp-hd116331116397%_
                                                 _%arg116333116390%_))))
                                      (let ((_%arg116334116403%_
                                             (reverse _%arg116333116390%_)))
                                        (_%__kont116988116989%_
                                         _%arg116334116403%_))))))
                        (_%loop116329116383%_ _%target116326116377%_ '())))))
              (if (gx#stx-pair? _%__stx116985116986%_)
                  (let ((_%e116323116367%_
                         (gx#syntax-e _%__stx116985116986%_)))
                    (let ((_%tl116325116374%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e116323116367%_)))
                          (_%hd116324116371%_
                           (let ()
                             (declare (not safe))
                             (##car _%e116323116367%_))))
                      (if (gx#stx-pair/null? _%tl116325116374%_)
                          (let ((_%__splice116990116991%_
                                 (gx#syntax-split-splice->vector
                                  _%tl116325116374%_
                                  '0)))
                            (let ((_%tl116328116380%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice116990116991%_
                                      '1)))
                                  (_%target116326116377%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice116990116991%_
                                      '0))))
                              (if (gx#stx-null? _%tl116328116380%_)
                                  (_%__match117008117009%_
                                   _%e116323116367%_
                                   _%hd116324116371%_
                                   _%tl116325116374%_
                                   _%__splice116990116991%_
                                   _%target116326116377%_
                                   _%tl116328116380%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g116319116360%_)))))
                          (let () (declare (not safe)) (_%g116319116360%_)))))
                  (let () (declare (not safe)) (_%g116319116360%_))))))))
    (define |[:0:]#@make-atomic-promise|
      (lambda (_%$stx116450%_)
        (let* ((_%__stx117011117012%_ _%$stx116450%_)
               (_%g116455116476%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx117011117012%_))))
          (let ((_%__kont117014117015%_
                 (lambda (_%g116457116541%_)
                   (cons (gx#datum->syntax
                          |[1]#_g117082_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp117083
                                                  (lambda (_%g116556116559%_
                                                           _%g116557116562%_)
                                                    (cons _%g116556116559%_
                                                          _%g116557116562%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp117083
                                              '()
                                              _%g116457116541%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g117085_|
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
                (_%__kont117018117019%_
                 (lambda (_%g116470116483%_)
                   (gx#datum->syntax '#f 'make-atomic-promise))))
            (let* ((_%g116454116494%_
                    (lambda ()
                      (let ((_%g116470116483%_ _%__stx117011117012%_))
                        (if (gx#identifier? _%g116470116483%_)
                            (_%__kont117018117019%_ _%g116470116483%_)
                            (let ()
                              (declare (not safe))
                              (_%g116455116476%_))))))
                   (_%__match117034117035%_
                    (lambda (_%e116458116501%_
                             _%hd116459116505%_
                             _%tl116460116508%_
                             _%__splice117016117017%_
                             _%target116461116511%_
                             _%tl116463116514%_)
                      (letrec ((_%loop116464116517%_
                                (lambda (_%hd116462116521%_
                                         _%arg116468116524%_)
                                  (if (gx#stx-pair? _%hd116462116521%_)
                                      (let ((_%e116465116527%_
                                             (gx#syntax-e _%hd116462116521%_)))
                                        (let ((_%lp-tl116467116534%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e116465116527%_)))
                                              (_%lp-hd116466116531%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e116465116527%_))))
                                          (_%loop116464116517%_
                                           _%lp-tl116467116534%_
                                           (cons _%lp-hd116466116531%_
                                                 _%arg116468116524%_))))
                                      (let ((_%arg116469116537%_
                                             (reverse _%arg116468116524%_)))
                                        (_%__kont117014117015%_
                                         _%arg116469116537%_))))))
                        (_%loop116464116517%_ _%target116461116511%_ '())))))
              (if (gx#stx-pair? _%__stx117011117012%_)
                  (let ((_%e116458116501%_
                         (gx#syntax-e _%__stx117011117012%_)))
                    (let ((_%tl116460116508%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e116458116501%_)))
                          (_%hd116459116505%_
                           (let ()
                             (declare (not safe))
                             (##car _%e116458116501%_))))
                      (if (gx#stx-pair/null? _%tl116460116508%_)
                          (let ((_%__splice117016117017%_
                                 (gx#syntax-split-splice->vector
                                  _%tl116460116508%_
                                  '0)))
                            (let ((_%tl116463116514%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117016117017%_
                                      '1)))
                                  (_%target116461116511%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117016117017%_
                                      '0))))
                              (if (gx#stx-null? _%tl116463116514%_)
                                  (_%__match117034117035%_
                                   _%e116458116501%_
                                   _%hd116459116505%_
                                   _%tl116460116508%_
                                   _%__splice117016117017%_
                                   _%target116461116511%_
                                   _%tl116463116514%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g116454116494%_)))))
                          (let () (declare (not safe)) (_%g116454116494%_)))))
                  (let () (declare (not safe)) (_%g116454116494%_))))))))
    (define |[:0:]#@with-unwind-protect|
      (lambda (_%$stx116584%_)
        (let* ((_%__stx117037117038%_ _%$stx116584%_)
               (_%g116589116610%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx117037117038%_))))
          (let ((_%__kont117040117041%_
                 (lambda (_%g116591116675%_)
                   (cons (gx#datum->syntax
                          |[1]#_g117087_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'K)
                                           (cons (gx#datum->syntax '#f 'fini)
                                                 '()))
                                     (cons (let ((__tmp117088
                                                  (lambda (_%g116690116693%_
                                                           _%g116691116696%_)
                                                    (cons _%g116690116693%_
                                                          _%g116691116696%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp117088
                                              '()
                                              _%g116591116675%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g117090_|
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
                (_%__kont117044117045%_
                 (lambda (_%g116604116617%_)
                   (gx#datum->syntax '#f 'with-unwind-protect))))
            (let* ((_%g116588116628%_
                    (lambda ()
                      (let ((_%g116604116617%_ _%__stx117037117038%_))
                        (if (gx#identifier? _%g116604116617%_)
                            (_%__kont117044117045%_ _%g116604116617%_)
                            (let ()
                              (declare (not safe))
                              (_%g116589116610%_))))))
                   (_%__match117060117061%_
                    (lambda (_%e116592116635%_
                             _%hd116593116639%_
                             _%tl116594116642%_
                             _%__splice117042117043%_
                             _%target116595116645%_
                             _%tl116597116648%_)
                      (letrec ((_%loop116598116651%_
                                (lambda (_%hd116596116655%_
                                         _%arg116602116658%_)
                                  (if (gx#stx-pair? _%hd116596116655%_)
                                      (let ((_%e116599116661%_
                                             (gx#syntax-e _%hd116596116655%_)))
                                        (let ((_%lp-tl116601116668%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e116599116661%_)))
                                              (_%lp-hd116600116665%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e116599116661%_))))
                                          (_%loop116598116651%_
                                           _%lp-tl116601116668%_
                                           (cons _%lp-hd116600116665%_
                                                 _%arg116602116658%_))))
                                      (let ((_%arg116603116671%_
                                             (reverse _%arg116602116658%_)))
                                        (_%__kont117040117041%_
                                         _%arg116603116671%_))))))
                        (_%loop116598116651%_ _%target116595116645%_ '())))))
              (if (gx#stx-pair? _%__stx117037117038%_)
                  (let ((_%e116592116635%_
                         (gx#syntax-e _%__stx117037117038%_)))
                    (let ((_%tl116594116642%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e116592116635%_)))
                          (_%hd116593116639%_
                           (let ()
                             (declare (not safe))
                             (##car _%e116592116635%_))))
                      (if (gx#stx-pair/null? _%tl116594116642%_)
                          (let ((_%__splice117042117043%_
                                 (gx#syntax-split-splice->vector
                                  _%tl116594116642%_
                                  '0)))
                            (let ((_%tl116597116648%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117042117043%_
                                      '1)))
                                  (_%target116595116645%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117042117043%_
                                      '0))))
                              (if (gx#stx-null? _%tl116597116648%_)
                                  (_%__match117060117061%_
                                   _%e116592116635%_
                                   _%hd116593116639%_
                                   _%tl116594116642%_
                                   _%__splice117042117043%_
                                   _%target116595116645%_
                                   _%tl116597116648%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g116588116628%_)))))
                          (let () (declare (not safe)) (_%g116588116628%_)))))
                  (let () (declare (not safe)) (_%g116588116628%_))))))))))
