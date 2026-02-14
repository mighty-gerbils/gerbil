(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g119648_|
    (gx#core-deserialize-mark
     '(0
       (arg118905 . _%arg118905118963%_)
       (arg . _%arg118993%_)
       (id . _%id118930%_)
       (arg118906 . _%arg118906118977%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g119649_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g119648_|)))
  (define |[1]#_g119651_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g119652_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g119651_|)))
  (define |[1]#_g119653_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg119127%_)
       (id . _%id119064%_)
       (arg119040 . _%arg119040119097%_)
       (arg119041 . _%arg119041119111%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g119654_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g119653_|)))
  (define |[1]#_g119656_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g119657_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g119656_|)))
  (define |[1]#_g119658_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg119261%_)
       (id . _%id119198%_)
       (arg119175 . _%arg119175119245%_)
       (arg119174 . _%arg119174119231%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g119659_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g119658_|)))
  (define |[1]#_g119661_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g119662_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g119661_|)))
  (begin
    (define |[:0:]#@make-promise|
      (lambda (_%$stx118887%_)
        (let* ((_%__stx119557119558%_ _%$stx118887%_)
               (_%g118892118913%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx119557119558%_))))
          (let ((_%__kont119560119561%_
                 (lambda (_%g118894118979%_)
                   (cons (gx#datum->syntax
                          |[1]#_g119649_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp119650
                                                  (lambda (_%g118994118997%_
                                                           _%g118995119000%_)
                                                    (cons _%g118994118997%_
                                                          _%g118995119000%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp119650
                                              '()
                                              _%g118894118979%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g119652_|
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
                (_%__kont119564119565%_
                 (lambda (_%g118907118920%_)
                   (gx#datum->syntax '#f 'make-promise))))
            (let* ((_%g118891118932%_
                    (lambda ()
                      (let ((_%g118907118920%_ _%__stx119557119558%_))
                        (if (gx#identifier? _%g118907118920%_)
                            (_%__kont119564119565%_ _%g118907118920%_)
                            (let ()
                              (declare (not safe))
                              (_%g118892118913%_))))))
                   (_%__match119580119581%_
                    (lambda (_%e118895118939%_
                             _%hd118896118943%_
                             _%tl118897118946%_
                             _%__splice119562119563%_
                             _%target118898118949%_
                             _%tl118900118952%_)
                      (letrec ((_%loop118901118955%_
                                (lambda (_%hd118899118959%_
                                         _%arg118905118962%_)
                                  (if (gx#stx-pair? _%hd118899118959%_)
                                      (let ((_%e118902118965%_
                                             (gx#syntax-e _%hd118899118959%_)))
                                        (let ((_%lp-tl118904118972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e118902118965%_)))
                                              (_%lp-hd118903118969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e118902118965%_))))
                                          (_%loop118901118955%_
                                           _%lp-tl118904118972%_
                                           (cons _%lp-hd118903118969%_
                                                 _%arg118905118962%_))))
                                      (let ((_%arg118906118975%_
                                             (reverse _%arg118905118962%_)))
                                        (_%__kont119560119561%_
                                         _%arg118906118975%_))))))
                        (_%loop118901118955%_ _%target118898118949%_ '())))))
              (if (gx#stx-pair? _%__stx119557119558%_)
                  (let ((_%e118895118939%_
                         (gx#syntax-e _%__stx119557119558%_)))
                    (let ((_%tl118897118946%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e118895118939%_)))
                          (_%hd118896118943%_
                           (let ()
                             (declare (not safe))
                             (##car _%e118895118939%_))))
                      (if (gx#stx-pair/null? _%tl118897118946%_)
                          (let ((_%__splice119562119563%_
                                 (gx#syntax-split-splice->vector
                                  _%tl118897118946%_
                                  '0)))
                            (let ((_%tl118900118952%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119562119563%_
                                      '1)))
                                  (_%target118898118949%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119562119563%_
                                      '0))))
                              (if (gx#stx-null? _%tl118900118952%_)
                                  (_%__match119580119581%_
                                   _%e118895118939%_
                                   _%hd118896118943%_
                                   _%tl118897118946%_
                                   _%__splice119562119563%_
                                   _%target118898118949%_
                                   _%tl118900118952%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g118891118932%_)))))
                          (let () (declare (not safe)) (_%g118891118932%_)))))
                  (let () (declare (not safe)) (_%g118891118932%_))))))))
    (define |[:0:]#@make-atomic-promise|
      (lambda (_%$stx119022%_)
        (let* ((_%__stx119583119584%_ _%$stx119022%_)
               (_%g119027119048%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx119583119584%_))))
          (let ((_%__kont119586119587%_
                 (lambda (_%g119029119113%_)
                   (cons (gx#datum->syntax
                          |[1]#_g119654_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp119655
                                                  (lambda (_%g119128119131%_
                                                           _%g119129119134%_)
                                                    (cons _%g119128119131%_
                                                          _%g119129119134%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp119655
                                              '()
                                              _%g119029119113%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g119657_|
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
                (_%__kont119590119591%_
                 (lambda (_%g119042119055%_)
                   (gx#datum->syntax '#f 'make-atomic-promise))))
            (let* ((_%g119026119066%_
                    (lambda ()
                      (let ((_%g119042119055%_ _%__stx119583119584%_))
                        (if (gx#identifier? _%g119042119055%_)
                            (_%__kont119590119591%_ _%g119042119055%_)
                            (let ()
                              (declare (not safe))
                              (_%g119027119048%_))))))
                   (_%__match119606119607%_
                    (lambda (_%e119030119073%_
                             _%hd119031119077%_
                             _%tl119032119080%_
                             _%__splice119588119589%_
                             _%target119033119083%_
                             _%tl119035119086%_)
                      (letrec ((_%loop119036119089%_
                                (lambda (_%hd119034119093%_
                                         _%arg119040119096%_)
                                  (if (gx#stx-pair? _%hd119034119093%_)
                                      (let ((_%e119037119099%_
                                             (gx#syntax-e _%hd119034119093%_)))
                                        (let ((_%lp-tl119039119106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e119037119099%_)))
                                              (_%lp-hd119038119103%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e119037119099%_))))
                                          (_%loop119036119089%_
                                           _%lp-tl119039119106%_
                                           (cons _%lp-hd119038119103%_
                                                 _%arg119040119096%_))))
                                      (let ((_%arg119041119109%_
                                             (reverse _%arg119040119096%_)))
                                        (_%__kont119586119587%_
                                         _%arg119041119109%_))))))
                        (_%loop119036119089%_ _%target119033119083%_ '())))))
              (if (gx#stx-pair? _%__stx119583119584%_)
                  (let ((_%e119030119073%_
                         (gx#syntax-e _%__stx119583119584%_)))
                    (let ((_%tl119032119080%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e119030119073%_)))
                          (_%hd119031119077%_
                           (let ()
                             (declare (not safe))
                             (##car _%e119030119073%_))))
                      (if (gx#stx-pair/null? _%tl119032119080%_)
                          (let ((_%__splice119588119589%_
                                 (gx#syntax-split-splice->vector
                                  _%tl119032119080%_
                                  '0)))
                            (let ((_%tl119035119086%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119588119589%_
                                      '1)))
                                  (_%target119033119083%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119588119589%_
                                      '0))))
                              (if (gx#stx-null? _%tl119035119086%_)
                                  (_%__match119606119607%_
                                   _%e119030119073%_
                                   _%hd119031119077%_
                                   _%tl119032119080%_
                                   _%__splice119588119589%_
                                   _%target119033119083%_
                                   _%tl119035119086%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g119026119066%_)))))
                          (let () (declare (not safe)) (_%g119026119066%_)))))
                  (let () (declare (not safe)) (_%g119026119066%_))))))))
    (define |[:0:]#@with-unwind-protect|
      (lambda (_%$stx119156%_)
        (let* ((_%__stx119609119610%_ _%$stx119156%_)
               (_%g119161119182%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx119609119610%_))))
          (let ((_%__kont119612119613%_
                 (lambda (_%g119163119247%_)
                   (cons (gx#datum->syntax
                          |[1]#_g119659_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'K)
                                           (cons (gx#datum->syntax '#f 'fini)
                                                 '()))
                                     (cons (let ((__tmp119660
                                                  (lambda (_%g119262119265%_
                                                           _%g119263119268%_)
                                                    (cons _%g119262119265%_
                                                          _%g119263119268%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp119660
                                              '()
                                              _%g119163119247%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g119662_|
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
                (_%__kont119616119617%_
                 (lambda (_%g119176119189%_)
                   (gx#datum->syntax '#f 'with-unwind-protect))))
            (let* ((_%g119160119200%_
                    (lambda ()
                      (let ((_%g119176119189%_ _%__stx119609119610%_))
                        (if (gx#identifier? _%g119176119189%_)
                            (_%__kont119616119617%_ _%g119176119189%_)
                            (let ()
                              (declare (not safe))
                              (_%g119161119182%_))))))
                   (_%__match119632119633%_
                    (lambda (_%e119164119207%_
                             _%hd119165119211%_
                             _%tl119166119214%_
                             _%__splice119614119615%_
                             _%target119167119217%_
                             _%tl119169119220%_)
                      (letrec ((_%loop119170119223%_
                                (lambda (_%hd119168119227%_
                                         _%arg119174119230%_)
                                  (if (gx#stx-pair? _%hd119168119227%_)
                                      (let ((_%e119171119233%_
                                             (gx#syntax-e _%hd119168119227%_)))
                                        (let ((_%lp-tl119173119240%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e119171119233%_)))
                                              (_%lp-hd119172119237%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e119171119233%_))))
                                          (_%loop119170119223%_
                                           _%lp-tl119173119240%_
                                           (cons _%lp-hd119172119237%_
                                                 _%arg119174119230%_))))
                                      (let ((_%arg119175119243%_
                                             (reverse _%arg119174119230%_)))
                                        (_%__kont119612119613%_
                                         _%arg119175119243%_))))))
                        (_%loop119170119223%_ _%target119167119217%_ '())))))
              (if (gx#stx-pair? _%__stx119609119610%_)
                  (let ((_%e119164119207%_
                         (gx#syntax-e _%__stx119609119610%_)))
                    (let ((_%tl119166119214%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e119164119207%_)))
                          (_%hd119165119211%_
                           (let ()
                             (declare (not safe))
                             (##car _%e119164119207%_))))
                      (if (gx#stx-pair/null? _%tl119166119214%_)
                          (let ((_%__splice119614119615%_
                                 (gx#syntax-split-splice->vector
                                  _%tl119166119214%_
                                  '0)))
                            (let ((_%tl119169119220%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119614119615%_
                                      '1)))
                                  (_%target119167119217%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119614119615%_
                                      '0))))
                              (if (gx#stx-null? _%tl119169119220%_)
                                  (_%__match119632119633%_
                                   _%e119164119207%_
                                   _%hd119165119211%_
                                   _%tl119166119214%_
                                   _%__splice119614119615%_
                                   _%target119167119217%_
                                   _%tl119169119220%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g119160119200%_)))))
                          (let () (declare (not safe)) (_%g119160119200%_)))))
                  (let () (declare (not safe)) (_%g119160119200%_))))))))))
