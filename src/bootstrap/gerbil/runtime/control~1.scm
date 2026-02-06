(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g115962_|
    (gx#core-deserialize-mark
     '(0
       (arg115254 . _%arg115254115325%_)
       (arg . _%arg115341%_)
       (id . _%id115278%_)
       (arg115253 . _%arg115253115311%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g115963_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g115962_|)))
  (define |[1]#_g115965_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g115966_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g115965_|)))
  (define |[1]#_g115967_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg115475%_)
       (arg115389 . _%arg115389115459%_)
       (id . _%id115412%_)
       (arg115388 . _%arg115388115445%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g115968_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g115967_|)))
  (define |[1]#_g115970_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g115971_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g115970_|)))
  (define |[1]#_g115972_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg115609%_)
       (arg115523 . _%arg115523115593%_)
       (id . _%id115546%_)
       (arg115522 . _%arg115522115579%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g115973_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g115972_|)))
  (define |[1]#_g115975_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g115976_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g115975_|)))
  (begin
    (define |[:0:]#@make-promise|
      (lambda (_%$stx115235%_)
        (let* ((_%__stx115871115872%_ _%$stx115235%_)
               (_%g115240115261%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx115871115872%_))))
          (let ((_%__kont115874115875%_
                 (lambda (_%g115242115327%_)
                   (cons (gx#datum->syntax
                          |[1]#_g115963_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp115964
                                                  (lambda (_%g115342115345%_
                                                           _%g115343115348%_)
                                                    (cons _%g115342115345%_
                                                          _%g115343115348%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp115964
                                              '()
                                              _%g115242115327%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g115966_|
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
                (_%__kont115878115879%_
                 (lambda (_%g115255115268%_)
                   (gx#datum->syntax '#f 'make-promise))))
            (let* ((_%g115239115280%_
                    (lambda ()
                      (let ((_%g115255115268%_ _%__stx115871115872%_))
                        (if (gx#identifier? _%g115255115268%_)
                            (_%__kont115878115879%_ _%g115255115268%_)
                            (let ()
                              (declare (not safe))
                              (_%g115240115261%_))))))
                   (_%__match115894115895%_
                    (lambda (_%e115243115287%_
                             _%hd115244115291%_
                             _%tl115245115294%_
                             _%__splice115876115877%_
                             _%target115246115297%_
                             _%tl115248115300%_)
                      (letrec ((_%loop115249115303%_
                                (lambda (_%hd115247115307%_
                                         _%arg115253115310%_)
                                  (if (gx#stx-pair? _%hd115247115307%_)
                                      (let ((_%e115250115313%_
                                             (gx#syntax-e _%hd115247115307%_)))
                                        (let ((_%lp-tl115252115320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e115250115313%_)))
                                              (_%lp-hd115251115317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e115250115313%_))))
                                          (_%loop115249115303%_
                                           _%lp-tl115252115320%_
                                           (cons _%lp-hd115251115317%_
                                                 _%arg115253115310%_))))
                                      (let ((_%arg115254115323%_
                                             (reverse _%arg115253115310%_)))
                                        (_%__kont115874115875%_
                                         _%arg115254115323%_))))))
                        (_%loop115249115303%_ _%target115246115297%_ '())))))
              (if (gx#stx-pair? _%__stx115871115872%_)
                  (let ((_%e115243115287%_
                         (gx#syntax-e _%__stx115871115872%_)))
                    (let ((_%tl115245115294%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e115243115287%_)))
                          (_%hd115244115291%_
                           (let ()
                             (declare (not safe))
                             (##car _%e115243115287%_))))
                      (if (gx#stx-pair/null? _%tl115245115294%_)
                          (let ((_%__splice115876115877%_
                                 (gx#syntax-split-splice->vector
                                  _%tl115245115294%_
                                  '0)))
                            (let ((_%tl115248115300%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice115876115877%_
                                      '1)))
                                  (_%target115246115297%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice115876115877%_
                                      '0))))
                              (if (gx#stx-null? _%tl115248115300%_)
                                  (_%__match115894115895%_
                                   _%e115243115287%_
                                   _%hd115244115291%_
                                   _%tl115245115294%_
                                   _%__splice115876115877%_
                                   _%target115246115297%_
                                   _%tl115248115300%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g115239115280%_)))))
                          (let () (declare (not safe)) (_%g115239115280%_)))))
                  (let () (declare (not safe)) (_%g115239115280%_))))))))
    (define |[:0:]#@make-atomic-promise|
      (lambda (_%$stx115370%_)
        (let* ((_%__stx115897115898%_ _%$stx115370%_)
               (_%g115375115396%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx115897115898%_))))
          (let ((_%__kont115900115901%_
                 (lambda (_%g115377115461%_)
                   (cons (gx#datum->syntax
                          |[1]#_g115968_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp115969
                                                  (lambda (_%g115476115479%_
                                                           _%g115477115482%_)
                                                    (cons _%g115476115479%_
                                                          _%g115477115482%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp115969
                                              '()
                                              _%g115377115461%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g115971_|
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
                (_%__kont115904115905%_
                 (lambda (_%g115390115403%_)
                   (gx#datum->syntax '#f 'make-atomic-promise))))
            (let* ((_%g115374115414%_
                    (lambda ()
                      (let ((_%g115390115403%_ _%__stx115897115898%_))
                        (if (gx#identifier? _%g115390115403%_)
                            (_%__kont115904115905%_ _%g115390115403%_)
                            (let ()
                              (declare (not safe))
                              (_%g115375115396%_))))))
                   (_%__match115920115921%_
                    (lambda (_%e115378115421%_
                             _%hd115379115425%_
                             _%tl115380115428%_
                             _%__splice115902115903%_
                             _%target115381115431%_
                             _%tl115383115434%_)
                      (letrec ((_%loop115384115437%_
                                (lambda (_%hd115382115441%_
                                         _%arg115388115444%_)
                                  (if (gx#stx-pair? _%hd115382115441%_)
                                      (let ((_%e115385115447%_
                                             (gx#syntax-e _%hd115382115441%_)))
                                        (let ((_%lp-tl115387115454%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e115385115447%_)))
                                              (_%lp-hd115386115451%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e115385115447%_))))
                                          (_%loop115384115437%_
                                           _%lp-tl115387115454%_
                                           (cons _%lp-hd115386115451%_
                                                 _%arg115388115444%_))))
                                      (let ((_%arg115389115457%_
                                             (reverse _%arg115388115444%_)))
                                        (_%__kont115900115901%_
                                         _%arg115389115457%_))))))
                        (_%loop115384115437%_ _%target115381115431%_ '())))))
              (if (gx#stx-pair? _%__stx115897115898%_)
                  (let ((_%e115378115421%_
                         (gx#syntax-e _%__stx115897115898%_)))
                    (let ((_%tl115380115428%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e115378115421%_)))
                          (_%hd115379115425%_
                           (let ()
                             (declare (not safe))
                             (##car _%e115378115421%_))))
                      (if (gx#stx-pair/null? _%tl115380115428%_)
                          (let ((_%__splice115902115903%_
                                 (gx#syntax-split-splice->vector
                                  _%tl115380115428%_
                                  '0)))
                            (let ((_%tl115383115434%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice115902115903%_
                                      '1)))
                                  (_%target115381115431%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice115902115903%_
                                      '0))))
                              (if (gx#stx-null? _%tl115383115434%_)
                                  (_%__match115920115921%_
                                   _%e115378115421%_
                                   _%hd115379115425%_
                                   _%tl115380115428%_
                                   _%__splice115902115903%_
                                   _%target115381115431%_
                                   _%tl115383115434%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g115374115414%_)))))
                          (let () (declare (not safe)) (_%g115374115414%_)))))
                  (let () (declare (not safe)) (_%g115374115414%_))))))))
    (define |[:0:]#@with-unwind-protect|
      (lambda (_%$stx115504%_)
        (let* ((_%__stx115923115924%_ _%$stx115504%_)
               (_%g115509115530%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx115923115924%_))))
          (let ((_%__kont115926115927%_
                 (lambda (_%g115511115595%_)
                   (cons (gx#datum->syntax
                          |[1]#_g115973_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'K)
                                           (cons (gx#datum->syntax '#f 'fini)
                                                 '()))
                                     (cons (let ((__tmp115974
                                                  (lambda (_%g115610115613%_
                                                           _%g115611115616%_)
                                                    (cons _%g115610115613%_
                                                          _%g115611115616%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp115974
                                              '()
                                              _%g115511115595%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g115976_|
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
                (_%__kont115930115931%_
                 (lambda (_%g115524115537%_)
                   (gx#datum->syntax '#f 'with-unwind-protect))))
            (let* ((_%g115508115548%_
                    (lambda ()
                      (let ((_%g115524115537%_ _%__stx115923115924%_))
                        (if (gx#identifier? _%g115524115537%_)
                            (_%__kont115930115931%_ _%g115524115537%_)
                            (let ()
                              (declare (not safe))
                              (_%g115509115530%_))))))
                   (_%__match115946115947%_
                    (lambda (_%e115512115555%_
                             _%hd115513115559%_
                             _%tl115514115562%_
                             _%__splice115928115929%_
                             _%target115515115565%_
                             _%tl115517115568%_)
                      (letrec ((_%loop115518115571%_
                                (lambda (_%hd115516115575%_
                                         _%arg115522115578%_)
                                  (if (gx#stx-pair? _%hd115516115575%_)
                                      (let ((_%e115519115581%_
                                             (gx#syntax-e _%hd115516115575%_)))
                                        (let ((_%lp-tl115521115588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e115519115581%_)))
                                              (_%lp-hd115520115585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e115519115581%_))))
                                          (_%loop115518115571%_
                                           _%lp-tl115521115588%_
                                           (cons _%lp-hd115520115585%_
                                                 _%arg115522115578%_))))
                                      (let ((_%arg115523115591%_
                                             (reverse _%arg115522115578%_)))
                                        (_%__kont115926115927%_
                                         _%arg115523115591%_))))))
                        (_%loop115518115571%_ _%target115515115565%_ '())))))
              (if (gx#stx-pair? _%__stx115923115924%_)
                  (let ((_%e115512115555%_
                         (gx#syntax-e _%__stx115923115924%_)))
                    (let ((_%tl115514115562%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e115512115555%_)))
                          (_%hd115513115559%_
                           (let ()
                             (declare (not safe))
                             (##car _%e115512115555%_))))
                      (if (gx#stx-pair/null? _%tl115514115562%_)
                          (let ((_%__splice115928115929%_
                                 (gx#syntax-split-splice->vector
                                  _%tl115514115562%_
                                  '0)))
                            (let ((_%tl115517115568%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice115928115929%_
                                      '1)))
                                  (_%target115515115565%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice115928115929%_
                                      '0))))
                              (if (gx#stx-null? _%tl115517115568%_)
                                  (_%__match115946115947%_
                                   _%e115512115555%_
                                   _%hd115513115559%_
                                   _%tl115514115562%_
                                   _%__splice115928115929%_
                                   _%target115515115565%_
                                   _%tl115517115568%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g115508115548%_)))))
                          (let () (declare (not safe)) (_%g115508115548%_)))))
                  (let () (declare (not safe)) (_%g115508115548%_))))))))))
