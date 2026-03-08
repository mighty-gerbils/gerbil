(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g121203_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id120331%_)
       (arg120306 . _%arg120306120364%_)
       (arg . _%arg120394%_)
       (arg120307 . _%arg120307120378%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g121204_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g121203_|)))
  (define |[1]#_g121205_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value120410%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121206_|
    (##structure
     gx#syntax-quote::t
     '_%new-value120410%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g121205_|)))
  (define |[1]#_g121208_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121209_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g121208_|)))
  (define |[1]#_g121210_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id120466%_)
       (arg120442 . _%arg120442120499%_)
       (arg . _%arg120529%_)
       (arg120443 . _%arg120443120513%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g121211_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g121210_|)))
  (define |[1]#_g121213_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121214_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g121213_|)))
  (define |[1]#_g121215_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id120627%_)
       (arg120603 . _%arg120603120660%_)
       (arg . _%arg120690%_)
       (arg120604 . _%arg120604120674%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g121216_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g121215_|)))
  (define |[1]#_g121218_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121219_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g121218_|)))
  (define |[1]#_g121220_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id120770%_)
       (arg120747 . _%arg120747120817%_)
       (arg . _%arg120833%_)
       (arg120746 . _%arg120746120803%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g121221_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g121220_|)))
  (define |[1]#_g121222_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value120849%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121223_|
    (##structure
     gx#syntax-quote::t
     '_%new-value120849%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g121222_|)))
  (define |[1]#_g121225_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121226_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g121225_|)))
  (begin
    (define |[:0:]#@build-manifest-set!|
      (lambda (_%$stx120288%_)
        (let* ((_%__stx121089121090%_ _%$stx120288%_)
               (_%g120293120314%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx121089121090%_))))
          (let ((_%__kont121092121093%_
                 (lambda (_%g120295120380%_)
                   (cons (gx#datum->syntax
                          |[1]#_g121204_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g121206_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp121207
                                                  (lambda (_%g120395120398%_
                                                           _%g120396120401%_)
                                                    (cons _%g120395120398%_
                                                          _%g120396120401%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp121207
                                              '()
                                              _%g120295120380%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g121209_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g121206_|
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
                            |[1]#_g121206_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont121096121097%_
                 (lambda (_%g120308120321%_)
                   (gx#datum->syntax '#f 'build-manifest-set!))))
            (let* ((_%g120292120333%_
                    (lambda ()
                      (let ((_%g120308120321%_ _%__stx121089121090%_))
                        (if (gx#identifier? _%g120308120321%_)
                            (_%__kont121096121097%_ _%g120308120321%_)
                            (let ()
                              (declare (not safe))
                              (_%g120293120314%_))))))
                   (_%__match121112121113%_
                    (lambda (_%e120296120340%_
                             _%hd120297120344%_
                             _%tl120298120347%_
                             _%__splice121094121095%_
                             _%target120299120350%_
                             _%tl120301120353%_)
                      (letrec ((_%loop120302120356%_
                                (lambda (_%hd120300120360%_
                                         _%arg120306120363%_)
                                  (if (gx#stx-pair? _%hd120300120360%_)
                                      (let ((_%e120303120366%_
                                             (gx#syntax-e _%hd120300120360%_)))
                                        (let ((_%lp-tl120305120373%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e120303120366%_)))
                                              (_%lp-hd120304120370%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e120303120366%_))))
                                          (_%loop120302120356%_
                                           _%lp-tl120305120373%_
                                           (cons _%lp-hd120304120370%_
                                                 _%arg120306120363%_))))
                                      (let ((_%arg120307120376%_
                                             (reverse _%arg120306120363%_)))
                                        (_%__kont121092121093%_
                                         _%arg120307120376%_))))))
                        (_%loop120302120356%_ _%target120299120350%_ '())))))
              (if (gx#stx-pair? _%__stx121089121090%_)
                  (let ((_%e120296120340%_
                         (gx#syntax-e _%__stx121089121090%_)))
                    (let ((_%tl120298120347%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e120296120340%_)))
                          (_%hd120297120344%_
                           (let ()
                             (declare (not safe))
                             (##car _%e120296120340%_))))
                      (if (gx#stx-pair/null? _%tl120298120347%_)
                          (let ((_%__splice121094121095%_
                                 (gx#syntax-split-splice->vector
                                  _%tl120298120347%_
                                  '0)))
                            (let ((_%tl120301120353%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121094121095%_
                                      '1)))
                                  (_%target120299120350%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121094121095%_
                                      '0))))
                              (if (gx#stx-null? _%tl120301120353%_)
                                  (_%__match121112121113%_
                                   _%e120296120340%_
                                   _%hd120297120344%_
                                   _%tl120298120347%_
                                   _%__splice121094121095%_
                                   _%target120299120350%_
                                   _%tl120301120353%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g120292120333%_)))))
                          (let () (declare (not safe)) (_%g120292120333%_)))))
                  (let () (declare (not safe)) (_%g120292120333%_))))))))
    (define |[:0:]#@display-build-manifest|
      (lambda (_%$stx120424%_)
        (let* ((_%__stx121115121116%_ _%$stx120424%_)
               (_%g120429120450%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx121115121116%_))))
          (let ((_%__kont121118121119%_
                 (lambda (_%g120431120515%_)
                   (cons (gx#datum->syntax
                          |[1]#_g121211_|
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
                                     (cons (let ((__tmp121212
                                                  (lambda (_%g120530120533%_
                                                           _%g120531120536%_)
                                                    (cons _%g120530120533%_
                                                          _%g120531120536%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp121212
                                              '()
                                              _%g120431120515%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g121214_|
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
                (_%__kont121122121123%_
                 (lambda (_%g120444120457%_)
                   (gx#datum->syntax '#f 'display-build-manifest))))
            (let* ((_%g120428120468%_
                    (lambda ()
                      (let ((_%g120444120457%_ _%__stx121115121116%_))
                        (if (gx#identifier? _%g120444120457%_)
                            (_%__kont121122121123%_ _%g120444120457%_)
                            (let ()
                              (declare (not safe))
                              (_%g120429120450%_))))))
                   (_%__match121138121139%_
                    (lambda (_%e120432120475%_
                             _%hd120433120479%_
                             _%tl120434120482%_
                             _%__splice121120121121%_
                             _%target120435120485%_
                             _%tl120437120488%_)
                      (letrec ((_%loop120438120491%_
                                (lambda (_%hd120436120495%_
                                         _%arg120442120498%_)
                                  (if (gx#stx-pair? _%hd120436120495%_)
                                      (let ((_%e120439120501%_
                                             (gx#syntax-e _%hd120436120495%_)))
                                        (let ((_%lp-tl120441120508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e120439120501%_)))
                                              (_%lp-hd120440120505%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e120439120501%_))))
                                          (_%loop120438120491%_
                                           _%lp-tl120441120508%_
                                           (cons _%lp-hd120440120505%_
                                                 _%arg120442120498%_))))
                                      (let ((_%arg120443120511%_
                                             (reverse _%arg120442120498%_)))
                                        (_%__kont121118121119%_
                                         _%arg120443120511%_))))))
                        (_%loop120438120491%_ _%target120435120485%_ '())))))
              (if (gx#stx-pair? _%__stx121115121116%_)
                  (let ((_%e120432120475%_
                         (gx#syntax-e _%__stx121115121116%_)))
                    (let ((_%tl120434120482%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e120432120475%_)))
                          (_%hd120433120479%_
                           (let ()
                             (declare (not safe))
                             (##car _%e120432120475%_))))
                      (if (gx#stx-pair/null? _%tl120434120482%_)
                          (let ((_%__splice121120121121%_
                                 (gx#syntax-split-splice->vector
                                  _%tl120434120482%_
                                  '0)))
                            (let ((_%tl120437120488%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121120121121%_
                                      '1)))
                                  (_%target120435120485%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121120121121%_
                                      '0))))
                              (if (gx#stx-null? _%tl120437120488%_)
                                  (_%__match121138121139%_
                                   _%e120432120475%_
                                   _%hd120433120479%_
                                   _%tl120434120482%_
                                   _%__splice121120121121%_
                                   _%target120435120485%_
                                   _%tl120437120488%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g120428120468%_)))))
                          (let () (declare (not safe)) (_%g120428120468%_)))))
                  (let () (declare (not safe)) (_%g120428120468%_))))))))
    (define |[:0:]#@build-manifest-string|
      (lambda (_%$stx120585%_)
        (let* ((_%__stx121141121142%_ _%$stx120585%_)
               (_%g120590120611%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx121141121142%_))))
          (let ((_%__kont121144121145%_
                 (lambda (_%g120592120676%_)
                   (cons (gx#datum->syntax
                          |[1]#_g121216_|
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
                                     (cons (let ((__tmp121217
                                                  (lambda (_%g120691120694%_
                                                           _%g120692120697%_)
                                                    (cons _%g120691120694%_
                                                          _%g120692120697%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp121217
                                              '()
                                              _%g120592120676%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g121219_|
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
                (_%__kont121148121149%_
                 (lambda (_%g120605120618%_)
                   (gx#datum->syntax '#f 'build-manifest-string))))
            (let* ((_%g120589120629%_
                    (lambda ()
                      (let ((_%g120605120618%_ _%__stx121141121142%_))
                        (if (gx#identifier? _%g120605120618%_)
                            (_%__kont121148121149%_ _%g120605120618%_)
                            (let ()
                              (declare (not safe))
                              (_%g120590120611%_))))))
                   (_%__match121164121165%_
                    (lambda (_%e120593120636%_
                             _%hd120594120640%_
                             _%tl120595120643%_
                             _%__splice121146121147%_
                             _%target120596120646%_
                             _%tl120598120649%_)
                      (letrec ((_%loop120599120652%_
                                (lambda (_%hd120597120656%_
                                         _%arg120603120659%_)
                                  (if (gx#stx-pair? _%hd120597120656%_)
                                      (let ((_%e120600120662%_
                                             (gx#syntax-e _%hd120597120656%_)))
                                        (let ((_%lp-tl120602120669%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e120600120662%_)))
                                              (_%lp-hd120601120666%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e120600120662%_))))
                                          (_%loop120599120652%_
                                           _%lp-tl120602120669%_
                                           (cons _%lp-hd120601120666%_
                                                 _%arg120603120659%_))))
                                      (let ((_%arg120604120672%_
                                             (reverse _%arg120603120659%_)))
                                        (_%__kont121144121145%_
                                         _%arg120604120672%_))))))
                        (_%loop120599120652%_ _%target120596120646%_ '())))))
              (if (gx#stx-pair? _%__stx121141121142%_)
                  (let ((_%e120593120636%_
                         (gx#syntax-e _%__stx121141121142%_)))
                    (let ((_%tl120595120643%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e120593120636%_)))
                          (_%hd120594120640%_
                           (let ()
                             (declare (not safe))
                             (##car _%e120593120636%_))))
                      (if (gx#stx-pair/null? _%tl120595120643%_)
                          (let ((_%__splice121146121147%_
                                 (gx#syntax-split-splice->vector
                                  _%tl120595120643%_
                                  '0)))
                            (let ((_%tl120598120649%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121146121147%_
                                      '1)))
                                  (_%target120596120646%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121146121147%_
                                      '0))))
                              (if (gx#stx-null? _%tl120598120649%_)
                                  (_%__match121164121165%_
                                   _%e120593120636%_
                                   _%hd120594120640%_
                                   _%tl120595120643%_
                                   _%__splice121146121147%_
                                   _%target120596120646%_
                                   _%tl120598120649%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g120589120629%_)))))
                          (let () (declare (not safe)) (_%g120589120629%_)))))
                  (let () (declare (not safe)) (_%g120589120629%_))))))))
    (define |[:0:]#@gerbil-greeting-set!|
      (lambda (_%$stx120728%_)
        (let* ((_%__stx121167121168%_ _%$stx120728%_)
               (_%g120733120754%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx121167121168%_))))
          (let ((_%__kont121170121171%_
                 (lambda (_%g120735120819%_)
                   (cons (gx#datum->syntax
                          |[1]#_g121221_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g121223_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp121224
                                                  (lambda (_%g120834120837%_
                                                           _%g120835120840%_)
                                                    (cons _%g120834120837%_
                                                          _%g120835120840%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp121224
                                              '()
                                              _%g120735120819%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g121226_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g121223_|
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
                            |[1]#_g121223_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont121174121175%_
                 (lambda (_%g120748120761%_)
                   (gx#datum->syntax '#f 'gerbil-greeting-set!))))
            (let* ((_%g120732120772%_
                    (lambda ()
                      (let ((_%g120748120761%_ _%__stx121167121168%_))
                        (if (gx#identifier? _%g120748120761%_)
                            (_%__kont121174121175%_ _%g120748120761%_)
                            (let ()
                              (declare (not safe))
                              (_%g120733120754%_))))))
                   (_%__match121190121191%_
                    (lambda (_%e120736120779%_
                             _%hd120737120783%_
                             _%tl120738120786%_
                             _%__splice121172121173%_
                             _%target120739120789%_
                             _%tl120741120792%_)
                      (letrec ((_%loop120742120795%_
                                (lambda (_%hd120740120799%_
                                         _%arg120746120802%_)
                                  (if (gx#stx-pair? _%hd120740120799%_)
                                      (let ((_%e120743120805%_
                                             (gx#syntax-e _%hd120740120799%_)))
                                        (let ((_%lp-tl120745120812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e120743120805%_)))
                                              (_%lp-hd120744120809%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e120743120805%_))))
                                          (_%loop120742120795%_
                                           _%lp-tl120745120812%_
                                           (cons _%lp-hd120744120809%_
                                                 _%arg120746120802%_))))
                                      (let ((_%arg120747120815%_
                                             (reverse _%arg120746120802%_)))
                                        (_%__kont121170121171%_
                                         _%arg120747120815%_))))))
                        (_%loop120742120795%_ _%target120739120789%_ '())))))
              (if (gx#stx-pair? _%__stx121167121168%_)
                  (let ((_%e120736120779%_
                         (gx#syntax-e _%__stx121167121168%_)))
                    (let ((_%tl120738120786%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e120736120779%_)))
                          (_%hd120737120783%_
                           (let ()
                             (declare (not safe))
                             (##car _%e120736120779%_))))
                      (if (gx#stx-pair/null? _%tl120738120786%_)
                          (let ((_%__splice121172121173%_
                                 (gx#syntax-split-splice->vector
                                  _%tl120738120786%_
                                  '0)))
                            (let ((_%tl120741120792%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121172121173%_
                                      '1)))
                                  (_%target120739120789%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121172121173%_
                                      '0))))
                              (if (gx#stx-null? _%tl120741120792%_)
                                  (_%__match121190121191%_
                                   _%e120736120779%_
                                   _%hd120737120783%_
                                   _%tl120738120786%_
                                   _%__splice121172121173%_
                                   _%target120739120789%_
                                   _%tl120741120792%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g120732120772%_)))))
                          (let () (declare (not safe)) (_%g120732120772%_)))))
                  (let () (declare (not safe)) (_%g120732120772%_))))))))))
