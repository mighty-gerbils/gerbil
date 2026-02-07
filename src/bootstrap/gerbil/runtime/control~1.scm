(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g117084_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id116366%_)
       (arg . _%arg116429%_)
       (arg116342 . _%arg116342116413%_)
       (arg116341 . _%arg116341116399%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g117085_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g117084_|)))
  (define |[1]#_g117087_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g117088_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g117087_|)))
  (define |[1]#_g117089_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id116500%_)
       (arg116477 . _%arg116477116547%_)
       (arg . _%arg116563%_)
       (arg116476 . _%arg116476116533%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g117090_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g117089_|)))
  (define |[1]#_g117092_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g117093_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g117092_|)))
  (define |[1]#_g117094_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id116634%_)
       (arg . _%arg116697%_)
       (arg116611 . _%arg116611116681%_)
       (arg116610 . _%arg116610116667%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g117095_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g117094_|)))
  (define |[1]#_g117097_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g117098_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g117097_|)))
  (begin
    (define |[:0:]#@make-promise|
      (lambda (_%$stx116323%_)
        (let* ((_%__stx116993116994%_ _%$stx116323%_)
               (_%g116328116349%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx116993116994%_))))
          (let ((_%__kont116996116997%_
                 (lambda (_%g116330116415%_)
                   (cons (gx#datum->syntax
                          |[1]#_g117085_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp117086
                                                  (lambda (_%g116430116433%_
                                                           _%g116431116436%_)
                                                    (cons _%g116430116433%_
                                                          _%g116431116436%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp117086
                                              '()
                                              _%g116330116415%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g117088_|
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
                (_%__kont117000117001%_
                 (lambda (_%g116343116356%_)
                   (gx#datum->syntax '#f 'make-promise))))
            (let* ((_%g116327116368%_
                    (lambda ()
                      (let ((_%g116343116356%_ _%__stx116993116994%_))
                        (if (gx#identifier? _%g116343116356%_)
                            (_%__kont117000117001%_ _%g116343116356%_)
                            (let ()
                              (declare (not safe))
                              (_%g116328116349%_))))))
                   (_%__match117016117017%_
                    (lambda (_%e116331116375%_
                             _%hd116332116379%_
                             _%tl116333116382%_
                             _%__splice116998116999%_
                             _%target116334116385%_
                             _%tl116336116388%_)
                      (letrec ((_%loop116337116391%_
                                (lambda (_%hd116335116395%_
                                         _%arg116341116398%_)
                                  (if (gx#stx-pair? _%hd116335116395%_)
                                      (let ((_%e116338116401%_
                                             (gx#syntax-e _%hd116335116395%_)))
                                        (let ((_%lp-tl116340116408%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e116338116401%_)))
                                              (_%lp-hd116339116405%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e116338116401%_))))
                                          (_%loop116337116391%_
                                           _%lp-tl116340116408%_
                                           (cons _%lp-hd116339116405%_
                                                 _%arg116341116398%_))))
                                      (let ((_%arg116342116411%_
                                             (reverse _%arg116341116398%_)))
                                        (_%__kont116996116997%_
                                         _%arg116342116411%_))))))
                        (_%loop116337116391%_ _%target116334116385%_ '())))))
              (if (gx#stx-pair? _%__stx116993116994%_)
                  (let ((_%e116331116375%_
                         (gx#syntax-e _%__stx116993116994%_)))
                    (let ((_%tl116333116382%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e116331116375%_)))
                          (_%hd116332116379%_
                           (let ()
                             (declare (not safe))
                             (##car _%e116331116375%_))))
                      (if (gx#stx-pair/null? _%tl116333116382%_)
                          (let ((_%__splice116998116999%_
                                 (gx#syntax-split-splice->vector
                                  _%tl116333116382%_
                                  '0)))
                            (let ((_%tl116336116388%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice116998116999%_
                                      '1)))
                                  (_%target116334116385%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice116998116999%_
                                      '0))))
                              (if (gx#stx-null? _%tl116336116388%_)
                                  (_%__match117016117017%_
                                   _%e116331116375%_
                                   _%hd116332116379%_
                                   _%tl116333116382%_
                                   _%__splice116998116999%_
                                   _%target116334116385%_
                                   _%tl116336116388%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g116327116368%_)))))
                          (let () (declare (not safe)) (_%g116327116368%_)))))
                  (let () (declare (not safe)) (_%g116327116368%_))))))))
    (define |[:0:]#@make-atomic-promise|
      (lambda (_%$stx116458%_)
        (let* ((_%__stx117019117020%_ _%$stx116458%_)
               (_%g116463116484%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx117019117020%_))))
          (let ((_%__kont117022117023%_
                 (lambda (_%g116465116549%_)
                   (cons (gx#datum->syntax
                          |[1]#_g117090_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp117091
                                                  (lambda (_%g116564116567%_
                                                           _%g116565116570%_)
                                                    (cons _%g116564116567%_
                                                          _%g116565116570%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp117091
                                              '()
                                              _%g116465116549%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g117093_|
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
                (_%__kont117026117027%_
                 (lambda (_%g116478116491%_)
                   (gx#datum->syntax '#f 'make-atomic-promise))))
            (let* ((_%g116462116502%_
                    (lambda ()
                      (let ((_%g116478116491%_ _%__stx117019117020%_))
                        (if (gx#identifier? _%g116478116491%_)
                            (_%__kont117026117027%_ _%g116478116491%_)
                            (let ()
                              (declare (not safe))
                              (_%g116463116484%_))))))
                   (_%__match117042117043%_
                    (lambda (_%e116466116509%_
                             _%hd116467116513%_
                             _%tl116468116516%_
                             _%__splice117024117025%_
                             _%target116469116519%_
                             _%tl116471116522%_)
                      (letrec ((_%loop116472116525%_
                                (lambda (_%hd116470116529%_
                                         _%arg116476116532%_)
                                  (if (gx#stx-pair? _%hd116470116529%_)
                                      (let ((_%e116473116535%_
                                             (gx#syntax-e _%hd116470116529%_)))
                                        (let ((_%lp-tl116475116542%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e116473116535%_)))
                                              (_%lp-hd116474116539%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e116473116535%_))))
                                          (_%loop116472116525%_
                                           _%lp-tl116475116542%_
                                           (cons _%lp-hd116474116539%_
                                                 _%arg116476116532%_))))
                                      (let ((_%arg116477116545%_
                                             (reverse _%arg116476116532%_)))
                                        (_%__kont117022117023%_
                                         _%arg116477116545%_))))))
                        (_%loop116472116525%_ _%target116469116519%_ '())))))
              (if (gx#stx-pair? _%__stx117019117020%_)
                  (let ((_%e116466116509%_
                         (gx#syntax-e _%__stx117019117020%_)))
                    (let ((_%tl116468116516%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e116466116509%_)))
                          (_%hd116467116513%_
                           (let ()
                             (declare (not safe))
                             (##car _%e116466116509%_))))
                      (if (gx#stx-pair/null? _%tl116468116516%_)
                          (let ((_%__splice117024117025%_
                                 (gx#syntax-split-splice->vector
                                  _%tl116468116516%_
                                  '0)))
                            (let ((_%tl116471116522%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117024117025%_
                                      '1)))
                                  (_%target116469116519%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117024117025%_
                                      '0))))
                              (if (gx#stx-null? _%tl116471116522%_)
                                  (_%__match117042117043%_
                                   _%e116466116509%_
                                   _%hd116467116513%_
                                   _%tl116468116516%_
                                   _%__splice117024117025%_
                                   _%target116469116519%_
                                   _%tl116471116522%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g116462116502%_)))))
                          (let () (declare (not safe)) (_%g116462116502%_)))))
                  (let () (declare (not safe)) (_%g116462116502%_))))))))
    (define |[:0:]#@with-unwind-protect|
      (lambda (_%$stx116592%_)
        (let* ((_%__stx117045117046%_ _%$stx116592%_)
               (_%g116597116618%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx117045117046%_))))
          (let ((_%__kont117048117049%_
                 (lambda (_%g116599116683%_)
                   (cons (gx#datum->syntax
                          |[1]#_g117095_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'K)
                                           (cons (gx#datum->syntax '#f 'fini)
                                                 '()))
                                     (cons (let ((__tmp117096
                                                  (lambda (_%g116698116701%_
                                                           _%g116699116704%_)
                                                    (cons _%g116698116701%_
                                                          _%g116699116704%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp117096
                                              '()
                                              _%g116599116683%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g117098_|
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
                (_%__kont117052117053%_
                 (lambda (_%g116612116625%_)
                   (gx#datum->syntax '#f 'with-unwind-protect))))
            (let* ((_%g116596116636%_
                    (lambda ()
                      (let ((_%g116612116625%_ _%__stx117045117046%_))
                        (if (gx#identifier? _%g116612116625%_)
                            (_%__kont117052117053%_ _%g116612116625%_)
                            (let ()
                              (declare (not safe))
                              (_%g116597116618%_))))))
                   (_%__match117068117069%_
                    (lambda (_%e116600116643%_
                             _%hd116601116647%_
                             _%tl116602116650%_
                             _%__splice117050117051%_
                             _%target116603116653%_
                             _%tl116605116656%_)
                      (letrec ((_%loop116606116659%_
                                (lambda (_%hd116604116663%_
                                         _%arg116610116666%_)
                                  (if (gx#stx-pair? _%hd116604116663%_)
                                      (let ((_%e116607116669%_
                                             (gx#syntax-e _%hd116604116663%_)))
                                        (let ((_%lp-tl116609116676%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e116607116669%_)))
                                              (_%lp-hd116608116673%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e116607116669%_))))
                                          (_%loop116606116659%_
                                           _%lp-tl116609116676%_
                                           (cons _%lp-hd116608116673%_
                                                 _%arg116610116666%_))))
                                      (let ((_%arg116611116679%_
                                             (reverse _%arg116610116666%_)))
                                        (_%__kont117048117049%_
                                         _%arg116611116679%_))))))
                        (_%loop116606116659%_ _%target116603116653%_ '())))))
              (if (gx#stx-pair? _%__stx117045117046%_)
                  (let ((_%e116600116643%_
                         (gx#syntax-e _%__stx117045117046%_)))
                    (let ((_%tl116602116650%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e116600116643%_)))
                          (_%hd116601116647%_
                           (let ()
                             (declare (not safe))
                             (##car _%e116600116643%_))))
                      (if (gx#stx-pair/null? _%tl116602116650%_)
                          (let ((_%__splice117050117051%_
                                 (gx#syntax-split-splice->vector
                                  _%tl116602116650%_
                                  '0)))
                            (let ((_%tl116605116656%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117050117051%_
                                      '1)))
                                  (_%target116603116653%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117050117051%_
                                      '0))))
                              (if (gx#stx-null? _%tl116605116656%_)
                                  (_%__match117068117069%_
                                   _%e116600116643%_
                                   _%hd116601116647%_
                                   _%tl116602116650%_
                                   _%__splice117050117051%_
                                   _%target116603116653%_
                                   _%tl116605116656%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g116596116636%_)))))
                          (let () (declare (not safe)) (_%g116596116636%_)))))
                  (let () (declare (not safe)) (_%g116596116636%_))))))))))
