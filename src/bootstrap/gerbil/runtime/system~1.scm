(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g124067_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id123195%_)
       ($%arg123170 . _%$%arg123170123228%_)
       ($%arg123171 . _%$%arg123171123242%_)
       (arg . _%arg123258%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g124068_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g124067_|)))
  (define |[1]#_g124069_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value123925%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g124070_|
    (##structure
     gx#syntax-quote::t
     '_%new-value123925%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g124069_|)))
  (define |[1]#_g124072_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g124073_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g124072_|)))
  (define |[1]#_g124074_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id123315%_)
       ($%arg123291 . _%$%arg123291123348%_)
       ($%arg123292 . _%$%arg123292123362%_)
       (arg . _%arg123378%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g124075_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g124074_|)))
  (define |[1]#_g124077_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g124078_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g124077_|)))
  (define |[1]#_g124079_|
    (gx#core-deserialize-mark
     '(0
       ($%arg123412 . _%$%arg123412123482%_)
       ($%arg123411 . _%$%arg123411123468%_)
       (id . _%id123435%_)
       (arg . _%arg123498%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g124080_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g124079_|)))
  (define |[1]#_g124082_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g124083_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g124082_|)))
  (define |[1]#_g124084_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id123555%_)
       ($%arg123532 . _%$%arg123532123602%_)
       ($%arg123531 . _%$%arg123531123588%_)
       (arg . _%arg123618%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g124085_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g124084_|)))
  (define |[1]#_g124086_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value123675%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g124087_|
    (##structure
     gx#syntax-quote::t
     '_%new-value123675%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g124086_|)))
  (define |[1]#_g124089_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g124090_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g124089_|)))
  (begin
    (define |[:0:]#@build-manifest-set!|
      (lambda (_%$stx123152%_)
        (let* ((_%__stx123953123954%_ _%$stx123152%_)
               (_%$%g123157123178%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx123953123954%_))))
          (let ((_%__kont123956123957%_
                 (lambda (_%$%g123159123244%_)
                   (cons (gx#datum->syntax
                          |[1]#_g124068_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g124070_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp124071
                                                  (lambda (_%$%g123259123262%_
                                                           _%$%g123260123265%_)
                                                    (cons _%$%g123259123262%_
                                                          _%$%g123260123265%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp124071
                                              '()
                                              _%$%g123159123244%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g124073_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g124070_|
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
                            |[1]#_g124070_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont123960123961%_
                 (lambda (_%$%g123172123185%_)
                   (gx#datum->syntax '#f 'build-manifest-set!))))
            (let* ((_%$%g123156123197%_
                    (lambda ()
                      (let ((_%$%g123172123185%_ _%__stx123953123954%_))
                        (if (gx#identifier? _%$%g123172123185%_)
                            (_%__kont123960123961%_ _%$%g123172123185%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g123157123178%_))))))
                   (_%__match123976123977%_
                    (lambda (_%$%e123160123204%_
                             _%$%hd123161123208%_
                             _%$%tl123162123211%_
                             _%__splice123958123959%_
                             _%$%target123163123214%_
                             _%$%tl123165123217%_)
                      (letrec ((_%$%loop123166123220%_
                                (lambda (_%$%hd123164123224%_
                                         _%$%arg123170123227%_)
                                  (if (gx#stx-pair? _%$%hd123164123224%_)
                                      (let ((_%$%e123167123230%_
                                             (gx#syntax-e
                                              _%$%hd123164123224%_)))
                                        (let ((_%$%lp-tl123169123237%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e123167123230%_)))
                                              (_%$%lp-hd123168123234%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e123167123230%_))))
                                          (_%$%loop123166123220%_
                                           _%$%lp-tl123169123237%_
                                           (cons _%$%lp-hd123168123234%_
                                                 _%$%arg123170123227%_))))
                                      (let ((_%$%arg123171123240%_
                                             (reverse _%$%arg123170123227%_)))
                                        (_%__kont123956123957%_
                                         _%$%arg123171123240%_))))))
                        (_%$%loop123166123220%_
                         _%$%target123163123214%_
                         '())))))
              (if (gx#stx-pair? _%__stx123953123954%_)
                  (let ((_%$%e123160123204%_
                         (gx#syntax-e _%__stx123953123954%_)))
                    (let ((_%$%tl123162123211%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e123160123204%_)))
                          (_%$%hd123161123208%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e123160123204%_))))
                      (if (gx#stx-pair/null? _%$%tl123162123211%_)
                          (let ((_%__splice123958123959%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl123162123211%_
                                  '0)))
                            (let ((_%$%tl123165123217%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice123958123959%_
                                      '1)))
                                  (_%$%target123163123214%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice123958123959%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl123165123217%_)
                                  (_%__match123976123977%_
                                   _%$%e123160123204%_
                                   _%$%hd123161123208%_
                                   _%$%tl123162123211%_
                                   _%__splice123958123959%_
                                   _%$%target123163123214%_
                                   _%$%tl123165123217%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g123156123197%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g123156123197%_)))))
                  (let () (declare (not safe)) (_%$%g123156123197%_))))))))
    (define |[:0:]#@display-build-manifest|
      (lambda (_%$stx123273%_)
        (let* ((_%__stx123979123980%_ _%$stx123273%_)
               (_%$%g123278123299%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx123979123980%_))))
          (let ((_%__kont123982123983%_
                 (lambda (_%$%g123280123364%_)
                   (cons (gx#datum->syntax
                          |[1]#_g124075_|
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
                                     (cons (let ((__tmp124076
                                                  (lambda (_%$%g123379123382%_
                                                           _%$%g123380123385%_)
                                                    (cons _%$%g123379123382%_
                                                          _%$%g123380123385%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp124076
                                              '()
                                              _%$%g123280123364%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g124078_|
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
                (_%__kont123986123987%_
                 (lambda (_%$%g123293123306%_)
                   (gx#datum->syntax '#f 'display-build-manifest))))
            (let* ((_%$%g123277123317%_
                    (lambda ()
                      (let ((_%$%g123293123306%_ _%__stx123979123980%_))
                        (if (gx#identifier? _%$%g123293123306%_)
                            (_%__kont123986123987%_ _%$%g123293123306%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g123278123299%_))))))
                   (_%__match124002124003%_
                    (lambda (_%$%e123281123324%_
                             _%$%hd123282123328%_
                             _%$%tl123283123331%_
                             _%__splice123984123985%_
                             _%$%target123284123334%_
                             _%$%tl123286123337%_)
                      (letrec ((_%$%loop123287123340%_
                                (lambda (_%$%hd123285123344%_
                                         _%$%arg123291123347%_)
                                  (if (gx#stx-pair? _%$%hd123285123344%_)
                                      (let ((_%$%e123288123350%_
                                             (gx#syntax-e
                                              _%$%hd123285123344%_)))
                                        (let ((_%$%lp-tl123290123357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e123288123350%_)))
                                              (_%$%lp-hd123289123354%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e123288123350%_))))
                                          (_%$%loop123287123340%_
                                           _%$%lp-tl123290123357%_
                                           (cons _%$%lp-hd123289123354%_
                                                 _%$%arg123291123347%_))))
                                      (let ((_%$%arg123292123360%_
                                             (reverse _%$%arg123291123347%_)))
                                        (_%__kont123982123983%_
                                         _%$%arg123292123360%_))))))
                        (_%$%loop123287123340%_
                         _%$%target123284123334%_
                         '())))))
              (if (gx#stx-pair? _%__stx123979123980%_)
                  (let ((_%$%e123281123324%_
                         (gx#syntax-e _%__stx123979123980%_)))
                    (let ((_%$%tl123283123331%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e123281123324%_)))
                          (_%$%hd123282123328%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e123281123324%_))))
                      (if (gx#stx-pair/null? _%$%tl123283123331%_)
                          (let ((_%__splice123984123985%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl123283123331%_
                                  '0)))
                            (let ((_%$%tl123286123337%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice123984123985%_
                                      '1)))
                                  (_%$%target123284123334%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice123984123985%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl123286123337%_)
                                  (_%__match124002124003%_
                                   _%$%e123281123324%_
                                   _%$%hd123282123328%_
                                   _%$%tl123283123331%_
                                   _%__splice123984123985%_
                                   _%$%target123284123334%_
                                   _%$%tl123286123337%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g123277123317%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g123277123317%_)))))
                  (let () (declare (not safe)) (_%$%g123277123317%_))))))))
    (define |[:0:]#@build-manifest-string|
      (lambda (_%$stx123393%_)
        (let* ((_%__stx124005124006%_ _%$stx123393%_)
               (_%$%g123398123419%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx124005124006%_))))
          (let ((_%__kont124008124009%_
                 (lambda (_%$%g123400123484%_)
                   (cons (gx#datum->syntax
                          |[1]#_g124080_|
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
                                     (cons (let ((__tmp124081
                                                  (lambda (_%$%g123499123502%_
                                                           _%$%g123500123505%_)
                                                    (cons _%$%g123499123502%_
                                                          _%$%g123500123505%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp124081
                                              '()
                                              _%$%g123400123484%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g124083_|
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
                (_%__kont124012124013%_
                 (lambda (_%$%g123413123426%_)
                   (gx#datum->syntax '#f 'build-manifest-string))))
            (let* ((_%$%g123397123437%_
                    (lambda ()
                      (let ((_%$%g123413123426%_ _%__stx124005124006%_))
                        (if (gx#identifier? _%$%g123413123426%_)
                            (_%__kont124012124013%_ _%$%g123413123426%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g123398123419%_))))))
                   (_%__match124028124029%_
                    (lambda (_%$%e123401123444%_
                             _%$%hd123402123448%_
                             _%$%tl123403123451%_
                             _%__splice124010124011%_
                             _%$%target123404123454%_
                             _%$%tl123406123457%_)
                      (letrec ((_%$%loop123407123460%_
                                (lambda (_%$%hd123405123464%_
                                         _%$%arg123411123467%_)
                                  (if (gx#stx-pair? _%$%hd123405123464%_)
                                      (let ((_%$%e123408123470%_
                                             (gx#syntax-e
                                              _%$%hd123405123464%_)))
                                        (let ((_%$%lp-tl123410123477%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e123408123470%_)))
                                              (_%$%lp-hd123409123474%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e123408123470%_))))
                                          (_%$%loop123407123460%_
                                           _%$%lp-tl123410123477%_
                                           (cons _%$%lp-hd123409123474%_
                                                 _%$%arg123411123467%_))))
                                      (let ((_%$%arg123412123480%_
                                             (reverse _%$%arg123411123467%_)))
                                        (_%__kont124008124009%_
                                         _%$%arg123412123480%_))))))
                        (_%$%loop123407123460%_
                         _%$%target123404123454%_
                         '())))))
              (if (gx#stx-pair? _%__stx124005124006%_)
                  (let ((_%$%e123401123444%_
                         (gx#syntax-e _%__stx124005124006%_)))
                    (let ((_%$%tl123403123451%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e123401123444%_)))
                          (_%$%hd123402123448%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e123401123444%_))))
                      (if (gx#stx-pair/null? _%$%tl123403123451%_)
                          (let ((_%__splice124010124011%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl123403123451%_
                                  '0)))
                            (let ((_%$%tl123406123457%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice124010124011%_
                                      '1)))
                                  (_%$%target123404123454%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice124010124011%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl123406123457%_)
                                  (_%__match124028124029%_
                                   _%$%e123401123444%_
                                   _%$%hd123402123448%_
                                   _%$%tl123403123451%_
                                   _%__splice124010124011%_
                                   _%$%target123404123454%_
                                   _%$%tl123406123457%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g123397123437%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g123397123437%_)))))
                  (let () (declare (not safe)) (_%$%g123397123437%_))))))))
    (define |[:0:]#@gerbil-greeting-set!|
      (lambda (_%$stx123513%_)
        (let* ((_%__stx124031124032%_ _%$stx123513%_)
               (_%$%g123518123539%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx124031124032%_))))
          (let ((_%__kont124034124035%_
                 (lambda (_%$%g123520123604%_)
                   (cons (gx#datum->syntax
                          |[1]#_g124085_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g124087_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp124088
                                                  (lambda (_%$%g123619123622%_
                                                           _%$%g123620123625%_)
                                                    (cons _%$%g123619123622%_
                                                          _%$%g123620123625%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp124088
                                              '()
                                              _%$%g123520123604%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g124090_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g124087_|
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
                            |[1]#_g124087_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont124038124039%_
                 (lambda (_%$%g123533123546%_)
                   (gx#datum->syntax '#f 'gerbil-greeting-set!))))
            (let* ((_%$%g123517123557%_
                    (lambda ()
                      (let ((_%$%g123533123546%_ _%__stx124031124032%_))
                        (if (gx#identifier? _%$%g123533123546%_)
                            (_%__kont124038124039%_ _%$%g123533123546%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g123518123539%_))))))
                   (_%__match124054124055%_
                    (lambda (_%$%e123521123564%_
                             _%$%hd123522123568%_
                             _%$%tl123523123571%_
                             _%__splice124036124037%_
                             _%$%target123524123574%_
                             _%$%tl123526123577%_)
                      (letrec ((_%$%loop123527123580%_
                                (lambda (_%$%hd123525123584%_
                                         _%$%arg123531123587%_)
                                  (if (gx#stx-pair? _%$%hd123525123584%_)
                                      (let ((_%$%e123528123590%_
                                             (gx#syntax-e
                                              _%$%hd123525123584%_)))
                                        (let ((_%$%lp-tl123530123597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e123528123590%_)))
                                              (_%$%lp-hd123529123594%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e123528123590%_))))
                                          (_%$%loop123527123580%_
                                           _%$%lp-tl123530123597%_
                                           (cons _%$%lp-hd123529123594%_
                                                 _%$%arg123531123587%_))))
                                      (let ((_%$%arg123532123600%_
                                             (reverse _%$%arg123531123587%_)))
                                        (_%__kont124034124035%_
                                         _%$%arg123532123600%_))))))
                        (_%$%loop123527123580%_
                         _%$%target123524123574%_
                         '())))))
              (if (gx#stx-pair? _%__stx124031124032%_)
                  (let ((_%$%e123521123564%_
                         (gx#syntax-e _%__stx124031124032%_)))
                    (let ((_%$%tl123523123571%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e123521123564%_)))
                          (_%$%hd123522123568%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e123521123564%_))))
                      (if (gx#stx-pair/null? _%$%tl123523123571%_)
                          (let ((_%__splice124036124037%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl123523123571%_
                                  '0)))
                            (let ((_%$%tl123526123577%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice124036124037%_
                                      '1)))
                                  (_%$%target123524123574%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice124036124037%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl123526123577%_)
                                  (_%__match124054124055%_
                                   _%$%e123521123564%_
                                   _%$%hd123522123568%_
                                   _%$%tl123523123571%_
                                   _%__splice124036124037%_
                                   _%$%target123524123574%_
                                   _%$%tl123526123577%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g123517123557%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g123517123557%_)))))
                  (let () (declare (not safe)) (_%$%g123517123557%_))))))))))
