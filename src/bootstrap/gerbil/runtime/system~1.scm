(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g122828_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg122019%_)
       ($%arg121931 . _%$%arg121931121989%_)
       ($%arg121932 . _%$%arg121932122003%_)
       (id . _%id121956%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g122829_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g122828_|)))
  (define |[1]#_g122830_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value122686%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g122831_|
    (##structure
     gx#syntax-quote::t
     '_%new-value122686%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g122830_|)))
  (define |[1]#_g122833_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g122834_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g122833_|)))
  (define |[1]#_g122835_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg122139%_)
       ($%arg122053 . _%$%arg122053122123%_)
       ($%arg122052 . _%$%arg122052122109%_)
       (id . _%id122076%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g122836_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g122835_|)))
  (define |[1]#_g122838_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g122839_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g122838_|)))
  (define |[1]#_g122840_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg122259%_)
       ($%arg122173 . _%$%arg122173122243%_)
       ($%arg122172 . _%$%arg122172122229%_)
       (id . _%id122196%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g122841_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g122840_|)))
  (define |[1]#_g122843_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g122844_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g122843_|)))
  (define |[1]#_g122845_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg122379%_)
       ($%arg122292 . _%$%arg122292122349%_)
       ($%arg122293 . _%$%arg122293122363%_)
       (id . _%id122316%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g122846_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g122845_|)))
  (define |[1]#_g122847_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value122436%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g122848_|
    (##structure
     gx#syntax-quote::t
     '_%new-value122436%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g122847_|)))
  (define |[1]#_g122850_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g122851_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g122850_|)))
  (begin
    (define |[:0:]#@build-manifest-set!|
      (lambda (_%$stx121913%_)
        (let* ((_%__stx122714122715%_ _%$stx121913%_)
               (_%$%g121918121939%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx122714122715%_))))
          (let ((_%__kont122717122718%_
                 (lambda (_%$%g121920122005%_)
                   (cons (gx#datum->syntax
                          |[1]#_g122829_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g122831_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp122832
                                                  (lambda (_%$%g122020122023%_
                                                           _%$%g122021122026%_)
                                                    (cons _%$%g122020122023%_
                                                          _%$%g122021122026%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp122832
                                              '()
                                              _%$%g121920122005%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g122834_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g122831_|
                                                              'new-value
                                                              '#f
                                                              '#f)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':list) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__build-manifest-set!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |[1]#_g122831_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont122721122722%_
                 (lambda (_%$%g121933121946%_)
                   (gx#datum->syntax '#f 'build-manifest-set!))))
            (let* ((_%$%g121917121958%_
                    (lambda ()
                      (let ((_%$%g121933121946%_ _%__stx122714122715%_))
                        (if (gx#identifier? _%$%g121933121946%_)
                            (_%__kont122721122722%_ _%$%g121933121946%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g121918121939%_))))))
                   (_%__match122737122738%_
                    (lambda (_%$%e121921121965%_
                             _%$%hd121922121969%_
                             _%$%tl121923121972%_
                             _%__splice122719122720%_
                             _%$%target121924121975%_
                             _%$%tl121926121978%_)
                      (letrec ((_%$%loop121927121981%_
                                (lambda (_%$%hd121925121985%_
                                         _%$%arg121931121988%_)
                                  (if (gx#stx-pair? _%$%hd121925121985%_)
                                      (let ((_%$%e121928121991%_
                                             (gx#syntax-e
                                              _%$%hd121925121985%_)))
                                        (let ((_%$%lp-tl121930121998%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e121928121991%_)))
                                              (_%$%lp-hd121929121995%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e121928121991%_))))
                                          (_%$%loop121927121981%_
                                           _%$%lp-tl121930121998%_
                                           (cons _%$%lp-hd121929121995%_
                                                 _%$%arg121931121988%_))))
                                      (let ((_%$%arg121932122001%_
                                             (reverse _%$%arg121931121988%_)))
                                        (_%__kont122717122718%_
                                         _%$%arg121932122001%_))))))
                        (_%$%loop121927121981%_
                         _%$%target121924121975%_
                         '())))))
              (if (gx#stx-pair? _%__stx122714122715%_)
                  (let ((_%$%e121921121965%_
                         (gx#syntax-e _%__stx122714122715%_)))
                    (let ((_%$%tl121923121972%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e121921121965%_)))
                          (_%$%hd121922121969%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e121921121965%_))))
                      (if (gx#stx-pair/null? _%$%tl121923121972%_)
                          (let ((_%__splice122719122720%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl121923121972%_
                                  '0)))
                            (let ((_%$%tl121926121978%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice122719122720%_
                                      '1)))
                                  (_%$%target121924121975%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice122719122720%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl121926121978%_)
                                  (_%__match122737122738%_
                                   _%$%e121921121965%_
                                   _%$%hd121922121969%_
                                   _%$%tl121923121972%_
                                   _%__splice122719122720%_
                                   _%$%target121924121975%_
                                   _%$%tl121926121978%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g121917121958%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g121917121958%_)))))
                  (let () (declare (not safe)) (_%$%g121917121958%_))))))))
    (define |[:0:]#@display-build-manifest|
      (lambda (_%$stx122034%_)
        (let* ((_%__stx122740122741%_ _%$stx122034%_)
               (_%$%g122039122060%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx122740122741%_))))
          (let ((_%__kont122743122744%_
                 (lambda (_%$%g122041122125%_)
                   (cons (gx#datum->syntax
                          |[1]#_g122836_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'manifest)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '__build-manifest)
                                                       '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'port)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'current-output-port)
                           '())
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (let ((__tmp122837
                                                  (lambda (_%$%g122140122143%_
                                                           _%$%g122141122146%_)
                                                    (cons _%$%g122140122143%_
                                                          _%$%g122141122146%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp122837
                                              '()
                                              _%$%g122041122125%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g122839_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'manifest)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':list) '())))
               (cons (cons (gx#datum->syntax '#f 'port)
                           (cons (gx#datum->syntax '#f ':)
                                 (cons (gx#datum->syntax '#f ':port) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__display-build-manifest)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'manifest)
                           (cons (gx#datum->syntax '#f 'port) '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont122747122748%_
                 (lambda (_%$%g122054122067%_)
                   (gx#datum->syntax '#f 'display-build-manifest))))
            (let* ((_%$%g122038122078%_
                    (lambda ()
                      (let ((_%$%g122054122067%_ _%__stx122740122741%_))
                        (if (gx#identifier? _%$%g122054122067%_)
                            (_%__kont122747122748%_ _%$%g122054122067%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g122039122060%_))))))
                   (_%__match122763122764%_
                    (lambda (_%$%e122042122085%_
                             _%$%hd122043122089%_
                             _%$%tl122044122092%_
                             _%__splice122745122746%_
                             _%$%target122045122095%_
                             _%$%tl122047122098%_)
                      (letrec ((_%$%loop122048122101%_
                                (lambda (_%$%hd122046122105%_
                                         _%$%arg122052122108%_)
                                  (if (gx#stx-pair? _%$%hd122046122105%_)
                                      (let ((_%$%e122049122111%_
                                             (gx#syntax-e
                                              _%$%hd122046122105%_)))
                                        (let ((_%$%lp-tl122051122118%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e122049122111%_)))
                                              (_%$%lp-hd122050122115%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e122049122111%_))))
                                          (_%$%loop122048122101%_
                                           _%$%lp-tl122051122118%_
                                           (cons _%$%lp-hd122050122115%_
                                                 _%$%arg122052122108%_))))
                                      (let ((_%$%arg122053122121%_
                                             (reverse _%$%arg122052122108%_)))
                                        (_%__kont122743122744%_
                                         _%$%arg122053122121%_))))))
                        (_%$%loop122048122101%_
                         _%$%target122045122095%_
                         '())))))
              (if (gx#stx-pair? _%__stx122740122741%_)
                  (let ((_%$%e122042122085%_
                         (gx#syntax-e _%__stx122740122741%_)))
                    (let ((_%$%tl122044122092%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e122042122085%_)))
                          (_%$%hd122043122089%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e122042122085%_))))
                      (if (gx#stx-pair/null? _%$%tl122044122092%_)
                          (let ((_%__splice122745122746%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl122044122092%_
                                  '0)))
                            (let ((_%$%tl122047122098%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice122745122746%_
                                      '1)))
                                  (_%$%target122045122095%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice122745122746%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl122047122098%_)
                                  (_%__match122763122764%_
                                   _%$%e122042122085%_
                                   _%$%hd122043122089%_
                                   _%$%tl122044122092%_
                                   _%__splice122745122746%_
                                   _%$%target122045122095%_
                                   _%$%tl122047122098%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g122038122078%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g122038122078%_)))))
                  (let () (declare (not safe)) (_%$%g122038122078%_))))))))
    (define |[:0:]#@build-manifest-string|
      (lambda (_%$stx122154%_)
        (let* ((_%__stx122766122767%_ _%$stx122154%_)
               (_%$%g122159122180%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx122766122767%_))))
          (let ((_%__kont122769122770%_
                 (lambda (_%$%g122161122245%_)
                   (cons (gx#datum->syntax
                          |[1]#_g122841_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'manifest)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '__build-manifest)
                                                       '()))
                                           '())
                                     (cons (let ((__tmp122842
                                                  (lambda (_%$%g122260122263%_
                                                           _%$%g122261122266%_)
                                                    (cons _%$%g122260122263%_
                                                          _%$%g122261122266%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp122842
                                              '()
                                              _%$%g122161122245%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g122844_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'manifest)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':list) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__build-manifest-string)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'manifest)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont122773122774%_
                 (lambda (_%$%g122174122187%_)
                   (gx#datum->syntax '#f 'build-manifest-string))))
            (let* ((_%$%g122158122198%_
                    (lambda ()
                      (let ((_%$%g122174122187%_ _%__stx122766122767%_))
                        (if (gx#identifier? _%$%g122174122187%_)
                            (_%__kont122773122774%_ _%$%g122174122187%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g122159122180%_))))))
                   (_%__match122789122790%_
                    (lambda (_%$%e122162122205%_
                             _%$%hd122163122209%_
                             _%$%tl122164122212%_
                             _%__splice122771122772%_
                             _%$%target122165122215%_
                             _%$%tl122167122218%_)
                      (letrec ((_%$%loop122168122221%_
                                (lambda (_%$%hd122166122225%_
                                         _%$%arg122172122228%_)
                                  (if (gx#stx-pair? _%$%hd122166122225%_)
                                      (let ((_%$%e122169122231%_
                                             (gx#syntax-e
                                              _%$%hd122166122225%_)))
                                        (let ((_%$%lp-tl122171122238%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e122169122231%_)))
                                              (_%$%lp-hd122170122235%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e122169122231%_))))
                                          (_%$%loop122168122221%_
                                           _%$%lp-tl122171122238%_
                                           (cons _%$%lp-hd122170122235%_
                                                 _%$%arg122172122228%_))))
                                      (let ((_%$%arg122173122241%_
                                             (reverse _%$%arg122172122228%_)))
                                        (_%__kont122769122770%_
                                         _%$%arg122173122241%_))))))
                        (_%$%loop122168122221%_
                         _%$%target122165122215%_
                         '())))))
              (if (gx#stx-pair? _%__stx122766122767%_)
                  (let ((_%$%e122162122205%_
                         (gx#syntax-e _%__stx122766122767%_)))
                    (let ((_%$%tl122164122212%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e122162122205%_)))
                          (_%$%hd122163122209%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e122162122205%_))))
                      (if (gx#stx-pair/null? _%$%tl122164122212%_)
                          (let ((_%__splice122771122772%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl122164122212%_
                                  '0)))
                            (let ((_%$%tl122167122218%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice122771122772%_
                                      '1)))
                                  (_%$%target122165122215%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice122771122772%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl122167122218%_)
                                  (_%__match122789122790%_
                                   _%$%e122162122205%_
                                   _%$%hd122163122209%_
                                   _%$%tl122164122212%_
                                   _%__splice122771122772%_
                                   _%$%target122165122215%_
                                   _%$%tl122167122218%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g122158122198%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g122158122198%_)))))
                  (let () (declare (not safe)) (_%$%g122158122198%_))))))))
    (define |[:0:]#@gerbil-greeting-set!|
      (lambda (_%$stx122274%_)
        (let* ((_%__stx122792122793%_ _%$stx122274%_)
               (_%$%g122279122300%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx122792122793%_))))
          (let ((_%__kont122795122796%_
                 (lambda (_%$%g122281122365%_)
                   (cons (gx#datum->syntax
                          |[1]#_g122846_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g122848_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp122849
                                                  (lambda (_%$%g122380122383%_
                                                           _%$%g122381122386%_)
                                                    (cons _%$%g122380122383%_
                                                          _%$%g122381122386%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp122849
                                              '()
                                              _%$%g122281122365%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g122851_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g122848_|
                                                              'new-value
                                                              '#f
                                                              '#f)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':string) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__gerbil-greeting-set!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |[1]#_g122848_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont122799122800%_
                 (lambda (_%$%g122294122307%_)
                   (gx#datum->syntax '#f 'gerbil-greeting-set!))))
            (let* ((_%$%g122278122318%_
                    (lambda ()
                      (let ((_%$%g122294122307%_ _%__stx122792122793%_))
                        (if (gx#identifier? _%$%g122294122307%_)
                            (_%__kont122799122800%_ _%$%g122294122307%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g122279122300%_))))))
                   (_%__match122815122816%_
                    (lambda (_%$%e122282122325%_
                             _%$%hd122283122329%_
                             _%$%tl122284122332%_
                             _%__splice122797122798%_
                             _%$%target122285122335%_
                             _%$%tl122287122338%_)
                      (letrec ((_%$%loop122288122341%_
                                (lambda (_%$%hd122286122345%_
                                         _%$%arg122292122348%_)
                                  (if (gx#stx-pair? _%$%hd122286122345%_)
                                      (let ((_%$%e122289122351%_
                                             (gx#syntax-e
                                              _%$%hd122286122345%_)))
                                        (let ((_%$%lp-tl122291122358%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e122289122351%_)))
                                              (_%$%lp-hd122290122355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e122289122351%_))))
                                          (_%$%loop122288122341%_
                                           _%$%lp-tl122291122358%_
                                           (cons _%$%lp-hd122290122355%_
                                                 _%$%arg122292122348%_))))
                                      (let ((_%$%arg122293122361%_
                                             (reverse _%$%arg122292122348%_)))
                                        (_%__kont122795122796%_
                                         _%$%arg122293122361%_))))))
                        (_%$%loop122288122341%_
                         _%$%target122285122335%_
                         '())))))
              (if (gx#stx-pair? _%__stx122792122793%_)
                  (let ((_%$%e122282122325%_
                         (gx#syntax-e _%__stx122792122793%_)))
                    (let ((_%$%tl122284122332%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e122282122325%_)))
                          (_%$%hd122283122329%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e122282122325%_))))
                      (if (gx#stx-pair/null? _%$%tl122284122332%_)
                          (let ((_%__splice122797122798%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl122284122332%_
                                  '0)))
                            (let ((_%$%tl122287122338%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice122797122798%_
                                      '1)))
                                  (_%$%target122285122335%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice122797122798%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl122287122338%_)
                                  (_%__match122815122816%_
                                   _%$%e122282122325%_
                                   _%$%hd122283122329%_
                                   _%$%tl122284122332%_
                                   _%__splice122797122798%_
                                   _%$%target122285122335%_
                                   _%$%tl122287122338%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g122278122318%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g122278122318%_)))))
                  (let () (declare (not safe)) (_%$%g122278122318%_))))))))))
