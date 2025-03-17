(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g210467_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210474_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210476_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210478_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210480_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210482_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210494_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210496_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210498_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210500_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210502_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx203885%_)
        (let* ((_%g203889203907%_
                (lambda (_%g203890203903%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203890203903%_))))
               (_%g203888203962%_
                (lambda (_%g203890203911%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203890203911%_))
                      (let ((_%e203893203914%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203890203911%_))))
                        (let ((_%hd203894203918%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203893203914%_)))
                              (_%tl203895203921%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203893203914%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203895203921%_))
                              (let ((_%e203896203924%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203895203921%_))))
                                (let ((_%hd203897203928%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203896203924%_)))
                                      (_%tl203898203931%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203896203924%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203898203931%_))
                                      (let ((_%e203899203934%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203898203931%_))))
                                        (let ((_%hd203900203938%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203899203934%_)))
                                              (_%tl203901203941%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203899203934%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203901203941%_))
                                              ((lambda (_%L203944%_
                                                        _%L203946%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L203946%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-type!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L203946%_ '()))
                         (cons _%L203944%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g203889203907%_
                                                      _%g203890203911%_)))
                                               _%hd203900203938%_
                                               _%hd203897203928%_)
                                              (_%g203889203907%_
                                               _%g203890203911%_))))
                                      (_%g203889203907%_ _%g203890203911%_))))
                              (_%g203889203907%_ _%g203890203911%_))))
                      (_%g203889203907%_ _%g203890203911%_)))))
          (_%g203888203962%_ _%$stx203885%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx203966%_)
        (let* ((_%g203970203988%_
                (lambda (_%g203971203984%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203971203984%_))))
               (_%g203969204043%_
                (lambda (_%g203971203992%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203971203992%_))
                      (let ((_%e203974203995%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203971203992%_))))
                        (let ((_%hd203975203999%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203974203995%_)))
                              (_%tl203976204002%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203974203995%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203976204002%_))
                              (let ((_%e203977204005%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203976204002%_))))
                                (let ((_%hd203978204009%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203977204005%_)))
                                      (_%tl203979204012%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203977204005%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203979204012%_))
                                      (let ((_%e203980204015%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203979204012%_))))
                                        (let ((_%hd203981204019%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203980204015%_)))
                                              (_%tl203982204022%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203980204015%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203982204022%_))
                                              ((lambda (_%L204025%_
                                                        _%L204027%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L204027%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-class!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L204027%_ '()))
                         (cons _%L204025%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g203970203988%_
                                                      _%g203971203992%_)))
                                               _%hd203981204019%_
                                               _%hd203978204009%_)
                                              (_%g203970203988%_
                                               _%g203971203992%_))))
                                      (_%g203970203988%_ _%g203971203992%_))))
                              (_%g203970203988%_ _%g203971203992%_))))
                      (_%g203970203988%_ _%g203971203992%_)))))
          (_%g203969204043%_ _%$stx203966%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx204047%_)
        (let* ((_%g204051204080%_
                (lambda (_%g204052204076%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204052204076%_))))
               (_%g204050204180%_
                (lambda (_%g204052204084%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204052204084%_))
                      (let ((_%e204055204087%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204052204084%_))))
                        (let ((_%hd204056204091%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204055204087%_)))
                              (_%tl204057204094%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204055204087%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl204057204094%_))
                              (let ((_g210445_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl204057204094%_
                                        '0))))
                                (begin
                                  (let ((_g210446_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210445_)
                                               (##values-length _g210445_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210446_ 2)))
                                        (error "Context expects 2 values"
                                               _g210446_)))
                                  (let ((_%target204058204097%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210445_ 0)))
                                        (_%tl204060204100%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210445_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204060204100%_))
                                        (letrec ((_%loop204061204103%_
                                                  (lambda (_%hd204059204107%_
                                                           _%type204065204110%_
                                                           _%symbol204066204112%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd204059204107%_))
                                                        (let ((_%e204062204115%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd204059204107%_))))
                  (let ((_%lp-hd204063204119%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204062204115%_)))
                        (_%lp-tl204064204122%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204062204115%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd204063204119%_))
                        (let ((_%e204069204125%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd204063204119%_))))
                          (let ((_%hd204070204129%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204069204125%_)))
                                (_%tl204071204132%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204069204125%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204071204132%_))
                                (let ((_%e204072204135%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204071204132%_))))
                                  (let ((_%hd204073204139%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204072204135%_)))
                                        (_%tl204074204142%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204072204135%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204074204142%_))
                                        (_%loop204061204103%_
                                         _%lp-tl204064204122%_
                                         (cons _%hd204073204139%_
                                               _%type204065204110%_)
                                         (cons _%hd204070204129%_
                                               _%symbol204066204112%_))
                                        (_%g204051204080%_
                                         _%g204052204084%_))))
                                (_%g204051204080%_ _%g204052204084%_))))
                        (_%g204051204080%_ _%g204052204084%_))))
                (let ((_%type204067204145%_ (reverse _%type204065204110%_))
                      (_%symbol204068204148%_
                       (reverse _%symbol204066204112%_)))
                  ((lambda (_%L204151%_ _%L204153%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L204151%_
                                _%L204153%_))
                             (let ((__tmp210447
                                    (lambda (_%g204168204172%_
                                             _%g204169204175%_
                                             _%g204170204177%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g204169204175%_
                                                        (cons _%g204168204172%_
                                                              '())))
                                            _%g204170204177%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp210447
                                '()
                                _%L204151%_
                                _%L204153%_)))))
                   _%type204067204145%_
                   _%symbol204068204148%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop204061204103%_
                                           _%target204058204097%_
                                           '()
                                           '()))
                                        (_%g204051204080%_
                                         _%g204052204084%_)))))
                              (_%g204051204080%_ _%g204052204084%_))))
                      (_%g204051204080%_ _%g204052204084%_)))))
          (_%g204050204180%_ _%$stx204047%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx204185%_)
        (let* ((_%__stx209756209757%_ _%$stx204185%_)
               (_%g204190204232%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209756209757%_)))))
          (let ((_%__kont209759209760%_
                 (lambda (_%L204360%_ _%L204362%_ _%L204363%_ _%L204364%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L204364%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L204363%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L204362%_ '()))
                                           (cons _%L204360%_ '())))))))
                (_%__kont209761209762%_
                 (lambda (_%L204279%_ _%L204281%_ _%L204282%_ _%L204283%_)
                   (cons _%L204283%_
                         (cons _%L204282%_
                               (cons _%L204281%_
                                     (cons _%L204279%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match209795209796%_
                   (lambda (_%e204196204310%_
                            _%hd204197204314%_
                            _%tl204198204317%_
                            _%e204199204320%_
                            _%hd204200204324%_
                            _%tl204201204327%_
                            _%e204202204330%_
                            _%hd204203204334%_
                            _%tl204204204337%_
                            _%e204205204340%_
                            _%hd204206204344%_
                            _%tl204207204347%_
                            _%e204208204350%_
                            _%hd204209204354%_
                            _%tl204210204357%_)
                     (let ((_%L204360%_ _%hd204209204354%_)
                           (_%L204362%_ _%hd204206204344%_)
                           (_%L204363%_ _%hd204203204334%_)
                           (_%L204364%_ _%hd204200204324%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L204364%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L204363%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L204362%_)))
                           (_%__kont209759209760%_
                            _%L204360%_
                            _%L204362%_
                            _%L204363%_
                            _%L204364%_)
                           (let ()
                             (declare (not safe))
                             (_%g204190204232%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209756209757%_))
                  (let ((_%e204196204310%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx209756209757%_))))
                    (let ((_%tl204198204317%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204196204310%_)))
                          (_%hd204197204314%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204196204310%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204198204317%_))
                          (let ((_%e204199204320%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl204198204317%_))))
                            (let ((_%tl204201204327%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204199204320%_)))
                                  (_%hd204200204324%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204199204320%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204201204327%_))
                                  (let ((_%e204202204330%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl204201204327%_))))
                                    (let ((_%tl204204204337%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204202204330%_)))
                                          (_%hd204203204334%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204202204330%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204204204337%_))
                                          (let ((_%e204205204340%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl204204204337%_))))
                                            (let ((_%tl204207204347%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204205204340%_)))
                                                  (_%hd204206204344%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204205204340%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204207204347%_))
                                                  (let ((_%e204208204350%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl204207204347%_))))
                                                    (let ((_%tl204210204357%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204208204350%_)))
                                                          (_%hd204209204354%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204208204350%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204210204357%_))
                                                          (_%__match209795209796%_
                                                           _%e204196204310%_
                                                           _%hd204197204314%_
                                                           _%tl204198204317%_
                                                           _%e204199204320%_
                                                           _%hd204200204324%_
                                                           _%tl204201204327%_
                                                           _%e204202204330%_
                                                           _%hd204203204334%_
                                                           _%tl204204204337%_
                                                           _%e204205204340%_
                                                           _%hd204206204344%_
                                                           _%tl204207204347%_
                                                           _%e204208204350%_
                                                           _%hd204209204354%_
                                                           _%tl204210204357%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204190204232%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204207204347%_))
                                                      (_%__kont209761209762%_
                                                       _%hd204206204344%_
                                                       _%hd204203204334%_
                                                       _%hd204200204324%_
                                                       _%hd204197204314%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204190204232%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204190204232%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204190204232%_)))))
                          (let () (declare (not safe)) (_%g204190204232%_)))))
                  (let () (declare (not safe)) (_%g204190204232%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx204389%_)
        (let* ((_%g204393204428%_
                (lambda (_%g204394204424%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204394204424%_))))
               (_%g204392204547%_
                (lambda (_%g204394204432%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204394204432%_))
                      (let ((_%e204398204435%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204394204432%_))))
                        (let ((_%hd204399204439%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204398204435%_)))
                              (_%tl204400204442%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204398204435%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl204400204442%_))
                              (let ((_g210448_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl204400204442%_
                                        '0))))
                                (begin
                                  (let ((_g210449_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210448_)
                                               (##values-length _g210448_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210449_ 2)))
                                        (error "Context expects 2 values"
                                               _g210449_)))
                                  (let ((_%target204401204445%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210448_ 0)))
                                        (_%tl204403204448%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210448_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204403204448%_))
                                        (letrec ((_%loop204404204451%_
                                                  (lambda (_%hd204402204455%_
                                                           _%symbol204408204458%_
                                                           _%method204409204460%_
                                                           _%type-t204410204462%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd204402204455%_))
                                                        (let ((_%e204405204465%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd204402204455%_))))
                  (let ((_%lp-hd204406204469%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204405204465%_)))
                        (_%lp-tl204407204472%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204405204465%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd204406204469%_))
                        (let ((_%e204414204475%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd204406204469%_))))
                          (let ((_%hd204415204479%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204414204475%_)))
                                (_%tl204416204482%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204414204475%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204416204482%_))
                                (let ((_%e204417204485%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204416204482%_))))
                                  (let ((_%hd204418204489%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204417204485%_)))
                                        (_%tl204419204492%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204417204485%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl204419204492%_))
                                        (let ((_%e204420204495%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl204419204492%_))))
                                          (let ((_%hd204421204499%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e204420204495%_)))
                                                (_%tl204422204502%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e204420204495%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204422204502%_))
                                                (_%loop204404204451%_
                                                 _%lp-tl204407204472%_
                                                 (cons _%hd204421204499%_
                                                       _%symbol204408204458%_)
                                                 (cons _%hd204418204489%_
                                                       _%method204409204460%_)
                                                 (cons _%hd204415204479%_
                                                       _%type-t204410204462%_))
                                                (_%g204393204428%_
                                                 _%g204394204432%_))))
                                        (_%g204393204428%_
                                         _%g204394204432%_))))
                                (_%g204393204428%_ _%g204394204432%_))))
                        (_%g204393204428%_ _%g204394204432%_))))
                (let ((_%symbol204411204505%_ (reverse _%symbol204408204458%_))
                      (_%method204412204508%_ (reverse _%method204409204460%_))
                      (_%type-t204413204510%_
                       (reverse _%type-t204410204462%_)))
                  ((lambda (_%L204513%_ _%L204515%_ _%L204516%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L204513%_
                                _%L204515%_
                                _%L204516%_))
                             (let ((__tmp210450
                                    (lambda (_%g204532204537%_
                                             _%g204533204540%_
                                             _%g204534204542%_
                                             _%g204535204544%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g204534204542%_
                                                        (cons _%g204533204540%_
                                                              (cons _%g204532204537%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g204535204544%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp210450
                                '()
                                _%L204513%_
                                _%L204515%_
                                _%L204516%_)))))
                   _%symbol204411204505%_
                   _%method204412204508%_
                   _%type-t204413204510%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop204404204451%_
                                           _%target204401204445%_
                                           '()
                                           '()
                                           '()))
                                        (_%g204393204428%_
                                         _%g204394204432%_)))))
                              (_%g204393204428%_ _%g204394204432%_))))
                      (_%g204393204428%_ _%g204394204432%_)))))
          (_%g204392204547%_ _%$stx204389%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx204552%_)
        (let* ((_%g204556204589%_
                (lambda (_%g204557204585%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204557204585%_))))
               (_%g204555204703%_
                (lambda (_%g204557204593%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204557204593%_))
                      (let ((_%e204561204596%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204557204593%_))))
                        (let ((_%hd204562204600%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204561204596%_)))
                              (_%tl204563204603%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204561204596%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204563204603%_))
                              (let ((_%e204564204606%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204563204603%_))))
                                (let ((_%hd204565204610%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204564204606%_)))
                                      (_%tl204566204613%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204564204606%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl204566204613%_))
                                      (let ((_g210451_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl204566204613%_
                                                '0))))
                                        (begin
                                          (let ((_g210452_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g210451_)
                                                       (##values-length
                                                        _g210451_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g210452_ 2)))
                                                (error "Context expects 2 values"
                                                       _g210452_)))
                                          (let ((_%target204567204616%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g210451_ 0)))
                                                (_%tl204569204619%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g210451_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204569204619%_))
                                                (letrec ((_%loop204570204622%_
                                                          (lambda (_%hd204568204626%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol204574204629%_
                           _%method204575204631%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd204568204626%_))
                        (let ((_%e204571204634%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd204568204626%_))))
                          (let ((_%lp-hd204572204638%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204571204634%_)))
                                (_%lp-tl204573204641%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204571204634%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd204572204638%_))
                                (let ((_%e204578204644%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd204572204638%_))))
                                  (let ((_%hd204579204648%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204578204644%_)))
                                        (_%tl204580204651%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204578204644%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl204580204651%_))
                                        (let ((_%e204581204654%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl204580204651%_))))
                                          (let ((_%hd204582204658%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e204581204654%_)))
                                                (_%tl204583204661%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e204581204654%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204583204661%_))
                                                (_%loop204570204622%_
                                                 _%lp-tl204573204641%_
                                                 (cons _%hd204582204658%_
                                                       _%symbol204574204629%_)
                                                 (cons _%hd204579204648%_
                                                       _%method204575204631%_))
                                                (_%g204556204589%_
                                                 _%g204557204593%_))))
                                        (_%g204556204589%_
                                         _%g204557204593%_))))
                                (_%g204556204589%_ _%g204557204593%_))))
                        (let ((_%symbol204576204664%_
                               (reverse _%symbol204574204629%_))
                              (_%method204577204667%_
                               (reverse _%method204575204631%_)))
                          ((lambda (_%L204670%_ _%L204672%_ _%L204673%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L204670%_
                                        _%L204672%_))
                                     (let ((__tmp210453
                                            (lambda (_%g204691204695%_
                                                     _%g204692204698%_
                                                     _%g204693204700%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L204673%_
                                                                (cons _%g204692204698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g204691204695%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g204693204700%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp210453
                                        '()
                                        _%L204670%_
                                        _%L204672%_)))))
                           _%symbol204576204664%_
                           _%method204577204667%_
                           _%hd204565204610%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop204570204622%_
                                                   _%target204567204616%_
                                                   '()
                                                   '()))
                                                (_%g204556204589%_
                                                 _%g204557204593%_)))))
                                      (_%g204556204589%_ _%g204557204593%_))))
                              (_%g204556204589%_ _%g204557204593%_))))
                      (_%g204556204589%_ _%g204557204593%_)))))
          (_%g204555204703%_ _%$stx204552%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx204708%_)
        (let* ((_%g204712204726%_
                (lambda (_%g204713204722%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204713204722%_))))
               (_%g204711204767%_
                (lambda (_%g204713204730%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204713204730%_))
                      (let ((_%e204715204733%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204713204730%_))))
                        (let ((_%hd204716204737%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204715204733%_)))
                              (_%tl204717204740%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204715204733%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204717204740%_))
                              (let ((_%e204718204743%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204717204740%_))))
                                (let ((_%hd204719204747%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204718204743%_)))
                                      (_%tl204720204750%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204718204743%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204720204750%_))
                                      ((lambda (_%L204753%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!alias))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L204753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd204719204747%_)
                                      (_%g204712204726%_ _%g204713204730%_))))
                              (_%g204712204726%_ _%g204713204730%_))))
                      (_%g204712204726%_ _%g204713204730%_)))))
          (_%g204711204767%_ _%$stx204708%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx204771%_)
        (let* ((_%g204775204829%_
                (lambda (_%g204776204825%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204776204825%_))))
               (_%g204774205010%_
                (lambda (_%g204776204833%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204776204833%_))
                      (let ((_%e204788204836%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204776204833%_))))
                        (let ((_%hd204789204840%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204788204836%_)))
                              (_%tl204790204843%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204788204836%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204790204843%_))
                              (let ((_%e204791204846%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204790204843%_))))
                                (let ((_%hd204792204850%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204791204846%_)))
                                      (_%tl204793204853%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204791204846%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204793204853%_))
                                      (let ((_%e204794204856%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204793204853%_))))
                                        (let ((_%hd204795204860%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204794204856%_)))
                                              (_%tl204796204863%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204794204856%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204796204863%_))
                                              (let ((_%e204797204866%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204796204863%_))))
                                                (let ((_%hd204798204870%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204797204866%_)))
                                                      (_%tl204799204873%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204797204866%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204799204873%_))
                                                      (let ((_%e204800204876%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl204799204873%_))))
                (let ((_%hd204801204880%_
                       (let () (declare (not safe)) (##car _%e204800204876%_)))
                      (_%tl204802204883%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e204800204876%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204802204883%_))
                      (let ((_%e204803204886%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl204802204883%_))))
                        (let ((_%hd204804204890%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204803204886%_)))
                              (_%tl204805204893%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204803204886%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204805204893%_))
                              (let ((_%e204806204896%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204805204893%_))))
                                (let ((_%hd204807204900%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204806204896%_)))
                                      (_%tl204808204903%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204806204896%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204808204903%_))
                                      (let ((_%e204809204906%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204808204903%_))))
                                        (let ((_%hd204810204910%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204809204906%_)))
                                              (_%tl204811204913%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204809204906%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204811204913%_))
                                              (let ((_%e204812204916%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204811204913%_))))
                                                (let ((_%hd204813204920%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204812204916%_)))
                                                      (_%tl204814204923%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204812204916%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204814204923%_))
                                                      (let ((_%e204815204926%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl204814204923%_))))
                (let ((_%hd204816204930%_
                       (let () (declare (not safe)) (##car _%e204815204926%_)))
                      (_%tl204817204933%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e204815204926%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204817204933%_))
                      (let ((_%e204818204936%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl204817204933%_))))
                        (let ((_%hd204819204940%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204818204936%_)))
                              (_%tl204820204943%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204818204936%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204820204943%_))
                              (let ((_%e204821204946%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204820204943%_))))
                                (let ((_%hd204822204950%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204821204946%_)))
                                      (_%tl204823204953%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204821204946%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204823204953%_))
                                      ((lambda (_%L204956%_
                                                _%L204958%_
                                                _%L204959%_
                                                _%L204960%_
                                                _%L204961%_
                                                _%L204962%_
                                                _%L204963%_
                                                _%L204964%_
                                                _%L204965%_
                                                _%L204966%_
                                                _%L204967%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!class))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L204967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L204966%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L204965%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L204964%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L204963%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L204962%_ '()))
                                           (cons _%L204961%_
                                                 (cons _%L204960%_
                                                       (cons _%L204959%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L204958%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L204956%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd204822204950%_
                                       _%hd204819204940%_
                                       _%hd204816204930%_
                                       _%hd204813204920%_
                                       _%hd204810204910%_
                                       _%hd204807204900%_
                                       _%hd204804204890%_
                                       _%hd204801204880%_
                                       _%hd204798204870%_
                                       _%hd204795204860%_
                                       _%hd204792204850%_)
                                      (_%g204775204829%_ _%g204776204833%_))))
                              (_%g204775204829%_ _%g204776204833%_))))
                      (_%g204775204829%_ _%g204776204833%_))))
              (_%g204775204829%_ _%g204776204833%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204775204829%_
                                               _%g204776204833%_))))
                                      (_%g204775204829%_ _%g204776204833%_))))
                              (_%g204775204829%_ _%g204776204833%_))))
                      (_%g204775204829%_ _%g204776204833%_))))
              (_%g204775204829%_ _%g204776204833%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204775204829%_
                                               _%g204776204833%_))))
                                      (_%g204775204829%_ _%g204776204833%_))))
                              (_%g204775204829%_ _%g204776204833%_))))
                      (_%g204775204829%_ _%g204776204833%_)))))
          (_%g204774205010%_ _%$stx204771%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx205014%_)
        (let* ((_%g205018205032%_
                (lambda (_%g205019205028%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205019205028%_))))
               (_%g205017205073%_
                (lambda (_%g205019205036%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205019205036%_))
                      (let ((_%e205021205039%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205019205036%_))))
                        (let ((_%hd205022205043%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205021205039%_)))
                              (_%tl205023205046%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205021205039%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205023205046%_))
                              (let ((_%e205024205049%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205023205046%_))))
                                (let ((_%hd205025205053%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205024205049%_)))
                                      (_%tl205026205056%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205024205049%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl205026205056%_))
                                      ((lambda (_%L205059%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L205059%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd205025205053%_)
                                      (_%g205018205032%_ _%g205019205036%_))))
                              (_%g205018205032%_ _%g205019205036%_))))
                      (_%g205018205032%_ _%g205019205036%_)))))
          (_%g205017205073%_ _%$stx205014%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx205077%_)
        (let* ((_%g205081205095%_
                (lambda (_%g205082205091%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205082205091%_))))
               (_%g205080205136%_
                (lambda (_%g205082205099%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205082205099%_))
                      (let ((_%e205084205102%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205082205099%_))))
                        (let ((_%hd205085205106%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205084205102%_)))
                              (_%tl205086205109%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205084205102%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205086205109%_))
                              (let ((_%e205087205112%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205086205109%_))))
                                (let ((_%hd205088205116%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205087205112%_)))
                                      (_%tl205089205119%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205087205112%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl205089205119%_))
                                      ((lambda (_%L205122%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!constructor))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L205122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd205088205116%_)
                                      (_%g205081205095%_ _%g205082205099%_))))
                              (_%g205081205095%_ _%g205082205099%_))))
                      (_%g205081205095%_ _%g205082205099%_)))))
          (_%g205080205136%_ _%$stx205077%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx205140%_)
        (let* ((_%g205144205166%_
                (lambda (_%g205145205162%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205145205162%_))))
               (_%g205143205235%_
                (lambda (_%g205145205170%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205145205170%_))
                      (let ((_%e205149205173%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205145205170%_))))
                        (let ((_%hd205150205177%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205149205173%_)))
                              (_%tl205151205180%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205149205173%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205151205180%_))
                              (let ((_%e205152205183%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205151205180%_))))
                                (let ((_%hd205153205187%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205152205183%_)))
                                      (_%tl205154205190%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205152205183%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205154205190%_))
                                      (let ((_%e205155205193%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205154205190%_))))
                                        (let ((_%hd205156205197%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205155205193%_)))
                                              (_%tl205157205200%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205155205193%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205157205200%_))
                                              (let ((_%e205158205203%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl205157205200%_))))
                                                (let ((_%hd205159205207%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205158205203%_)))
                                                      (_%tl205160205210%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205158205203%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205160205210%_))
                                                      ((lambda (_%L205213%_
                                                                _%L205215%_
                                                                _%L205216%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L205216%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L205215%_ '()))
                                   (cons _%L205213%_ '())))))
               _%hd205159205207%_
               _%hd205156205197%_
               _%hd205153205187%_)
              (_%g205144205166%_ _%g205145205170%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g205144205166%_
                                               _%g205145205170%_))))
                                      (_%g205144205166%_ _%g205145205170%_))))
                              (_%g205144205166%_ _%g205145205170%_))))
                      (_%g205144205166%_ _%g205145205170%_)))))
          (_%g205143205235%_ _%$stx205140%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx205239%_)
        (let* ((_%g205243205265%_
                (lambda (_%g205244205261%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205244205261%_))))
               (_%g205242205334%_
                (lambda (_%g205244205269%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205244205269%_))
                      (let ((_%e205248205272%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205244205269%_))))
                        (let ((_%hd205249205276%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205248205272%_)))
                              (_%tl205250205279%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205248205272%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205250205279%_))
                              (let ((_%e205251205282%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205250205279%_))))
                                (let ((_%hd205252205286%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205251205282%_)))
                                      (_%tl205253205289%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205251205282%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205253205289%_))
                                      (let ((_%e205254205292%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205253205289%_))))
                                        (let ((_%hd205255205296%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205254205292%_)))
                                              (_%tl205256205299%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205254205292%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205256205299%_))
                                              (let ((_%e205257205302%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl205256205299%_))))
                                                (let ((_%hd205258205306%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205257205302%_)))
                                                      (_%tl205259205309%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205257205302%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205259205309%_))
                                                      ((lambda (_%L205312%_
                                                                _%L205314%_
                                                                _%L205315%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L205315%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L205314%_ '()))
                                   (cons _%L205312%_ '())))))
               _%hd205258205306%_
               _%hd205255205296%_
               _%hd205252205286%_)
              (_%g205243205265%_ _%g205244205269%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g205243205265%_
                                               _%g205244205269%_))))
                                      (_%g205243205265%_ _%g205244205269%_))))
                              (_%g205243205265%_ _%g205244205269%_))))
                      (_%g205243205265%_ _%g205244205269%_)))))
          (_%g205242205334%_ _%$stx205239%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx205338%_)
        (let* ((_%g205342205356%_
                (lambda (_%g205343205352%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205343205352%_))))
               (_%g205341205397%_
                (lambda (_%g205343205360%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205343205360%_))
                      (let ((_%e205345205363%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205343205360%_))))
                        (let ((_%hd205346205367%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205345205363%_)))
                              (_%tl205347205370%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205345205363%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205347205370%_))
                              (let ((_%e205348205373%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205347205370%_))))
                                (let ((_%hd205349205377%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205348205373%_)))
                                      (_%tl205350205380%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205348205373%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl205350205380%_))
                                      ((lambda (_%L205383%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!primitive-predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L205383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd205349205377%_)
                                      (_%g205342205356%_ _%g205343205360%_))))
                              (_%g205342205356%_ _%g205343205360%_))))
                      (_%g205342205356%_ _%g205343205360%_)))))
          (_%g205341205397%_ _%$stx205338%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx205401%_)
        (let* ((_%g205405205423%_
                (lambda (_%g205406205419%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205406205419%_))))
               (_%g205404205478%_
                (lambda (_%g205406205427%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205406205427%_))
                      (let ((_%e205409205430%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205406205427%_))))
                        (let ((_%hd205410205434%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205409205430%_)))
                              (_%tl205411205437%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205409205430%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205411205437%_))
                              (let ((_%e205412205440%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205411205437%_))))
                                (let ((_%hd205413205444%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205412205440%_)))
                                      (_%tl205414205447%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205412205440%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205414205447%_))
                                      (let ((_%e205415205450%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205414205447%_))))
                                        (let ((_%hd205416205454%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205415205450%_)))
                                              (_%tl205417205457%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205415205450%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205417205457%_))
                                              ((lambda (_%L205460%_
                                                        _%L205462%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L205462%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L205460%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd205416205454%_
                                               _%hd205413205444%_)
                                              (_%g205405205423%_
                                               _%g205406205427%_))))
                                      (_%g205405205423%_ _%g205406205427%_))))
                              (_%g205405205423%_ _%g205406205427%_))))
                      (_%g205405205423%_ _%g205406205427%_)))))
          (_%g205404205478%_ _%$stx205401%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx205482%_)
        (let* ((_%__stx209824209825%_ _%$stx205482%_)
               (_%g205489205550%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209824209825%_)))))
          (let ((_%__kont209827209828%_
                 (lambda (_%L205788%_ _%L205790%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L205790%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L205788%_ '()))
                                     '())))))
                (_%__kont209829209830%_
                 (lambda (_%L205727%_ _%L205729%_ _%L205730%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L205730%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L205729%_ '()))
                                     (cons 'signature:
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'apply))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!signature))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L205727%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont209831209832%_
                 (lambda (_%L205651%_ _%L205653%_)
                   (cons _%L205653%_ (cons _%L205651%_ (cons '#f '())))))
                (_%__kont209833209834%_
                 (lambda (_%L205601%_ _%L205603%_ _%L205604%_)
                   (cons _%L205604%_
                         (cons _%L205603%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L205601%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx209824209825%_))
                (let ((_%e205493205758%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx209824209825%_))))
                  (let ((_%tl205495205765%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205493205758%_)))
                        (_%hd205494205762%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205493205758%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl205495205765%_))
                        (let ((_%e205496205768%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl205495205765%_))))
                          (let ((_%tl205498205775%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205496205768%_)))
                                (_%hd205497205772%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205496205768%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl205498205775%_))
                                (let ((_%e205499205778%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl205498205775%_))))
                                  (let ((_%tl205501205785%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205499205778%_)))
                                        (_%hd205500205782%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205499205778%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205501205785%_))
                                        (_%__kont209827209828%_
                                         _%hd205500205782%_
                                         _%hd205497205772%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl205501205785%_))
                                            (let ((_%e205514205703%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl205501205785%_))))
                                              (let ((_%tl205516205710%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205514205703%_)))
                                                    (_%hd205515205707%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205514205703%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd205515205707%_))
                                                    (let ((_%e205517205713%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd205515205707%_))))
                                                      (if (equal? _%e205517205713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl205516205710%_))
                      (let ((_%e205518205717%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl205516205710%_))))
                        (let ((_%tl205520205724%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205518205717%_)))
                              (_%hd205519205721%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205518205717%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl205520205724%_))
                              (_%__kont209829209830%_
                               _%hd205519205721%_
                               _%hd205500205782%_
                               _%hd205497205772%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd205500205782%_))
                                  (let ((_%e205541205587%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd205500205782%_))))
                                    (declare (not safe))
                                    (_%g205489205550%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g205489205550%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd205500205782%_))
                          (let ((_%e205541205587%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd205500205782%_))))
                            (if (equal? _%e205541205587%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl205516205710%_))
                                    (_%__kont209833209834%_
                                     _%hd205515205707%_
                                     _%hd205497205772%_
                                     _%hd205494205762%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g205489205550%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g205489205550%_))))
                          (let () (declare (not safe)) (_%g205489205550%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd205500205782%_))
                      (let ((_%e205541205587%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd205500205782%_))))
                        (if (equal? _%e205541205587%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl205516205710%_))
                                (_%__kont209833209834%_
                                 _%hd205515205707%_
                                 _%hd205497205772%_
                                 _%hd205494205762%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g205489205550%_)))
                            (let () (declare (not safe)) (_%g205489205550%_))))
                      (let () (declare (not safe)) (_%g205489205550%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd205500205782%_))
                                                        (let ((_%e205541205587%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd205500205782%_))))
                  (if (equal? _%e205541205587%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205516205710%_))
                          (_%__kont209833209834%_
                           _%hd205515205707%_
                           _%hd205497205772%_
                           _%hd205494205762%_)
                          (let () (declare (not safe)) (_%g205489205550%_)))
                      (let () (declare (not safe)) (_%g205489205550%_))))
                (let () (declare (not safe)) (_%g205489205550%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd205500205782%_))
                                                (let ((_%e205541205587%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd205500205782%_))))
                                                  (declare (not safe))
                                                  (_%g205489205550%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g205489205550%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl205498205775%_))
                                    (_%__kont209831209832%_
                                     _%hd205497205772%_
                                     _%hd205494205762%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g205489205550%_))))))
                        (let () (declare (not safe)) (_%g205489205550%_)))))
                (let () (declare (not safe)) (_%g205489205550%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx205809%_)
        (let* ((_%g205813205842%_
                (lambda (_%g205814205838%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205814205838%_))))
               (_%g205812205951%_
                (lambda (_%g205814205846%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205814205846%_))
                      (let ((_%e205816205849%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205814205846%_))))
                        (let ((_%hd205817205853%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205816205849%_)))
                              (_%tl205818205856%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205816205849%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl205818205856%_))
                              (let ((_g210454_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl205818205856%_
                                        '0))))
                                (begin
                                  (let ((_g210455_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210454_)
                                               (##values-length _g210454_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210455_ 2)))
                                        (error "Context expects 2 values"
                                               _g210455_)))
                                  (let ((_%target205819205859%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210454_ 0)))
                                        (_%tl205821205862%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210454_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205821205862%_))
                                        (letrec ((_%loop205822205865%_
                                                  (lambda (_%hd205820205869%_
                                                           _%clause205826205872%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd205820205869%_))
                                                        (let ((_%e205823205875%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd205820205869%_))))
                  (let ((_%lp-hd205824205879%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205823205875%_)))
                        (_%lp-tl205825205882%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205823205875%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd205824205879%_))
                        (let ((_g210456_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd205824205879%_
                                  '0))))
                          (begin
                            (let ((_g210457_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g210456_)
                                         (##values-length _g210456_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g210457_ 2)))
                                  (error "Context expects 2 values"
                                         _g210457_)))
                            (let ((_%target205828205885%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g210456_ 0)))
                                  (_%tl205830205888%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g210456_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl205830205888%_))
                                  (letrec ((_%loop205831205891%_
                                            (lambda (_%hd205829205895%_
                                                     _%clause205835205898%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd205829205895%_))
                                                  (let ((_%e205832205901%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd205829205895%_))))
                                                    (let ((_%lp-hd205833205905%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e205832205901%_)))
                                                          (_%lp-tl205834205908%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e205832205901%_))))
                                                      (_%loop205831205891%_
                                                       _%lp-tl205834205908%_
                                                       (cons _%lp-hd205833205905%_
                                                             _%clause205835205898%_))))
                                                  (let ((_%clause205836205911%_
                                                         (reverse _%clause205835205898%_)))
                                                    (_%loop205822205865%_
                                                     _%lp-tl205825205882%_
                                                     (cons _%clause205836205911%_
                                                           _%clause205826205872%_)))))))
                                    (_%loop205831205891%_
                                     _%target205828205885%_
                                     '()))
                                  (_%g205813205842%_ _%g205814205846%_)))))
                        (_%g205813205842%_ _%g205814205846%_))))
                (let ((_%clause205827205915%_
                       (reverse _%clause205826205872%_)))
                  ((lambda (_%L205919%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp210458
                                              (lambda (_%g205934205939%_
                                                       _%g205935205942%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp210459
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g205936205945%_ _%g205937205948%_)
                             (cons _%g205936205945%_ _%g205937205948%_))))
                      (declare (not safe))
                      (__foldr1 __tmp210459 '() _%g205934205939%_)))
              _%g205935205942%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp210458
                                          '()
                                          _%L205919%_)))
                                 '())))
                   _%clause205827205915%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop205822205865%_
                                           _%target205819205859%_
                                           '()))
                                        (_%g205813205842%_
                                         _%g205814205846%_)))))
                              (_%g205813205842%_ _%g205814205846%_))))
                      (_%g205813205842%_ _%g205814205846%_)))))
          (_%g205812205951%_ _%$stx205809%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx205957%_)
        (let* ((_%g205961205979%_
                (lambda (_%g205962205975%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205962205975%_))))
               (_%g205960206034%_
                (lambda (_%g205962205983%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205962205983%_))
                      (let ((_%e205965205986%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205962205983%_))))
                        (let ((_%hd205966205990%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205965205986%_)))
                              (_%tl205967205993%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205965205986%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205967205993%_))
                              (let ((_%e205968205996%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205967205993%_))))
                                (let ((_%hd205969206000%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205968205996%_)))
                                      (_%tl205970206003%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205968205996%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205970206003%_))
                                      (let ((_%e205971206006%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205970206003%_))))
                                        (let ((_%hd205972206010%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205971206006%_)))
                                              (_%tl205973206013%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205971206006%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205973206013%_))
                                              ((lambda (_%L206016%_
                                                        _%L206018%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L206018%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L206016%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd205972206010%_
                                               _%hd205969206000%_)
                                              (_%g205961205979%_
                                               _%g205962205983%_))))
                                      (_%g205961205979%_ _%g205962205983%_))))
                              (_%g205961205979%_ _%g205962205983%_))))
                      (_%g205961205979%_ _%g205962205983%_)))))
          (_%g205960206034%_ _%$stx205957%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx206038%_)
        (let* ((_%g206042206060%_
                (lambda (_%g206043206056%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206043206056%_))))
               (_%g206041206115%_
                (lambda (_%g206043206064%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206043206064%_))
                      (let ((_%e206046206067%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206043206064%_))))
                        (let ((_%hd206047206071%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206046206067%_)))
                              (_%tl206048206074%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206046206067%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206048206074%_))
                              (let ((_%e206049206077%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206048206074%_))))
                                (let ((_%hd206050206081%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206049206077%_)))
                                      (_%tl206051206084%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206049206077%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl206051206084%_))
                                      (let ((_%e206052206087%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl206051206084%_))))
                                        (let ((_%hd206053206091%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206052206087%_)))
                                              (_%tl206054206094%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206052206087%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206054206094%_))
                                              ((lambda (_%L206097%_
                                                        _%L206099%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L206099%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L206097%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd206053206091%_
                                               _%hd206050206081%_)
                                              (_%g206042206060%_
                                               _%g206043206064%_))))
                                      (_%g206042206060%_ _%g206043206064%_))))
                              (_%g206042206060%_ _%g206043206064%_))))
                      (_%g206042206060%_ _%g206043206064%_)))))
          (_%g206041206115%_ _%$stx206038%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx206119%_)
        (let* ((_%g206123206152%_
                (lambda (_%g206124206148%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206124206148%_))))
               (_%g206122206252%_
                (lambda (_%g206124206156%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206124206156%_))
                      (let ((_%e206127206159%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206124206156%_))))
                        (let ((_%hd206128206163%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206127206159%_)))
                              (_%tl206129206166%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206127206159%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl206129206166%_))
                              (let ((_g210460_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl206129206166%_
                                        '0))))
                                (begin
                                  (let ((_g210461_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210460_)
                                               (##values-length _g210460_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210461_ 2)))
                                        (error "Context expects 2 values"
                                               _g210461_)))
                                  (let ((_%target206130206169%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210460_ 0)))
                                        (_%tl206132206172%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210460_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl206132206172%_))
                                        (letrec ((_%loop206133206175%_
                                                  (lambda (_%hd206131206179%_
                                                           _%rule206137206182%_
                                                           _%proc206138206184%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd206131206179%_))
                                                        (let ((_%e206134206187%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd206131206179%_))))
                  (let ((_%lp-hd206135206191%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206134206187%_)))
                        (_%lp-tl206136206194%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206134206187%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd206135206191%_))
                        (let ((_%e206141206197%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd206135206191%_))))
                          (let ((_%hd206142206201%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206141206197%_)))
                                (_%tl206143206204%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206141206197%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl206143206204%_))
                                (let ((_%e206144206207%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl206143206204%_))))
                                  (let ((_%hd206145206211%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206144206207%_)))
                                        (_%tl206146206214%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206144206207%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl206146206214%_))
                                        (_%loop206133206175%_
                                         _%lp-tl206136206194%_
                                         (cons _%hd206145206211%_
                                               _%rule206137206182%_)
                                         (cons _%hd206142206201%_
                                               _%proc206138206184%_))
                                        (_%g206123206152%_
                                         _%g206124206156%_))))
                                (_%g206123206152%_ _%g206124206156%_))))
                        (_%g206123206152%_ _%g206124206156%_))))
                (let ((_%rule206139206217%_ (reverse _%rule206137206182%_))
                      (_%proc206140206220%_ (reverse _%proc206138206184%_)))
                  ((lambda (_%L206223%_ _%L206225%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L206223%_
                                _%L206225%_))
                             (let ((__tmp210462
                                    (lambda (_%g206240206244%_
                                             _%g206241206247%_
                                             _%g206242206249%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g206241206247%_
                                                        (cons _%g206240206244%_
                                                              '())))
                                            _%g206242206249%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp210462
                                '()
                                _%L206223%_
                                _%L206225%_)))))
                   _%rule206139206217%_
                   _%proc206140206220%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop206133206175%_
                                           _%target206130206169%_
                                           '()
                                           '()))
                                        (_%g206123206152%_
                                         _%g206124206156%_)))))
                              (_%g206123206152%_ _%g206124206156%_))))
                      (_%g206123206152%_ _%g206124206156%_)))))
          (_%g206122206252%_ _%$stx206119%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx206257%_)
        (let* ((_%g206261206279%_
                (lambda (_%g206262206275%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206262206275%_))))
               (_%g206260206334%_
                (lambda (_%g206262206283%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206262206283%_))
                      (let ((_%e206265206286%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206262206283%_))))
                        (let ((_%hd206266206290%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206265206286%_)))
                              (_%tl206267206293%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206265206286%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206267206293%_))
                              (let ((_%e206268206296%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206267206293%_))))
                                (let ((_%hd206269206300%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206268206296%_)))
                                      (_%tl206270206303%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206268206296%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl206270206303%_))
                                      (let ((_%e206271206306%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl206270206303%_))))
                                        (let ((_%hd206272206310%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206271206306%_)))
                                              (_%tl206273206313%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206271206306%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206273206313%_))
                                              ((lambda (_%L206316%_
                                                        _%L206318%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'let))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'type))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'optimizer-lookup-type))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L206318%_ '()))
                                             '()))
                                 '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'if))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '!lambda?))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'type))
                                                   '()))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'set!))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '!lambda-inline))
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'type))
                             '()))
                 (cons _%L206316%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'displayln))
                                                         (cons '"*** WARNING unknown procedure "
                                                               (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L206318%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd206272206310%_
                                               _%hd206269206300%_)
                                              (_%g206261206279%_
                                               _%g206262206283%_))))
                                      (_%g206261206279%_ _%g206262206283%_))))
                              (_%g206261206279%_ _%g206262206283%_))))
                      (_%g206261206279%_ _%g206262206283%_)))))
          (_%g206260206334%_ _%$stx206257%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx206338%_)
        (let* ((_%__stx209942209943%_ _%$stx206338%_)
               (_%g206343206368%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209942209943%_)))))
          (let ((_%__kont209945209946%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont209947209948%_
                 (lambda (_%L206415%_ _%L206417%_ _%L206418%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L206418%_ (cons _%L206417%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L206415%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx209942209943%_))
                (let ((_%e206345206444%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx209942209943%_))))
                  (let ((_%tl206347206451%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206345206444%_)))
                        (_%hd206346206448%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206345206444%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl206347206451%_))
                        (_%__kont209945209946%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl206347206451%_))
                            (let ((_%e206354206385%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl206347206451%_))))
                              (let ((_%tl206356206392%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e206354206385%_)))
                                    (_%hd206355206389%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e206354206385%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd206355206389%_))
                                    (let ((_%e206357206395%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd206355206389%_))))
                                      (let ((_%tl206359206402%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e206357206395%_)))
                                            (_%hd206358206399%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e206357206395%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl206359206402%_))
                                            (let ((_%e206360206405%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl206359206402%_))))
                                              (let ((_%tl206362206412%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e206360206405%_)))
                                                    (_%hd206361206409%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e206360206405%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl206362206412%_))
                                                    (_%__kont209947209948%_
                                                     _%tl206356206392%_
                                                     _%hd206361206409%_
                                                     _%hd206358206399%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g206343206368%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g206343206368%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g206343206368%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g206343206368%_))))))
                (let () (declare (not safe)) (_%g206343206368%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx206462%_)
        (let* ((_%__stx209986209987%_ _%$stx206462%_)
               (_%g206467206498%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209986209987%_)))))
          (let ((_%__kont209989209990%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont209991209992%_
                 (lambda (_%L206565%_ _%L206567%_ _%L206568%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L206568%_
                                           (let ((__tmp210463
                                                  (lambda (_%g206588206591%_
                                                           _%g206589206594%_)
                                                    (cons _%g206588206591%_
                                                          _%g206589206594%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp210463
                                              '()
                                              _%L206567%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L206565%_)
                                     '()))))))
            (let ((_%__match210029210030%_
                   (lambda (_%e206475206505%_
                            _%hd206476206509%_
                            _%tl206477206512%_
                            _%e206478206515%_
                            _%hd206479206519%_
                            _%tl206480206522%_
                            _%e206481206525%_
                            _%hd206482206529%_
                            _%tl206483206532%_
                            _%__splice209993209994%_
                            _%target206484206535%_
                            _%tl206486206538%_)
                     (letrec ((_%loop206487206541%_
                               (lambda (_%hd206485206545%_ _%sig206491206548%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd206485206545%_))
                                     (let ((_%e206488206551%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd206485206545%_))))
                                       (let ((_%lp-tl206490206558%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e206488206551%_)))
                                             (_%lp-hd206489206555%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e206488206551%_))))
                                         (_%loop206487206541%_
                                          _%lp-tl206490206558%_
                                          (cons _%lp-hd206489206555%_
                                                _%sig206491206548%_))))
                                     (let ((_%sig206492206561%_
                                            (reverse _%sig206491206548%_)))
                                       (_%__kont209991209992%_
                                        _%tl206480206522%_
                                        _%sig206492206561%_
                                        _%hd206482206529%_))))))
                       (_%loop206487206541%_ _%target206484206535%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209986209987%_))
                  (let ((_%e206469206604%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx209986209987%_))))
                    (let ((_%tl206471206611%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206469206604%_)))
                          (_%hd206470206608%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206469206604%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl206471206611%_))
                          (_%__kont209989209990%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206471206611%_))
                              (let ((_%e206478206515%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206471206611%_))))
                                (let ((_%tl206480206522%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206478206515%_)))
                                      (_%hd206479206519%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206478206515%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd206479206519%_))
                                      (let ((_%e206481206525%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd206479206519%_))))
                                        (let ((_%tl206483206532%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206481206525%_)))
                                              (_%hd206482206529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206481206525%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl206483206532%_))
                                              (let ((_%__splice209993209994%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl206483206532%_
                                                        '0))))
                                                (let ((_%tl206486206538%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice209993209994%_
                                                          '1)))
                                                      (_%target206484206535%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice209993209994%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl206486206538%_))
                                                      (_%__match210029210030%_
                                                       _%e206469206604%_
                                                       _%hd206470206608%_
                                                       _%tl206471206611%_
                                                       _%e206478206515%_
                                                       _%hd206479206519%_
                                                       _%tl206480206522%_
                                                       _%e206481206525%_
                                                       _%hd206482206529%_
                                                       _%tl206483206532%_
                                                       _%__splice209993209994%_
                                                       _%target206484206535%_
                                                       _%tl206486206538%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g206467206498%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g206467206498%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g206467206498%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g206467206498%_))))))
                  (let () (declare (not safe)) (_%g206467206498%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx206623%_)
        (let* ((_%__stx210032210033%_ _%$stx206623%_)
               (_%g206628206675%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx210032210033%_)))))
          (let ((_%__kont210035210036%_
                 (lambda (_%L206837%_ _%L206839%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L206839%_
                               (let ((__tmp210464
                                      (lambda (_%g206859206862%_
                                               _%g206860206865%_)
                                        (cons _%g206859206862%_
                                              _%g206860206865%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp210464 '() _%L206837%_))))))
                (_%__kont210039210040%_
                 (lambda (_%L206732%_ _%L206734%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L206734%_
                               (let ((__tmp210465
                                      (lambda (_%g206751206754%_
                                               _%g206752206757%_)
                                        (cons _%g206751206754%_
                                              _%g206752206757%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp210465 '() _%L206732%_)))))))
            (let* ((_%__match210099210100%_
                    (lambda (_%e206655206682%_
                             _%hd206656206686%_
                             _%tl206657206689%_
                             _%e206658206692%_
                             _%hd206659206696%_
                             _%tl206660206699%_
                             _%__splice210041210042%_
                             _%target206661206702%_
                             _%tl206663206705%_)
                      (letrec ((_%loop206664206708%_
                                (lambda (_%hd206662206712%_
                                         _%sig206668206715%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd206662206712%_))
                                      (let ((_%e206665206718%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd206662206712%_))))
                                        (let ((_%lp-tl206667206725%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206665206718%_)))
                                              (_%lp-hd206666206722%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206665206718%_))))
                                          (_%loop206664206708%_
                                           _%lp-tl206667206725%_
                                           (cons _%lp-hd206666206722%_
                                                 _%sig206668206715%_))))
                                      (let ((_%sig206669206728%_
                                             (reverse _%sig206668206715%_)))
                                        (_%__kont210039210040%_
                                         _%sig206669206728%_
                                         _%hd206659206696%_))))))
                        (_%loop206664206708%_ _%target206661206702%_ '()))))
                   (_%__match210091210092%_
                    (lambda (_%e206655206682%_
                             _%hd206656206686%_
                             _%tl206657206689%_
                             _%e206658206692%_
                             _%hd206659206696%_
                             _%tl206660206699%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl206660206699%_))
                          (let ((_%__splice210041210042%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl206660206699%_
                                    '0))))
                            (let ((_%tl206663206705%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice210041210042%_
                                      '1)))
                                  (_%target206661206702%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice210041210042%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl206663206705%_))
                                  (_%__match210099210100%_
                                   _%e206655206682%_
                                   _%hd206656206686%_
                                   _%tl206657206689%_
                                   _%e206658206692%_
                                   _%hd206659206696%_
                                   _%tl206660206699%_
                                   _%__splice210041210042%_
                                   _%target206661206702%_
                                   _%tl206663206705%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g206628206675%_)))))
                          (let () (declare (not safe)) (_%g206628206675%_)))))
                   (_%__match210079210080%_
                    (lambda (_%e206632206767%_
                             _%hd206633206771%_
                             _%tl206634206774%_
                             _%e206635206777%_
                             _%hd206636206781%_
                             _%tl206637206784%_
                             _%e206638206787%_
                             _%hd206639206791%_
                             _%tl206640206794%_
                             _%e206641206797%_
                             _%hd206642206801%_
                             _%tl206643206804%_
                             _%__splice210037210038%_
                             _%target206644206807%_
                             _%tl206646206810%_)
                      (letrec ((_%loop206647206813%_
                                (lambda (_%hd206645206817%_
                                         _%sig206651206820%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd206645206817%_))
                                      (let ((_%e206648206823%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd206645206817%_))))
                                        (let ((_%lp-tl206650206830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206648206823%_)))
                                              (_%lp-hd206649206827%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206648206823%_))))
                                          (_%loop206647206813%_
                                           _%lp-tl206650206830%_
                                           (cons _%lp-hd206649206827%_
                                                 _%sig206651206820%_))))
                                      (let ((_%sig206652206833%_
                                             (reverse _%sig206651206820%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl206640206794%_))
                                            (_%__kont210035210036%_
                                             _%sig206652206833%_
                                             _%hd206636206781%_)
                                            (_%__match210091210092%_
                                             _%e206632206767%_
                                             _%hd206633206771%_
                                             _%tl206634206774%_
                                             _%e206635206777%_
                                             _%hd206636206781%_
                                             _%tl206637206784%_)))))))
                        (_%loop206647206813%_ _%target206644206807%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx210032210033%_))
                  (let ((_%e206632206767%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx210032210033%_))))
                    (let ((_%tl206634206774%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206632206767%_)))
                          (_%hd206633206771%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206632206767%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl206634206774%_))
                          (let ((_%e206635206777%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl206634206774%_))))
                            (let ((_%tl206637206784%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e206635206777%_)))
                                  (_%hd206636206781%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e206635206777%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl206637206784%_))
                                  (let ((_%e206638206787%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl206637206784%_))))
                                    (let ((_%tl206640206794%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e206638206787%_)))
                                          (_%hd206639206791%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e206638206787%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd206639206791%_))
                                          (let ((_%e206641206797%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd206639206791%_))))
                                            (let ((_%tl206643206804%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e206641206797%_)))
                                                  (_%hd206642206801%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e206641206797%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd206642206801%_))
                                                  (if (let ((__tmp210466
                                                             |gxc[1]#_g210467_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp210466
                                                         _%hd206642206801%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl206643206804%_))
                                                          (let ((_%__splice210037210038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl206643206804%_
                            '0))))
                    (let ((_%tl206646206810%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice210037210038%_ '1)))
                          (_%target206644206807%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice210037210038%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl206646206810%_))
                          (_%__match210079210080%_
                           _%e206632206767%_
                           _%hd206633206771%_
                           _%tl206634206774%_
                           _%e206635206777%_
                           _%hd206636206781%_
                           _%tl206637206784%_
                           _%e206638206787%_
                           _%hd206639206791%_
                           _%tl206640206794%_
                           _%e206641206797%_
                           _%hd206642206801%_
                           _%tl206643206804%_
                           _%__splice210037210038%_
                           _%target206644206807%_
                           _%tl206646206810%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl206637206784%_))
                              (let ((_%__splice210041210042%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl206637206784%_
                                        '0))))
                                (let ((_%tl206663206705%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice210041210042%_
                                          '1)))
                                      (_%target206661206702%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice210041210042%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl206663206705%_))
                                      (_%__match210099210100%_
                                       _%e206632206767%_
                                       _%hd206633206771%_
                                       _%tl206634206774%_
                                       _%e206635206777%_
                                       _%hd206636206781%_
                                       _%tl206637206784%_
                                       _%__splice210041210042%_
                                       _%target206661206702%_
                                       _%tl206663206705%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g206628206675%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g206628206675%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl206637206784%_))
                      (let ((_%__splice210041210042%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl206637206784%_
                                '0))))
                        (let ((_%tl206663206705%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice210041210042%_ '1)))
                              (_%target206661206702%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice210041210042%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl206663206705%_))
                              (_%__match210099210100%_
                               _%e206632206767%_
                               _%hd206633206771%_
                               _%tl206634206774%_
                               _%e206635206777%_
                               _%hd206636206781%_
                               _%tl206637206784%_
                               _%__splice210041210042%_
                               _%target206661206702%_
                               _%tl206663206705%_)
                              (let ()
                                (declare (not safe))
                                (_%g206628206675%_)))))
                      (let () (declare (not safe)) (_%g206628206675%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl206637206784%_))
                  (let ((_%__splice210041210042%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl206637206784%_
                            '0))))
                    (let ((_%tl206663206705%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice210041210042%_ '1)))
                          (_%target206661206702%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice210041210042%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl206663206705%_))
                          (_%__match210099210100%_
                           _%e206632206767%_
                           _%hd206633206771%_
                           _%tl206634206774%_
                           _%e206635206777%_
                           _%hd206636206781%_
                           _%tl206637206784%_
                           _%__splice210041210042%_
                           _%target206661206702%_
                           _%tl206663206705%_)
                          (let () (declare (not safe)) (_%g206628206675%_)))))
                  (let () (declare (not safe)) (_%g206628206675%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl206637206784%_))
                                                      (let ((_%__splice210041210042%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl206637206784%_
                        '0))))
                (let ((_%tl206663206705%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice210041210042%_ '1)))
                      (_%target206661206702%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice210041210042%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl206663206705%_))
                      (_%__match210099210100%_
                       _%e206632206767%_
                       _%hd206633206771%_
                       _%tl206634206774%_
                       _%e206635206777%_
                       _%hd206636206781%_
                       _%tl206637206784%_
                       _%__splice210041210042%_
                       _%target206661206702%_
                       _%tl206663206705%_)
                      (let () (declare (not safe)) (_%g206628206675%_)))))
              (let () (declare (not safe)) (_%g206628206675%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl206637206784%_))
                                              (let ((_%__splice210041210042%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl206637206784%_
                                                        '0))))
                                                (let ((_%tl206663206705%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice210041210042%_
                                                          '1)))
                                                      (_%target206661206702%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice210041210042%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl206663206705%_))
                                                      (_%__match210099210100%_
                                                       _%e206632206767%_
                                                       _%hd206633206771%_
                                                       _%tl206634206774%_
                                                       _%e206635206777%_
                                                       _%hd206636206781%_
                                                       _%tl206637206784%_
                                                       _%__splice210041210042%_
                                                       _%target206661206702%_
                                                       _%tl206663206705%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g206628206675%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g206628206675%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl206637206784%_))
                                      (let ((_%__splice210041210042%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl206637206784%_
                                                '0))))
                                        (let ((_%tl206663206705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice210041210042%_
                                                  '1)))
                                              (_%target206661206702%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice210041210042%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206663206705%_))
                                              (_%__match210099210100%_
                                               _%e206632206767%_
                                               _%hd206633206771%_
                                               _%tl206634206774%_
                                               _%e206635206777%_
                                               _%hd206636206781%_
                                               _%tl206637206784%_
                                               _%__splice210041210042%_
                                               _%target206661206702%_
                                               _%tl206663206705%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g206628206675%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g206628206675%_))))))
                          (let () (declare (not safe)) (_%g206628206675%_)))))
                  (let () (declare (not safe)) (_%g206628206675%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx208022%_ _%id208024%_)
        (let ((_%proc208028%_
               (let ((__tmp210468
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id208024%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp210468))))
          (if (procedure? _%proc208028%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx208022%_
                 _%id208024%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx208013%_ _%id208015%_)
        (let ((_%klass208019%_
               (let ((__tmp210469
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id208015%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp210469))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass208019%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx208013%_
                 _%id208015%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx207263%_ _%proc207265%_ _%sig207266%_)
        (letrec ((_%signature-arity207268%_
                  (lambda (_%args207945%_)
                    (let _%loop207948%_ ((_%rest207951%_ _%args207945%_)
                                         (_%count207953%_ '0))
                      (let* ((_%rest207954207965%_ _%rest207951%_)
                             (_%E207958207971%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest207954207965%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K207961208002%_
                               (lambda (_%rest207999%_)
                                 (_%loop207948%_
                                  _%rest207999%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count207953%_ '1)))))
                              (_%K207960207991%_ (lambda () _%count207953%_))
                              (_%K207959207979%_
                               (lambda () (cons _%count207953%_ '()))))
                          (let ((_%try-match207956207995%_
                                 (lambda ()
                                   (if (null? _%rest207954207965%_)
                                       (_%K207960207991%_)
                                       (_%K207959207979%_)))))
                            (if (pair? _%rest207954207965%_)
                                (let* ((_%tl207963208006%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest207954207965%_)))
                                       (_%rest208010%_ _%tl207963208006%_))
                                  (_%K207961208002%_ _%rest208010%_))
                                (_%try-match207956207995%_))))))))
                 (_%make-signature207270%_
                  (lambda (_%args207827%_
                           _%return207829%_
                           _%effect207830%_
                           _%unchecked207831%_)
                    (let ((__tmp210470
                           (lambda (_%g207832207834%_)
                             (|gxc[1]#verify-class!|
                              _%ctx207263%_
                              _%g207832207834%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp210470 _%args207827%_))
                    (|gxc[1]#verify-class!| _%ctx207263%_ _%return207829%_)
                    (if _%unchecked207831%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx207263%_
                         _%unchecked207831%_)
                        '#!void)
                    (let ((_%arity207838%_
                           (_%signature-arity207268%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args207827%_)))))
                      (if _%effect207830%_
                          (let ((_%effect207841%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect207830%_))))
                            (if (and (list? _%effect207841%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect207841%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx207263%_
                                   _%proc207265%_
                                   _%effect207841%_))))
                          '#!void)
                      (cons _%arity207838%_
                            (cons (let* ((_%g207844207867%_
                                          (lambda (_%g207845207863%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g207845207863%_))))
                                         (_%g207843207941%_
                                          (lambda (_%g207845207871%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g207845207871%_))
                                                (let ((_%e207850207874%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g207845207871%_))))
                                                  (let ((_%hd207851207878%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e207850207874%_)))
                                                        (_%tl207852207881%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e207850207874%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl207852207881%_))
                                                        (let ((_%e207853207884%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl207852207881%_))))
                  (let ((_%hd207854207888%_
                         (let ()
                           (declare (not safe))
                           (##car _%e207853207884%_)))
                        (_%tl207855207891%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e207853207884%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl207855207891%_))
                        (let ((_%e207856207894%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl207855207891%_))))
                          (let ((_%hd207857207898%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207856207894%_)))
                                (_%tl207858207901%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207856207894%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl207858207901%_))
                                (let ((_%e207859207904%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl207858207901%_))))
                                  (let ((_%hd207860207908%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e207859207904%_)))
                                        (_%tl207861207911%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e207859207904%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl207861207911%_))
                                        ((lambda (_%L207914%_
                                                  _%L207916%_
                                                  _%L207917%_
                                                  _%L207918%_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'make-!signature))
                                                 (cons 'arguments:
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L207918%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L207917%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L207916%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L207914%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'builtin))
                                         '()))
                             '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd207860207908%_
                                         _%hd207857207898%_
                                         _%hd207854207888%_
                                         _%hd207851207878%_)
                                        (_%g207844207867%_
                                         _%g207845207871%_))))
                                (_%g207844207867%_ _%g207845207871%_))))
                        (_%g207844207867%_ _%g207845207871%_))))
                (_%g207844207867%_ _%g207845207871%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g207844207867%_
                                                 _%g207845207871%_)))))
                                    (_%g207843207941%_
                                     (list _%args207827%_
                                           _%return207829%_
                                           _%effect207830%_
                                           _%unchecked207831%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx207263%_ _%proc207265%_)
          (let* ((_%__stx210110210111%_ _%sig207266%_)
                 (_%g207277207380%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx210110210111%_)))))
            (let ((_%__kont210113210114%_
                   (lambda (_%L207808%_ _%L207810%_)
                     (_%make-signature207270%_
                      _%L207810%_
                      _%L207808%_
                      '#f
                      '#f)))
                  (_%__kont210115210116%_
                   (lambda (_%L207759%_ _%L207761%_ _%L207762%_)
                     (_%make-signature207270%_
                      _%L207762%_
                      _%L207761%_
                      _%L207759%_
                      '#f)))
                  (_%__kont210117210118%_
                   (lambda (_%L207683%_ _%L207685%_ _%L207686%_)
                     (_%make-signature207270%_
                      _%L207686%_
                      _%L207685%_
                      _%L207683%_
                      (let ((__tmp210471
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc207265%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp210471)))))
                  (_%__kont210119210120%_
                   (lambda (_%L207589%_ _%L207591%_ _%L207592%_ _%L207593%_)
                     (_%make-signature207270%_
                      _%L207593%_
                      _%L207592%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L207589%_)))))
                  (_%__kont210121210122%_
                   (lambda (_%L207496%_ _%L207498%_)
                     (_%make-signature207270%_
                      _%L207498%_
                      _%L207496%_
                      '#f
                      (let ((__tmp210472
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc207265%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp210472)))))
                  (_%__kont210123210124%_
                   (lambda (_%L207431%_ _%L207433%_ _%L207434%_)
                     (_%make-signature207270%_
                      _%L207434%_
                      _%L207433%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L207431%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx210110210111%_))
                  (let ((_%e207281207788%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx210110210111%_))))
                    (let ((_%tl207283207795%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e207281207788%_)))
                          (_%hd207282207792%_
                           (let ()
                             (declare (not safe))
                             (##car _%e207281207788%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl207283207795%_))
                          (let ((_%e207284207798%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl207283207795%_))))
                            (let ((_%tl207286207805%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e207284207798%_)))
                                  (_%hd207285207802%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e207284207798%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl207286207805%_))
                                  (_%__kont210113210114%_
                                   _%hd207285207802%_
                                   _%hd207282207792%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207286207805%_))
                                      (let ((_%e207296207735%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl207286207805%_))))
                                        (let ((_%tl207298207742%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207296207735%_)))
                                              (_%hd207297207739%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207296207735%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd207297207739%_))
                                              (let ((_%e207299207745%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd207297207739%_))))
                                                (if (equal? _%e207299207745%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl207298207742%_))
                                                        (let ((_%e207300207749%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl207298207742%_))))
                  (let ((_%tl207302207756%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e207300207749%_)))
                        (_%hd207301207753%_
                         (let ()
                           (declare (not safe))
                           (##car _%e207300207749%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl207302207756%_))
                        (_%__kont210115210116%_
                         _%hd207301207753%_
                         _%hd207285207802%_
                         _%hd207282207792%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl207302207756%_))
                            (let ((_%e207319207669%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl207302207756%_))))
                              (let ((_%tl207321207676%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e207319207669%_)))
                                    (_%hd207320207673%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e207319207669%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd207320207673%_))
                                    (let ((_%e207322207679%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd207320207673%_))))
                                      (if (equal? _%e207322207679%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207321207676%_))
                                              (_%__kont210117210118%_
                                               _%hd207301207753%_
                                               _%hd207285207802%_
                                               _%hd207282207792%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl207321207676%_))
                                                  (let ((_%e207344207579%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl207321207676%_))))
                                                    (let ((_%tl207346207586%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e207344207579%_)))
                                                          (_%hd207345207583%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e207344207579%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl207346207586%_))
                                                          (_%__kont210119210120%_
                                                           _%hd207345207583%_
                                                           _%hd207301207753%_
                                                           _%hd207285207802%_
                                                           _%hd207282207792%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g207277207380%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g207277207380%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g207277207380%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g207277207380%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g207277207380%_))))))
                (let () (declare (not safe)) (_%g207277207380%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e207299207745%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl207298207742%_))
                                                            (_%__kont210121210122%_
                                                             _%hd207285207802%_
                                                             _%hd207282207792%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl207298207742%_))
                        (let ((_%e207372207421%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl207298207742%_))))
                          (let ((_%tl207374207428%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207372207421%_)))
                                (_%hd207373207425%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207372207421%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl207374207428%_))
                                (_%__kont210123210124%_
                                 _%hd207373207425%_
                                 _%hd207285207802%_
                                 _%hd207282207792%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g207277207380%_)))))
                        (let () (declare (not safe)) (_%g207277207380%_))))
                (let () (declare (not safe)) (_%g207277207380%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g207277207380%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g207277207380%_))))))
                          (let () (declare (not safe)) (_%g207277207380%_)))))
                  (let () (declare (not safe)) (_%g207277207380%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig206874%_)
        (let* ((_%g206877206957%_
                (lambda (_%g206878206953%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206878206953%_))))
               (_%g206876207259%_
                (lambda (_%g206878206961%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206878206961%_))
                      (let ((_%e206884206964%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206878206961%_))))
                        (let ((_%hd206885206968%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206884206964%_)))
                              (_%tl206886206971%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206884206964%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206886206971%_))
                              (let ((_%e206887206974%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206886206971%_))))
                                (let ((_%hd206888206978%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206887206974%_)))
                                      (_%tl206889206981%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206887206974%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd206888206978%_))
                                      (let ((_%e206890206984%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd206888206978%_))))
                                        (if (equal? _%e206890206984%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl206889206981%_))
                                                (let ((_%e206891206988%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl206889206981%_))))
                                                  (let ((_%hd206892206992%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e206891206988%_)))
                                                        (_%tl206893206995%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e206891206988%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd206892206992%_))
                                                        (let ((_%e206894206998%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd206892206992%_))))
                  (let ((_%hd206895207002%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206894206998%_)))
                        (_%tl206896207005%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206894206998%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd206895207002%_))
                        (if (let ((__tmp210473 |gxc[1]#_g210474_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp210473
                               _%hd206895207002%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl206896207005%_))
                                (let ((_%e206897207008%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl206896207005%_))))
                                  (let ((_%hd206898207012%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206897207008%_)))
                                        (_%tl206899207015%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206897207008%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl206899207015%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl206893206995%_))
                                            (let ((_%e206900207018%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl206893206995%_))))
                                              (let ((_%hd206901207022%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e206900207018%_)))
                                                    (_%tl206902207025%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e206900207018%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd206901207022%_))
                                                    (let ((_%e206903207028%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd206901207022%_))))
                                                      (if (equal? _%e206903207028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl206902207025%_))
                      (let ((_%e206904207032%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl206902207025%_))))
                        (let ((_%hd206905207036%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206904207032%_)))
                              (_%tl206906207039%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206904207032%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd206905207036%_))
                              (let ((_%e206907207042%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd206905207036%_))))
                                (let ((_%hd206908207046%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206907207042%_)))
                                      (_%tl206909207049%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206907207042%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd206908207046%_))
                                      (if (let ((__tmp210475
                                                 |gxc[1]#_g210476_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp210475
                                             _%hd206908207046%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206909207049%_))
                                              (let ((_%e206910207052%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl206909207049%_))))
                                                (let ((_%hd206911207056%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206910207052%_)))
                                                      (_%tl206912207059%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206910207052%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl206912207059%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl206906207039%_))
                                                          (let ((_%e206913207062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl206906207039%_))))
                    (let ((_%hd206914207066%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206913207062%_)))
                          (_%tl206915207069%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206913207062%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd206914207066%_))
                          (let ((_%e206916207072%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd206914207066%_))))
                            (if (equal? _%e206916207072%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl206915207069%_))
                                    (let ((_%e206917207076%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl206915207069%_))))
                                      (let ((_%hd206918207080%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e206917207076%_)))
                                            (_%tl206919207083%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e206917207076%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd206918207080%_))
                                            (let ((_%e206920207086%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd206918207080%_))))
                                              (let ((_%hd206921207090%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e206920207086%_)))
                                                    (_%tl206922207093%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e206920207086%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd206921207090%_))
                                                    (if (let ((__tmp210477
                                                               |gxc[1]#_g210478_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp210477
                                                           _%hd206921207090%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl206922207093%_))
                                                            (let ((_%e206923207096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl206922207093%_))))
                      (let ((_%hd206924207100%_
                             (let ()
                               (declare (not safe))
                               (##car _%e206923207096%_)))
                            (_%tl206925207103%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e206923207096%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl206925207103%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl206919207083%_))
                                (let ((_%e206926207106%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl206919207083%_))))
                                  (let ((_%hd206927207110%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206926207106%_)))
                                        (_%tl206928207113%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206926207106%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd206927207110%_))
                                        (let ((_%e206929207116%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd206927207110%_))))
                                          (if (equal? _%e206929207116%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl206928207113%_))
                                                  (let ((_%e206930207120%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl206928207113%_))))
                                                    (let ((_%hd206931207124%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e206930207120%_)))
                                                          (_%tl206932207127%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e206930207120%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd206931207124%_))
                                                          (let ((_%e206933207130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd206931207124%_))))
                    (let ((_%hd206934207134%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206933207130%_)))
                          (_%tl206935207137%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206933207130%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd206934207134%_))
                          (if (let ((__tmp210479 |gxc[1]#_g210480_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp210479
                                 _%hd206934207134%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl206935207137%_))
                                  (let ((_%e206936207140%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl206935207137%_))))
                                    (let ((_%hd206937207144%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e206936207140%_)))
                                          (_%tl206938207147%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e206936207140%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl206938207147%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206932207127%_))
                                              (let ((_%e206939207150%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl206932207127%_))))
                                                (let ((_%hd206940207154%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206939207150%_)))
                                                      (_%tl206941207157%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206939207150%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd206940207154%_))
                                                      (let ((_%e206942207160%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd206940207154%_))))
                (if (equal? _%e206942207160%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl206941207157%_))
                        (let ((_%e206943207164%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl206941207157%_))))
                          (let ((_%hd206944207168%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206943207164%_)))
                                (_%tl206945207171%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206943207164%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd206944207168%_))
                                (let ((_%e206946207174%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd206944207168%_))))
                                  (let ((_%hd206947207178%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206946207174%_)))
                                        (_%tl206948207181%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206946207174%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd206947207178%_))
                                        (if (let ((__tmp210481
                                                   |gxc[1]#_g210482_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp210481
                                               _%hd206947207178%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl206948207181%_))
                                                (let ((_%e206949207184%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl206948207181%_))))
                                                  (let ((_%hd206950207188%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e206949207184%_)))
                                                        (_%tl206951207191%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e206949207184%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl206951207191%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl206945207171%_))
                                                            ((lambda (_%L207194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L207196%_
                              _%L207197%_
                              _%L207198%_
                              _%L207199%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L207196%_))
                           (cons _%L207196%_
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'make-!signature))
                                             (cons 'return:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L207198%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L207194%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd206950207188%_
                     _%hd206937207144%_
                     _%hd206924207100%_
                     _%hd206911207056%_
                     _%hd206898207012%_)
                    (_%g206877206957%_ _%g206878206961%_))
                (_%g206877206957%_ _%g206878206961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g206877206957%_
                                                 _%g206878206961%_))
                                            (_%g206877206957%_
                                             _%g206878206961%_))
                                        (_%g206877206957%_
                                         _%g206878206961%_))))
                                (_%g206877206957%_ _%g206878206961%_))))
                        (_%g206877206957%_ _%g206878206961%_))
                    (_%g206877206957%_ _%g206878206961%_)))
              (_%g206877206957%_ _%g206878206961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g206877206957%_
                                               _%g206878206961%_))
                                          (_%g206877206957%_
                                           _%g206878206961%_))))
                                  (_%g206877206957%_ _%g206878206961%_))
                              (_%g206877206957%_ _%g206878206961%_))
                          (_%g206877206957%_ _%g206878206961%_))))
                  (_%g206877206957%_ _%g206878206961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g206877206957%_
                                                   _%g206878206961%_))
                                              (_%g206877206957%_
                                               _%g206878206961%_)))
                                        (_%g206877206957%_
                                         _%g206878206961%_))))
                                (_%g206877206957%_ _%g206878206961%_))
                            (_%g206877206957%_ _%g206878206961%_))))
                    (_%g206877206957%_ _%g206878206961%_))
                (_%g206877206957%_ _%g206878206961%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g206877206957%_
                                                     _%g206878206961%_))))
                                            (_%g206877206957%_
                                             _%g206878206961%_))))
                                    (_%g206877206957%_ _%g206878206961%_))
                                (_%g206877206957%_ _%g206878206961%_)))
                          (_%g206877206957%_ _%g206878206961%_))))
                  (_%g206877206957%_ _%g206878206961%_))
              (_%g206877206957%_ _%g206878206961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g206877206957%_
                                               _%g206878206961%_))
                                          (_%g206877206957%_
                                           _%g206878206961%_))
                                      (_%g206877206957%_ _%g206878206961%_))))
                              (_%g206877206957%_ _%g206878206961%_))))
                      (_%g206877206957%_ _%g206878206961%_))
                  (_%g206877206957%_ _%g206878206961%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g206877206957%_
                                                     _%g206878206961%_))))
                                            (_%g206877206957%_
                                             _%g206878206961%_))
                                        (_%g206877206957%_
                                         _%g206878206961%_))))
                                (_%g206877206957%_ _%g206878206961%_))
                            (_%g206877206957%_ _%g206878206961%_))
                        (_%g206877206957%_ _%g206878206961%_))))
                (_%g206877206957%_ _%g206878206961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g206877206957%_
                                                 _%g206878206961%_))
                                            (_%g206877206957%_
                                             _%g206878206961%_)))
                                      (_%g206877206957%_ _%g206878206961%_))))
                              (_%g206877206957%_ _%g206878206961%_))))
                      (_%g206877206957%_ _%g206878206961%_)))))
          (_%g206876207259%_ _%sig206874%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx208031%_)
        (let* ((_%g208034208052%_
                (lambda (_%g208035208048%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208035208048%_))))
               (_%g208033208107%_
                (lambda (_%g208035208056%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208035208056%_))
                      (let ((_%e208038208059%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g208035208056%_))))
                        (let ((_%hd208039208063%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208038208059%_)))
                              (_%tl208040208066%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208038208059%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208040208066%_))
                              (let ((_%e208041208069%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl208040208066%_))))
                                (let ((_%hd208042208073%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208041208069%_)))
                                      (_%tl208043208076%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208041208069%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl208043208076%_))
                                      (let ((_%e208044208079%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl208043208076%_))))
                                        (let ((_%hd208045208083%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208044208079%_)))
                                              (_%tl208046208086%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208044208079%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl208046208086%_))
                                              ((lambda (_%L208089%_
                                                        _%L208091%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L208091%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L208089%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx208031%_
                                                        _%L208091%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx208031%_
                                                        _%L208089%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L208091%_
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'make-!primitive-predicate))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L208089%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g208034208052%_
                                                      _%g208035208056%_)))
                                               _%hd208045208083%_
                                               _%hd208042208073%_)
                                              (_%g208034208052%_
                                               _%g208035208056%_))))
                                      (_%g208034208052%_ _%g208035208056%_))))
                              (_%g208034208052%_ _%g208035208056%_))))
                      (_%g208034208052%_ _%g208035208056%_)))))
          (_%g208033208107%_ _%stx208031%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx208111%_)
        (let* ((_%g208114208138%_
                (lambda (_%g208115208134%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208115208134%_))))
               (_%g208113208421%_
                (lambda (_%g208115208142%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208115208142%_))
                      (let ((_%e208118208145%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g208115208142%_))))
                        (let ((_%hd208119208149%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208118208145%_)))
                              (_%tl208120208152%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208118208145%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208120208152%_))
                              (let ((_%e208121208155%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl208120208152%_))))
                                (let ((_%hd208122208159%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208121208155%_)))
                                      (_%tl208123208162%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208121208155%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl208123208162%_))
                                      (let ((_g210483_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl208123208162%_
                                                '0))))
                                        (begin
                                          (let ((_g210484_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g210483_)
                                                       (##values-length
                                                        _g210483_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g210484_ 2)))
                                                (error "Context expects 2 values"
                                                       _g210484_)))
                                          (let ((_%target208124208165%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g210483_ 0)))
                                                (_%tl208126208168%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g210483_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl208126208168%_))
                                                (letrec ((_%loop208127208171%_
                                                          (lambda (_%hd208125208175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature208131208178%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd208125208175%_))
                        (let ((_%e208128208181%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd208125208175%_))))
                          (let ((_%lp-hd208129208185%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e208128208181%_)))
                                (_%lp-tl208130208188%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e208128208181%_))))
                            (_%loop208127208171%_
                             _%lp-tl208130208188%_
                             (cons _%lp-hd208129208185%_
                                   _%signature208131208178%_))))
                        (let ((_%signature208132208191%_
                               (reverse _%signature208131208178%_)))
                          ((lambda (_%L208195%_ _%L208197%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L208197%_))
                                 (let* ((_%g208215208230%_
                                         (lambda (_%g208216208226%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g208216208226%_))))
                                        (_%g208214208409%_
                                         (lambda (_%g208216208234%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g208216208234%_))
                                               (let ((_%e208219208237%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g208216208234%_))))
                                                 (let ((_%hd208220208241%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e208219208237%_)))
                                                       (_%tl208221208244%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e208219208237%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl208221208244%_))
                                                       (let ((_%e208222208247%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl208221208244%_))))
                 (let ((_%hd208223208251%_
                        (let ()
                          (declare (not safe))
                          (##car _%e208222208247%_)))
                       (_%tl208224208254%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e208222208247%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl208224208254%_))
                       ((lambda (_%L208257%_ _%L208259%_)
                          (let* ((_%g208275208283%_
                                  (lambda (_%g208276208279%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g208276208279%_))))
                                 (_%g208274208405%_
                                  (lambda (_%g208276208287%_)
                                    ((lambda (_%L208290%_)
                                       (let* ((_%unchecked208303%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L208257%_))
                                              (_%g208306208314%_
                                               (lambda (_%g208307208310%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g208307208310%_))))
                                              (_%g208305208337%_
                                               (lambda (_%g208307208318%_)
                                                 ((lambda (_%L208321%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L208290%_
                                                                (cons _%L208321%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g208307208318%_))))
                                         (_%g208305208337%_
                                          (if _%unchecked208303%_
                                              (let* ((_%g208341208356%_
                                                      (lambda (_%g208342208352%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g208342208352%_))))
                                                     (_%g208340208401%_
                                                      (lambda (_%g208342208360%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g208342208360%_))
                                                            (let ((_%e208345208363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g208342208360%_))))
                      (let ((_%hd208346208367%_
                             (let ()
                               (declare (not safe))
                               (##car _%e208345208363%_)))
                            (_%tl208347208370%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e208345208363%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl208347208370%_))
                            (let ((_%e208348208373%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl208347208370%_))))
                              (let ((_%hd208349208377%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e208348208373%_)))
                                    (_%tl208350208380%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e208348208373%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl208350208380%_))
                                    ((lambda (_%L208383%_ _%L208385%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L208385%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L208259%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L208383%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd208349208377%_
                                     _%hd208346208367%_)
                                    (_%g208341208356%_ _%g208342208360%_))))
                            (_%g208341208356%_ _%g208342208360%_))))
                    (_%g208341208356%_ _%g208342208360%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g208340208401%_
                                                 _%unchecked208303%_))
                                              '(begin)))))
                                     _%g208276208287%_))))
                            (_%g208274208405%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L208197%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L208259%_ '()))
                   (cons '#f (cons 'signature: (cons _%L208257%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd208223208251%_
                        _%hd208220208241%_)
                       (_%g208215208230%_ _%g208216208234%_))))
               (_%g208215208230%_ _%g208216208234%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208215208230%_
                                                _%g208216208234%_)))))
                                   (_%g208214208409%_
                                    (|gxc[1]#parse-signature|
                                     _%stx208111%_
                                     _%L208197%_
                                     (let ((__tmp210485
                                            (lambda (_%g208412208415%_
                                                     _%g208413208418%_)
                                              (cons _%g208412208415%_
                                                    _%g208413208418%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp210485
                                        '()
                                        _%L208195%_)))))
                                 (_%g208114208138%_ _%g208115208142%_)))
                           _%signature208132208191%_
                           _%hd208122208159%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop208127208171%_
                                                   _%target208124208165%_
                                                   '()))
                                                (_%g208114208138%_
                                                 _%g208115208142%_)))))
                                      (_%g208114208138%_ _%g208115208142%_))))
                              (_%g208114208138%_ _%g208115208142%_))))
                      (_%g208114208138%_ _%g208115208142%_)))))
          (_%g208113208421%_ _%stx208111%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx208426%_)
        (let* ((_%g208429208453%_
                (lambda (_%g208430208449%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208430208449%_))))
               (_%g208428209336%_
                (lambda (_%g208430208457%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208430208457%_))
                      (let ((_%e208433208460%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g208430208457%_))))
                        (let ((_%hd208434208464%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208433208460%_)))
                              (_%tl208435208467%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208433208460%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208435208467%_))
                              (let ((_%e208436208470%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl208435208467%_))))
                                (let ((_%hd208437208474%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208436208470%_)))
                                      (_%tl208438208477%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208436208470%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl208438208477%_))
                                      (let ((_g210486_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl208438208477%_
                                                '0))))
                                        (begin
                                          (let ((_g210487_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g210486_)
                                                       (##values-length
                                                        _g210486_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g210487_ 2)))
                                                (error "Context expects 2 values"
                                                       _g210487_)))
                                          (let ((_%target208439208480%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g210486_ 0)))
                                                (_%tl208441208483%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g210486_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl208441208483%_))
                                                (letrec ((_%loop208442208486%_
                                                          (lambda (_%hd208440208490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature208446208493%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd208440208490%_))
                        (let ((_%e208443208496%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd208440208490%_))))
                          (let ((_%lp-hd208444208500%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e208443208496%_)))
                                (_%lp-tl208445208503%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e208443208496%_))))
                            (_%loop208442208486%_
                             _%lp-tl208445208503%_
                             (cons _%lp-hd208444208500%_
                                   _%case-signature208446208493%_))))
                        (let ((_%case-signature208447208506%_
                               (reverse _%case-signature208446208493%_)))
                          ((lambda (_%L208510%_ _%L208512%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L208512%_))
                                 (let* ((_%signatures208543%_
                                         (map (lambda (_%g208529208531%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx208426%_
                                                 _%L208512%_
                                                 _%g208529208531%_))
                                              (let ((__tmp210488
                                                     (lambda (_%g208534208537%_
                                                              _%g208535208540%_)
                                                       (cons _%g208534208537%_
                                                             _%g208535208540%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp210488
                                                 '()
                                                 _%L208510%_))))
                                        (_%g208546208572%_
                                         (lambda (_%g208547208568%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g208547208568%_))))
                                        (_%g208545209332%_
                                         (lambda (_%g208547208576%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g208547208576%_))
                                               (let ((_g210489_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g208547208576%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g210490_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g210489_)
                        (##values-length _g210489_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g210490_ 2)))
                 (error "Context expects 2 values" _g210490_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target208550208579%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g210489_
                                                             0)))
                                                         (_%tl208552208582%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g210489_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl208552208582%_))
                                                         (letrec ((_%loop208553208585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd208551208589%_
                                    _%sig208557208592%_
                                    _%arity208558208594%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd208551208589%_))
                                 (let ((_%e208554208597%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd208551208589%_))))
                                   (let ((_%lp-hd208555208601%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e208554208597%_)))
                                         (_%lp-tl208556208604%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e208554208597%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd208555208601%_))
                                         (let ((_%e208561208607%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd208555208601%_))))
                                           (let ((_%hd208562208611%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e208561208607%_)))
                                                 (_%tl208563208614%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e208561208607%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl208563208614%_))
                                                 (let ((_%e208564208617%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl208563208614%_))))
                                                   (let ((_%hd208565208621%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e208564208617%_)))
                                                         (_%tl208566208624%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e208564208617%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl208566208624%_))
                                                         (_%loop208553208585%_
                                                          _%lp-tl208556208604%_
                                                          (cons _%hd208565208621%_
                                                                _%sig208557208592%_)
                                                          (cons _%hd208562208611%_
                                                                _%arity208558208594%_))
                                                         (_%g208546208572%_
                                                          _%g208547208576%_))))
                                                 (_%g208546208572%_
                                                  _%g208547208576%_))))
                                         (_%g208546208572%_
                                          _%g208547208576%_))))
                                 (let ((_%sig208559208627%_
                                        (reverse _%sig208557208592%_))
                                       (_%arity208560208630%_
                                        (reverse _%arity208558208594%_)))
                                   ((lambda (_%L208633%_ _%L208635%_)
                                      (let* ((_%g208652208660%_
                                              (lambda (_%g208653208656%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g208653208656%_))))
                                             (_%g208651209317%_
                                              (lambda (_%g208653208664%_)
                                                ((lambda (_%L208667%_)
                                                   (let* ((_%g208680208688%_
                                                           (lambda (_%g208681208684%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g208681208684%_))))
                  (_%g208679208710%_
                   (lambda (_%g208681208692%_)
                     ((lambda (_%L208695%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L208667%_ (cons _%L208695%_ '()))))
                      _%g208681208692%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g208679208710%_
                                                      (let ((_g210491_
                                                             (let _%loop208714%_ ((_%rest208717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures208543%_)
                                          (_%unchecked-proc208719%_ '#f)
                                          (_%unchecked-clauses208720%_ '()))
                       (let* ((_%rest208721208729%_ _%rest208717%_)
                              (_%else208723208741%_
                               (lambda ()
                                 (values _%unchecked-proc208719%_
                                         (reverse!
                                          _%unchecked-clauses208720%_))))
                              (_%K208725209182%_
                               (lambda (_%rest208745%_ _%hd208747%_)
                                 (let* ((_%g208749208836%_
                                         (lambda (_%g208750208832%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g208750208832%_))))
                                        (_%g208748209178%_
                                         (lambda (_%g208750208840%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g208750208840%_))
                                               (let ((_%e208757208843%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g208750208840%_))))
                                                 (let ((_%hd208758208847%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e208757208843%_)))
                                                       (_%tl208759208850%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e208757208843%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl208759208850%_))
                                                       (let ((_%e208760208853%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl208759208850%_))))
                 (let ((_%hd208761208857%_
                        (let ()
                          (declare (not safe))
                          (##car _%e208760208853%_)))
                       (_%tl208762208860%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e208760208853%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd208761208857%_))
                       (let ((_%e208763208863%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd208761208857%_))))
                         (let ((_%hd208764208867%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e208763208863%_)))
                               (_%tl208765208870%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e208763208863%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl208765208870%_))
                               (let ((_%e208766208873%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl208765208870%_))))
                                 (let ((_%hd208767208877%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e208766208873%_)))
                                       (_%tl208768208880%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e208766208873%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd208767208877%_))
                                       (let ((_%e208769208883%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd208767208877%_))))
                                         (if (equal? _%e208769208883%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl208768208880%_))
                                                 (let ((_%e208770208887%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl208768208880%_))))
                                                   (let ((_%hd208771208891%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e208770208887%_)))
                                                         (_%tl208772208894%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e208770208887%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd208771208891%_))
                                                         (let ((_%e208773208897%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd208771208891%_))))
                   (let ((_%hd208774208901%_
                          (let ()
                            (declare (not safe))
                            (##car _%e208773208897%_)))
                         (_%tl208775208904%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e208773208897%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd208774208901%_))
                         (if (let ((__tmp210493 |gxc[1]#_g210494_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp210493
                                _%hd208774208901%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl208775208904%_))
                                 (let ((_%e208776208907%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl208775208904%_))))
                                   (let ((_%hd208777208911%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e208776208907%_)))
                                         (_%tl208778208914%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e208776208907%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl208778208914%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl208772208894%_))
                                             (let ((_%e208779208917%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl208772208894%_))))
                                               (let ((_%hd208780208921%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e208779208917%_)))
                                                     (_%tl208781208924%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e208779208917%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd208780208921%_))
                                                     (let ((_%e208782208927%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd208780208921%_))))
                                                       (if (equal? _%e208782208927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl208781208924%_))
                       (let ((_%e208783208931%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl208781208924%_))))
                         (let ((_%hd208784208935%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e208783208931%_)))
                               (_%tl208785208938%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e208783208931%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd208784208935%_))
                               (let ((_%e208786208941%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd208784208935%_))))
                                 (let ((_%hd208787208945%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e208786208941%_)))
                                       (_%tl208788208948%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e208786208941%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd208787208945%_))
                                       (if (let ((__tmp210495
                                                  |gxc[1]#_g210496_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp210495
                                              _%hd208787208945%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl208788208948%_))
                                               (let ((_%e208789208951%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl208788208948%_))))
                                                 (let ((_%hd208790208955%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e208789208951%_)))
                                                       (_%tl208791208958%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e208789208951%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl208791208958%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl208785208938%_))
                                                           (let ((_%e208792208961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl208785208938%_))))
                     (let ((_%hd208793208965%_
                            (let ()
                              (declare (not safe))
                              (##car _%e208792208961%_)))
                           (_%tl208794208968%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e208792208961%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd208793208965%_))
                           (let ((_%e208795208971%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd208793208965%_))))
                             (if (equal? _%e208795208971%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl208794208968%_))
                                     (let ((_%e208796208975%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl208794208968%_))))
                                       (let ((_%hd208797208979%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e208796208975%_)))
                                             (_%tl208798208982%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e208796208975%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd208797208979%_))
                                             (let ((_%e208799208985%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd208797208979%_))))
                                               (let ((_%hd208800208989%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e208799208985%_)))
                                                     (_%tl208801208992%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e208799208985%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd208800208989%_))
                                                     (if (let ((__tmp210497
                                                                |gxc[1]#_g210498_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp210497
                                                            _%hd208800208989%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl208801208992%_))
                     (let ((_%e208802208995%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl208801208992%_))))
                       (let ((_%hd208803208999%_
                              (let ()
                                (declare (not safe))
                                (##car _%e208802208995%_)))
                             (_%tl208804209002%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e208802208995%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl208804209002%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl208798208982%_))
                                 (let ((_%e208805209005%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl208798208982%_))))
                                   (let ((_%hd208806209009%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e208805209005%_)))
                                         (_%tl208807209012%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e208805209005%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd208806209009%_))
                                         (let ((_%e208808209015%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd208806209009%_))))
                                           (if (equal? _%e208808209015%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl208807209012%_))
                                                   (let ((_%e208809209019%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl208807209012%_))))
                                                     (let ((_%hd208810209023%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e208809209019%_)))
                                                           (_%tl208811209026%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e208809209019%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd208810209023%_))
                                                           (let ((_%e208812209029%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd208810209023%_))))
                     (let ((_%hd208813209033%_
                            (let ()
                              (declare (not safe))
                              (##car _%e208812209029%_)))
                           (_%tl208814209036%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e208812209029%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd208813209033%_))
                           (if (let ((__tmp210499 |gxc[1]#_g210500_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp210499
                                  _%hd208813209033%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl208814209036%_))
                                   (let ((_%e208815209039%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl208814209036%_))))
                                     (let ((_%hd208816209043%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e208815209039%_)))
                                           (_%tl208817209046%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e208815209039%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl208817209046%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl208811209026%_))
                                               (let ((_%e208818209049%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl208811209026%_))))
                                                 (let ((_%hd208819209053%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e208818209049%_)))
                                                       (_%tl208820209056%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e208818209049%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd208819209053%_))
                                                       (let ((_%e208821209059%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd208819209053%_))))
                 (if (equal? _%e208821209059%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl208820209056%_))
                         (let ((_%e208822209063%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl208820209056%_))))
                           (let ((_%hd208823209067%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e208822209063%_)))
                                 (_%tl208824209070%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e208822209063%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd208823209067%_))
                                 (let ((_%e208825209073%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd208823209067%_))))
                                   (let ((_%hd208826209077%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e208825209073%_)))
                                         (_%tl208827209080%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e208825209073%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd208826209077%_))
                                         (if (let ((__tmp210501
                                                    |gxc[1]#_g210502_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp210501
                                                _%hd208826209077%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl208827209080%_))
                                                 (let ((_%e208828209083%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl208827209080%_))))
                                                   (let ((_%hd208829209087%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e208828209083%_)))
                                                         (_%tl208830209090%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e208828209083%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl208830209090%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl208824209070%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl208762208860%_))
                         ((lambda (_%L209093%_
                                   _%L209095%_
                                   _%L209096%_
                                   _%L209097%_
                                   _%L209098%_
                                   _%L209099%_)
                            (let ((_%clause209170%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'make-!primitive-lambda))
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%L209099%_ '()))
                                               (cons '#f
                                                     (cons 'signature:
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'make-!signature))
                               (cons 'return:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L209097%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L209093%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked209172%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L209095%_))))
                              (_%loop208714%_
                               _%rest208745%_
                               (let ((_%$e209174%_ _%unchecked209172%_))
                                 (if _%$e209174%_
                                     _%$e209174%_
                                     _%unchecked-proc208719%_))
                               (cons _%clause209170%_
                                     _%unchecked-clauses208720%_))))
                          _%hd208829209087%_
                          _%hd208816209043%_
                          _%hd208803208999%_
                          _%hd208790208955%_
                          _%hd208777208911%_
                          _%hd208758208847%_)
                         (_%g208749208836%_ _%g208750208840%_))
                     (_%g208749208836%_ _%g208750208840%_))
                 (_%g208749208836%_ _%g208750208840%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g208749208836%_
                                                  _%g208750208840%_))
                                             (_%g208749208836%_
                                              _%g208750208840%_))
                                         (_%g208749208836%_
                                          _%g208750208840%_))))
                                 (_%g208749208836%_ _%g208750208840%_))))
                         (_%g208749208836%_ _%g208750208840%_))
                     (_%g208749208836%_ _%g208750208840%_)))
               (_%g208749208836%_ _%g208750208840%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208749208836%_
                                                _%g208750208840%_))
                                           (_%g208749208836%_
                                            _%g208750208840%_))))
                                   (_%g208749208836%_ _%g208750208840%_))
                               (_%g208749208836%_ _%g208750208840%_))
                           (_%g208749208836%_ _%g208750208840%_))))
                   (_%g208749208836%_ _%g208750208840%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g208749208836%_
                                                    _%g208750208840%_))
                                               (_%g208749208836%_
                                                _%g208750208840%_)))
                                         (_%g208749208836%_
                                          _%g208750208840%_))))
                                 (_%g208749208836%_ _%g208750208840%_))
                             (_%g208749208836%_ _%g208750208840%_))))
                     (_%g208749208836%_ _%g208750208840%_))
                 (_%g208749208836%_ _%g208750208840%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g208749208836%_
                                                      _%g208750208840%_))))
                                             (_%g208749208836%_
                                              _%g208750208840%_))))
                                     (_%g208749208836%_ _%g208750208840%_))
                                 (_%g208749208836%_ _%g208750208840%_)))
                           (_%g208749208836%_ _%g208750208840%_))))
                   (_%g208749208836%_ _%g208750208840%_))
               (_%g208749208836%_ _%g208750208840%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208749208836%_
                                                _%g208750208840%_))
                                           (_%g208749208836%_
                                            _%g208750208840%_))
                                       (_%g208749208836%_ _%g208750208840%_))))
                               (_%g208749208836%_ _%g208750208840%_))))
                       (_%g208749208836%_ _%g208750208840%_))
                   (_%g208749208836%_ _%g208750208840%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g208749208836%_
                                                      _%g208750208840%_))))
                                             (_%g208749208836%_
                                              _%g208750208840%_))
                                         (_%g208749208836%_
                                          _%g208750208840%_))))
                                 (_%g208749208836%_ _%g208750208840%_))
                             (_%g208749208836%_ _%g208750208840%_))
                         (_%g208749208836%_ _%g208750208840%_))))
                 (_%g208749208836%_ _%g208750208840%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g208749208836%_
                                                  _%g208750208840%_))
                                             (_%g208749208836%_
                                              _%g208750208840%_)))
                                       (_%g208749208836%_ _%g208750208840%_))))
                               (_%g208749208836%_ _%g208750208840%_))))
                       (_%g208749208836%_ _%g208750208840%_))))
               (_%g208749208836%_ _%g208750208840%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208749208836%_
                                                _%g208750208840%_)))))
                                   (_%g208748209178%_ _%hd208747%_)))))
                         (if (pair? _%rest208721208729%_)
                             (let ((_%hd208726209186%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest208721208729%_)))
                                   (_%tl208727209189%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest208721208729%_))))
                               (let* ((_%hd209192%_ _%hd208726209186%_)
                                      (_%rest209195%_ _%tl208727209189%_))
                                 (_%K208725209182%_
                                  _%rest209195%_
                                  _%hd209192%_)))
                             (_%else208723208741%_))))))
                (begin
                  (let ((_g210492_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g210491_)
                               (##values-length _g210491_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g210492_ 2)))
                        (error "Context expects 2 values" _g210492_)))
                  (let ((_%unchecked-proc209198%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g210491_ 0)))
                        (_%unchecked-clauses209200%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g210491_ 1))))
                    (if _%unchecked-proc209198%_
                        (let* ((_%g209202209226%_
                                (lambda (_%g209203209222%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g209203209222%_))))
                               (_%g209201209313%_
                                (lambda (_%g209203209230%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g209203209230%_))
                                      (let ((_%e209206209233%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g209203209230%_))))
                                        (let ((_%hd209207209237%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e209206209233%_)))
                                              (_%tl209208209240%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e209206209233%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl209208209240%_))
                                              (let ((_%e209209209243%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl209208209240%_))))
                                                (let ((_%hd209210209247%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e209209209243%_)))
                                                      (_%tl209211209250%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e209209209243%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd209210209247%_))
                                                      (let ((_g210503_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd209210209247%_ '0))))
                (begin
                  (let ((_g210504_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g210503_)
                               (##values-length _g210503_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g210504_ 2)))
                        (error "Context expects 2 values" _g210504_)))
                  (let ((_%target209212209253%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g210503_ 0)))
                        (_%tl209214209256%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g210503_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl209214209256%_))
                        (letrec ((_%loop209215209259%_
                                  (lambda (_%hd209213209263%_
                                           _%clause209219209266%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd209213209263%_))
                                        (let ((_%e209216209269%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd209213209263%_))))
                                          (let ((_%lp-hd209217209273%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e209216209269%_)))
                                                (_%lp-tl209218209276%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e209216209269%_))))
                                            (_%loop209215209259%_
                                             _%lp-tl209218209276%_
                                             (cons _%lp-hd209217209273%_
                                                   _%clause209219209266%_))))
                                        (let ((_%clause209220209279%_
                                               (reverse _%clause209219209266%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl209211209250%_))
                                              ((lambda (_%L209283%_
                                                        _%L209285%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L209285%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0
                                    '#f
                                    'make-!primitive-case-lambda))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list))
                                             (let ((__tmp210505
                                                    (lambda (_%g209304209307%_
                                                             _%g209305209310%_)
                                                      (cons _%g209304209307%_
                                                            _%g209305209310%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp210505
                                                '()
                                                _%L209283%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause209220209279%_
                                               _%hd209207209237%_)
                                              (_%g209202209226%_
                                               _%g209203209230%_)))))))
                          (_%loop209215209259%_ _%target209212209253%_ '()))
                        (_%g209202209226%_ _%g209203209230%_)))))
              (_%g209202209226%_ _%g209203209230%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g209202209226%_
                                               _%g209203209230%_))))
                                      (_%g209202209226%_ _%g209203209230%_)))))
                          (_%g209201209313%_
                           (list _%unchecked-proc209198%_
                                 _%unchecked-clauses209200%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g208653208664%_))))
                                        (_%g208651209317%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L208512%_
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'make-!primitive-case-lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f '@list))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-check-splice-targets
                                          _%L208633%_
                                          _%L208635%_))
                                       (let ((__tmp210506
                                              (lambda (_%g209320209324%_
                                                       _%g209321209327%_
                                                       _%g209322209329%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!primitive-lambda))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%g209321209327%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g209320209324%_ '())))))
              _%g209322209329%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp210506
                                          '()
                                          _%L208633%_
                                          _%L208635%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig208559208627%_
                                    _%arity208560208630%_))))))
                   (_%loop208553208585%_ _%target208550208579%_ '() '()))
                 (_%g208546208572%_ _%g208547208576%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208546208572%_
                                                _%g208547208576%_)))))
                                   (_%g208545209332%_ _%signatures208543%_))
                                 (_%g208429208453%_ _%g208430208457%_)))
                           _%case-signature208447208506%_
                           _%hd208437208474%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop208442208486%_
                                                   _%target208439208480%_
                                                   '()))
                                                (_%g208429208453%_
                                                 _%g208430208457%_)))))
                                      (_%g208429208453%_ _%g208430208457%_))))
                              (_%g208429208453%_ _%g208430208457%_))))
                      (_%g208429208453%_ _%g208430208457%_)))))
          (_%g208428209336%_ _%stx208426%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx209344%_)
        (let* ((_%__stx210326210327%_ _%$stx209344%_)
               (_%g209350209410%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx210326210327%_)))))
          (let ((_%__kont210329210330%_
                 (lambda (_%L209632%_ _%L209634%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L209634%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L209634%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L209632%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont210331210332%_
                 (lambda (_%L209557%_ _%L209559%_ _%L209560%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L209560%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L209560%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L209559%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L209557%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont210333210334%_
                 (lambda (_%L209471%_ _%L209473%_ _%L209474%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L209474%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L209474%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L209473%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L209471%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx210326210327%_))
                (let ((_%e209354209588%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx210326210327%_))))
                  (let ((_%tl209356209595%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e209354209588%_)))
                        (_%hd209355209592%_
                         (let ()
                           (declare (not safe))
                           (##car _%e209354209588%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl209356209595%_))
                        (let ((_%e209357209598%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl209356209595%_))))
                          (let ((_%tl209359209605%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e209357209598%_)))
                                (_%hd209358209602%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e209357209598%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd209358209602%_))
                                (let ((_%e209360209608%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd209358209602%_))))
                                  (if (equal? _%e209360209608%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl209359209605%_))
                                          (let ((_%e209361209612%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl209359209605%_))))
                                            (let ((_%tl209363209619%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e209361209612%_)))
                                                  (_%hd209362209616%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e209361209612%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl209363209619%_))
                                                  (let ((_%e209364209622%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl209363209619%_))))
                                                    (let ((_%tl209366209629%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e209364209622%_)))
                                                          (_%hd209365209626%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e209364209622%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl209366209629%_))
                                                          (_%__kont210329210330%_
                                                           _%hd209365209626%_
                                                           _%hd209362209616%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g209350209410%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g209350209410%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g209350209410%_)))
                                      (if (equal? _%e209360209608%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl209359209605%_))
                                              (let ((_%e209377209527%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl209359209605%_))))
                                                (let ((_%tl209379209534%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e209377209527%_)))
                                                      (_%hd209378209531%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e209377209527%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl209379209534%_))
                                                      (let ((_%e209380209537%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl209379209534%_))))
                (let ((_%tl209382209544%_
                       (let () (declare (not safe)) (##cdr _%e209380209537%_)))
                      (_%hd209381209541%_
                       (let ()
                         (declare (not safe))
                         (##car _%e209380209537%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl209382209544%_))
                      (let ((_%e209383209547%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl209382209544%_))))
                        (let ((_%tl209385209554%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209383209547%_)))
                              (_%hd209384209551%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209383209547%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl209385209554%_))
                              (_%__kont210331210332%_
                               _%hd209384209551%_
                               _%hd209381209541%_
                               _%hd209378209531%_)
                              (let ()
                                (declare (not safe))
                                (_%g209350209410%_)))))
                      (let () (declare (not safe)) (_%g209350209410%_)))))
              (let () (declare (not safe)) (_%g209350209410%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g209350209410%_)))
                                          (if (equal? _%e209360209608%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl209359209605%_))
                                                  (let ((_%e209396209441%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl209359209605%_))))
                                                    (let ((_%tl209398209448%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e209396209441%_)))
                                                          (_%hd209397209445%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e209396209441%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl209398209448%_))
                                                          (let ((_%e209399209451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl209398209448%_))))
                    (let ((_%tl209401209458%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e209399209451%_)))
                          (_%hd209400209455%_
                           (let ()
                             (declare (not safe))
                             (##car _%e209399209451%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl209401209458%_))
                          (let ((_%e209402209461%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl209401209458%_))))
                            (let ((_%tl209404209468%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e209402209461%_)))
                                  (_%hd209403209465%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e209402209461%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl209404209468%_))
                                  (_%__kont210333210334%_
                                   _%hd209403209465%_
                                   _%hd209400209455%_
                                   _%hd209397209445%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g209350209410%_)))))
                          (let () (declare (not safe)) (_%g209350209410%_)))))
                  (let () (declare (not safe)) (_%g209350209410%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g209350209410%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g209350209410%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g209350209410%_)))))
                        (let () (declare (not safe)) (_%g209350209410%_)))))
                (let () (declare (not safe)) (_%g209350209410%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx209656%_)
        (let* ((_%g209660209680%_
                (lambda (_%g209661209676%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g209661209676%_))))
               (_%g209659209751%_
                (lambda (_%g209661209684%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g209661209684%_))
                      (let ((_%e209663209687%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g209661209684%_))))
                        (let ((_%hd209664209691%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209663209687%_)))
                              (_%tl209665209694%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209663209687%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl209665209694%_))
                              (let ((_g210507_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl209665209694%_
                                        '0))))
                                (begin
                                  (let ((_g210508_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210507_)
                                               (##values-length _g210507_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210508_ 2)))
                                        (error "Context expects 2 values"
                                               _g210508_)))
                                  (let ((_%target209666209697%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210507_ 0)))
                                        (_%tl209668209700%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210507_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl209668209700%_))
                                        (letrec ((_%loop209669209703%_
                                                  (lambda (_%hd209667209707%_
                                                           _%decl209673209710%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd209667209707%_))
                                                        (let ((_%e209670209713%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd209667209707%_))))
                  (let ((_%lp-hd209671209717%_
                         (let ()
                           (declare (not safe))
                           (##car _%e209670209713%_)))
                        (_%lp-tl209672209720%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e209670209713%_))))
                    (_%loop209669209703%_
                     _%lp-tl209672209720%_
                     (cons _%lp-hd209671209717%_ _%decl209673209710%_))))
                (let ((_%decl209674209723%_ (reverse _%decl209673209710%_)))
                  ((lambda (_%L209727%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp210509
                                  (lambda (_%g209742209745%_ _%g209743209748%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g209742209745%_)
                                          _%g209743209748%_))))
                             (declare (not safe))
                             (__foldr1 __tmp210509 '() _%L209727%_))))
                   _%decl209674209723%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop209669209703%_
                                           _%target209666209697%_
                                           '()))
                                        (_%g209660209680%_
                                         _%g209661209684%_)))))
                              (_%g209660209680%_ _%g209661209684%_))))
                      (_%g209660209680%_ _%g209661209684%_)))))
          (_%g209659209751%_ _%$stx209656%_))))))
