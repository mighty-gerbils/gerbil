(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g121707_|
    (gx#core-deserialize-mark
     '(0
       (arg120810 . _%arg120810120868%_)
       (arg120811 . _%arg120811120882%_)
       (arg . _%arg120898%_)
       (id . _%id120835%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g121708_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g121707_|)))
  (define |[1]#_g121709_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value121565%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121710_|
    (##structure
     gx#syntax-quote::t
     '_%new-value121565%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g121709_|)))
  (define |[1]#_g121712_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121713_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g121712_|)))
  (define |[1]#_g121714_|
    (gx#core-deserialize-mark
     '(0
       (arg120931 . _%arg120931120988%_)
       (arg . _%arg121018%_)
       (id . _%id120955%_)
       (arg120932 . _%arg120932121002%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g121715_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g121714_|)))
  (define |[1]#_g121717_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121718_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g121717_|)))
  (define |[1]#_g121719_|
    (gx#core-deserialize-mark
     '(0
       (arg121051 . _%arg121051121108%_)
       (arg . _%arg121138%_)
       (id . _%id121075%_)
       (arg121052 . _%arg121052121122%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g121720_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g121719_|)))
  (define |[1]#_g121722_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121723_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g121722_|)))
  (define |[1]#_g121724_|
    (gx#core-deserialize-mark
     '(0
       (arg121171 . _%arg121171121228%_)
       (arg121172 . _%arg121172121242%_)
       (arg . _%arg121258%_)
       (id . _%id121195%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g121725_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g121724_|)))
  (define |[1]#_g121726_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value121315%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121727_|
    (##structure
     gx#syntax-quote::t
     '_%new-value121315%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g121726_|)))
  (define |[1]#_g121729_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121730_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g121729_|)))
  (begin
    (define |[:0:]#@build-manifest-set!|
      (lambda (_%$stx120792%_)
        (let* ((_%__stx121593121594%_ _%$stx120792%_)
               (_%g120797120818%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx121593121594%_))))
          (let ((_%__kont121596121597%_
                 (lambda (_%g120799120884%_)
                   (cons (gx#datum->syntax
                          |[1]#_g121708_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g121710_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp121711
                                                  (lambda (_%g120899120902%_
                                                           _%g120900120905%_)
                                                    (cons _%g120899120902%_
                                                          _%g120900120905%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp121711
                                              '()
                                              _%g120799120884%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g121713_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g121710_|
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
                            |[1]#_g121710_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont121600121601%_
                 (lambda (_%g120812120825%_)
                   (gx#datum->syntax '#f 'build-manifest-set!))))
            (let* ((_%g120796120837%_
                    (lambda ()
                      (let ((_%g120812120825%_ _%__stx121593121594%_))
                        (if (gx#identifier? _%g120812120825%_)
                            (_%__kont121600121601%_ _%g120812120825%_)
                            (let ()
                              (declare (not safe))
                              (_%g120797120818%_))))))
                   (_%__match121616121617%_
                    (lambda (_%e120800120844%_
                             _%hd120801120848%_
                             _%tl120802120851%_
                             _%__splice121598121599%_
                             _%target120803120854%_
                             _%tl120805120857%_)
                      (letrec ((_%loop120806120860%_
                                (lambda (_%hd120804120864%_
                                         _%arg120810120867%_)
                                  (if (gx#stx-pair? _%hd120804120864%_)
                                      (let ((_%e120807120870%_
                                             (gx#syntax-e _%hd120804120864%_)))
                                        (let ((_%lp-tl120809120877%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e120807120870%_)))
                                              (_%lp-hd120808120874%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e120807120870%_))))
                                          (_%loop120806120860%_
                                           _%lp-tl120809120877%_
                                           (cons _%lp-hd120808120874%_
                                                 _%arg120810120867%_))))
                                      (let ((_%arg120811120880%_
                                             (reverse _%arg120810120867%_)))
                                        (_%__kont121596121597%_
                                         _%arg120811120880%_))))))
                        (_%loop120806120860%_ _%target120803120854%_ '())))))
              (if (gx#stx-pair? _%__stx121593121594%_)
                  (let ((_%e120800120844%_
                         (gx#syntax-e _%__stx121593121594%_)))
                    (let ((_%tl120802120851%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e120800120844%_)))
                          (_%hd120801120848%_
                           (let ()
                             (declare (not safe))
                             (##car _%e120800120844%_))))
                      (if (gx#stx-pair/null? _%tl120802120851%_)
                          (let ((_%__splice121598121599%_
                                 (gx#syntax-split-splice->vector
                                  _%tl120802120851%_
                                  '0)))
                            (let ((_%tl120805120857%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121598121599%_
                                      '1)))
                                  (_%target120803120854%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121598121599%_
                                      '0))))
                              (if (gx#stx-null? _%tl120805120857%_)
                                  (_%__match121616121617%_
                                   _%e120800120844%_
                                   _%hd120801120848%_
                                   _%tl120802120851%_
                                   _%__splice121598121599%_
                                   _%target120803120854%_
                                   _%tl120805120857%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g120796120837%_)))))
                          (let () (declare (not safe)) (_%g120796120837%_)))))
                  (let () (declare (not safe)) (_%g120796120837%_))))))))
    (define |[:0:]#@display-build-manifest|
      (lambda (_%$stx120913%_)
        (let* ((_%__stx121619121620%_ _%$stx120913%_)
               (_%g120918120939%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx121619121620%_))))
          (let ((_%__kont121622121623%_
                 (lambda (_%g120920121004%_)
                   (cons (gx#datum->syntax
                          |[1]#_g121715_|
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
                                     (cons (let ((__tmp121716
                                                  (lambda (_%g121019121022%_
                                                           _%g121020121025%_)
                                                    (cons _%g121019121022%_
                                                          _%g121020121025%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp121716
                                              '()
                                              _%g120920121004%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g121718_|
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
                (_%__kont121626121627%_
                 (lambda (_%g120933120946%_)
                   (gx#datum->syntax '#f 'display-build-manifest))))
            (let* ((_%g120917120957%_
                    (lambda ()
                      (let ((_%g120933120946%_ _%__stx121619121620%_))
                        (if (gx#identifier? _%g120933120946%_)
                            (_%__kont121626121627%_ _%g120933120946%_)
                            (let ()
                              (declare (not safe))
                              (_%g120918120939%_))))))
                   (_%__match121642121643%_
                    (lambda (_%e120921120964%_
                             _%hd120922120968%_
                             _%tl120923120971%_
                             _%__splice121624121625%_
                             _%target120924120974%_
                             _%tl120926120977%_)
                      (letrec ((_%loop120927120980%_
                                (lambda (_%hd120925120984%_
                                         _%arg120931120987%_)
                                  (if (gx#stx-pair? _%hd120925120984%_)
                                      (let ((_%e120928120990%_
                                             (gx#syntax-e _%hd120925120984%_)))
                                        (let ((_%lp-tl120930120997%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e120928120990%_)))
                                              (_%lp-hd120929120994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e120928120990%_))))
                                          (_%loop120927120980%_
                                           _%lp-tl120930120997%_
                                           (cons _%lp-hd120929120994%_
                                                 _%arg120931120987%_))))
                                      (let ((_%arg120932121000%_
                                             (reverse _%arg120931120987%_)))
                                        (_%__kont121622121623%_
                                         _%arg120932121000%_))))))
                        (_%loop120927120980%_ _%target120924120974%_ '())))))
              (if (gx#stx-pair? _%__stx121619121620%_)
                  (let ((_%e120921120964%_
                         (gx#syntax-e _%__stx121619121620%_)))
                    (let ((_%tl120923120971%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e120921120964%_)))
                          (_%hd120922120968%_
                           (let ()
                             (declare (not safe))
                             (##car _%e120921120964%_))))
                      (if (gx#stx-pair/null? _%tl120923120971%_)
                          (let ((_%__splice121624121625%_
                                 (gx#syntax-split-splice->vector
                                  _%tl120923120971%_
                                  '0)))
                            (let ((_%tl120926120977%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121624121625%_
                                      '1)))
                                  (_%target120924120974%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121624121625%_
                                      '0))))
                              (if (gx#stx-null? _%tl120926120977%_)
                                  (_%__match121642121643%_
                                   _%e120921120964%_
                                   _%hd120922120968%_
                                   _%tl120923120971%_
                                   _%__splice121624121625%_
                                   _%target120924120974%_
                                   _%tl120926120977%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g120917120957%_)))))
                          (let () (declare (not safe)) (_%g120917120957%_)))))
                  (let () (declare (not safe)) (_%g120917120957%_))))))))
    (define |[:0:]#@build-manifest-string|
      (lambda (_%$stx121033%_)
        (let* ((_%__stx121645121646%_ _%$stx121033%_)
               (_%g121038121059%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx121645121646%_))))
          (let ((_%__kont121648121649%_
                 (lambda (_%g121040121124%_)
                   (cons (gx#datum->syntax
                          |[1]#_g121720_|
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
                                     (cons (let ((__tmp121721
                                                  (lambda (_%g121139121142%_
                                                           _%g121140121145%_)
                                                    (cons _%g121139121142%_
                                                          _%g121140121145%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp121721
                                              '()
                                              _%g121040121124%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g121723_|
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
                (_%__kont121652121653%_
                 (lambda (_%g121053121066%_)
                   (gx#datum->syntax '#f 'build-manifest-string))))
            (let* ((_%g121037121077%_
                    (lambda ()
                      (let ((_%g121053121066%_ _%__stx121645121646%_))
                        (if (gx#identifier? _%g121053121066%_)
                            (_%__kont121652121653%_ _%g121053121066%_)
                            (let ()
                              (declare (not safe))
                              (_%g121038121059%_))))))
                   (_%__match121668121669%_
                    (lambda (_%e121041121084%_
                             _%hd121042121088%_
                             _%tl121043121091%_
                             _%__splice121650121651%_
                             _%target121044121094%_
                             _%tl121046121097%_)
                      (letrec ((_%loop121047121100%_
                                (lambda (_%hd121045121104%_
                                         _%arg121051121107%_)
                                  (if (gx#stx-pair? _%hd121045121104%_)
                                      (let ((_%e121048121110%_
                                             (gx#syntax-e _%hd121045121104%_)))
                                        (let ((_%lp-tl121050121117%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e121048121110%_)))
                                              (_%lp-hd121049121114%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e121048121110%_))))
                                          (_%loop121047121100%_
                                           _%lp-tl121050121117%_
                                           (cons _%lp-hd121049121114%_
                                                 _%arg121051121107%_))))
                                      (let ((_%arg121052121120%_
                                             (reverse _%arg121051121107%_)))
                                        (_%__kont121648121649%_
                                         _%arg121052121120%_))))))
                        (_%loop121047121100%_ _%target121044121094%_ '())))))
              (if (gx#stx-pair? _%__stx121645121646%_)
                  (let ((_%e121041121084%_
                         (gx#syntax-e _%__stx121645121646%_)))
                    (let ((_%tl121043121091%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e121041121084%_)))
                          (_%hd121042121088%_
                           (let ()
                             (declare (not safe))
                             (##car _%e121041121084%_))))
                      (if (gx#stx-pair/null? _%tl121043121091%_)
                          (let ((_%__splice121650121651%_
                                 (gx#syntax-split-splice->vector
                                  _%tl121043121091%_
                                  '0)))
                            (let ((_%tl121046121097%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121650121651%_
                                      '1)))
                                  (_%target121044121094%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121650121651%_
                                      '0))))
                              (if (gx#stx-null? _%tl121046121097%_)
                                  (_%__match121668121669%_
                                   _%e121041121084%_
                                   _%hd121042121088%_
                                   _%tl121043121091%_
                                   _%__splice121650121651%_
                                   _%target121044121094%_
                                   _%tl121046121097%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g121037121077%_)))))
                          (let () (declare (not safe)) (_%g121037121077%_)))))
                  (let () (declare (not safe)) (_%g121037121077%_))))))))
    (define |[:0:]#@gerbil-greeting-set!|
      (lambda (_%$stx121153%_)
        (let* ((_%__stx121671121672%_ _%$stx121153%_)
               (_%g121158121179%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx121671121672%_))))
          (let ((_%__kont121674121675%_
                 (lambda (_%g121160121244%_)
                   (cons (gx#datum->syntax
                          |[1]#_g121725_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g121727_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp121728
                                                  (lambda (_%g121259121262%_
                                                           _%g121260121265%_)
                                                    (cons _%g121259121262%_
                                                          _%g121260121265%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp121728
                                              '()
                                              _%g121160121244%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g121730_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g121727_|
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
                            |[1]#_g121727_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont121678121679%_
                 (lambda (_%g121173121186%_)
                   (gx#datum->syntax '#f 'gerbil-greeting-set!))))
            (let* ((_%g121157121197%_
                    (lambda ()
                      (let ((_%g121173121186%_ _%__stx121671121672%_))
                        (if (gx#identifier? _%g121173121186%_)
                            (_%__kont121678121679%_ _%g121173121186%_)
                            (let ()
                              (declare (not safe))
                              (_%g121158121179%_))))))
                   (_%__match121694121695%_
                    (lambda (_%e121161121204%_
                             _%hd121162121208%_
                             _%tl121163121211%_
                             _%__splice121676121677%_
                             _%target121164121214%_
                             _%tl121166121217%_)
                      (letrec ((_%loop121167121220%_
                                (lambda (_%hd121165121224%_
                                         _%arg121171121227%_)
                                  (if (gx#stx-pair? _%hd121165121224%_)
                                      (let ((_%e121168121230%_
                                             (gx#syntax-e _%hd121165121224%_)))
                                        (let ((_%lp-tl121170121237%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e121168121230%_)))
                                              (_%lp-hd121169121234%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e121168121230%_))))
                                          (_%loop121167121220%_
                                           _%lp-tl121170121237%_
                                           (cons _%lp-hd121169121234%_
                                                 _%arg121171121227%_))))
                                      (let ((_%arg121172121240%_
                                             (reverse _%arg121171121227%_)))
                                        (_%__kont121674121675%_
                                         _%arg121172121240%_))))))
                        (_%loop121167121220%_ _%target121164121214%_ '())))))
              (if (gx#stx-pair? _%__stx121671121672%_)
                  (let ((_%e121161121204%_
                         (gx#syntax-e _%__stx121671121672%_)))
                    (let ((_%tl121163121211%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e121161121204%_)))
                          (_%hd121162121208%_
                           (let ()
                             (declare (not safe))
                             (##car _%e121161121204%_))))
                      (if (gx#stx-pair/null? _%tl121163121211%_)
                          (let ((_%__splice121676121677%_
                                 (gx#syntax-split-splice->vector
                                  _%tl121163121211%_
                                  '0)))
                            (let ((_%tl121166121217%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121676121677%_
                                      '1)))
                                  (_%target121164121214%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121676121677%_
                                      '0))))
                              (if (gx#stx-null? _%tl121166121217%_)
                                  (_%__match121694121695%_
                                   _%e121161121204%_
                                   _%hd121162121208%_
                                   _%tl121163121211%_
                                   _%__splice121676121677%_
                                   _%target121164121214%_
                                   _%tl121166121217%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g121157121197%_)))))
                          (let () (declare (not safe)) (_%g121157121197%_)))))
                  (let () (declare (not safe)) (_%g121157121197%_))))))))))
