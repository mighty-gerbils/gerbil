(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g126865_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg126056%_)
       (id . _%id125993%_)
       ($%arg125968 . _%$%arg125968126026%_)
       ($%arg125969 . _%$%arg125969126040%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g126866_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g126865_|)))
  (define |[1]#_g126867_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value126723%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g126868_|
    (##structure
     gx#syntax-quote::t
     '_%new-value126723%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g126867_|)))
  (define |[1]#_g126870_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g126871_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g126870_|)))
  (define |[1]#_g126872_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg126176%_)
       (id . _%id126113%_)
       ($%arg126089 . _%$%arg126089126146%_)
       ($%arg126090 . _%$%arg126090126160%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g126873_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g126872_|)))
  (define |[1]#_g126875_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g126876_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g126875_|)))
  (define |[1]#_g126877_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg126296%_)
       (id . _%id126233%_)
       ($%arg126209 . _%$%arg126209126266%_)
       ($%arg126210 . _%$%arg126210126280%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g126878_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g126877_|)))
  (define |[1]#_g126880_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g126881_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g126880_|)))
  (define |[1]#_g126882_|
    (gx#core-deserialize-mark
     '(0
       ($%arg126329 . _%$%arg126329126386%_)
       (arg . _%arg126416%_)
       ($%arg126330 . _%$%arg126330126400%_)
       (id . _%id126353%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g126883_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g126882_|)))
  (define |[1]#_g126884_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value126473%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g126885_|
    (##structure
     gx#syntax-quote::t
     '_%new-value126473%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g126884_|)))
  (define |[1]#_g126887_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g126888_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g126887_|)))
  (begin
    (define |[:0:]#@build-manifest-set!|
      (lambda (_%$stx125950%_)
        (let* ((_%__stx126751126752%_ _%$stx125950%_)
               (_%$%g125955125976%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx126751126752%_))))
          (let ((_%__kont126754126755%_
                 (lambda (_%$%g125957126042%_)
                   (cons (gx#datum->syntax
                          |[1]#_g126866_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g126868_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp126869
                                                  (lambda (_%$%g126057126060%_
                                                           _%$%g126058126063%_)
                                                    (cons _%$%g126057126060%_
                                                          _%$%g126058126063%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp126869
                                              '()
                                              _%$%g125957126042%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g126871_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g126868_|
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
                            |[1]#_g126868_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont126758126759%_
                 (lambda (_%$%g125970125983%_)
                   (gx#datum->syntax '#f 'build-manifest-set!))))
            (let* ((_%$%g125954125995%_
                    (lambda ()
                      (let ((_%$%g125970125983%_ _%__stx126751126752%_))
                        (if (gx#identifier? _%$%g125970125983%_)
                            (_%__kont126758126759%_ _%$%g125970125983%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g125955125976%_))))))
                   (_%__match126774126775%_
                    (lambda (_%$%e125958126002%_
                             _%$%hd125959126006%_
                             _%$%tl125960126009%_
                             _%__splice126756126757%_
                             _%$%target125961126012%_
                             _%$%tl125963126015%_)
                      (letrec ((_%$%loop125964126018%_
                                (lambda (_%$%hd125962126022%_
                                         _%$%arg125968126025%_)
                                  (if (gx#stx-pair? _%$%hd125962126022%_)
                                      (let ((_%$%e125965126028%_
                                             (gx#syntax-e
                                              _%$%hd125962126022%_)))
                                        (let ((_%$%lp-tl125967126035%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e125965126028%_)))
                                              (_%$%lp-hd125966126032%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e125965126028%_))))
                                          (_%$%loop125964126018%_
                                           _%$%lp-tl125967126035%_
                                           (cons _%$%lp-hd125966126032%_
                                                 _%$%arg125968126025%_))))
                                      (let ((_%$%arg125969126038%_
                                             (reverse _%$%arg125968126025%_)))
                                        (_%__kont126754126755%_
                                         _%$%arg125969126038%_))))))
                        (_%$%loop125964126018%_
                         _%$%target125961126012%_
                         '())))))
              (if (gx#stx-pair? _%__stx126751126752%_)
                  (let ((_%$%e125958126002%_
                         (gx#syntax-e _%__stx126751126752%_)))
                    (let ((_%$%tl125960126009%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e125958126002%_)))
                          (_%$%hd125959126006%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e125958126002%_))))
                      (if (gx#stx-pair/null? _%$%tl125960126009%_)
                          (let ((_%__splice126756126757%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl125960126009%_
                                  '0)))
                            (let ((_%$%tl125963126015%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice126756126757%_
                                      '1)))
                                  (_%$%target125961126012%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice126756126757%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl125963126015%_)
                                  (_%__match126774126775%_
                                   _%$%e125958126002%_
                                   _%$%hd125959126006%_
                                   _%$%tl125960126009%_
                                   _%__splice126756126757%_
                                   _%$%target125961126012%_
                                   _%$%tl125963126015%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g125954125995%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g125954125995%_)))))
                  (let () (declare (not safe)) (_%$%g125954125995%_))))))))
    (define |[:0:]#@display-build-manifest|
      (lambda (_%$stx126071%_)
        (let* ((_%__stx126777126778%_ _%$stx126071%_)
               (_%$%g126076126097%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx126777126778%_))))
          (let ((_%__kont126780126781%_
                 (lambda (_%$%g126078126162%_)
                   (cons (gx#datum->syntax
                          |[1]#_g126873_|
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
                                     (cons (let ((__tmp126874
                                                  (lambda (_%$%g126177126180%_
                                                           _%$%g126178126183%_)
                                                    (cons _%$%g126177126180%_
                                                          _%$%g126178126183%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp126874
                                              '()
                                              _%$%g126078126162%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g126876_|
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
                (_%__kont126784126785%_
                 (lambda (_%$%g126091126104%_)
                   (gx#datum->syntax '#f 'display-build-manifest))))
            (let* ((_%$%g126075126115%_
                    (lambda ()
                      (let ((_%$%g126091126104%_ _%__stx126777126778%_))
                        (if (gx#identifier? _%$%g126091126104%_)
                            (_%__kont126784126785%_ _%$%g126091126104%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g126076126097%_))))))
                   (_%__match126800126801%_
                    (lambda (_%$%e126079126122%_
                             _%$%hd126080126126%_
                             _%$%tl126081126129%_
                             _%__splice126782126783%_
                             _%$%target126082126132%_
                             _%$%tl126084126135%_)
                      (letrec ((_%$%loop126085126138%_
                                (lambda (_%$%hd126083126142%_
                                         _%$%arg126089126145%_)
                                  (if (gx#stx-pair? _%$%hd126083126142%_)
                                      (let ((_%$%e126086126148%_
                                             (gx#syntax-e
                                              _%$%hd126083126142%_)))
                                        (let ((_%$%lp-tl126088126155%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e126086126148%_)))
                                              (_%$%lp-hd126087126152%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e126086126148%_))))
                                          (_%$%loop126085126138%_
                                           _%$%lp-tl126088126155%_
                                           (cons _%$%lp-hd126087126152%_
                                                 _%$%arg126089126145%_))))
                                      (let ((_%$%arg126090126158%_
                                             (reverse _%$%arg126089126145%_)))
                                        (_%__kont126780126781%_
                                         _%$%arg126090126158%_))))))
                        (_%$%loop126085126138%_
                         _%$%target126082126132%_
                         '())))))
              (if (gx#stx-pair? _%__stx126777126778%_)
                  (let ((_%$%e126079126122%_
                         (gx#syntax-e _%__stx126777126778%_)))
                    (let ((_%$%tl126081126129%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e126079126122%_)))
                          (_%$%hd126080126126%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e126079126122%_))))
                      (if (gx#stx-pair/null? _%$%tl126081126129%_)
                          (let ((_%__splice126782126783%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl126081126129%_
                                  '0)))
                            (let ((_%$%tl126084126135%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice126782126783%_
                                      '1)))
                                  (_%$%target126082126132%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice126782126783%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl126084126135%_)
                                  (_%__match126800126801%_
                                   _%$%e126079126122%_
                                   _%$%hd126080126126%_
                                   _%$%tl126081126129%_
                                   _%__splice126782126783%_
                                   _%$%target126082126132%_
                                   _%$%tl126084126135%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g126075126115%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g126075126115%_)))))
                  (let () (declare (not safe)) (_%$%g126075126115%_))))))))
    (define |[:0:]#@build-manifest-string|
      (lambda (_%$stx126191%_)
        (let* ((_%__stx126803126804%_ _%$stx126191%_)
               (_%$%g126196126217%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx126803126804%_))))
          (let ((_%__kont126806126807%_
                 (lambda (_%$%g126198126282%_)
                   (cons (gx#datum->syntax
                          |[1]#_g126878_|
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
                                     (cons (let ((__tmp126879
                                                  (lambda (_%$%g126297126300%_
                                                           _%$%g126298126303%_)
                                                    (cons _%$%g126297126300%_
                                                          _%$%g126298126303%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp126879
                                              '()
                                              _%$%g126198126282%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g126881_|
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
                (_%__kont126810126811%_
                 (lambda (_%$%g126211126224%_)
                   (gx#datum->syntax '#f 'build-manifest-string))))
            (let* ((_%$%g126195126235%_
                    (lambda ()
                      (let ((_%$%g126211126224%_ _%__stx126803126804%_))
                        (if (gx#identifier? _%$%g126211126224%_)
                            (_%__kont126810126811%_ _%$%g126211126224%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g126196126217%_))))))
                   (_%__match126826126827%_
                    (lambda (_%$%e126199126242%_
                             _%$%hd126200126246%_
                             _%$%tl126201126249%_
                             _%__splice126808126809%_
                             _%$%target126202126252%_
                             _%$%tl126204126255%_)
                      (letrec ((_%$%loop126205126258%_
                                (lambda (_%$%hd126203126262%_
                                         _%$%arg126209126265%_)
                                  (if (gx#stx-pair? _%$%hd126203126262%_)
                                      (let ((_%$%e126206126268%_
                                             (gx#syntax-e
                                              _%$%hd126203126262%_)))
                                        (let ((_%$%lp-tl126208126275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e126206126268%_)))
                                              (_%$%lp-hd126207126272%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e126206126268%_))))
                                          (_%$%loop126205126258%_
                                           _%$%lp-tl126208126275%_
                                           (cons _%$%lp-hd126207126272%_
                                                 _%$%arg126209126265%_))))
                                      (let ((_%$%arg126210126278%_
                                             (reverse _%$%arg126209126265%_)))
                                        (_%__kont126806126807%_
                                         _%$%arg126210126278%_))))))
                        (_%$%loop126205126258%_
                         _%$%target126202126252%_
                         '())))))
              (if (gx#stx-pair? _%__stx126803126804%_)
                  (let ((_%$%e126199126242%_
                         (gx#syntax-e _%__stx126803126804%_)))
                    (let ((_%$%tl126201126249%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e126199126242%_)))
                          (_%$%hd126200126246%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e126199126242%_))))
                      (if (gx#stx-pair/null? _%$%tl126201126249%_)
                          (let ((_%__splice126808126809%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl126201126249%_
                                  '0)))
                            (let ((_%$%tl126204126255%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice126808126809%_
                                      '1)))
                                  (_%$%target126202126252%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice126808126809%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl126204126255%_)
                                  (_%__match126826126827%_
                                   _%$%e126199126242%_
                                   _%$%hd126200126246%_
                                   _%$%tl126201126249%_
                                   _%__splice126808126809%_
                                   _%$%target126202126252%_
                                   _%$%tl126204126255%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g126195126235%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g126195126235%_)))))
                  (let () (declare (not safe)) (_%$%g126195126235%_))))))))
    (define |[:0:]#@gerbil-greeting-set!|
      (lambda (_%$stx126311%_)
        (let* ((_%__stx126829126830%_ _%$stx126311%_)
               (_%$%g126316126337%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx126829126830%_))))
          (let ((_%__kont126832126833%_
                 (lambda (_%$%g126318126402%_)
                   (cons (gx#datum->syntax
                          |[1]#_g126883_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g126885_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp126886
                                                  (lambda (_%$%g126417126420%_
                                                           _%$%g126418126423%_)
                                                    (cons _%$%g126417126420%_
                                                          _%$%g126418126423%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp126886
                                              '()
                                              _%$%g126318126402%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g126888_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g126885_|
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
                            |[1]#_g126885_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont126836126837%_
                 (lambda (_%$%g126331126344%_)
                   (gx#datum->syntax '#f 'gerbil-greeting-set!))))
            (let* ((_%$%g126315126355%_
                    (lambda ()
                      (let ((_%$%g126331126344%_ _%__stx126829126830%_))
                        (if (gx#identifier? _%$%g126331126344%_)
                            (_%__kont126836126837%_ _%$%g126331126344%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g126316126337%_))))))
                   (_%__match126852126853%_
                    (lambda (_%$%e126319126362%_
                             _%$%hd126320126366%_
                             _%$%tl126321126369%_
                             _%__splice126834126835%_
                             _%$%target126322126372%_
                             _%$%tl126324126375%_)
                      (letrec ((_%$%loop126325126378%_
                                (lambda (_%$%hd126323126382%_
                                         _%$%arg126329126385%_)
                                  (if (gx#stx-pair? _%$%hd126323126382%_)
                                      (let ((_%$%e126326126388%_
                                             (gx#syntax-e
                                              _%$%hd126323126382%_)))
                                        (let ((_%$%lp-tl126328126395%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e126326126388%_)))
                                              (_%$%lp-hd126327126392%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e126326126388%_))))
                                          (_%$%loop126325126378%_
                                           _%$%lp-tl126328126395%_
                                           (cons _%$%lp-hd126327126392%_
                                                 _%$%arg126329126385%_))))
                                      (let ((_%$%arg126330126398%_
                                             (reverse _%$%arg126329126385%_)))
                                        (_%__kont126832126833%_
                                         _%$%arg126330126398%_))))))
                        (_%$%loop126325126378%_
                         _%$%target126322126372%_
                         '())))))
              (if (gx#stx-pair? _%__stx126829126830%_)
                  (let ((_%$%e126319126362%_
                         (gx#syntax-e _%__stx126829126830%_)))
                    (let ((_%$%tl126321126369%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e126319126362%_)))
                          (_%$%hd126320126366%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e126319126362%_))))
                      (if (gx#stx-pair/null? _%$%tl126321126369%_)
                          (let ((_%__splice126834126835%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl126321126369%_
                                  '0)))
                            (let ((_%$%tl126324126375%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice126834126835%_
                                      '1)))
                                  (_%$%target126322126372%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice126834126835%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl126324126375%_)
                                  (_%__match126852126853%_
                                   _%$%e126319126362%_
                                   _%$%hd126320126366%_
                                   _%$%tl126321126369%_
                                   _%__splice126834126835%_
                                   _%$%target126322126372%_
                                   _%$%tl126324126375%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g126315126355%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g126315126355%_)))))
                  (let () (declare (not safe)) (_%$%g126315126355%_))))))))))
