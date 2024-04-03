(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx90952%_)
      (let* ((_%__stx9746197462%_ _%$stx90952%_)
             (_%g9095790986%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9746197462%_))))
        (let ((_%__kont9746497465%_
               (lambda (_%L91079%_ _%L91081%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L91081%_ (cons _%L91079%_ '())))
                             (cons _%L91079%_ '())))))
              (_%__kont9746697467%_
               (lambda (_%L91023%_ _%L91025%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L91023%_ (cons _%L91023%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L91025%_
                                                           (cons _%L91023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L91023%_ '())))
                                   '()))))))
          (let ((_%__match9748897489%_
                 (lambda (_%e9096391049%_
                          _%hd9096291053%_
                          _%tl9096191056%_
                          _%e9096691059%_
                          _%hd9096591063%_
                          _%tl9096491066%_
                          _%e9096991069%_
                          _%hd9096891073%_
                          _%tl9096791076%_)
                   (let ((_%L91079%_ _%hd9096891073%_)
                         (_%L91081%_ _%hd9096591063%_))
                     (if (or (gx#identifier? _%L91079%_)
                             (gx#stx-fixnum? _%L91079%_))
                         (_%__kont9746497465%_ _%L91079%_ _%L91081%_)
                         (_%__kont9746697467%_
                          _%hd9096891073%_
                          _%hd9096591063%_))))))
            (if (gx#stx-pair? _%__stx9746197462%_)
                (let ((_%e9096391049%_ (gx#syntax-e _%__stx9746197462%_)))
                  (let ((_%tl9096191056%_
                         (let () (declare (not safe)) (##cdr _%e9096391049%_)))
                        (_%hd9096291053%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9096391049%_))))
                    (if (gx#stx-pair? _%tl9096191056%_)
                        (let ((_%e9096691059%_ (gx#syntax-e _%tl9096191056%_)))
                          (let ((_%tl9096491066%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9096691059%_)))
                                (_%hd9096591063%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9096691059%_))))
                            (if (gx#stx-pair? _%tl9096491066%_)
                                (let ((_%e9096991069%_
                                       (gx#syntax-e _%tl9096491066%_)))
                                  (let ((_%tl9096791076%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9096991069%_)))
                                        (_%hd9096891073%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9096991069%_))))
                                    (if (gx#stx-null? _%tl9096791076%_)
                                        (_%__match9748897489%_
                                         _%e9096391049%_
                                         _%hd9096291053%_
                                         _%tl9096191056%_
                                         _%e9096691059%_
                                         _%hd9096591063%_
                                         _%tl9096491066%_
                                         _%e9096991069%_
                                         _%hd9096891073%_
                                         _%tl9096791076%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9095790986%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9095790986%_)))))
                        (let () (declare (not safe)) (_%g9095790986%_)))))
                (let () (declare (not safe)) (_%g9095790986%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx91104%_)
      (let* ((_%__stx9751197512%_ _%$stx91104%_)
             (_%g9110991138%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9751197512%_))))
        (let ((_%__kont9751497515%_
               (lambda (_%L91230%_ _%L91232%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L91232%_ (cons _%L91230%_ '())))
                             (cons '0 '())))))
              (_%__kont9751697517%_
               (lambda (_%L91175%_ _%L91177%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L91175%_ (cons _%L91175%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L91177%_
                                                           (cons _%L91175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match9753897539%_
                 (lambda (_%e9111591200%_
                          _%hd9111491204%_
                          _%tl9111391207%_
                          _%e9111891210%_
                          _%hd9111791214%_
                          _%tl9111691217%_
                          _%e9112191220%_
                          _%hd9112091224%_
                          _%tl9111991227%_)
                   (let ((_%L91230%_ _%hd9112091224%_)
                         (_%L91232%_ _%hd9111791214%_))
                     (if (or (gx#identifier? _%L91230%_)
                             (gx#stx-fixnum? _%L91230%_))
                         (_%__kont9751497515%_ _%L91230%_ _%L91232%_)
                         (_%__kont9751697517%_
                          _%hd9112091224%_
                          _%hd9111791214%_))))))
            (if (gx#stx-pair? _%__stx9751197512%_)
                (let ((_%e9111591200%_ (gx#syntax-e _%__stx9751197512%_)))
                  (let ((_%tl9111391207%_
                         (let () (declare (not safe)) (##cdr _%e9111591200%_)))
                        (_%hd9111491204%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9111591200%_))))
                    (if (gx#stx-pair? _%tl9111391207%_)
                        (let ((_%e9111891210%_ (gx#syntax-e _%tl9111391207%_)))
                          (let ((_%tl9111691217%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9111891210%_)))
                                (_%hd9111791214%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9111891210%_))))
                            (if (gx#stx-pair? _%tl9111691217%_)
                                (let ((_%e9112191220%_
                                       (gx#syntax-e _%tl9111691217%_)))
                                  (let ((_%tl9111991227%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9112191220%_)))
                                        (_%hd9112091224%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9112191220%_))))
                                    (if (gx#stx-null? _%tl9111991227%_)
                                        (_%__match9753897539%_
                                         _%e9111591200%_
                                         _%hd9111491204%_
                                         _%tl9111391207%_
                                         _%e9111891210%_
                                         _%hd9111791214%_
                                         _%tl9111691217%_
                                         _%e9112191220%_
                                         _%hd9112091224%_
                                         _%tl9111991227%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9110991138%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9110991138%_)))))
                        (let () (declare (not safe)) (_%g9110991138%_)))))
                (let () (declare (not safe)) (_%g9110991138%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx91255%_)
      (let* ((_%g9125891279%_
              (lambda (_%g9125991275%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9125991275%_)))
             (_%g9125791507%_
              (lambda (_%g9125991283%_)
                (if (gx#stx-pair? _%g9125991283%_)
                    (let ((_%e9126491286%_ (gx#syntax-e _%g9125991283%_)))
                      (let ((_%hd9126391290%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9126491286%_)))
                            (_%tl9126291293%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9126491286%_))))
                        (if (gx#stx-pair? _%tl9126291293%_)
                            (let ((_%e9126791296%_
                                   (gx#syntax-e _%tl9126291293%_)))
                              (let ((_%hd9126691300%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9126791296%_)))
                                    (_%tl9126591303%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9126791296%_))))
                                (if (gx#stx-pair? _%hd9126691300%_)
                                    (let ((_%e9127091306%_
                                           (gx#syntax-e _%hd9126691300%_)))
                                      (let ((_%hd9126991310%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9127091306%_)))
                                            (_%tl9126891313%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9127091306%_))))
                                        (if (gx#stx-pair? _%tl9126891313%_)
                                            (let ((_%e9127391316%_
                                                   (gx#syntax-e
                                                    _%tl9126891313%_)))
                                              (let ((_%hd9127291320%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9127391316%_)))
                                                    (_%tl9127191323%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9127391316%_))))
                                                (if (gx#stx-null?
                                                     _%tl9127191323%_)
                                                    (if (gx#stx-null?
                                                         _%tl9126591303%_)
                                                        ((lambda (_%L91326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L91328%_)
                   (let* ((_%g9134691354%_
                           (lambda (_%g9134791350%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9134791350%_)))
                          (_%g9134591503%_
                           (lambda (_%g9134791358%_)
                             ((lambda (_%L91361%_)
                                (let ()
                                  (let* ((_%g9137391381%_
                                          (lambda (_%g9137491377%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g9137491377%_)))
                                         (_%g9137291499%_
                                          (lambda (_%g9137491385%_)
                                            ((lambda (_%L91388%_)
                                               (let ()
                                                 (let* ((_%g9140191409%_
                                                         (lambda (_%g9140291405%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g9140291405%_)))
                                                        (_%g9140091495%_
                                                         (lambda (_%g9140291413%_)
                                                           ((lambda (_%L91416%_)
                                                              (let ()
                                                                (let* ((_%g9142991437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g9143091433%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g9143091433%_)))
                               (_%g9142891491%_
                                (lambda (_%g9143091441%_)
                                  ((lambda (_%L91444%_)
                                     (let ()
                                       (let* ((_%g9145791465%_
                                               (lambda (_%g9145891461%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g9145891461%_)))
                                              (_%g9145691487%_
                                               (lambda (_%g9145891469%_)
                                                 ((lambda (_%L91472%_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'def)
                                (cons _%L91388%_
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'begin-annotation)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '@mop.accessor)
                                                              (cons _%L91361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L91328%_ (cons '#t '()))))
                (cons (cons (gx#datum->syntax '#f 'lambda)
                            (cons (cons (gx#datum->syntax '#f 'klass) '())
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               '##structure-ref)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'klass)
                                                    (cons _%L91326%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'class::t)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%L91328%_ '()))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'def)
                                      (cons _%L91416%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@mop.accessor)
                            (cons _%L91361%_ (cons _%L91328%_ (cons '#f '()))))
                      (cons (cons (gx#datum->syntax '#f 'lambda)
                                  (cons (cons (gx#datum->syntax '#f 'klass)
                                              '())
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '##unchecked-structure-ref)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'klass)
                                                          (cons _%L91326%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'class::t)
                              (cons (cons (gx#datum->syntax '#f 'quote)
                                          (cons _%L91328%_ '()))
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons (cons (gx#datum->syntax '#f 'def)
                                            (cons _%L91444%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@mop.mutator)
                                  (cons _%L91361%_
                                        (cons _%L91328%_ (cons '#t '()))))
                            (cons (cons (gx#datum->syntax '#f 'lambda)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'klass)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'val)
                                                          '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##structure-set!)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'klass)
                        (cons (gx#datum->syntax '#f 'val)
                              (cons _%L91326%_
                                    (cons (gx#datum->syntax '#f 'class::t)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _%L91328%_ '()))
                                                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L91472%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@mop.mutator)
                                        (cons _%L91361%_
                                              (cons _%L91328%_
                                                    (cons '#f '()))))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'klass)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##unchecked-structure-set!)
                        (cons (gx#datum->syntax '#f 'klass)
                              (cons (gx#datum->syntax '#f 'val)
                                    (cons _%L91326%_
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'class::t)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%L91328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g9145891469%_))))
                                         (_%g9145691487%_
                                          (gx#stx-identifier
                                           _%L91328%_
                                           '"&"
                                           _%L91444%_)))))
                                   _%g9143091441%_))))
                          (_%g9142891491%_
                           (gx#stx-identifier
                            _%L91328%_
                            _%L91388%_
                            '"-set!")))))
                    _%g9140291413%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g9140091495%_
                                                    (gx#stx-identifier
                                                     _%L91328%_
                                                     '"&"
                                                     _%L91388%_)))))
                                             _%g9137491385%_))))
                                    (_%g9137291499%_
                                     (gx#stx-identifier
                                      _%L91328%_
                                      '"class-type-"
                                      _%L91328%_)))))
                              _%g9134791358%_))))
                     (_%g9134591503%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9127291320%_
                 _%hd9126991310%_)
                (_%g9125891279%_ _%g9125991283%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9125891279%_
                                                     _%g9125991283%_))))
                                            (_%g9125891279%_
                                             _%g9125991283%_))))
                                    (_%g9125891279%_ _%g9125991283%_))))
                            (_%g9125891279%_ _%g9125991283%_))))
                    (_%g9125891279%_ _%g9125991283%_)))))
        (_%g9125791507%_ _%stx91255%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx91511%_)
      (let* ((_%g9151591544%_
              (lambda (_%g9151691540%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9151691540%_)))
             (_%g9151491644%_
              (lambda (_%g9151691548%_)
                (if (gx#stx-pair? _%g9151691548%_)
                    (let ((_%e9152191551%_ (gx#syntax-e _%g9151691548%_)))
                      (let ((_%hd9152091555%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9152191551%_)))
                            (_%tl9151991558%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9152191551%_))))
                        (if (gx#stx-pair/null? _%tl9151991558%_)
                            (let ((_g97830_
                                   (gx#syntax-split-splice
                                    _%tl9151991558%_
                                    '0)))
                              (begin
                                (let ((_g97831_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g97830_)
                                             (##vector-length _g97830_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g97831_ 2)))
                                      (error "Context expects 2 values"
                                             _g97831_)))
                                (let ((_%target9152291561%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g97830_ 0)))
                                      (_%tl9152491564%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g97830_ 1))))
                                  (if (gx#stx-null? _%tl9152491564%_)
                                      (letrec ((_%loop9152591567%_
                                                (lambda (_%hd9152391571%_
                                                         _%field9152991574%_
                                                         _%slot9153091576%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9152391571%_)
                                                      (let ((_%e9152691579%_
                                                             (gx#syntax-e
                                                              _%hd9152391571%_)))
                                                        (let ((_%lp-hd9152791583%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9152691579%_)))
                      (_%lp-tl9152891586%_
                       (let () (declare (not safe)) (##cdr _%e9152691579%_))))
                  (if (gx#stx-pair? _%lp-hd9152791583%_)
                      (let ((_%e9153591589%_
                             (gx#syntax-e _%lp-hd9152791583%_)))
                        (let ((_%hd9153491593%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9153591589%_)))
                              (_%tl9153391596%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9153591589%_))))
                          (if (gx#stx-pair? _%tl9153391596%_)
                              (let ((_%e9153891599%_
                                     (gx#syntax-e _%tl9153391596%_)))
                                (let ((_%hd9153791603%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9153891599%_)))
                                      (_%tl9153691606%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9153891599%_))))
                                  (if (gx#stx-null? _%tl9153691606%_)
                                      (_%loop9152591567%_
                                       _%lp-tl9152891586%_
                                       (cons _%hd9153791603%_
                                             _%field9152991574%_)
                                       (cons _%hd9153491593%_
                                             _%slot9153091576%_))
                                      (_%g9151591544%_ _%g9151691548%_))))
                              (_%g9151591544%_ _%g9151691548%_))))
                      (_%g9151591544%_ _%g9151691548%_))))
              (let ((_%field9153191609%_ (reverse _%field9152991574%_))
                    (_%slot9153291612%_ (reverse _%slot9153091576%_)))
                ((lambda (_%L91615%_ _%L91617%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L91615%_
                            _%L91617%_)
                           (let ((__tmp97832
                                  (lambda (_%g9163291636%_
                                           _%g9163391639%_
                                           _%g9163491641%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9163391639%_
                                                            (cons _%g9163291636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9163491641%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp97832
                              '()
                              _%L91615%_
                              _%L91617%_)))))
                 _%field9153191609%_
                 _%slot9153291612%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9152591567%_
                                         _%target9152291561%_
                                         '()
                                         '()))
                                      (_%g9151591544%_ _%g9151691548%_)))))
                            (_%g9151591544%_ _%g9151691548%_))))
                    (_%g9151591544%_ _%g9151691548%_)))))
        (_%g9151491644%_ _%$stx91511%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx91649%_)
      (let* ((_%g9165391687%_
              (lambda (_%g9165491683%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9165491683%_)))
             (_%g9165291798%_
              (lambda (_%g9165491691%_)
                (if (gx#stx-pair? _%g9165491691%_)
                    (let ((_%e9166391694%_ (gx#syntax-e _%g9165491691%_)))
                      (let ((_%hd9166291698%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9166391694%_)))
                            (_%tl9166191701%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9166391694%_))))
                        (if (gx#stx-pair? _%tl9166191701%_)
                            (let ((_%e9166691704%_
                                   (gx#syntax-e _%tl9166191701%_)))
                              (let ((_%hd9166591708%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9166691704%_)))
                                    (_%tl9166491711%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9166691704%_))))
                                (if (gx#stx-pair? _%tl9166491711%_)
                                    (let ((_%e9166991714%_
                                           (gx#syntax-e _%tl9166491711%_)))
                                      (let ((_%hd9166891718%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9166991714%_)))
                                            (_%tl9166791721%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9166991714%_))))
                                        (if (gx#stx-pair? _%tl9166791721%_)
                                            (let ((_%e9167291724%_
                                                   (gx#syntax-e
                                                    _%tl9166791721%_)))
                                              (let ((_%hd9167191728%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9167291724%_)))
                                                    (_%tl9167091731%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9167291724%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9167091731%_)
                                                    (let ((_%e9167591734%_
                                                           (gx#syntax-e
                                                            _%tl9167091731%_)))
                                                      (let ((_%hd9167491738%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9167591734%_)))
                    (_%tl9167391741%_
                     (let () (declare (not safe)) (##cdr _%e9167591734%_))))
                (if (gx#stx-pair? _%tl9167391741%_)
                    (let ((_%e9167891744%_ (gx#syntax-e _%tl9167391741%_)))
                      (let ((_%hd9167791748%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9167891744%_)))
                            (_%tl9167691751%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9167891744%_))))
                        (if (gx#stx-pair? _%tl9167691751%_)
                            (let ((_%e9168191754%_
                                   (gx#syntax-e _%tl9167691751%_)))
                              (let ((_%hd9168091758%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9168191754%_)))
                                    (_%tl9167991761%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9168191754%_))))
                                (if (gx#stx-null? _%tl9167991761%_)
                                    ((lambda (_%L91764%_
                                              _%L91766%_
                                              _%L91767%_
                                              _%L91768%_
                                              _%L91769%_
                                              _%L91770%_)
                                       (cons (gx#datum->syntax '#f 'let)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'field)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'symbolic-table-ref)
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          '&class-type-slot-table)
                                         (cons _%L91770%_ '()))
                                   (cons _%L91769%_ (cons '#f '()))))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'cond)
                                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          'not)
                                         (cons (gx#datum->syntax '#f 'field)
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'abort!)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'error)
                                                           (cons '"unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'class:
                               (cons _%L91770%_
                                     (cons 'slot: (cons _%L91769%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L91770%_ '()))
                                         (cons (cons _%L91768%_
                                                     (cons _%L91770%_
                                                           (cons _%L91769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L91770%_ '()))
                                               (cons (cons _%L91767%_
                                                           (cons _%L91770%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L91769%_
                               (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'strukt)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            'base-struct/1)
                                           (cons _%L91770%_ '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'and)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'class-type?)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'strukt)
                                                       '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'field)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##vector-length)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '&class-type-slot-vector)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'strukt)
                                                   '()))
                                       '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _%L91766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L91770%_
                               (cons _%L91769%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L91764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L91770%_
                                     (cons _%L91769%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9168091758%_
                                     _%hd9167791748%_
                                     _%hd9167491738%_
                                     _%hd9167191728%_
                                     _%hd9166891718%_
                                     _%hd9166591708%_)
                                    (_%g9165391687%_ _%g9165491691%_))))
                            (_%g9165391687%_ _%g9165491691%_))))
                    (_%g9165391687%_ _%g9165491691%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9165391687%_
                                                     _%g9165491691%_))))
                                            (_%g9165391687%_
                                             _%g9165491691%_))))
                                    (_%g9165391687%_ _%g9165491691%_))))
                            (_%g9165391687%_ _%g9165491691%_))))
                    (_%g9165391687%_ _%g9165491691%_)))))
        (_%g9165291798%_ _%$stx91649%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx91802%_)
      (let* ((_%g9180691832%_
              (lambda (_%g9180791828%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9180791828%_)))
             (_%g9180591915%_
              (lambda (_%g9180791836%_)
                (if (gx#stx-pair? _%g9180791836%_)
                    (let ((_%e9181491839%_ (gx#syntax-e _%g9180791836%_)))
                      (let ((_%hd9181391843%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9181491839%_)))
                            (_%tl9181291846%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9181491839%_))))
                        (if (gx#stx-pair? _%tl9181291846%_)
                            (let ((_%e9181791849%_
                                   (gx#syntax-e _%tl9181291846%_)))
                              (let ((_%hd9181691853%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9181791849%_)))
                                    (_%tl9181591856%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9181791849%_))))
                                (if (gx#stx-pair? _%tl9181591856%_)
                                    (let ((_%e9182091859%_
                                           (gx#syntax-e _%tl9181591856%_)))
                                      (let ((_%hd9181991863%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9182091859%_)))
                                            (_%tl9181891866%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9182091859%_))))
                                        (if (gx#stx-pair? _%tl9181891866%_)
                                            (let ((_%e9182391869%_
                                                   (gx#syntax-e
                                                    _%tl9181891866%_)))
                                              (let ((_%hd9182291873%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9182391869%_)))
                                                    (_%tl9182191876%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9182391869%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9182191876%_)
                                                    (let ((_%e9182691879%_
                                                           (gx#syntax-e
                                                            _%tl9182191876%_)))
                                                      (let ((_%hd9182591883%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9182691879%_)))
                    (_%tl9182491886%_
                     (let () (declare (not safe)) (##cdr _%e9182691879%_))))
                (if (gx#stx-null? _%tl9182491886%_)
                    ((lambda (_%L91889%_ _%L91891%_ _%L91892%_ _%L91893%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L91893%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L91892%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L91891%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L91889%_
                                     (cons _%L91893%_ (cons _%L91892%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9182591883%_
                     _%hd9182291873%_
                     _%hd9181991863%_
                     _%hd9181691853%_)
                    (_%g9180691832%_ _%g9180791836%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9180691832%_
                                                     _%g9180791836%_))))
                                            (_%g9180691832%_
                                             _%g9180791836%_))))
                                    (_%g9180691832%_ _%g9180791836%_))))
                            (_%g9180691832%_ _%g9180791836%_))))
                    (_%g9180691832%_ _%g9180791836%_)))))
        (_%g9180591915%_ _%$stx91802%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx91919%_)
      (let* ((_%g9192391952%_
              (lambda (_%g9192491948%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9192491948%_)))
             (_%g9192292052%_
              (lambda (_%g9192491956%_)
                (if (gx#stx-pair? _%g9192491956%_)
                    (let ((_%e9192991959%_ (gx#syntax-e _%g9192491956%_)))
                      (let ((_%hd9192891963%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9192991959%_)))
                            (_%tl9192791966%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9192991959%_))))
                        (if (gx#stx-pair/null? _%tl9192791966%_)
                            (let ((_g97833_
                                   (gx#syntax-split-splice
                                    _%tl9192791966%_
                                    '0)))
                              (begin
                                (let ((_g97834_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g97833_)
                                             (##vector-length _g97833_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g97834_ 2)))
                                      (error "Context expects 2 values"
                                             _g97834_)))
                                (let ((_%target9193091969%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g97833_ 0)))
                                      (_%tl9193291972%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g97833_ 1))))
                                  (if (gx#stx-null? _%tl9193291972%_)
                                      (letrec ((_%loop9193391975%_
                                                (lambda (_%hd9193191979%_
                                                         _%name9193791982%_
                                                         _%t9193891984%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9193191979%_)
                                                      (let ((_%e9193491987%_
                                                             (gx#syntax-e
                                                              _%hd9193191979%_)))
                                                        (let ((_%lp-hd9193591991%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9193491987%_)))
                      (_%lp-tl9193691994%_
                       (let () (declare (not safe)) (##cdr _%e9193491987%_))))
                  (if (gx#stx-pair? _%lp-hd9193591991%_)
                      (let ((_%e9194391997%_
                             (gx#syntax-e _%lp-hd9193591991%_)))
                        (let ((_%hd9194292001%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9194391997%_)))
                              (_%tl9194192004%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9194391997%_))))
                          (if (gx#stx-pair? _%tl9194192004%_)
                              (let ((_%e9194692007%_
                                     (gx#syntax-e _%tl9194192004%_)))
                                (let ((_%hd9194592011%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9194692007%_)))
                                      (_%tl9194492014%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9194692007%_))))
                                  (if (gx#stx-null? _%tl9194492014%_)
                                      (_%loop9193391975%_
                                       _%lp-tl9193691994%_
                                       (cons _%hd9194592011%_
                                             _%name9193791982%_)
                                       (cons _%hd9194292001%_ _%t9193891984%_))
                                      (_%g9192391952%_ _%g9192491956%_))))
                              (_%g9192391952%_ _%g9192491956%_))))
                      (_%g9192391952%_ _%g9192491956%_))))
              (let ((_%name9193992017%_ (reverse _%name9193791982%_))
                    (_%t9194092020%_ (reverse _%t9193891984%_)))
                ((lambda (_%L92023%_ _%L92025%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L92023%_
                            _%L92025%_)
                           (let ((__tmp97835
                                  (lambda (_%g9204092044%_
                                           _%g9204192047%_
                                           _%g9204292049%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g9204192047%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g9204092044%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9204292049%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp97835
                              '()
                              _%L92023%_
                              _%L92025%_)))))
                 _%name9193992017%_
                 _%t9194092020%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9193391975%_
                                         _%target9193091969%_
                                         '()
                                         '()))
                                      (_%g9192391952%_ _%g9192491956%_)))))
                            (_%g9192391952%_ _%g9192491956%_))))
                    (_%g9192391952%_ _%g9192491956%_)))))
        (_%g9192292052%_ _%$stx91919%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx92057%_)
      (let* ((_%g9206192092%_
              (lambda (_%g9206292088%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9206292088%_)))
             (_%g9206092211%_
              (lambda (_%g9206292096%_)
                (if (gx#stx-pair? _%g9206292096%_)
                    (let ((_%e9206892099%_ (gx#syntax-e _%g9206292096%_)))
                      (let ((_%hd9206792103%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9206892099%_)))
                            (_%tl9206692106%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9206892099%_))))
                        (if (gx#stx-pair? _%tl9206692106%_)
                            (let ((_%e9207192109%_
                                   (gx#syntax-e _%tl9206692106%_)))
                              (let ((_%hd9207092113%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9207192109%_)))
                                    (_%tl9206992116%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9207192109%_))))
                                (if (gx#stx-pair? _%tl9206992116%_)
                                    (let ((_%e9207492119%_
                                           (gx#syntax-e _%tl9206992116%_)))
                                      (let ((_%hd9207392123%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9207492119%_)))
                                            (_%tl9207292126%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9207492119%_))))
                                        (if (gx#stx-pair? _%tl9207292126%_)
                                            (let ((_%e9207792129%_
                                                   (gx#syntax-e
                                                    _%tl9207292126%_)))
                                              (let ((_%hd9207692133%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9207792129%_)))
                                                    (_%tl9207592136%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9207792129%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd9207692133%_)
                                                    (let ((_g97836_
                                                           (gx#syntax-split-splice
                                                            _%hd9207692133%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g97837_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g97836_)
                             (##vector-length _g97836_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g97837_ 2)))
                      (error "Context expects 2 values" _g97837_)))
                (let ((_%target9207892139%_
                       (let () (declare (not safe)) (##vector-ref _g97836_ 0)))
                      (_%tl9208092142%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g97836_ 1))))
                  (if (gx#stx-null? _%tl9208092142%_)
                      (letrec ((_%loop9208192145%_
                                (lambda (_%hd9207992149%_ _%super9208592152%_)
                                  (if (gx#stx-pair? _%hd9207992149%_)
                                      (let ((_%e9208292155%_
                                             (gx#syntax-e _%hd9207992149%_)))
                                        (let ((_%lp-hd9208392159%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9208292155%_)))
                                              (_%lp-tl9208492162%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9208292155%_))))
                                          (_%loop9208192145%_
                                           _%lp-tl9208492162%_
                                           (cons _%lp-hd9208392159%_
                                                 _%super9208592152%_))))
                                      (let ((_%super9208692165%_
                                             (reverse _%super9208592152%_)))
                                        (if (gx#stx-null? _%tl9207592136%_)
                                            ((lambda (_%L92169%_
                                                      _%L92171%_
                                                      _%L92172%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L92172%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L92171%_
                                                 (cons (let ((__tmp97838
                                                              (lambda (_%g9219692199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9219792202%_)
                        (cons _%g9219692199%_ _%g9219792202%_))))
                 (declare (not safe))
                 (__foldr1 __tmp97838 '() _%L92169%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L92171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp97839
                                  (lambda (_%g9219492205%_ _%g9219592208%_)
                                    (cons _%g9219492205%_ _%g9219592208%_))))
                             (declare (not safe))
                             (__foldr1 __tmp97839 '() _%L92169%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super9208692165%_
                                             _%hd9207392123%_
                                             _%hd9207092113%_)
                                            (_%g9206192092%_
                                             _%g9206292096%_)))))))
                        (_%loop9208192145%_ _%target9207892139%_ '()))
                      (_%g9206192092%_ _%g9206292096%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9206192092%_
                                                     _%g9206292096%_))))
                                            (_%g9206192092%_
                                             _%g9206292096%_))))
                                    (_%g9206192092%_ _%g9206292096%_))))
                            (_%g9206192092%_ _%g9206292096%_))))
                    (_%g9206192092%_ _%g9206292096%_)))))
        (_%g9206092211%_ _%$stx92057%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx92216%_)
      (let* ((_%g9222092251%_
              (lambda (_%g9222192247%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9222192247%_)))
             (_%g9221992362%_
              (lambda (_%g9222192255%_)
                (if (gx#stx-pair? _%g9222192255%_)
                    (let ((_%e9222792258%_ (gx#syntax-e _%g9222192255%_)))
                      (let ((_%hd9222692262%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9222792258%_)))
                            (_%tl9222592265%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9222792258%_))))
                        (if (gx#stx-pair? _%tl9222592265%_)
                            (let ((_%e9223092268%_
                                   (gx#syntax-e _%tl9222592265%_)))
                              (let ((_%hd9222992272%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9223092268%_)))
                                    (_%tl9222892275%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9223092268%_))))
                                (if (gx#stx-pair? _%tl9222892275%_)
                                    (let ((_%e9223392278%_
                                           (gx#syntax-e _%tl9222892275%_)))
                                      (let ((_%hd9223292282%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9223392278%_)))
                                            (_%tl9223192285%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9223392278%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd9223292282%_)
                                            (let ((_g97840_
                                                   (gx#syntax-split-splice
                                                    _%hd9223292282%_
                                                    '0)))
                                              (begin
                                                (let ((_g97841_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g97840_)
                                                             (##vector-length
                                                              _g97840_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g97841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g97841_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target9223492288%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g97840_
                                                          0)))
                                                      (_%tl9223692291%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g97840_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl9223692291%_)
                                                      (letrec ((_%loop9223792294%_
                                                                (lambda (_%hd9223592298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super9224192301%_)
                          (if (gx#stx-pair? _%hd9223592298%_)
                              (let ((_%e9223892304%_
                                     (gx#syntax-e _%hd9223592298%_)))
                                (let ((_%lp-hd9223992308%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9223892304%_)))
                                      (_%lp-tl9224092311%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9223892304%_))))
                                  (_%loop9223792294%_
                                   _%lp-tl9224092311%_
                                   (cons _%lp-hd9223992308%_
                                         _%super9224192301%_))))
                              (let ((_%super9224292314%_
                                     (reverse _%super9224192301%_)))
                                (if (gx#stx-pair? _%tl9223192285%_)
                                    (let ((_%e9224592318%_
                                           (gx#syntax-e _%tl9223192285%_)))
                                      (let ((_%hd9224492322%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9224592318%_)))
                                            (_%tl9224392325%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9224592318%_))))
                                        (if (gx#stx-null? _%tl9224392325%_)
                                            ((lambda (_%L92328%_
                                                      _%L92330%_
                                                      _%L92331%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L92331%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L92331%_
                                                 (cons (let ((__tmp97842
                                                              (lambda (_%g9235392356%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9235492359%_)
                        (cons _%g9235392356%_ _%g9235492359%_))))
                 (declare (not safe))
                 (__foldr1 __tmp97842 '() _%L92330%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L92328%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9224492322%_
                                             _%super9224292314%_
                                             _%hd9222992272%_)
                                            (_%g9222092251%_
                                             _%g9222192255%_))))
                                    (_%g9222092251%_ _%g9222192255%_)))))))
                (_%loop9223792294%_ _%target9223492288%_ '()))
              (_%g9222092251%_ _%g9222192255%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g9222092251%_
                                             _%g9222192255%_))))
                                    (_%g9222092251%_ _%g9222192255%_))))
                            (_%g9222092251%_ _%g9222192255%_))))
                    (_%g9222092251%_ _%g9222192255%_)))))
        (_%g9221992362%_ _%$stx92216%_)))))
