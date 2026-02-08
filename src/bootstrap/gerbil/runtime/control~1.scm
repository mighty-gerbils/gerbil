(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g117168_|
    (gx#core-deserialize-mark
     '(0
       (arg116426 . _%arg116426116497%_)
       (id . _%id116450%_)
       (arg116425 . _%arg116425116483%_)
       (arg . _%arg116513%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g117169_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g117168_|)))
  (define |[1]#_g117171_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g117172_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g117171_|)))
  (define |[1]#_g117173_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id116584%_)
       (arg116561 . _%arg116561116631%_)
       (arg . _%arg116647%_)
       (arg116560 . _%arg116560116617%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g117174_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g117173_|)))
  (define |[1]#_g117176_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g117177_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g117176_|)))
  (define |[1]#_g117178_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id116718%_)
       (arg . _%arg116781%_)
       (arg116695 . _%arg116695116765%_)
       (arg116694 . _%arg116694116751%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g117179_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g117178_|)))
  (define |[1]#_g117181_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g117182_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g117181_|)))
  (begin
    (define |[:0:]#@make-promise|
      (lambda (_%$stx116407%_)
        (let* ((_%__stx117077117078%_ _%$stx116407%_)
               (_%g116412116433%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx117077117078%_))))
          (let ((_%__kont117080117081%_
                 (lambda (_%g116414116499%_)
                   (cons (gx#datum->syntax
                          |[1]#_g117169_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp117170
                                                  (lambda (_%g116514116517%_
                                                           _%g116515116520%_)
                                                    (cons _%g116514116517%_
                                                          _%g116515116520%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp117170
                                              '()
                                              _%g116414116499%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g117172_|
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
                (_%__kont117084117085%_
                 (lambda (_%g116427116440%_)
                   (gx#datum->syntax '#f 'make-promise))))
            (let* ((_%g116411116452%_
                    (lambda ()
                      (let ((_%g116427116440%_ _%__stx117077117078%_))
                        (if (gx#identifier? _%g116427116440%_)
                            (_%__kont117084117085%_ _%g116427116440%_)
                            (let ()
                              (declare (not safe))
                              (_%g116412116433%_))))))
                   (_%__match117100117101%_
                    (lambda (_%e116415116459%_
                             _%hd116416116463%_
                             _%tl116417116466%_
                             _%__splice117082117083%_
                             _%target116418116469%_
                             _%tl116420116472%_)
                      (letrec ((_%loop116421116475%_
                                (lambda (_%hd116419116479%_
                                         _%arg116425116482%_)
                                  (if (gx#stx-pair? _%hd116419116479%_)
                                      (let ((_%e116422116485%_
                                             (gx#syntax-e _%hd116419116479%_)))
                                        (let ((_%lp-tl116424116492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e116422116485%_)))
                                              (_%lp-hd116423116489%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e116422116485%_))))
                                          (_%loop116421116475%_
                                           _%lp-tl116424116492%_
                                           (cons _%lp-hd116423116489%_
                                                 _%arg116425116482%_))))
                                      (let ((_%arg116426116495%_
                                             (reverse _%arg116425116482%_)))
                                        (_%__kont117080117081%_
                                         _%arg116426116495%_))))))
                        (_%loop116421116475%_ _%target116418116469%_ '())))))
              (if (gx#stx-pair? _%__stx117077117078%_)
                  (let ((_%e116415116459%_
                         (gx#syntax-e _%__stx117077117078%_)))
                    (let ((_%tl116417116466%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e116415116459%_)))
                          (_%hd116416116463%_
                           (let ()
                             (declare (not safe))
                             (##car _%e116415116459%_))))
                      (if (gx#stx-pair/null? _%tl116417116466%_)
                          (let ((_%__splice117082117083%_
                                 (gx#syntax-split-splice->vector
                                  _%tl116417116466%_
                                  '0)))
                            (let ((_%tl116420116472%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117082117083%_
                                      '1)))
                                  (_%target116418116469%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117082117083%_
                                      '0))))
                              (if (gx#stx-null? _%tl116420116472%_)
                                  (_%__match117100117101%_
                                   _%e116415116459%_
                                   _%hd116416116463%_
                                   _%tl116417116466%_
                                   _%__splice117082117083%_
                                   _%target116418116469%_
                                   _%tl116420116472%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g116411116452%_)))))
                          (let () (declare (not safe)) (_%g116411116452%_)))))
                  (let () (declare (not safe)) (_%g116411116452%_))))))))
    (define |[:0:]#@make-atomic-promise|
      (lambda (_%$stx116542%_)
        (let* ((_%__stx117103117104%_ _%$stx116542%_)
               (_%g116547116568%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx117103117104%_))))
          (let ((_%__kont117106117107%_
                 (lambda (_%g116549116633%_)
                   (cons (gx#datum->syntax
                          |[1]#_g117174_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp117175
                                                  (lambda (_%g116648116651%_
                                                           _%g116649116654%_)
                                                    (cons _%g116648116651%_
                                                          _%g116649116654%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp117175
                                              '()
                                              _%g116549116633%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g117177_|
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
                (_%__kont117110117111%_
                 (lambda (_%g116562116575%_)
                   (gx#datum->syntax '#f 'make-atomic-promise))))
            (let* ((_%g116546116586%_
                    (lambda ()
                      (let ((_%g116562116575%_ _%__stx117103117104%_))
                        (if (gx#identifier? _%g116562116575%_)
                            (_%__kont117110117111%_ _%g116562116575%_)
                            (let ()
                              (declare (not safe))
                              (_%g116547116568%_))))))
                   (_%__match117126117127%_
                    (lambda (_%e116550116593%_
                             _%hd116551116597%_
                             _%tl116552116600%_
                             _%__splice117108117109%_
                             _%target116553116603%_
                             _%tl116555116606%_)
                      (letrec ((_%loop116556116609%_
                                (lambda (_%hd116554116613%_
                                         _%arg116560116616%_)
                                  (if (gx#stx-pair? _%hd116554116613%_)
                                      (let ((_%e116557116619%_
                                             (gx#syntax-e _%hd116554116613%_)))
                                        (let ((_%lp-tl116559116626%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e116557116619%_)))
                                              (_%lp-hd116558116623%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e116557116619%_))))
                                          (_%loop116556116609%_
                                           _%lp-tl116559116626%_
                                           (cons _%lp-hd116558116623%_
                                                 _%arg116560116616%_))))
                                      (let ((_%arg116561116629%_
                                             (reverse _%arg116560116616%_)))
                                        (_%__kont117106117107%_
                                         _%arg116561116629%_))))))
                        (_%loop116556116609%_ _%target116553116603%_ '())))))
              (if (gx#stx-pair? _%__stx117103117104%_)
                  (let ((_%e116550116593%_
                         (gx#syntax-e _%__stx117103117104%_)))
                    (let ((_%tl116552116600%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e116550116593%_)))
                          (_%hd116551116597%_
                           (let ()
                             (declare (not safe))
                             (##car _%e116550116593%_))))
                      (if (gx#stx-pair/null? _%tl116552116600%_)
                          (let ((_%__splice117108117109%_
                                 (gx#syntax-split-splice->vector
                                  _%tl116552116600%_
                                  '0)))
                            (let ((_%tl116555116606%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117108117109%_
                                      '1)))
                                  (_%target116553116603%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117108117109%_
                                      '0))))
                              (if (gx#stx-null? _%tl116555116606%_)
                                  (_%__match117126117127%_
                                   _%e116550116593%_
                                   _%hd116551116597%_
                                   _%tl116552116600%_
                                   _%__splice117108117109%_
                                   _%target116553116603%_
                                   _%tl116555116606%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g116546116586%_)))))
                          (let () (declare (not safe)) (_%g116546116586%_)))))
                  (let () (declare (not safe)) (_%g116546116586%_))))))))
    (define |[:0:]#@with-unwind-protect|
      (lambda (_%$stx116676%_)
        (let* ((_%__stx117129117130%_ _%$stx116676%_)
               (_%g116681116702%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx117129117130%_))))
          (let ((_%__kont117132117133%_
                 (lambda (_%g116683116767%_)
                   (cons (gx#datum->syntax
                          |[1]#_g117179_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'K)
                                           (cons (gx#datum->syntax '#f 'fini)
                                                 '()))
                                     (cons (let ((__tmp117180
                                                  (lambda (_%g116782116785%_
                                                           _%g116783116788%_)
                                                    (cons _%g116782116785%_
                                                          _%g116783116788%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp117180
                                              '()
                                              _%g116683116767%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g117182_|
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
                (_%__kont117136117137%_
                 (lambda (_%g116696116709%_)
                   (gx#datum->syntax '#f 'with-unwind-protect))))
            (let* ((_%g116680116720%_
                    (lambda ()
                      (let ((_%g116696116709%_ _%__stx117129117130%_))
                        (if (gx#identifier? _%g116696116709%_)
                            (_%__kont117136117137%_ _%g116696116709%_)
                            (let ()
                              (declare (not safe))
                              (_%g116681116702%_))))))
                   (_%__match117152117153%_
                    (lambda (_%e116684116727%_
                             _%hd116685116731%_
                             _%tl116686116734%_
                             _%__splice117134117135%_
                             _%target116687116737%_
                             _%tl116689116740%_)
                      (letrec ((_%loop116690116743%_
                                (lambda (_%hd116688116747%_
                                         _%arg116694116750%_)
                                  (if (gx#stx-pair? _%hd116688116747%_)
                                      (let ((_%e116691116753%_
                                             (gx#syntax-e _%hd116688116747%_)))
                                        (let ((_%lp-tl116693116760%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e116691116753%_)))
                                              (_%lp-hd116692116757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e116691116753%_))))
                                          (_%loop116690116743%_
                                           _%lp-tl116693116760%_
                                           (cons _%lp-hd116692116757%_
                                                 _%arg116694116750%_))))
                                      (let ((_%arg116695116763%_
                                             (reverse _%arg116694116750%_)))
                                        (_%__kont117132117133%_
                                         _%arg116695116763%_))))))
                        (_%loop116690116743%_ _%target116687116737%_ '())))))
              (if (gx#stx-pair? _%__stx117129117130%_)
                  (let ((_%e116684116727%_
                         (gx#syntax-e _%__stx117129117130%_)))
                    (let ((_%tl116686116734%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e116684116727%_)))
                          (_%hd116685116731%_
                           (let ()
                             (declare (not safe))
                             (##car _%e116684116727%_))))
                      (if (gx#stx-pair/null? _%tl116686116734%_)
                          (let ((_%__splice117134117135%_
                                 (gx#syntax-split-splice->vector
                                  _%tl116686116734%_
                                  '0)))
                            (let ((_%tl116689116740%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117134117135%_
                                      '1)))
                                  (_%target116687116737%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117134117135%_
                                      '0))))
                              (if (gx#stx-null? _%tl116689116740%_)
                                  (_%__match117152117153%_
                                   _%e116684116727%_
                                   _%hd116685116731%_
                                   _%tl116686116734%_
                                   _%__splice117134117135%_
                                   _%target116687116737%_
                                   _%tl116689116740%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g116680116720%_)))))
                          (let () (declare (not safe)) (_%g116680116720%_)))))
                  (let () (declare (not safe)) (_%g116680116720%_))))))))))
