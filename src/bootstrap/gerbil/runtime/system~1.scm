(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g120599_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id119727%_)
       (arg . _%arg119790%_)
       (arg119702 . _%arg119702119760%_)
       (arg119703 . _%arg119703119774%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g120600_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g120599_|)))
  (define |[1]#_g120601_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value119806%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120602_|
    (##structure
     gx#syntax-quote::t
     '_%new-value119806%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g120601_|)))
  (define |[1]#_g120604_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120605_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g120604_|)))
  (define |[1]#_g120606_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id119862%_)
       (arg . _%arg119925%_)
       (arg119839 . _%arg119839119909%_)
       (arg119838 . _%arg119838119895%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g120607_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g120606_|)))
  (define |[1]#_g120609_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120610_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g120609_|)))
  (define |[1]#_g120611_|
    (gx#core-deserialize-mark
     '(0
       (arg119999 . _%arg119999120056%_)
       (id . _%id120023%_)
       (arg . _%arg120086%_)
       (arg120000 . _%arg120000120070%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g120612_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g120611_|)))
  (define |[1]#_g120614_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120615_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g120614_|)))
  (define |[1]#_g120616_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id120166%_)
       (arg . _%arg120229%_)
       (arg120143 . _%arg120143120213%_)
       (arg120142 . _%arg120142120199%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g120617_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g120616_|)))
  (define |[1]#_g120618_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value120245%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120619_|
    (##structure
     gx#syntax-quote::t
     '_%new-value120245%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g120618_|)))
  (define |[1]#_g120621_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120622_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g120621_|)))
  (begin
    (define |[:0:]#@build-manifest-set!|
      (lambda (_%$stx119684%_)
        (let* ((_%__stx120485120486%_ _%$stx119684%_)
               (_%g119689119710%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx120485120486%_))))
          (let ((_%__kont120488120489%_
                 (lambda (_%g119691119776%_)
                   (cons (gx#datum->syntax
                          |[1]#_g120600_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g120602_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp120603
                                                  (lambda (_%g119791119794%_
                                                           _%g119792119797%_)
                                                    (cons _%g119791119794%_
                                                          _%g119792119797%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp120603
                                              '()
                                              _%g119691119776%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g120605_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g120602_|
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
                            |[1]#_g120602_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont120492120493%_
                 (lambda (_%g119704119717%_)
                   (gx#datum->syntax '#f 'build-manifest-set!))))
            (let* ((_%g119688119729%_
                    (lambda ()
                      (let ((_%g119704119717%_ _%__stx120485120486%_))
                        (if (gx#identifier? _%g119704119717%_)
                            (_%__kont120492120493%_ _%g119704119717%_)
                            (let ()
                              (declare (not safe))
                              (_%g119689119710%_))))))
                   (_%__match120508120509%_
                    (lambda (_%e119692119736%_
                             _%hd119693119740%_
                             _%tl119694119743%_
                             _%__splice120490120491%_
                             _%target119695119746%_
                             _%tl119697119749%_)
                      (letrec ((_%loop119698119752%_
                                (lambda (_%hd119696119756%_
                                         _%arg119702119759%_)
                                  (if (gx#stx-pair? _%hd119696119756%_)
                                      (let ((_%e119699119762%_
                                             (gx#syntax-e _%hd119696119756%_)))
                                        (let ((_%lp-tl119701119769%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e119699119762%_)))
                                              (_%lp-hd119700119766%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e119699119762%_))))
                                          (_%loop119698119752%_
                                           _%lp-tl119701119769%_
                                           (cons _%lp-hd119700119766%_
                                                 _%arg119702119759%_))))
                                      (let ((_%arg119703119772%_
                                             (reverse _%arg119702119759%_)))
                                        (_%__kont120488120489%_
                                         _%arg119703119772%_))))))
                        (_%loop119698119752%_ _%target119695119746%_ '())))))
              (if (gx#stx-pair? _%__stx120485120486%_)
                  (let ((_%e119692119736%_
                         (gx#syntax-e _%__stx120485120486%_)))
                    (let ((_%tl119694119743%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e119692119736%_)))
                          (_%hd119693119740%_
                           (let ()
                             (declare (not safe))
                             (##car _%e119692119736%_))))
                      (if (gx#stx-pair/null? _%tl119694119743%_)
                          (let ((_%__splice120490120491%_
                                 (gx#syntax-split-splice->vector
                                  _%tl119694119743%_
                                  '0)))
                            (let ((_%tl119697119749%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120490120491%_
                                      '1)))
                                  (_%target119695119746%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120490120491%_
                                      '0))))
                              (if (gx#stx-null? _%tl119697119749%_)
                                  (_%__match120508120509%_
                                   _%e119692119736%_
                                   _%hd119693119740%_
                                   _%tl119694119743%_
                                   _%__splice120490120491%_
                                   _%target119695119746%_
                                   _%tl119697119749%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g119688119729%_)))))
                          (let () (declare (not safe)) (_%g119688119729%_)))))
                  (let () (declare (not safe)) (_%g119688119729%_))))))))
    (define |[:0:]#@display-build-manifest|
      (lambda (_%$stx119820%_)
        (let* ((_%__stx120511120512%_ _%$stx119820%_)
               (_%g119825119846%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx120511120512%_))))
          (let ((_%__kont120514120515%_
                 (lambda (_%g119827119911%_)
                   (cons (gx#datum->syntax
                          |[1]#_g120607_|
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
                                     (cons (let ((__tmp120608
                                                  (lambda (_%g119926119929%_
                                                           _%g119927119932%_)
                                                    (cons _%g119926119929%_
                                                          _%g119927119932%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp120608
                                              '()
                                              _%g119827119911%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g120610_|
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
                (_%__kont120518120519%_
                 (lambda (_%g119840119853%_)
                   (gx#datum->syntax '#f 'display-build-manifest))))
            (let* ((_%g119824119864%_
                    (lambda ()
                      (let ((_%g119840119853%_ _%__stx120511120512%_))
                        (if (gx#identifier? _%g119840119853%_)
                            (_%__kont120518120519%_ _%g119840119853%_)
                            (let ()
                              (declare (not safe))
                              (_%g119825119846%_))))))
                   (_%__match120534120535%_
                    (lambda (_%e119828119871%_
                             _%hd119829119875%_
                             _%tl119830119878%_
                             _%__splice120516120517%_
                             _%target119831119881%_
                             _%tl119833119884%_)
                      (letrec ((_%loop119834119887%_
                                (lambda (_%hd119832119891%_
                                         _%arg119838119894%_)
                                  (if (gx#stx-pair? _%hd119832119891%_)
                                      (let ((_%e119835119897%_
                                             (gx#syntax-e _%hd119832119891%_)))
                                        (let ((_%lp-tl119837119904%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e119835119897%_)))
                                              (_%lp-hd119836119901%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e119835119897%_))))
                                          (_%loop119834119887%_
                                           _%lp-tl119837119904%_
                                           (cons _%lp-hd119836119901%_
                                                 _%arg119838119894%_))))
                                      (let ((_%arg119839119907%_
                                             (reverse _%arg119838119894%_)))
                                        (_%__kont120514120515%_
                                         _%arg119839119907%_))))))
                        (_%loop119834119887%_ _%target119831119881%_ '())))))
              (if (gx#stx-pair? _%__stx120511120512%_)
                  (let ((_%e119828119871%_
                         (gx#syntax-e _%__stx120511120512%_)))
                    (let ((_%tl119830119878%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e119828119871%_)))
                          (_%hd119829119875%_
                           (let ()
                             (declare (not safe))
                             (##car _%e119828119871%_))))
                      (if (gx#stx-pair/null? _%tl119830119878%_)
                          (let ((_%__splice120516120517%_
                                 (gx#syntax-split-splice->vector
                                  _%tl119830119878%_
                                  '0)))
                            (let ((_%tl119833119884%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120516120517%_
                                      '1)))
                                  (_%target119831119881%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120516120517%_
                                      '0))))
                              (if (gx#stx-null? _%tl119833119884%_)
                                  (_%__match120534120535%_
                                   _%e119828119871%_
                                   _%hd119829119875%_
                                   _%tl119830119878%_
                                   _%__splice120516120517%_
                                   _%target119831119881%_
                                   _%tl119833119884%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g119824119864%_)))))
                          (let () (declare (not safe)) (_%g119824119864%_)))))
                  (let () (declare (not safe)) (_%g119824119864%_))))))))
    (define |[:0:]#@build-manifest-string|
      (lambda (_%$stx119981%_)
        (let* ((_%__stx120537120538%_ _%$stx119981%_)
               (_%g119986120007%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx120537120538%_))))
          (let ((_%__kont120540120541%_
                 (lambda (_%g119988120072%_)
                   (cons (gx#datum->syntax
                          |[1]#_g120612_|
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
                                     (cons (let ((__tmp120613
                                                  (lambda (_%g120087120090%_
                                                           _%g120088120093%_)
                                                    (cons _%g120087120090%_
                                                          _%g120088120093%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp120613
                                              '()
                                              _%g119988120072%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g120615_|
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
                (_%__kont120544120545%_
                 (lambda (_%g120001120014%_)
                   (gx#datum->syntax '#f 'build-manifest-string))))
            (let* ((_%g119985120025%_
                    (lambda ()
                      (let ((_%g120001120014%_ _%__stx120537120538%_))
                        (if (gx#identifier? _%g120001120014%_)
                            (_%__kont120544120545%_ _%g120001120014%_)
                            (let ()
                              (declare (not safe))
                              (_%g119986120007%_))))))
                   (_%__match120560120561%_
                    (lambda (_%e119989120032%_
                             _%hd119990120036%_
                             _%tl119991120039%_
                             _%__splice120542120543%_
                             _%target119992120042%_
                             _%tl119994120045%_)
                      (letrec ((_%loop119995120048%_
                                (lambda (_%hd119993120052%_
                                         _%arg119999120055%_)
                                  (if (gx#stx-pair? _%hd119993120052%_)
                                      (let ((_%e119996120058%_
                                             (gx#syntax-e _%hd119993120052%_)))
                                        (let ((_%lp-tl119998120065%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e119996120058%_)))
                                              (_%lp-hd119997120062%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e119996120058%_))))
                                          (_%loop119995120048%_
                                           _%lp-tl119998120065%_
                                           (cons _%lp-hd119997120062%_
                                                 _%arg119999120055%_))))
                                      (let ((_%arg120000120068%_
                                             (reverse _%arg119999120055%_)))
                                        (_%__kont120540120541%_
                                         _%arg120000120068%_))))))
                        (_%loop119995120048%_ _%target119992120042%_ '())))))
              (if (gx#stx-pair? _%__stx120537120538%_)
                  (let ((_%e119989120032%_
                         (gx#syntax-e _%__stx120537120538%_)))
                    (let ((_%tl119991120039%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e119989120032%_)))
                          (_%hd119990120036%_
                           (let ()
                             (declare (not safe))
                             (##car _%e119989120032%_))))
                      (if (gx#stx-pair/null? _%tl119991120039%_)
                          (let ((_%__splice120542120543%_
                                 (gx#syntax-split-splice->vector
                                  _%tl119991120039%_
                                  '0)))
                            (let ((_%tl119994120045%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120542120543%_
                                      '1)))
                                  (_%target119992120042%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120542120543%_
                                      '0))))
                              (if (gx#stx-null? _%tl119994120045%_)
                                  (_%__match120560120561%_
                                   _%e119989120032%_
                                   _%hd119990120036%_
                                   _%tl119991120039%_
                                   _%__splice120542120543%_
                                   _%target119992120042%_
                                   _%tl119994120045%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g119985120025%_)))))
                          (let () (declare (not safe)) (_%g119985120025%_)))))
                  (let () (declare (not safe)) (_%g119985120025%_))))))))
    (define |[:0:]#@gerbil-greeting-set!|
      (lambda (_%$stx120124%_)
        (let* ((_%__stx120563120564%_ _%$stx120124%_)
               (_%g120129120150%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx120563120564%_))))
          (let ((_%__kont120566120567%_
                 (lambda (_%g120131120215%_)
                   (cons (gx#datum->syntax
                          |[1]#_g120617_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g120619_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp120620
                                                  (lambda (_%g120230120233%_
                                                           _%g120231120236%_)
                                                    (cons _%g120230120233%_
                                                          _%g120231120236%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp120620
                                              '()
                                              _%g120131120215%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g120622_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g120619_|
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
                            |[1]#_g120619_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont120570120571%_
                 (lambda (_%g120144120157%_)
                   (gx#datum->syntax '#f 'gerbil-greeting-set!))))
            (let* ((_%g120128120168%_
                    (lambda ()
                      (let ((_%g120144120157%_ _%__stx120563120564%_))
                        (if (gx#identifier? _%g120144120157%_)
                            (_%__kont120570120571%_ _%g120144120157%_)
                            (let ()
                              (declare (not safe))
                              (_%g120129120150%_))))))
                   (_%__match120586120587%_
                    (lambda (_%e120132120175%_
                             _%hd120133120179%_
                             _%tl120134120182%_
                             _%__splice120568120569%_
                             _%target120135120185%_
                             _%tl120137120188%_)
                      (letrec ((_%loop120138120191%_
                                (lambda (_%hd120136120195%_
                                         _%arg120142120198%_)
                                  (if (gx#stx-pair? _%hd120136120195%_)
                                      (let ((_%e120139120201%_
                                             (gx#syntax-e _%hd120136120195%_)))
                                        (let ((_%lp-tl120141120208%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e120139120201%_)))
                                              (_%lp-hd120140120205%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e120139120201%_))))
                                          (_%loop120138120191%_
                                           _%lp-tl120141120208%_
                                           (cons _%lp-hd120140120205%_
                                                 _%arg120142120198%_))))
                                      (let ((_%arg120143120211%_
                                             (reverse _%arg120142120198%_)))
                                        (_%__kont120566120567%_
                                         _%arg120143120211%_))))))
                        (_%loop120138120191%_ _%target120135120185%_ '())))))
              (if (gx#stx-pair? _%__stx120563120564%_)
                  (let ((_%e120132120175%_
                         (gx#syntax-e _%__stx120563120564%_)))
                    (let ((_%tl120134120182%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e120132120175%_)))
                          (_%hd120133120179%_
                           (let ()
                             (declare (not safe))
                             (##car _%e120132120175%_))))
                      (if (gx#stx-pair/null? _%tl120134120182%_)
                          (let ((_%__splice120568120569%_
                                 (gx#syntax-split-splice->vector
                                  _%tl120134120182%_
                                  '0)))
                            (let ((_%tl120137120188%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120568120569%_
                                      '1)))
                                  (_%target120135120185%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120568120569%_
                                      '0))))
                              (if (gx#stx-null? _%tl120137120188%_)
                                  (_%__match120586120587%_
                                   _%e120132120175%_
                                   _%hd120133120179%_
                                   _%tl120134120182%_
                                   _%__splice120568120569%_
                                   _%target120135120185%_
                                   _%tl120137120188%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g120128120168%_)))))
                          (let () (declare (not safe)) (_%g120128120168%_)))))
                  (let () (declare (not safe)) (_%g120128120168%_))))))))))
