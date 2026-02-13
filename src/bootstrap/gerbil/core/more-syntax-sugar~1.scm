(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[1]#_g45906_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
      (lambda (_%$stx45144%_)
        (let* ((_%g4514845159%_
                (lambda (_%g4514945155%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4514945155%_)))
               (_%g4514745189%_
                (lambda (_%g4514945163%_)
                  (if (gx#stx-pair? _%g4514945163%_)
                      (let ((_%e4515145166%_ (gx#syntax-e _%g4514945163%_)))
                        (let ((_%hd4515245170%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4515145166%_)))
                              (_%tl4515345173%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4515145166%_))))
                          ((lambda (_%g4515045176%_)
                             (cons (gx#datum->syntax '#f 'make-setq-macro)
                                   (cons 'macro:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-rules)
                                                     _%g4515045176%_)
                                               '()))))
                           _%tl4515345173%_)))
                      (_%g4514845159%_ _%g4514945163%_)))))
          (_%g4514745189%_ _%$stx45144%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifiers|
      (lambda (_%stx45193%_)
        (let* ((_%g4519645229%_
                (lambda (_%g4519745225%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4519745225%_)))
               (_%g4519545631%_
                (lambda (_%g4519745233%_)
                  (if (gx#stx-pair? _%g4519745233%_)
                      (let ((_%e4520045236%_ (gx#syntax-e _%g4519745233%_)))
                        (let ((_%hd4520145240%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4520045236%_)))
                              (_%tl4520245243%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4520045236%_))))
                          (if (gx#stx-pair? _%tl4520245243%_)
                              (let ((_%e4520345246%_
                                     (gx#syntax-e _%tl4520245243%_)))
                                (let ((_%hd4520445250%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4520345246%_)))
                                      (_%tl4520545253%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4520345246%_))))
                                  (if (gx#stx-pair/null? _%hd4520445250%_)
                                      (let ((_g45900_
                                             (gx#syntax-split-splice
                                              _%hd4520445250%_
                                              '0)))
                                        (begin
                                          (let ((_g45901_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45900_)
                                                       (##values-length
                                                        _g45900_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45901_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45901_)))
                                          (let ((_%target4520645256%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45900_ 0)))
                                                (_%tl4520845259%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45900_ 1))))
                                            (if (gx#stx-null? _%tl4520845259%_)
                                                (letrec ((_%loop4520945262%_
                                                          (lambda (_%hd4520745266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause4521345269%_)
                    (if (gx#stx-pair? _%hd4520745266%_)
                        (let ((_%e4521045271%_ (gx#syntax-e _%hd4520745266%_)))
                          (let ((_%lp-hd4521145275%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4521045271%_)))
                                (_%lp-tl4521245278%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4521045271%_))))
                            (_%loop4520945262%_
                             _%lp-tl4521245278%_
                             (cons _%lp-hd4521145275%_ _%clause4521345269%_))))
                        (let ((_%clause4521445281%_
                               (reverse _%clause4521345269%_)))
                          (if (gx#stx-pair/null? _%tl4520545253%_)
                              (let ((_g45902_
                                     (gx#syntax-split-splice
                                      _%tl4520545253%_
                                      '0)))
                                (begin
                                  (let ((_g45903_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45902_)
                                               (##values-length _g45902_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45903_ 2)))
                                        (error "Context expects 2 values"
                                               _g45903_)))
                                  (let ((_%target4521545284%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45902_ 0)))
                                        (_%tl4521745287%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45902_ 1))))
                                    (if (gx#stx-null? _%tl4521745287%_)
                                        (letrec ((_%loop4521845290%_
                                                  (lambda (_%hd4521645294%_
                                                           _%body4522245297%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4521645294%_)
                                                        (let ((_%e4521945299%_
                                                               (gx#syntax-e
                                                                _%hd4521645294%_)))
                                                          (let ((_%lp-hd4522045303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4521945299%_)))
                        (_%lp-tl4522145306%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4521945299%_))))
                    (_%loop4521845290%_
                     _%lp-tl4522145306%_
                     (cons _%lp-hd4522045303%_ _%body4522245297%_))))
                (let ((_%body4522345309%_ (reverse _%body4522245297%_)))
                  ((lambda (_%g4519845312%_ _%g4519945314%_)
                     (let* ((_%g4533645353%_
                             (lambda (_%g4533745349%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g4533745349%_)))
                            (_%g4533545420%_
                             (lambda (_%g4533745357%_)
                               (if (gx#stx-pair/null? _%g4533745357%_)
                                   (let ((_g45904_
                                          (gx#syntax-split-splice
                                           _%g4533745357%_
                                           '0)))
                                     (begin
                                       (let ((_g45905_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g45904_)
                                                    (##values-length _g45904_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g45905_ 2)))
                                             (error "Context expects 2 values"
                                                    _g45905_)))
                                       (let ((_%target4533945360%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g45904_ 0)))
                                             (_%tl4534145363%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g45904_ 1))))
                                         (if (gx#stx-null? _%tl4534145363%_)
                                             (letrec ((_%loop4534245366%_
                                                       (lambda (_%hd4534045370%_
                                                                _%clause4534645373%_)
                                                         (if (gx#stx-pair?
                                                              _%hd4534045370%_)
                                                             (let ((_%e4534345375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd4534045370%_)))
                       (let ((_%lp-hd4534445379%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4534345375%_)))
                             (_%lp-tl4534545382%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4534345375%_))))
                         (_%loop4534245366%_
                          _%lp-tl4534545382%_
                          (cons _%lp-hd4534445379%_ _%clause4534645373%_))))
                     (let ((_%clause4534745385%_
                            (reverse _%clause4534645373%_)))
                       ((lambda (_%g4533845388%_)
                          (cons (gx#datum->syntax '#f 'with-syntax*)
                                (cons (foldr (lambda (_%g4540345408%_
                                                      _%g4540445411%_)
                                               (cons _%g4540345408%_
                                                     _%g4540445411%_))
                                             '()
                                             _%g4533845388%_)
                                      (foldr (lambda (_%g4540545414%_
                                                      _%g4540645417%_)
                                               (cons _%g4540545414%_
                                                     _%g4540645417%_))
                                             '()
                                             _%g4519845312%_))))
                        _%clause4534745385%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop4534245366%_
                                                _%target4533945360%_
                                                '()))
                                             (_%g4533645353%_
                                              _%g4533745357%_)))))
                                   (_%g4533645353%_ _%g4533745357%_)))))
                       (_%g4533545420%_
                        (map (lambda (_%clause45424%_)
                               (let* ((_%__stx4583745838%_ _%clause45424%_)
                                      (_%g4542845467%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx4583745838%_))))
                                 (let ((_%__kont4584045841%_
                                        (lambda (_%g4543045600%_
                                                 _%g4543145602%_)
                                          (cons _%g4543145602%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'syntax-local-temp)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g4543045600%_ '()))
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont4584245843%_
                                        (lambda (_%g4544445522%_
                                                 _%g4544545524%_
                                                 _%g4544645525%_)
                                          (cons _%g4544645525%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'stx-identifier)
                                                            (cons _%g4544545524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr (lambda (_%g4554445547%_ _%g4554545550%_)
                                   (cons _%g4554445547%_ _%g4554545550%_))
                                 '()
                                 _%g4544445522%_)))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_%__match4589845899%_
                                           (lambda (_%e4544745474%_
                                                    _%hd4544845478%_
                                                    _%tl4544945481%_
                                                    _%e4545045484%_
                                                    _%hd4545145488%_
                                                    _%tl4545245491%_
                                                    _%__splice4584445845%_
                                                    _%target4545345494%_
                                                    _%tl4545545497%_)
                                             (letrec ((_%loop4545645500%_
                                                       (lambda (_%hd4545445504%_
                                                                _%components4546045507%_)
                                                         (if (gx#stx-pair?
                                                              _%hd4545445504%_)
                                                             (let ((_%e4545745509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd4545445504%_)))
                       (let ((_%lp-tl4545945516%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4545745509%_)))
                             (_%lp-hd4545845513%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4545745509%_))))
                         (_%loop4545645500%_
                          _%lp-tl4545945516%_
                          (cons _%lp-hd4545845513%_
                                _%components4546045507%_))))
                     (let ((_%components4546145519%_
                            (reverse _%components4546045507%_)))
                       (let ((_%g4544445522%_ _%components4546145519%_)
                             (_%g4544545524%_ _%hd4545145488%_)
                             (_%g4544645525%_ _%hd4544845478%_))
                         (if (gx#identifier? _%g4544645525%_)
                             (_%__kont4584245843%_
                              _%g4544445522%_
                              _%g4544545524%_
                              _%g4544645525%_)
                             (let ()
                               (declare (not safe))
                               (_%g4542845467%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop4545645500%_
                                                _%target4545345494%_
                                                '()))))
                                          (_%__match4587845879%_
                                           (lambda (_%e4543245560%_
                                                    _%hd4543345564%_
                                                    _%tl4543445567%_
                                                    _%e4543545570%_
                                                    _%hd4543645574%_
                                                    _%tl4543745577%_
                                                    _%e4543845580%_
                                                    _%hd4543945584%_
                                                    _%tl4544045587%_
                                                    _%e4544145590%_
                                                    _%hd4544245594%_
                                                    _%tl4544345597%_)
                                             (let ((_%g4543045600%_
                                                    _%hd4544245594%_)
                                                   (_%g4543145602%_
                                                    _%hd4543345564%_))
                                               (if (and (gx#identifier?
                                                         _%g4543145602%_)
                                                        (gx#identifier?
                                                         _%g4543045600%_))
                                                   (_%__kont4584045841%_
                                                    _%g4543045600%_
                                                    _%g4543145602%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4543745577%_)
                                                       (let ((_%__splice4584445845%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4543745577%_
                                                               '0)))
                                                         (let ((_%tl4545545497%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4584445845%_ '1)))
                       (_%target4545345494%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4584445845%_ '0))))
                   (if (gx#stx-null? _%tl4545545497%_)
                       (_%__match4589845899%_
                        _%e4543245560%_
                        _%hd4543345564%_
                        _%tl4543445567%_
                        _%e4543545570%_
                        _%hd4543645574%_
                        _%tl4543745577%_
                        _%__splice4584445845%_
                        _%target4545345494%_
                        _%tl4545545497%_)
                       (let () (declare (not safe)) (_%g4542845467%_)))))
               (let () (declare (not safe)) (_%g4542845467%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (gx#stx-pair? _%__stx4583745838%_)
                                         (let ((_%e4543245560%_
                                                (gx#syntax-e
                                                 _%__stx4583745838%_)))
                                           (let ((_%tl4543445567%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4543245560%_)))
                                                 (_%hd4543345564%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4543245560%_))))
                                             (if (gx#stx-pair?
                                                  _%tl4543445567%_)
                                                 (let ((_%e4543545570%_
                                                        (gx#syntax-e
                                                         _%tl4543445567%_)))
                                                   (let ((_%tl4543745577%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4543545570%_)))
                                                         (_%hd4543645574%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4543545570%_))))
                                                     (if (gx#stx-pair?
                                                          _%hd4543645574%_)
                                                         (let ((_%e4543845580%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd4543645574%_)))
                   (let ((_%tl4544045587%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e4543845580%_)))
                         (_%hd4543945584%_
                          (let ()
                            (declare (not safe))
                            (##car _%e4543845580%_))))
                     (if (gx#identifier? _%hd4543945584%_)
                         (if (gx#free-identifier=?
                              |gerbil/core/more-syntax-sugar[1]#_g45906_|
                              _%hd4543945584%_)
                             (if (gx#stx-pair? _%tl4544045587%_)
                                 (let ((_%e4544145590%_
                                        (gx#syntax-e _%tl4544045587%_)))
                                   (let ((_%tl4544345597%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4544145590%_)))
                                         (_%hd4544245594%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4544145590%_))))
                                     (if (gx#stx-null? _%tl4544345597%_)
                                         (if (gx#stx-null? _%tl4543745577%_)
                                             (_%__match4587845879%_
                                              _%e4543245560%_
                                              _%hd4543345564%_
                                              _%tl4543445567%_
                                              _%e4543545570%_
                                              _%hd4543645574%_
                                              _%tl4543745577%_
                                              _%e4543845580%_
                                              _%hd4543945584%_
                                              _%tl4544045587%_
                                              _%e4544145590%_
                                              _%hd4544245594%_
                                              _%tl4544345597%_)
                                             (if (gx#stx-pair/null?
                                                  _%tl4543745577%_)
                                                 (let ((_%__splice4584445845%_
                                                        (gx#syntax-split-splice->vector
                                                         _%tl4543745577%_
                                                         '0)))
                                                   (let ((_%tl4545545497%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4584445845%_
                                                             '1)))
                                                         (_%target4545345494%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4584445845%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4545545497%_)
                                                         (_%__match4589845899%_
                                                          _%e4543245560%_
                                                          _%hd4543345564%_
                                                          _%tl4543445567%_
                                                          _%e4543545570%_
                                                          _%hd4543645574%_
                                                          _%tl4543745577%_
                                                          _%__splice4584445845%_
                                                          _%target4545345494%_
                                                          _%tl4545545497%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4542845467%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4542845467%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4543745577%_)
                                             (let ((_%__splice4584445845%_
                                                    (gx#syntax-split-splice->vector
                                                     _%tl4543745577%_
                                                     '0)))
                                               (let ((_%tl4545545497%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4584445845%_
                                                         '1)))
                                                     (_%target4545345494%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4584445845%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4545545497%_)
                                                     (_%__match4589845899%_
                                                      _%e4543245560%_
                                                      _%hd4543345564%_
                                                      _%tl4543445567%_
                                                      _%e4543545570%_
                                                      _%hd4543645574%_
                                                      _%tl4543745577%_
                                                      _%__splice4584445845%_
                                                      _%target4545345494%_
                                                      _%tl4545545497%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4542845467%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4542845467%_))))))
                                 (if (gx#stx-pair/null? _%tl4543745577%_)
                                     (let ((_%__splice4584445845%_
                                            (gx#syntax-split-splice->vector
                                             _%tl4543745577%_
                                             '0)))
                                       (let ((_%tl4545545497%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4584445845%_
                                                 '1)))
                                             (_%target4545345494%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4584445845%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4545545497%_)
                                             (_%__match4589845899%_
                                              _%e4543245560%_
                                              _%hd4543345564%_
                                              _%tl4543445567%_
                                              _%e4543545570%_
                                              _%hd4543645574%_
                                              _%tl4543745577%_
                                              _%__splice4584445845%_
                                              _%target4545345494%_
                                              _%tl4545545497%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4542845467%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4542845467%_))))
                             (if (gx#stx-pair/null? _%tl4543745577%_)
                                 (let ((_%__splice4584445845%_
                                        (gx#syntax-split-splice->vector
                                         _%tl4543745577%_
                                         '0)))
                                   (let ((_%tl4545545497%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref
                                             _%__splice4584445845%_
                                             '1)))
                                         (_%target4545345494%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref
                                             _%__splice4584445845%_
                                             '0))))
                                     (if (gx#stx-null? _%tl4545545497%_)
                                         (_%__match4589845899%_
                                          _%e4543245560%_
                                          _%hd4543345564%_
                                          _%tl4543445567%_
                                          _%e4543545570%_
                                          _%hd4543645574%_
                                          _%tl4543745577%_
                                          _%__splice4584445845%_
                                          _%target4545345494%_
                                          _%tl4545545497%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g4542845467%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g4542845467%_))))
                         (if (gx#stx-pair/null? _%tl4543745577%_)
                             (let ((_%__splice4584445845%_
                                    (gx#syntax-split-splice->vector
                                     _%tl4543745577%_
                                     '0)))
                               (let ((_%tl4545545497%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice4584445845%_
                                         '1)))
                                     (_%target4545345494%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice4584445845%_
                                         '0))))
                                 (if (gx#stx-null? _%tl4545545497%_)
                                     (_%__match4589845899%_
                                      _%e4543245560%_
                                      _%hd4543345564%_
                                      _%tl4543445567%_
                                      _%e4543545570%_
                                      _%hd4543645574%_
                                      _%tl4543745577%_
                                      _%__splice4584445845%_
                                      _%target4545345494%_
                                      _%tl4545545497%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%g4542845467%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4542845467%_))))))
                 (if (gx#stx-pair/null? _%tl4543745577%_)
                     (let ((_%__splice4584445845%_
                            (gx#syntax-split-splice->vector
                             _%tl4543745577%_
                             '0)))
                       (let ((_%tl4545545497%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4584445845%_ '1)))
                             (_%target4545345494%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4584445845%_ '0))))
                         (if (gx#stx-null? _%tl4545545497%_)
                             (_%__match4589845899%_
                              _%e4543245560%_
                              _%hd4543345564%_
                              _%tl4543445567%_
                              _%e4543545570%_
                              _%hd4543645574%_
                              _%tl4543745577%_
                              _%__splice4584445845%_
                              _%target4545345494%_
                              _%tl4545545497%_)
                             (let () (declare (not safe)) (_%g4542845467%_)))))
                     (let () (declare (not safe)) (_%g4542845467%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4542845467%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g4542845467%_)))))))
                             (foldr (lambda (_%g4562245625%_ _%g4562345628%_)
                                      (cons _%g4562245625%_ _%g4562345628%_))
                                    '()
                                    _%g4519945314%_)))))
                   _%body4522345309%_
                   _%clause4521445281%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4521845290%_
                                           _%target4521545284%_
                                           '()))
                                        (_%g4519645229%_ _%g4519745233%_)))))
                              (_%g4519645229%_ _%g4519745233%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4520945262%_
                                                   _%target4520645256%_
                                                   '()))
                                                (_%g4519645229%_
                                                 _%g4519745233%_)))))
                                      (_%g4519645229%_ _%g4519745233%_))))
                              (_%g4519645229%_ _%g4519745233%_))))
                      (_%g4519645229%_ _%g4519745233%_)))))
          (_%g4519545631%_ _%stx45193%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifier|
      (lambda (_%$stx45639%_)
        (let* ((_%g4564345680%_
                (lambda (_%g4564445676%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4564445676%_)))
               (_%g4564245817%_
                (lambda (_%g4564445684%_)
                  (if (gx#stx-pair? _%g4564445684%_)
                      (let ((_%e4564845687%_ (gx#syntax-e _%g4564445684%_)))
                        (let ((_%hd4564945691%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4564845687%_)))
                              (_%tl4565045694%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4564845687%_))))
                          (if (gx#stx-pair? _%tl4565045694%_)
                              (let ((_%e4565145697%_
                                     (gx#syntax-e _%tl4565045694%_)))
                                (let ((_%hd4565245701%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4565145697%_)))
                                      (_%tl4565345704%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4565145697%_))))
                                  (if (gx#stx-pair? _%hd4565245701%_)
                                      (let ((_%e4565445707%_
                                             (gx#syntax-e _%hd4565245701%_)))
                                        (let ((_%hd4565545711%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4565445707%_)))
                                              (_%tl4565645714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4565445707%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4565645714%_)
                                              (let ((_g45907_
                                                     (gx#syntax-split-splice
                                                      _%tl4565645714%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45908_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45907_)
                                                               (##values-length
                                                                _g45907_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45908_ 2)))
                (error "Context expects 2 values" _g45908_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4565745717%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45907_
                                                            0)))
                                                        (_%tl4565945720%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45907_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4565945720%_)
                                                        (letrec ((_%loop4566045723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4565845727%_ _%components4566445730%_)
                            (if (gx#stx-pair? _%hd4565845727%_)
                                (let ((_%e4566145732%_
                                       (gx#syntax-e _%hd4565845727%_)))
                                  (let ((_%lp-hd4566245736%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4566145732%_)))
                                        (_%lp-tl4566345739%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4566145732%_))))
                                    (_%loop4566045723%_
                                     _%lp-tl4566345739%_
                                     (cons _%lp-hd4566245736%_
                                           _%components4566445730%_))))
                                (let ((_%components4566545742%_
                                       (reverse _%components4566445730%_)))
                                  (if (gx#stx-pair/null? _%tl4565345704%_)
                                      (let ((_g45909_
                                             (gx#syntax-split-splice
                                              _%tl4565345704%_
                                              '0)))
                                        (begin
                                          (let ((_g45910_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45909_)
                                                       (##values-length
                                                        _g45909_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45910_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45910_)))
                                          (let ((_%target4566645745%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45909_ 0)))
                                                (_%tl4566845748%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45909_ 1))))
                                            (if (gx#stx-null? _%tl4566845748%_)
                                                (letrec ((_%loop4566945751%_
                                                          (lambda (_%hd4566745755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4567345758%_)
                    (if (gx#stx-pair? _%hd4566745755%_)
                        (let ((_%e4567045760%_ (gx#syntax-e _%hd4566745755%_)))
                          (let ((_%lp-hd4567145764%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4567045760%_)))
                                (_%lp-tl4567245767%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4567045760%_))))
                            (_%loop4566945751%_
                             _%lp-tl4567245767%_
                             (cons _%lp-hd4567145764%_ _%body4567345758%_))))
                        (let ((_%body4567445770%_
                               (reverse _%body4567345758%_)))
                          ((lambda (_%g4564545773%_
                                    _%g4564645775%_
                                    _%g4564745776%_)
                             (if (gx#identifier? _%g4564745776%_)
                                 (cons (gx#datum->syntax '#f 'with-identifiers)
                                       (cons (cons (cons _%g4564745776%_
                                                         (foldr (lambda (_%g4580045805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g4580145808%_)
                          (cons _%g4580045805%_ _%g4580145808%_))
                        '()
                        _%g4564645775%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())
                                             (foldr (lambda (_%g4580245811%_
                                                             _%g4580345814%_)
                                                      (cons _%g4580245811%_
                                                            _%g4580345814%_))
                                                    '()
                                                    _%g4564545773%_)))
                                 (_%g4564345680%_ _%g4564445684%_)))
                           _%body4567445770%_
                           _%components4566545742%_
                           _%hd4565545711%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4566945751%_
                                                   _%target4566645745%_
                                                   '()))
                                                (_%g4564345680%_
                                                 _%g4564445684%_)))))
                                      (_%g4564345680%_ _%g4564445684%_)))))))
                  (_%loop4566045723%_ _%target4565745717%_ '()))
                (_%g4564345680%_ _%g4564445684%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4564345680%_
                                               _%g4564445684%_))))
                                      (_%g4564345680%_ _%g4564445684%_))))
                              (_%g4564345680%_ _%g4564445684%_))))
                      (_%g4564345680%_ _%g4564445684%_)))))
          (_%g4564245817%_ _%$stx45639%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
      (lambda (_%$stx45823%_)
        (let ((_%g4582645833%_
               (lambda (_%g4582745829%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4582745829%_))))
          (_%g4582645833%_ _%$stx45823%_))))))
