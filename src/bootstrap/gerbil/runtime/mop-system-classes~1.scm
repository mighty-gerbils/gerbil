(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g141560_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |[:0:]#defpred|
      (lambda (_%stx141043%_)
        (let* ((_%g141046141084%_
                (lambda (_%g141047141080%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g141047141080%_)))
               (_%g141045141251%_
                (lambda (_%g141047141088%_)
                  (if (gx#stx-pair? _%g141047141088%_)
                      (let ((_%e141052141091%_
                             (gx#syntax-e _%g141047141088%_)))
                        (let ((_%hd141053141095%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141052141091%_)))
                              (_%tl141054141098%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141052141091%_))))
                          (if (gx#stx-pair? _%tl141054141098%_)
                              (let ((_%e141055141101%_
                                     (gx#syntax-e _%tl141054141098%_)))
                                (let ((_%hd141056141105%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141055141101%_)))
                                      (_%tl141057141108%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141055141101%_))))
                                  (if (gx#stx-pair? _%hd141056141105%_)
                                      (let ((_%e141058141111%_
                                             (gx#syntax-e _%hd141056141105%_)))
                                        (let ((_%hd141059141115%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141058141111%_)))
                                              (_%tl141060141118%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141058141111%_))))
                                          (if (gx#stx-pair? _%tl141060141118%_)
                                              (let ((_%e141061141121%_
                                                     (gx#syntax-e
                                                      _%tl141060141118%_)))
                                                (let ((_%hd141062141125%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141061141121%_)))
                                                      (_%tl141063141128%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141061141121%_))))
                                                  (if (gx#stx-null?
                                                       _%tl141063141128%_)
                                                      (if (gx#stx-pair?
                                                           _%tl141057141108%_)
                                                          (let ((_%e141064141131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl141057141108%_)))
                    (let ((_%hd141065141135%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141064141131%_)))
                          (_%tl141066141138%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141064141131%_))))
                      (if (gx#identifier? _%hd141065141135%_)
                          (if (gx#free-identifier=?
                               |[1]#_g141560_|
                               _%hd141065141135%_)
                              (if (gx#stx-pair? _%tl141066141138%_)
                                  (let ((_%e141067141141%_
                                         (gx#syntax-e _%tl141066141138%_)))
                                    (let ((_%hd141068141145%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141067141141%_)))
                                          (_%tl141069141148%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141067141141%_))))
                                      (if (gx#stx-pair/null?
                                           _%tl141069141148%_)
                                          (let ((_g141561_
                                                 (gx#syntax-split-splice
                                                  _%tl141069141148%_
                                                  '0)))
                                            (begin
                                              (let ((_g141562_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g141561_)
                                                           (##values-length
                                                            _g141561_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g141562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g141562_)))
                                              (let ((_%target141070141151%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g141561_
                                                        0)))
                                                    (_%tl141072141154%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g141561_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl141072141154%_)
                                                    (letrec ((_%loop141073141157%_
                                                              (lambda (_%hd141071141161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body141077141164%_)
                        (if (gx#stx-pair? _%hd141071141161%_)
                            (let ((_%e141074141166%_
                                   (gx#syntax-e _%hd141071141161%_)))
                              (let ((_%lp-hd141075141170%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141074141166%_)))
                                    (_%lp-tl141076141173%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141074141166%_))))
                                (_%loop141073141157%_
                                 _%lp-tl141076141173%_
                                 (cons _%lp-hd141075141170%_
                                       _%body141077141164%_))))
                            (let* ((_%body141078141176%_
                                    (reverse _%body141077141164%_))
                                   (_%g141212141220%_
                                    (lambda (_%g141213141216%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g141213141216%_)))
                                   (_%g141211141247%_
                                    (lambda (_%g141213141224%_)
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons _%hd141059141115%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@predicate)
                                  (cons _%g141213141224%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'lambda)
                                        (cons (cons _%hd141062141125%_ '())
                                              (let ((__tmp141563
                                                     (lambda (_%g141238141241%_
                                                              _%g141239141244%_)
                                                       (cons _%g141238141241%_
                                                             _%g141239141244%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp141563
                                                 '()
                                                 _%body141078141176%_))))
                                  '())))
                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%g141211141247%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                  _%stx141043%_
                                  _%hd141068141145%_))))))))
              (_%loop141073141157%_ _%target141070141151%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g141046141084%_
                                                     _%g141047141088%_)))))
                                          (_%g141046141084%_
                                           _%g141047141088%_))))
                                  (_%g141046141084%_ _%g141047141088%_))
                              (_%g141046141084%_ _%g141047141088%_))
                          (_%g141046141084%_ _%g141047141088%_))))
                  (_%g141046141084%_ _%g141047141088%_))
              (_%g141046141084%_ _%g141047141088%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141046141084%_
                                               _%g141047141088%_))))
                                      (_%g141046141084%_ _%g141047141088%_))))
                              (_%g141046141084%_ _%g141047141088%_))))
                      (_%g141046141084%_ _%g141047141088%_)))))
          (_%g141045141251%_ _%stx141043%_))))
    (define |[:0:]#subtype-property-vector|
      (lambda (_%$stx141256%_)
        (let* ((_%g141260141280%_
                (lambda (_%g141261141276%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g141261141276%_)))
               (_%g141259141349%_
                (lambda (_%g141261141284%_)
                  (if (gx#stx-pair? _%g141261141284%_)
                      (let ((_%e141263141287%_
                             (gx#syntax-e _%g141261141284%_)))
                        (let ((_%hd141264141291%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141263141287%_)))
                              (_%tl141265141294%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141263141287%_))))
                          (if (gx#stx-pair/null? _%tl141265141294%_)
                              (let ((_g141564_
                                     (gx#syntax-split-splice
                                      _%tl141265141294%_
                                      '0)))
                                (begin
                                  (let ((_g141565_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g141564_)
                                               (##values-length _g141564_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g141565_ 2)))
                                        (error "Context expects 2 values"
                                               _g141565_)))
                                  (let ((_%target141266141297%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g141564_ 0)))
                                        (_%tl141268141300%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g141564_ 1))))
                                    (if (gx#stx-null? _%tl141268141300%_)
                                        (letrec ((_%loop141269141303%_
                                                  (lambda (_%hd141267141307%_
                                                           _%t141273141310%_)
                                                    (if (gx#stx-pair?
                                                         _%hd141267141307%_)
                                                        (let ((_%e141270141312%_
                                                               (gx#syntax-e
                                                                _%hd141267141307%_)))
                                                          (let ((_%lp-hd141271141316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e141270141312%_)))
                        (_%lp-tl141272141319%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141270141312%_))))
                    (_%loop141269141303%_
                     _%lp-tl141272141319%_
                     (cons _%lp-hd141271141316%_ _%t141273141310%_))))
                (let ((_%t141274141322%_ (reverse _%t141273141310%_)))
                  (cons (gx#datum->syntax '#f 'let)
                        (cons (cons (gx#datum->syntax '#f 'vec)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-vector)
                                                (cons '32 (cons '#f '())))
                                          '()))
                              (let ((__tmp141567
                                     (lambda (_%g141340141343%_
                                              _%g141341141346%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'vec)
                                                         (cons _%g141340141343%_
                                                               (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%g141341141346%_)))
                                    (__tmp141566
                                     (cons (gx#datum->syntax '#f 'vec) '())))
                                (declare (not safe))
                                (foldr__0
                                 __tmp141567
                                 __tmp141566
                                 _%t141274141322%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop141269141303%_
                                           _%target141266141297%_
                                           '()))
                                        (_%g141260141280%_
                                         _%g141261141284%_)))))
                              (_%g141260141280%_ _%g141261141284%_))))
                      (_%g141260141280%_ _%g141261141284%_)))))
          (_%g141259141349%_ _%$stx141256%_))))))
