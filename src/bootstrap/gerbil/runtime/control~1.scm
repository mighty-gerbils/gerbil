(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g118238_|
    (gx#core-deserialize-mark
     '(0
       (arg117495 . _%arg117495117553%_)
       (arg117496 . _%arg117496117567%_)
       (arg . _%arg117583%_)
       (id . _%id117520%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g118239_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g118238_|)))
  (define |[1]#_g118241_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g118242_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g118241_|)))
  (define |[1]#_g118243_|
    (gx#core-deserialize-mark
     '(0
       (arg117631 . _%arg117631117701%_)
       (arg . _%arg117717%_)
       (id . _%id117654%_)
       (arg117630 . _%arg117630117687%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g118244_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g118243_|)))
  (define |[1]#_g118246_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g118247_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g118246_|)))
  (define |[1]#_g118248_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg117851%_)
       (arg117764 . _%arg117764117821%_)
       (id . _%id117788%_)
       (arg117765 . _%arg117765117835%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g118249_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g118248_|)))
  (define |[1]#_g118251_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g118252_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g118251_|)))
  (begin
    (define |[:0:]#@make-promise|
      (lambda (_%$stx117477%_)
        (let* ((_%__stx118147118148%_ _%$stx117477%_)
               (_%g117482117503%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx118147118148%_))))
          (let ((_%__kont118150118151%_
                 (lambda (_%g117484117569%_)
                   (cons (gx#datum->syntax
                          |[1]#_g118239_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp118240
                                                  (lambda (_%g117584117587%_
                                                           _%g117585117590%_)
                                                    (cons _%g117584117587%_
                                                          _%g117585117590%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp118240
                                              '()
                                              _%g117484117569%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g118242_|
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
                (_%__kont118154118155%_
                 (lambda (_%g117497117510%_)
                   (gx#datum->syntax '#f 'make-promise))))
            (let* ((_%g117481117522%_
                    (lambda ()
                      (let ((_%g117497117510%_ _%__stx118147118148%_))
                        (if (gx#identifier? _%g117497117510%_)
                            (_%__kont118154118155%_ _%g117497117510%_)
                            (let ()
                              (declare (not safe))
                              (_%g117482117503%_))))))
                   (_%__match118170118171%_
                    (lambda (_%e117485117529%_
                             _%hd117486117533%_
                             _%tl117487117536%_
                             _%__splice118152118153%_
                             _%target117488117539%_
                             _%tl117490117542%_)
                      (letrec ((_%loop117491117545%_
                                (lambda (_%hd117489117549%_
                                         _%arg117495117552%_)
                                  (if (gx#stx-pair? _%hd117489117549%_)
                                      (let ((_%e117492117555%_
                                             (gx#syntax-e _%hd117489117549%_)))
                                        (let ((_%lp-tl117494117562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e117492117555%_)))
                                              (_%lp-hd117493117559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e117492117555%_))))
                                          (_%loop117491117545%_
                                           _%lp-tl117494117562%_
                                           (cons _%lp-hd117493117559%_
                                                 _%arg117495117552%_))))
                                      (let ((_%arg117496117565%_
                                             (reverse _%arg117495117552%_)))
                                        (_%__kont118150118151%_
                                         _%arg117496117565%_))))))
                        (_%loop117491117545%_ _%target117488117539%_ '())))))
              (if (gx#stx-pair? _%__stx118147118148%_)
                  (let ((_%e117485117529%_
                         (gx#syntax-e _%__stx118147118148%_)))
                    (let ((_%tl117487117536%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e117485117529%_)))
                          (_%hd117486117533%_
                           (let ()
                             (declare (not safe))
                             (##car _%e117485117529%_))))
                      (if (gx#stx-pair/null? _%tl117487117536%_)
                          (let ((_%__splice118152118153%_
                                 (gx#syntax-split-splice->vector
                                  _%tl117487117536%_
                                  '0)))
                            (let ((_%tl117490117542%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice118152118153%_
                                      '1)))
                                  (_%target117488117539%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice118152118153%_
                                      '0))))
                              (if (gx#stx-null? _%tl117490117542%_)
                                  (_%__match118170118171%_
                                   _%e117485117529%_
                                   _%hd117486117533%_
                                   _%tl117487117536%_
                                   _%__splice118152118153%_
                                   _%target117488117539%_
                                   _%tl117490117542%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g117481117522%_)))))
                          (let () (declare (not safe)) (_%g117481117522%_)))))
                  (let () (declare (not safe)) (_%g117481117522%_))))))))
    (define |[:0:]#@make-atomic-promise|
      (lambda (_%$stx117612%_)
        (let* ((_%__stx118173118174%_ _%$stx117612%_)
               (_%g117617117638%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx118173118174%_))))
          (let ((_%__kont118176118177%_
                 (lambda (_%g117619117703%_)
                   (cons (gx#datum->syntax
                          |[1]#_g118244_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp118245
                                                  (lambda (_%g117718117721%_
                                                           _%g117719117724%_)
                                                    (cons _%g117718117721%_
                                                          _%g117719117724%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp118245
                                              '()
                                              _%g117619117703%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g118247_|
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
                (_%__kont118180118181%_
                 (lambda (_%g117632117645%_)
                   (gx#datum->syntax '#f 'make-atomic-promise))))
            (let* ((_%g117616117656%_
                    (lambda ()
                      (let ((_%g117632117645%_ _%__stx118173118174%_))
                        (if (gx#identifier? _%g117632117645%_)
                            (_%__kont118180118181%_ _%g117632117645%_)
                            (let ()
                              (declare (not safe))
                              (_%g117617117638%_))))))
                   (_%__match118196118197%_
                    (lambda (_%e117620117663%_
                             _%hd117621117667%_
                             _%tl117622117670%_
                             _%__splice118178118179%_
                             _%target117623117673%_
                             _%tl117625117676%_)
                      (letrec ((_%loop117626117679%_
                                (lambda (_%hd117624117683%_
                                         _%arg117630117686%_)
                                  (if (gx#stx-pair? _%hd117624117683%_)
                                      (let ((_%e117627117689%_
                                             (gx#syntax-e _%hd117624117683%_)))
                                        (let ((_%lp-tl117629117696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e117627117689%_)))
                                              (_%lp-hd117628117693%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e117627117689%_))))
                                          (_%loop117626117679%_
                                           _%lp-tl117629117696%_
                                           (cons _%lp-hd117628117693%_
                                                 _%arg117630117686%_))))
                                      (let ((_%arg117631117699%_
                                             (reverse _%arg117630117686%_)))
                                        (_%__kont118176118177%_
                                         _%arg117631117699%_))))))
                        (_%loop117626117679%_ _%target117623117673%_ '())))))
              (if (gx#stx-pair? _%__stx118173118174%_)
                  (let ((_%e117620117663%_
                         (gx#syntax-e _%__stx118173118174%_)))
                    (let ((_%tl117622117670%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e117620117663%_)))
                          (_%hd117621117667%_
                           (let ()
                             (declare (not safe))
                             (##car _%e117620117663%_))))
                      (if (gx#stx-pair/null? _%tl117622117670%_)
                          (let ((_%__splice118178118179%_
                                 (gx#syntax-split-splice->vector
                                  _%tl117622117670%_
                                  '0)))
                            (let ((_%tl117625117676%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice118178118179%_
                                      '1)))
                                  (_%target117623117673%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice118178118179%_
                                      '0))))
                              (if (gx#stx-null? _%tl117625117676%_)
                                  (_%__match118196118197%_
                                   _%e117620117663%_
                                   _%hd117621117667%_
                                   _%tl117622117670%_
                                   _%__splice118178118179%_
                                   _%target117623117673%_
                                   _%tl117625117676%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g117616117656%_)))))
                          (let () (declare (not safe)) (_%g117616117656%_)))))
                  (let () (declare (not safe)) (_%g117616117656%_))))))))
    (define |[:0:]#@with-unwind-protect|
      (lambda (_%$stx117746%_)
        (let* ((_%__stx118199118200%_ _%$stx117746%_)
               (_%g117751117772%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx118199118200%_))))
          (let ((_%__kont118202118203%_
                 (lambda (_%g117753117837%_)
                   (cons (gx#datum->syntax
                          |[1]#_g118249_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'K)
                                           (cons (gx#datum->syntax '#f 'fini)
                                                 '()))
                                     (cons (let ((__tmp118250
                                                  (lambda (_%g117852117855%_
                                                           _%g117853117858%_)
                                                    (cons _%g117852117855%_
                                                          _%g117853117858%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp118250
                                              '()
                                              _%g117753117837%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g118252_|
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
                (_%__kont118206118207%_
                 (lambda (_%g117766117779%_)
                   (gx#datum->syntax '#f 'with-unwind-protect))))
            (let* ((_%g117750117790%_
                    (lambda ()
                      (let ((_%g117766117779%_ _%__stx118199118200%_))
                        (if (gx#identifier? _%g117766117779%_)
                            (_%__kont118206118207%_ _%g117766117779%_)
                            (let ()
                              (declare (not safe))
                              (_%g117751117772%_))))))
                   (_%__match118222118223%_
                    (lambda (_%e117754117797%_
                             _%hd117755117801%_
                             _%tl117756117804%_
                             _%__splice118204118205%_
                             _%target117757117807%_
                             _%tl117759117810%_)
                      (letrec ((_%loop117760117813%_
                                (lambda (_%hd117758117817%_
                                         _%arg117764117820%_)
                                  (if (gx#stx-pair? _%hd117758117817%_)
                                      (let ((_%e117761117823%_
                                             (gx#syntax-e _%hd117758117817%_)))
                                        (let ((_%lp-tl117763117830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e117761117823%_)))
                                              (_%lp-hd117762117827%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e117761117823%_))))
                                          (_%loop117760117813%_
                                           _%lp-tl117763117830%_
                                           (cons _%lp-hd117762117827%_
                                                 _%arg117764117820%_))))
                                      (let ((_%arg117765117833%_
                                             (reverse _%arg117764117820%_)))
                                        (_%__kont118202118203%_
                                         _%arg117765117833%_))))))
                        (_%loop117760117813%_ _%target117757117807%_ '())))))
              (if (gx#stx-pair? _%__stx118199118200%_)
                  (let ((_%e117754117797%_
                         (gx#syntax-e _%__stx118199118200%_)))
                    (let ((_%tl117756117804%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e117754117797%_)))
                          (_%hd117755117801%_
                           (let ()
                             (declare (not safe))
                             (##car _%e117754117797%_))))
                      (if (gx#stx-pair/null? _%tl117756117804%_)
                          (let ((_%__splice118204118205%_
                                 (gx#syntax-split-splice->vector
                                  _%tl117756117804%_
                                  '0)))
                            (let ((_%tl117759117810%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice118204118205%_
                                      '1)))
                                  (_%target117757117807%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice118204118205%_
                                      '0))))
                              (if (gx#stx-null? _%tl117759117810%_)
                                  (_%__match118222118223%_
                                   _%e117754117797%_
                                   _%hd117755117801%_
                                   _%tl117756117804%_
                                   _%__splice118204118205%_
                                   _%target117757117807%_
                                   _%tl117759117810%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g117750117790%_)))))
                          (let () (declare (not safe)) (_%g117750117790%_)))))
                  (let () (declare (not safe)) (_%g117750117790%_))))))))))
