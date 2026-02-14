(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[1]#_g46317_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
      (lambda (_%$stx45555%_)
        (let* ((_%g4555945570%_
                (lambda (_%g4556045566%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4556045566%_)))
               (_%g4555845600%_
                (lambda (_%g4556045574%_)
                  (if (gx#stx-pair? _%g4556045574%_)
                      (let ((_%e4556245577%_ (gx#syntax-e _%g4556045574%_)))
                        (let ((_%hd4556345581%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4556245577%_)))
                              (_%tl4556445584%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4556245577%_))))
                          ((lambda (_%g4556145587%_)
                             (cons (gx#datum->syntax '#f 'make-setq-macro)
                                   (cons 'macro:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-rules)
                                                     _%g4556145587%_)
                                               '()))))
                           _%tl4556445584%_)))
                      (_%g4555945570%_ _%g4556045574%_)))))
          (_%g4555845600%_ _%$stx45555%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifiers|
      (lambda (_%stx45604%_)
        (let* ((_%g4560745640%_
                (lambda (_%g4560845636%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4560845636%_)))
               (_%g4560646042%_
                (lambda (_%g4560845644%_)
                  (if (gx#stx-pair? _%g4560845644%_)
                      (let ((_%e4561145647%_ (gx#syntax-e _%g4560845644%_)))
                        (let ((_%hd4561245651%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4561145647%_)))
                              (_%tl4561345654%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4561145647%_))))
                          (if (gx#stx-pair? _%tl4561345654%_)
                              (let ((_%e4561445657%_
                                     (gx#syntax-e _%tl4561345654%_)))
                                (let ((_%hd4561545661%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4561445657%_)))
                                      (_%tl4561645664%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4561445657%_))))
                                  (if (gx#stx-pair/null? _%hd4561545661%_)
                                      (let ((_g46311_
                                             (gx#syntax-split-splice
                                              _%hd4561545661%_
                                              '0)))
                                        (begin
                                          (let ((_g46312_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46311_)
                                                       (##values-length
                                                        _g46311_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46312_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46312_)))
                                          (let ((_%target4561745667%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46311_ 0)))
                                                (_%tl4561945670%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46311_ 1))))
                                            (if (gx#stx-null? _%tl4561945670%_)
                                                (letrec ((_%loop4562045673%_
                                                          (lambda (_%hd4561845677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause4562445680%_)
                    (if (gx#stx-pair? _%hd4561845677%_)
                        (let ((_%e4562145682%_ (gx#syntax-e _%hd4561845677%_)))
                          (let ((_%lp-hd4562245686%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4562145682%_)))
                                (_%lp-tl4562345689%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4562145682%_))))
                            (_%loop4562045673%_
                             _%lp-tl4562345689%_
                             (cons _%lp-hd4562245686%_ _%clause4562445680%_))))
                        (let ((_%clause4562545692%_
                               (reverse _%clause4562445680%_)))
                          (if (gx#stx-pair/null? _%tl4561645664%_)
                              (let ((_g46313_
                                     (gx#syntax-split-splice
                                      _%tl4561645664%_
                                      '0)))
                                (begin
                                  (let ((_g46314_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g46313_)
                                               (##values-length _g46313_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g46314_ 2)))
                                        (error "Context expects 2 values"
                                               _g46314_)))
                                  (let ((_%target4562645695%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46313_ 0)))
                                        (_%tl4562845698%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46313_ 1))))
                                    (if (gx#stx-null? _%tl4562845698%_)
                                        (letrec ((_%loop4562945701%_
                                                  (lambda (_%hd4562745705%_
                                                           _%body4563345708%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4562745705%_)
                                                        (let ((_%e4563045710%_
                                                               (gx#syntax-e
                                                                _%hd4562745705%_)))
                                                          (let ((_%lp-hd4563145714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4563045710%_)))
                        (_%lp-tl4563245717%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4563045710%_))))
                    (_%loop4562945701%_
                     _%lp-tl4563245717%_
                     (cons _%lp-hd4563145714%_ _%body4563345708%_))))
                (let ((_%body4563445720%_ (reverse _%body4563345708%_)))
                  ((lambda (_%g4560945723%_ _%g4561045725%_)
                     (let* ((_%g4574745764%_
                             (lambda (_%g4574845760%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g4574845760%_)))
                            (_%g4574645831%_
                             (lambda (_%g4574845768%_)
                               (if (gx#stx-pair/null? _%g4574845768%_)
                                   (let ((_g46315_
                                          (gx#syntax-split-splice
                                           _%g4574845768%_
                                           '0)))
                                     (begin
                                       (let ((_g46316_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g46315_)
                                                    (##values-length _g46315_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g46316_ 2)))
                                             (error "Context expects 2 values"
                                                    _g46316_)))
                                       (let ((_%target4575045771%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g46315_ 0)))
                                             (_%tl4575245774%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g46315_ 1))))
                                         (if (gx#stx-null? _%tl4575245774%_)
                                             (letrec ((_%loop4575345777%_
                                                       (lambda (_%hd4575145781%_
                                                                _%clause4575745784%_)
                                                         (if (gx#stx-pair?
                                                              _%hd4575145781%_)
                                                             (let ((_%e4575445786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd4575145781%_)))
                       (let ((_%lp-hd4575545790%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4575445786%_)))
                             (_%lp-tl4575645793%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4575445786%_))))
                         (_%loop4575345777%_
                          _%lp-tl4575645793%_
                          (cons _%lp-hd4575545790%_ _%clause4575745784%_))))
                     (let ((_%clause4575845796%_
                            (reverse _%clause4575745784%_)))
                       ((lambda (_%g4574945799%_)
                          (cons (gx#datum->syntax '#f 'with-syntax*)
                                (cons (foldr (lambda (_%g4581445819%_
                                                      _%g4581545822%_)
                                               (cons _%g4581445819%_
                                                     _%g4581545822%_))
                                             '()
                                             _%g4574945799%_)
                                      (foldr (lambda (_%g4581645825%_
                                                      _%g4581745828%_)
                                               (cons _%g4581645825%_
                                                     _%g4581745828%_))
                                             '()
                                             _%g4560945723%_))))
                        _%clause4575845796%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop4575345777%_
                                                _%target4575045771%_
                                                '()))
                                             (_%g4574745764%_
                                              _%g4574845768%_)))))
                                   (_%g4574745764%_ _%g4574845768%_)))))
                       (_%g4574645831%_
                        (map (lambda (_%clause45835%_)
                               (let* ((_%__stx4624846249%_ _%clause45835%_)
                                      (_%g4583945878%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx4624846249%_))))
                                 (let ((_%__kont4625146252%_
                                        (lambda (_%g4584146011%_
                                                 _%g4584246013%_)
                                          (cons _%g4584246013%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'syntax-local-temp)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g4584146011%_ '()))
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont4625346254%_
                                        (lambda (_%g4585545933%_
                                                 _%g4585645935%_
                                                 _%g4585745936%_)
                                          (cons _%g4585745936%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'stx-identifier)
                                                            (cons _%g4585645935%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr (lambda (_%g4595545958%_ _%g4595645961%_)
                                   (cons _%g4595545958%_ _%g4595645961%_))
                                 '()
                                 _%g4585545933%_)))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_%__match4630946310%_
                                           (lambda (_%e4585845885%_
                                                    _%hd4585945889%_
                                                    _%tl4586045892%_
                                                    _%e4586145895%_
                                                    _%hd4586245899%_
                                                    _%tl4586345902%_
                                                    _%__splice4625546256%_
                                                    _%target4586445905%_
                                                    _%tl4586645908%_)
                                             (letrec ((_%loop4586745911%_
                                                       (lambda (_%hd4586545915%_
                                                                _%components4587145918%_)
                                                         (if (gx#stx-pair?
                                                              _%hd4586545915%_)
                                                             (let ((_%e4586845920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd4586545915%_)))
                       (let ((_%lp-tl4587045927%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4586845920%_)))
                             (_%lp-hd4586945924%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4586845920%_))))
                         (_%loop4586745911%_
                          _%lp-tl4587045927%_
                          (cons _%lp-hd4586945924%_
                                _%components4587145918%_))))
                     (let ((_%components4587245930%_
                            (reverse _%components4587145918%_)))
                       (let ((_%g4585545933%_ _%components4587245930%_)
                             (_%g4585645935%_ _%hd4586245899%_)
                             (_%g4585745936%_ _%hd4585945889%_))
                         (if (gx#identifier? _%g4585745936%_)
                             (_%__kont4625346254%_
                              _%g4585545933%_
                              _%g4585645935%_
                              _%g4585745936%_)
                             (let ()
                               (declare (not safe))
                               (_%g4583945878%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop4586745911%_
                                                _%target4586445905%_
                                                '()))))
                                          (_%__match4628946290%_
                                           (lambda (_%e4584345971%_
                                                    _%hd4584445975%_
                                                    _%tl4584545978%_
                                                    _%e4584645981%_
                                                    _%hd4584745985%_
                                                    _%tl4584845988%_
                                                    _%e4584945991%_
                                                    _%hd4585045995%_
                                                    _%tl4585145998%_
                                                    _%e4585246001%_
                                                    _%hd4585346005%_
                                                    _%tl4585446008%_)
                                             (let ((_%g4584146011%_
                                                    _%hd4585346005%_)
                                                   (_%g4584246013%_
                                                    _%hd4584445975%_))
                                               (if (and (gx#identifier?
                                                         _%g4584246013%_)
                                                        (gx#identifier?
                                                         _%g4584146011%_))
                                                   (_%__kont4625146252%_
                                                    _%g4584146011%_
                                                    _%g4584246013%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4584845988%_)
                                                       (let ((_%__splice4625546256%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4584845988%_
                                                               '0)))
                                                         (let ((_%tl4586645908%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4625546256%_ '1)))
                       (_%target4586445905%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4625546256%_ '0))))
                   (if (gx#stx-null? _%tl4586645908%_)
                       (_%__match4630946310%_
                        _%e4584345971%_
                        _%hd4584445975%_
                        _%tl4584545978%_
                        _%e4584645981%_
                        _%hd4584745985%_
                        _%tl4584845988%_
                        _%__splice4625546256%_
                        _%target4586445905%_
                        _%tl4586645908%_)
                       (let () (declare (not safe)) (_%g4583945878%_)))))
               (let () (declare (not safe)) (_%g4583945878%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (gx#stx-pair? _%__stx4624846249%_)
                                         (let ((_%e4584345971%_
                                                (gx#syntax-e
                                                 _%__stx4624846249%_)))
                                           (let ((_%tl4584545978%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4584345971%_)))
                                                 (_%hd4584445975%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4584345971%_))))
                                             (if (gx#stx-pair?
                                                  _%tl4584545978%_)
                                                 (let ((_%e4584645981%_
                                                        (gx#syntax-e
                                                         _%tl4584545978%_)))
                                                   (let ((_%tl4584845988%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4584645981%_)))
                                                         (_%hd4584745985%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4584645981%_))))
                                                     (if (gx#stx-pair?
                                                          _%hd4584745985%_)
                                                         (let ((_%e4584945991%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd4584745985%_)))
                   (let ((_%tl4585145998%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e4584945991%_)))
                         (_%hd4585045995%_
                          (let ()
                            (declare (not safe))
                            (##car _%e4584945991%_))))
                     (if (gx#identifier? _%hd4585045995%_)
                         (if (gx#free-identifier=?
                              |gerbil/core/more-syntax-sugar[1]#_g46317_|
                              _%hd4585045995%_)
                             (if (gx#stx-pair? _%tl4585145998%_)
                                 (let ((_%e4585246001%_
                                        (gx#syntax-e _%tl4585145998%_)))
                                   (let ((_%tl4585446008%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4585246001%_)))
                                         (_%hd4585346005%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4585246001%_))))
                                     (if (gx#stx-null? _%tl4585446008%_)
                                         (if (gx#stx-null? _%tl4584845988%_)
                                             (_%__match4628946290%_
                                              _%e4584345971%_
                                              _%hd4584445975%_
                                              _%tl4584545978%_
                                              _%e4584645981%_
                                              _%hd4584745985%_
                                              _%tl4584845988%_
                                              _%e4584945991%_
                                              _%hd4585045995%_
                                              _%tl4585145998%_
                                              _%e4585246001%_
                                              _%hd4585346005%_
                                              _%tl4585446008%_)
                                             (if (gx#stx-pair/null?
                                                  _%tl4584845988%_)
                                                 (let ((_%__splice4625546256%_
                                                        (gx#syntax-split-splice->vector
                                                         _%tl4584845988%_
                                                         '0)))
                                                   (let ((_%tl4586645908%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4625546256%_
                                                             '1)))
                                                         (_%target4586445905%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4625546256%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4586645908%_)
                                                         (_%__match4630946310%_
                                                          _%e4584345971%_
                                                          _%hd4584445975%_
                                                          _%tl4584545978%_
                                                          _%e4584645981%_
                                                          _%hd4584745985%_
                                                          _%tl4584845988%_
                                                          _%__splice4625546256%_
                                                          _%target4586445905%_
                                                          _%tl4586645908%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4583945878%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4583945878%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4584845988%_)
                                             (let ((_%__splice4625546256%_
                                                    (gx#syntax-split-splice->vector
                                                     _%tl4584845988%_
                                                     '0)))
                                               (let ((_%tl4586645908%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4625546256%_
                                                         '1)))
                                                     (_%target4586445905%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4625546256%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4586645908%_)
                                                     (_%__match4630946310%_
                                                      _%e4584345971%_
                                                      _%hd4584445975%_
                                                      _%tl4584545978%_
                                                      _%e4584645981%_
                                                      _%hd4584745985%_
                                                      _%tl4584845988%_
                                                      _%__splice4625546256%_
                                                      _%target4586445905%_
                                                      _%tl4586645908%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4583945878%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4583945878%_))))))
                                 (if (gx#stx-pair/null? _%tl4584845988%_)
                                     (let ((_%__splice4625546256%_
                                            (gx#syntax-split-splice->vector
                                             _%tl4584845988%_
                                             '0)))
                                       (let ((_%tl4586645908%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4625546256%_
                                                 '1)))
                                             (_%target4586445905%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4625546256%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4586645908%_)
                                             (_%__match4630946310%_
                                              _%e4584345971%_
                                              _%hd4584445975%_
                                              _%tl4584545978%_
                                              _%e4584645981%_
                                              _%hd4584745985%_
                                              _%tl4584845988%_
                                              _%__splice4625546256%_
                                              _%target4586445905%_
                                              _%tl4586645908%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4583945878%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4583945878%_))))
                             (if (gx#stx-pair/null? _%tl4584845988%_)
                                 (let ((_%__splice4625546256%_
                                        (gx#syntax-split-splice->vector
                                         _%tl4584845988%_
                                         '0)))
                                   (let ((_%tl4586645908%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref
                                             _%__splice4625546256%_
                                             '1)))
                                         (_%target4586445905%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref
                                             _%__splice4625546256%_
                                             '0))))
                                     (if (gx#stx-null? _%tl4586645908%_)
                                         (_%__match4630946310%_
                                          _%e4584345971%_
                                          _%hd4584445975%_
                                          _%tl4584545978%_
                                          _%e4584645981%_
                                          _%hd4584745985%_
                                          _%tl4584845988%_
                                          _%__splice4625546256%_
                                          _%target4586445905%_
                                          _%tl4586645908%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g4583945878%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g4583945878%_))))
                         (if (gx#stx-pair/null? _%tl4584845988%_)
                             (let ((_%__splice4625546256%_
                                    (gx#syntax-split-splice->vector
                                     _%tl4584845988%_
                                     '0)))
                               (let ((_%tl4586645908%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice4625546256%_
                                         '1)))
                                     (_%target4586445905%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice4625546256%_
                                         '0))))
                                 (if (gx#stx-null? _%tl4586645908%_)
                                     (_%__match4630946310%_
                                      _%e4584345971%_
                                      _%hd4584445975%_
                                      _%tl4584545978%_
                                      _%e4584645981%_
                                      _%hd4584745985%_
                                      _%tl4584845988%_
                                      _%__splice4625546256%_
                                      _%target4586445905%_
                                      _%tl4586645908%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%g4583945878%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4583945878%_))))))
                 (if (gx#stx-pair/null? _%tl4584845988%_)
                     (let ((_%__splice4625546256%_
                            (gx#syntax-split-splice->vector
                             _%tl4584845988%_
                             '0)))
                       (let ((_%tl4586645908%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4625546256%_ '1)))
                             (_%target4586445905%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4625546256%_ '0))))
                         (if (gx#stx-null? _%tl4586645908%_)
                             (_%__match4630946310%_
                              _%e4584345971%_
                              _%hd4584445975%_
                              _%tl4584545978%_
                              _%e4584645981%_
                              _%hd4584745985%_
                              _%tl4584845988%_
                              _%__splice4625546256%_
                              _%target4586445905%_
                              _%tl4586645908%_)
                             (let () (declare (not safe)) (_%g4583945878%_)))))
                     (let () (declare (not safe)) (_%g4583945878%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4583945878%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g4583945878%_)))))))
                             (foldr (lambda (_%g4603346036%_ _%g4603446039%_)
                                      (cons _%g4603346036%_ _%g4603446039%_))
                                    '()
                                    _%g4561045725%_)))))
                   _%body4563445720%_
                   _%clause4562545692%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4562945701%_
                                           _%target4562645695%_
                                           '()))
                                        (_%g4560745640%_ _%g4560845644%_)))))
                              (_%g4560745640%_ _%g4560845644%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4562045673%_
                                                   _%target4561745667%_
                                                   '()))
                                                (_%g4560745640%_
                                                 _%g4560845644%_)))))
                                      (_%g4560745640%_ _%g4560845644%_))))
                              (_%g4560745640%_ _%g4560845644%_))))
                      (_%g4560745640%_ _%g4560845644%_)))))
          (_%g4560646042%_ _%stx45604%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifier|
      (lambda (_%$stx46050%_)
        (let* ((_%g4605446091%_
                (lambda (_%g4605546087%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4605546087%_)))
               (_%g4605346228%_
                (lambda (_%g4605546095%_)
                  (if (gx#stx-pair? _%g4605546095%_)
                      (let ((_%e4605946098%_ (gx#syntax-e _%g4605546095%_)))
                        (let ((_%hd4606046102%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4605946098%_)))
                              (_%tl4606146105%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4605946098%_))))
                          (if (gx#stx-pair? _%tl4606146105%_)
                              (let ((_%e4606246108%_
                                     (gx#syntax-e _%tl4606146105%_)))
                                (let ((_%hd4606346112%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4606246108%_)))
                                      (_%tl4606446115%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4606246108%_))))
                                  (if (gx#stx-pair? _%hd4606346112%_)
                                      (let ((_%e4606546118%_
                                             (gx#syntax-e _%hd4606346112%_)))
                                        (let ((_%hd4606646122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4606546118%_)))
                                              (_%tl4606746125%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4606546118%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4606746125%_)
                                              (let ((_g46318_
                                                     (gx#syntax-split-splice
                                                      _%tl4606746125%_
                                                      '0)))
                                                (begin
                                                  (let ((_g46319_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g46318_)
                                                               (##values-length
                                                                _g46318_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g46319_ 2)))
                (error "Context expects 2 values" _g46319_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4606846128%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g46318_
                                                            0)))
                                                        (_%tl4607046131%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g46318_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4607046131%_)
                                                        (letrec ((_%loop4607146134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4606946138%_ _%components4607546141%_)
                            (if (gx#stx-pair? _%hd4606946138%_)
                                (let ((_%e4607246143%_
                                       (gx#syntax-e _%hd4606946138%_)))
                                  (let ((_%lp-hd4607346147%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4607246143%_)))
                                        (_%lp-tl4607446150%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4607246143%_))))
                                    (_%loop4607146134%_
                                     _%lp-tl4607446150%_
                                     (cons _%lp-hd4607346147%_
                                           _%components4607546141%_))))
                                (let ((_%components4607646153%_
                                       (reverse _%components4607546141%_)))
                                  (if (gx#stx-pair/null? _%tl4606446115%_)
                                      (let ((_g46320_
                                             (gx#syntax-split-splice
                                              _%tl4606446115%_
                                              '0)))
                                        (begin
                                          (let ((_g46321_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46320_)
                                                       (##values-length
                                                        _g46320_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46321_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46321_)))
                                          (let ((_%target4607746156%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46320_ 0)))
                                                (_%tl4607946159%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46320_ 1))))
                                            (if (gx#stx-null? _%tl4607946159%_)
                                                (letrec ((_%loop4608046162%_
                                                          (lambda (_%hd4607846166%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4608446169%_)
                    (if (gx#stx-pair? _%hd4607846166%_)
                        (let ((_%e4608146171%_ (gx#syntax-e _%hd4607846166%_)))
                          (let ((_%lp-hd4608246175%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4608146171%_)))
                                (_%lp-tl4608346178%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4608146171%_))))
                            (_%loop4608046162%_
                             _%lp-tl4608346178%_
                             (cons _%lp-hd4608246175%_ _%body4608446169%_))))
                        (let ((_%body4608546181%_
                               (reverse _%body4608446169%_)))
                          ((lambda (_%g4605646184%_
                                    _%g4605746186%_
                                    _%g4605846187%_)
                             (if (gx#identifier? _%g4605846187%_)
                                 (cons (gx#datum->syntax '#f 'with-identifiers)
                                       (cons (cons (cons _%g4605846187%_
                                                         (foldr (lambda (_%g4621146216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g4621246219%_)
                          (cons _%g4621146216%_ _%g4621246219%_))
                        '()
                        _%g4605746186%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())
                                             (foldr (lambda (_%g4621346222%_
                                                             _%g4621446225%_)
                                                      (cons _%g4621346222%_
                                                            _%g4621446225%_))
                                                    '()
                                                    _%g4605646184%_)))
                                 (_%g4605446091%_ _%g4605546095%_)))
                           _%body4608546181%_
                           _%components4607646153%_
                           _%hd4606646122%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4608046162%_
                                                   _%target4607746156%_
                                                   '()))
                                                (_%g4605446091%_
                                                 _%g4605546095%_)))))
                                      (_%g4605446091%_ _%g4605546095%_)))))))
                  (_%loop4607146134%_ _%target4606846128%_ '()))
                (_%g4605446091%_ _%g4605546095%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4605446091%_
                                               _%g4605546095%_))))
                                      (_%g4605446091%_ _%g4605546095%_))))
                              (_%g4605446091%_ _%g4605546095%_))))
                      (_%g4605446091%_ _%g4605546095%_)))))
          (_%g4605346228%_ _%$stx46050%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
      (lambda (_%$stx46234%_)
        (let ((_%g4623746244%_
               (lambda (_%g4623846240%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4623846240%_))))
          (_%g4623746244%_ _%$stx46234%_))))))
