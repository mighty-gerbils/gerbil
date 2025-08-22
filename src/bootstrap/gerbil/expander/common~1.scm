(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g121371_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g121373_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g121375_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g121377_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g121378_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g121380_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g121381_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g121383_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g121384_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g121386_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g121387_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g121389_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj121367
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
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj121367 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj121367 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj121367 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj121367 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj121367 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj121367 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj121367 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj121367 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj121367 '#f '11 '#f '#f))
        (let ((__tmp121370 |gx[1]#_g121371_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj121367 __tmp121370 '12 '#f '#f))
        (let ((__tmp121372 |gx[1]#_g121373_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj121367 __tmp121372 '13 '#f '#f))
        (let ((__tmp121374 |gx[1]#_g121375_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj121367 __tmp121374 '14 '#f '#f))
        (let ((__tmp121376
               (cons (cons 'e |gx[1]#_g121377_|)
                     (cons (cons 'source |gx[1]#_g121378_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj121367 __tmp121376 '15 '#f '#f))
        (let ((__tmp121379
               (cons (cons 'e |gx[1]#_g121380_|)
                     (cons (cons 'source |gx[1]#_g121381_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj121367 __tmp121379 '16 '#f '#f))
        (let ((__tmp121382
               (cons (cons 'e |gx[1]#_g121383_|)
                     (cons (cons 'source |gx[1]#_g121384_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj121367 __tmp121382 '17 '#f '#f))
        (let ((__tmp121385
               (cons (cons 'e |gx[1]#_g121386_|)
                     (cons (cons 'source |gx[1]#_g121387_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj121367 __tmp121385 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj121367 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj121367 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj121367 '() '20 '#f '#f))
        __obj121367))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx119962%_)
        (let* ((_%g119966119980%_
                (lambda (_%g119967119976%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g119967119976%_)))
               (_%g119965120022%_
                (lambda (_%g119967119984%_)
                  (if (gx#stx-pair? _%g119967119984%_)
                      (let ((_%e119969119987%_
                             (gx#syntax-e _%g119967119984%_)))
                        (let ((_%hd119970119991%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e119969119987%_)))
                              (_%tl119971119994%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e119969119987%_))))
                          (if (gx#stx-pair? _%tl119971119994%_)
                              (let ((_%e119972119997%_
                                     (gx#syntax-e _%tl119971119994%_)))
                                (let ((_%hd119973120001%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e119972119997%_)))
                                      (_%tl119974120004%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e119972119997%_))))
                                  (if (gx#stx-null? _%tl119974120004%_)
                                      ((lambda (_%L120007%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L120007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L120007%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd119973120001%_)
                                      (_%g119966119980%_ _%g119967119984%_))))
                              (_%g119966119980%_ _%g119967119984%_))))
                      (_%g119966119980%_ _%g119967119984%_)))))
          (_%g119965120022%_ _%$stx119962%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx120026%_)
        (letrec ((_%generate120029%_
                  (lambda (_%tgt120178%_ _%kws120180%_ _%clauses120181%_)
                    (letrec ((_%generate-clause120183%_
                              (lambda (_%hd121118%_ _%E121120%_)
                                (let* ((_%__stx121270121271%_ _%hd121118%_)
                                       (_%g121124121151%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx121270121271%_))))
                                  (let ((_%__kont121273121274%_
                                         (lambda (_%L121247%_ _%L121249%_)
                                           (_%generate1120185%_
                                            _%hd121118%_
                                            _%L121249%_
                                            '#t
                                            _%L121247%_
                                            _%E121120%_)))
                                        (_%__kont121275121276%_
                                         (lambda (_%L121199%_
                                                  _%L121201%_
                                                  _%L121202%_)
                                           (_%generate1120185%_
                                            _%hd121118%_
                                            _%L121202%_
                                            _%L121201%_
                                            _%L121199%_
                                            _%E121120%_)))
                                        (_%__kont121277121278%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx120026%_
                                            _%hd121118%_))))
                                    (if (gx#stx-pair? _%__stx121270121271%_)
                                        (let ((_%e121128121227%_
                                               (gx#syntax-e
                                                _%__stx121270121271%_)))
                                          (let ((_%tl121130121234%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e121128121227%_)))
                                                (_%hd121129121231%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e121128121227%_))))
                                            (if (gx#stx-pair?
                                                 _%tl121130121234%_)
                                                (let ((_%e121131121237%_
                                                       (gx#syntax-e
                                                        _%tl121130121234%_)))
                                                  (let ((_%tl121133121244%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e121131121237%_)))
                                                        (_%hd121132121241%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e121131121237%_))))
                                                    (if (gx#stx-null?
                                                         _%tl121133121244%_)
                                                        (_%__kont121273121274%_
                                                         _%hd121132121241%_
                                                         _%hd121129121231%_)
                                                        (if (gx#stx-pair?
                                                             _%tl121133121244%_)
                                                            (let ((_%e121143121189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl121133121244%_)))
                      (let ((_%tl121145121196%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e121143121189%_)))
                            (_%hd121144121193%_
                             (let ()
                               (declare (not safe))
                               (##car _%e121143121189%_))))
                        (if (gx#stx-null? _%tl121145121196%_)
                            (_%__kont121275121276%_
                             _%hd121144121193%_
                             _%hd121132121241%_
                             _%hd121129121231%_)
                            (_%__kont121277121278%_))))
                    (_%__kont121277121278%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont121277121278%_))))
                                        (_%__kont121277121278%_))))))
                             (_%generate1120185%_
                              (lambda (_%where120571%_
                                       _%hd120573%_
                                       _%fender120574%_
                                       _%body120575%_
                                       _%E120576%_)
                                (letrec ((_%recur120578%_
                                          (lambda (_%hd120581%_
                                                   _%tgt120583%_
                                                   _%K120584%_)
                                            (let* ((_%__stx121316121317%_
                                                    _%hd120581%_)
                                                   (_%g120587120599%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx121316121317%_))))
                                              (let ((_%__kont121319121320%_
                                                     (lambda (_%L120908%_
                                                              _%L120910%_)
                                                       (let* ((_%g120921120929%_
                                                               (lambda (_%g120922120925%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g120922120925%_)))
                      (_%g120920121110%_
                       (lambda (_%g120922120933%_)
                         ((lambda (_%L120936%_)
                            (let* ((_%g120948120956%_
                                    (lambda (_%g120949120952%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g120949120952%_)))
                                   (_%g120947121106%_
                                    (lambda (_%g120949120960%_)
                                      ((lambda (_%L120963%_)
                                         (let* ((_%g120976120984%_
                                                 (lambda (_%g120977120980%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g120977120980%_)))
                                                (_%g120975121102%_
                                                 (lambda (_%g120977120988%_)
                                                   ((lambda (_%L120991%_)
                                                      (let* ((_%g121004121012%_
                                                              (lambda (_%g121005121008%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g121005121008%_)))
                     (_%g121003121098%_
                      (lambda (_%g121005121016%_)
                        ((lambda (_%L121019%_)
                           (let* ((_%g121032121040%_
                                   (lambda (_%g121033121036%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g121033121036%_)))
                                  (_%g121031121094%_
                                   (lambda (_%g121033121044%_)
                                     ((lambda (_%L121047%_)
                                        (let* ((_%g121060121068%_
                                                (lambda (_%g121061121064%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g121061121064%_)))
                                               (_%g121059121090%_
                                                (lambda (_%g121061121072%_)
                                                  ((lambda (_%L121075%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L120936%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L120963%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L120936%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L120991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L120963%_ '()))
                                       '()))
                           (cons (cons _%L121019%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L120963%_ '()))
                                             '()))
                                 '()))
                     (cons _%L121047%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L121075%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g121061121072%_))))
                                          (_%g121059121090%_ _%E120576%_)))
                                      _%g121033121044%_))))
                             (_%g121031121094%_
                              (_%recur120578%_
                               _%L120910%_
                               _%L120991%_
                               (_%recur120578%_
                                _%L120908%_
                                _%L121019%_
                                _%K120584%_)))))
                         _%g121005121016%_))))
                (_%g121003121098%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g120977120988%_))))
                                           (_%g120975121102%_
                                            (gx#genident 'hd))))
                                       _%g120949120960%_))))
                              (_%g120947121106%_ (gx#genident 'e))))
                          _%g120922120933%_))))
                 (_%g120920121110%_ _%tgt120583%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont121321121322%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd120581%_)
                                                           (if (gx#underscore?
                                                                _%hd120581%_)
                                                               _%K120584%_
                                                               (if (let ((__tmp121388
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g120613120615%_)
                                    (gx#bound-identifier=?
                                     _%g120613120615%_
                                     _%hd120581%_))))
                             (declare (not safe))
                             (__find __tmp121388 _%kws120180%_))
                           (let* ((_%g120621120636%_
                                   (lambda (_%g120622120632%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g120622120632%_)))
                                  (_%g120620120689%_
                                   (lambda (_%g120622120640%_)
                                     (if (gx#stx-pair? _%g120622120640%_)
                                         (let ((_%e120625120643%_
                                                (gx#syntax-e
                                                 _%g120622120640%_)))
                                           (let ((_%hd120626120647%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e120625120643%_)))
                                                 (_%tl120627120650%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e120625120643%_))))
                                             (if (gx#stx-pair?
                                                  _%tl120627120650%_)
                                                 (let ((_%e120628120653%_
                                                        (gx#syntax-e
                                                         _%tl120627120650%_)))
                                                   (let ((_%hd120629120657%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e120628120653%_)))
                                                         (_%tl120630120660%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e120628120653%_))))
                                                     (if (gx#stx-null?
                                                          _%tl120630120660%_)
                                                         ((lambda (_%L120663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L120665%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L120665%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L120665%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L120663%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K120584%_ (cons _%E120576%_ '())))))
                  _%hd120629120657%_
                  _%hd120626120647%_)
                 (_%g120621120636%_ _%g120622120640%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g120621120636%_
                                                  _%g120622120640%_))))
                                         (_%g120621120636%_
                                          _%g120622120640%_)))))
                             (_%g120620120689%_
                              (list _%tgt120583%_ _%hd120581%_)))
                           (let* ((_%g120695120710%_
                                   (lambda (_%g120696120706%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g120696120706%_)))
                                  (_%g120694120755%_
                                   (lambda (_%g120696120714%_)
                                     (if (gx#stx-pair? _%g120696120714%_)
                                         (let ((_%e120699120717%_
                                                (gx#syntax-e
                                                 _%g120696120714%_)))
                                           (let ((_%hd120700120721%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e120699120717%_)))
                                                 (_%tl120701120724%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e120699120717%_))))
                                             (if (gx#stx-pair?
                                                  _%tl120701120724%_)
                                                 (let ((_%e120702120727%_
                                                        (gx#syntax-e
                                                         _%tl120701120724%_)))
                                                   (let ((_%hd120703120731%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e120702120727%_)))
                                                         (_%tl120704120734%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e120702120727%_))))
                                                     (if (gx#stx-null?
                                                          _%tl120704120734%_)
                                                         ((lambda (_%L120737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L120739%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L120737%_ (cons _%L120739%_ '()))
                                      '())
                                (cons _%K120584%_ '()))))
                  _%hd120703120731%_
                  _%hd120700120721%_)
                 (_%g120695120710%_ _%g120696120714%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g120695120710%_
                                                  _%g120696120714%_))))
                                         (_%g120695120710%_
                                          _%g120696120714%_)))))
                             (_%g120694120755%_
                              (list _%tgt120583%_ _%hd120581%_)))))
                   (if (gx#stx-null? _%hd120581%_)
                       (let* ((_%g120761120769%_
                               (lambda (_%g120762120765%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g120762120765%_)))
                              (_%g120760120788%_
                               (lambda (_%g120762120773%_)
                                 ((lambda (_%L120776%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L120776%_ '()))
                                                (cons _%K120584%_
                                                      (cons _%E120576%_
                                                            '())))))
                                  _%g120762120773%_))))
                         (_%g120760120788%_ _%tgt120583%_))
                       (if (gx#stx-datum? _%hd120581%_)
                           (let* ((_%g120794120813%_
                                   (lambda (_%g120795120809%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g120795120809%_)))
                                  (_%g120793120872%_
                                   (lambda (_%g120795120817%_)
                                     (if (gx#stx-pair? _%g120795120817%_)
                                         (let ((_%e120799120820%_
                                                (gx#syntax-e
                                                 _%g120795120817%_)))
                                           (let ((_%hd120800120824%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e120799120820%_)))
                                                 (_%tl120801120827%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e120799120820%_))))
                                             (if (gx#stx-pair?
                                                  _%tl120801120827%_)
                                                 (let ((_%e120802120830%_
                                                        (gx#syntax-e
                                                         _%tl120801120827%_)))
                                                   (let ((_%hd120803120834%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e120802120830%_)))
                                                         (_%tl120804120837%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e120802120830%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl120804120837%_)
                                                         (let ((_%e120805120840%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl120804120837%_)))
                   (let ((_%hd120806120844%_
                          (let ()
                            (declare (not safe))
                            (##car _%e120805120840%_)))
                         (_%tl120807120847%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e120805120840%_))))
                     (if (gx#stx-null? _%tl120807120847%_)
                         ((lambda (_%L120850%_ _%L120852%_ _%L120853%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L120850%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L120853%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L120852%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K120584%_
                                              (cons _%E120576%_ '())))))
                          _%hd120806120844%_
                          _%hd120803120834%_
                          _%hd120800120824%_)
                         (_%g120794120813%_ _%g120795120817%_))))
                 (_%g120794120813%_ _%g120795120817%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g120794120813%_
                                                  _%g120795120817%_))))
                                         (_%g120794120813%_
                                          _%g120795120817%_)))))
                             (_%g120793120872%_
                              (list _%tgt120583%_
                                    _%hd120581%_
                                    (let ((_%e120876%_
                                           (gx#stx-e _%hd120581%_)))
                                      (if (or (keyword? _%e120876%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e120876%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e120876%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx120026%_
                            _%where120571%_
                            _%hd120581%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx121316121317%_)
                                                    (let ((_%e120591120898%_
                                                           (gx#syntax-e
                                                            _%__stx121316121317%_)))
                                                      (let ((_%tl120593120905%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e120591120898%_)))
                    (_%hd120592120902%_
                     (let () (declare (not safe)) (##car _%e120591120898%_))))
                (_%__kont121319121320%_
                 _%tl120593120905%_
                 _%hd120592120902%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont121321121322%_)))))))
                                  (_%recur120578%_
                                   _%hd120573%_
                                   _%tgt120178%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender120574%_
                                               (cons _%body120575%_
                                                     (cons _%E120576%_
                                                           '()))))))))
                             (_%generate-clauses120186%_
                              (lambda (_%clauses120309%_)
                                (let _%lp120312%_ ((_%rest120315%_
                                                    _%clauses120309%_)
                                                   (_%E120317%_
                                                    (gx#genident 'E))
                                                   (_%r120318%_ '()))
                                  (let* ((_%__stx121352121353%_ _%rest120315%_)
                                         (_%g120321120333%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx121352121353%_))))
                                    (let ((_%__kont121355121356%_
                                           (lambda (_%L120398%_ _%L120400%_)
                                             (let* ((_%__stx121332121333%_
                                                     _%L120400%_)
                                                    (_%g120412120423%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx121332121333%_))))
                                               (let ((_%__kont121335121336%_
                                                      (lambda (_%L120552%_)
                                                        (if (gx#stx-null?
                                                             _%L120398%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L120552%_)
                             (not (gx#stx-null? _%L120552%_)))
                        (cons (cons _%E120317%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L120552%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L120400%_))
                                          '()))
                              _%r120318%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx120026%_
                         _%L120400%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx120026%_
                     _%L120400%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont121337121338%_
                                                      (lambda ()
                                                        (let* ((_%g120434120442%_
                                                                (lambda (_%g120435120438%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g120435120438%_)))
                       (_%g120433120531%_
                        (lambda (_%g120435120446%_)
                          ((lambda (_%L120449%_)
                             (let* ((_%g120465120473%_
                                     (lambda (_%g120466120469%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g120466120469%_)))
                                    (_%g120464120527%_
                                     (lambda (_%g120466120477%_)
                                       ((lambda (_%L120480%_)
                                          (let* ((_%g120493120501%_
                                                  (lambda (_%g120494120497%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g120494120497%_)))
                                                 (_%g120492120523%_
                                                  (lambda (_%g120494120505%_)
                                                    ((lambda (_%L120508%_)
                                                       (_%lp120312%_
                                                        _%L120398%_
                                                        _%L120449%_
                                                        (cons (cons _%E120317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L120508%_ '()))
                      _%r120318%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g120494120505%_))))
                                            (_%g120492120523%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L120480%_
                                                                '())))
                                              (gx#stx-source _%L120400%_)))))
                                        _%g120466120477%_))))
                               (_%g120464120527%_
                                (_%generate-clause120183%_
                                 _%L120400%_
                                 (cons _%L120449%_ '())))))
                           _%g120435120446%_))))
                  (_%g120433120531%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx121332121333%_)
                                                     (let ((_%e120415120542%_
                                                            (gx#syntax-e
                                                             _%__stx121332121333%_)))
                                                       (let ((_%tl120417120549%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e120415120542%_)))
                     (_%hd120416120546%_
                      (let () (declare (not safe)) (##car _%e120415120542%_))))
                 (if (gx#identifier? _%hd120416120546%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g121389_|
                          _%hd120416120546%_)
                         (_%__kont121335121336%_ _%tl120417120549%_)
                         (_%__kont121337121338%_))
                     (_%__kont121337121338%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont121337121338%_))))))
                                          (_%__kont121357121358%_
                                           (lambda ()
                                             (let* ((_%g120344120352%_
                                                     (lambda (_%g120345120348%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g120345120348%_)))
                                                    (_%g120343120377%_
                                                     (lambda (_%g120345120356%_)
                                                       ((lambda (_%L120359%_)
                                                          (cons (cons _%E120317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'raise-syntax-error)
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '"Bad syntax; invalid syntax-case clause"
                                 (cons _%L120359%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx120026%_))
                                    '()))
                        _%r120318%_))
                _%g120345120356%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g120343120377%_
                                                _%tgt120178%_)))))
                                      (if (gx#stx-pair? _%__stx121352121353%_)
                                          (let ((_%e120325120388%_
                                                 (gx#syntax-e
                                                  _%__stx121352121353%_)))
                                            (let ((_%tl120327120395%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e120325120388%_)))
                                                  (_%hd120326120392%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e120325120388%_))))
                                              (_%__kont121355121356%_
                                               _%tl120327120395%_
                                               _%hd120326120392%_)))
                                          (_%__kont121357121358%_))))))))
                      (let* ((_%bind120188%_
                              (_%generate-clauses120186%_ _%clauses120181%_))
                             (_%g120191120208%_
                              (lambda (_%g120192120204%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g120192120204%_)))
                             (_%g120190120305%_
                              (lambda (_%g120192120212%_)
                                (if (gx#stx-pair/null? _%g120192120212%_)
                                    (let ((_g121390_
                                           (gx#syntax-split-splice
                                            _%g120192120212%_
                                            '0)))
                                      (begin
                                        (let ((_g121391_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g121390_)
                                                     (##values-length
                                                      _g121390_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g121391_ 2)))
                                              (error "Context expects 2 values"
                                                     _g121391_)))
                                        (let ((_%target120194120215%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g121390_ 0)))
                                              (_%tl120196120218%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g121390_ 1))))
                                          (if (gx#stx-null? _%tl120196120218%_)
                                              (letrec ((_%loop120197120221%_
                                                        (lambda (_%hd120195120225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try120201120228%_)
                  (if (gx#stx-pair? _%hd120195120225%_)
                      (let ((_%e120198120231%_
                             (gx#syntax-e _%hd120195120225%_)))
                        (let ((_%lp-hd120199120235%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e120198120231%_)))
                              (_%lp-tl120200120238%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e120198120231%_))))
                          (_%loop120197120221%_
                           _%lp-tl120200120238%_
                           (cons _%lp-hd120199120235%_
                                 _%bind-try120201120228%_))))
                      (let ((_%bind-try120202120241%_
                             (reverse _%bind-try120201120228%_)))
                        ((lambda (_%L120245%_)
                           (let* ((_%g120263120271%_
                                   (lambda (_%g120264120267%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g120264120267%_)))
                                  (_%g120262120301%_
                                   (lambda (_%g120264120275%_)
                                     ((lambda (_%L120278%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp121392
                                                           (lambda (_%g120292120295%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g120293120298%_)
                     (cons _%g120292120295%_ _%g120293120298%_))))
              (declare (not safe))
              (__foldr1 __tmp121392 '() _%L120245%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L120278%_
                                                                '())
                                                          '()))))
                                      _%g120264120275%_))))
                             (_%g120262120301%_ (car (last _%bind120188%_)))))
                         _%bind-try120202120241%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop120197120221%_
                                                 _%target120194120215%_
                                                 '()))
                                              (_%g120191120208%_
                                               _%g120192120212%_)))))
                                    (_%g120191120208%_ _%g120192120212%_)))))
                        (_%g120190120305%_ _%bind120188%_))))))
          (let* ((_%g120032120051%_
                  (lambda (_%g120033120047%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g120033120047%_)))
                 (_%g120031120174%_
                  (lambda (_%g120033120055%_)
                    (if (gx#stx-pair? _%g120033120055%_)
                        (let ((_%e120037120058%_
                               (gx#syntax-e _%g120033120055%_)))
                          (let ((_%hd120038120062%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e120037120058%_)))
                                (_%tl120039120065%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e120037120058%_))))
                            (if (gx#stx-pair? _%tl120039120065%_)
                                (let ((_%e120040120068%_
                                       (gx#syntax-e _%tl120039120065%_)))
                                  (let ((_%hd120041120072%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e120040120068%_)))
                                        (_%tl120042120075%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e120040120068%_))))
                                    (if (gx#stx-pair? _%tl120042120075%_)
                                        (let ((_%e120043120078%_
                                               (gx#syntax-e
                                                _%tl120042120075%_)))
                                          (let ((_%hd120044120082%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e120043120078%_)))
                                                (_%tl120045120085%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e120043120078%_))))
                                            ((lambda (_%L120088%_
                                                      _%L120090%_
                                                      _%L120091%_)
                                               (if (and (gx#identifier-list?
                                                         _%L120090%_)
                                                        (gx#stx-list?
                                                         _%L120088%_))
                                                   (let* ((_%g120109120117%_
                                                           (lambda (_%g120110120113%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g120110120113%_)))
                                                          (_%g120108120170%_
                                                           (lambda (_%g120110120121%_)
                                                             ((lambda (_%L120124%_)
                                                                (let* ((_%g120136120144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g120137120140%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g120137120140%_)))
                               (_%g120135120166%_
                                (lambda (_%g120137120148%_)
                                  ((lambda (_%L120151%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L120124%_
                                                             (cons _%L120091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L120151%_ '()))))
                                   _%g120137120148%_))))
                          (_%g120135120166%_
                           (_%generate120029%_
                            _%L120124%_
                            (gx#syntax->list _%L120090%_)
                            _%L120088%_))))
                      _%g120110120121%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g120108120170%_
                                                      (gx#genident 'e)))
                                                   (_%g120032120051%_
                                                    _%g120033120055%_)))
                                             _%tl120045120085%_
                                             _%hd120044120082%_
                                             _%hd120041120072%_)))
                                        (_%g120032120051%_
                                         _%g120033120055%_))))
                                (_%g120032120051%_ _%g120033120055%_))))
                        (_%g120032120051%_ _%g120033120055%_)))))
            (_%g120031120174%_ _%stx120026%_)))))))
