(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx93012%_)
      (let* ((_%__stx9951699517%_ _%$stx93012%_)
             (_%g9301793046%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9951699517%_))))
        (let ((_%__kont9951999520%_
               (lambda (_%L93139%_ _%L93141%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L93141%_ (cons _%L93139%_ '())))
                             (cons _%L93139%_ '())))))
              (_%__kont9952199522%_
               (lambda (_%L93083%_ _%L93085%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L93083%_ (cons _%L93083%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L93085%_
                                                           (cons _%L93083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L93083%_ '())))
                                   '()))))))
          (let ((_%__match9954399544%_
                 (lambda (_%e9302193109%_
                          _%hd9302293113%_
                          _%tl9302393116%_
                          _%e9302493119%_
                          _%hd9302593123%_
                          _%tl9302693126%_
                          _%e9302793129%_
                          _%hd9302893133%_
                          _%tl9302993136%_)
                   (let ((_%L93139%_ _%hd9302893133%_)
                         (_%L93141%_ _%hd9302593123%_))
                     (if (or (gx#identifier? _%L93139%_)
                             (gx#stx-fixnum? _%L93139%_))
                         (_%__kont9951999520%_ _%L93139%_ _%L93141%_)
                         (_%__kont9952199522%_
                          _%hd9302893133%_
                          _%hd9302593123%_))))))
            (if (gx#stx-pair? _%__stx9951699517%_)
                (let ((_%e9302193109%_ (gx#syntax-e _%__stx9951699517%_)))
                  (let ((_%tl9302393116%_
                         (let () (declare (not safe)) (##cdr _%e9302193109%_)))
                        (_%hd9302293113%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9302193109%_))))
                    (if (gx#stx-pair? _%tl9302393116%_)
                        (let ((_%e9302493119%_ (gx#syntax-e _%tl9302393116%_)))
                          (let ((_%tl9302693126%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9302493119%_)))
                                (_%hd9302593123%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9302493119%_))))
                            (if (gx#stx-pair? _%tl9302693126%_)
                                (let ((_%e9302793129%_
                                       (gx#syntax-e _%tl9302693126%_)))
                                  (let ((_%tl9302993136%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9302793129%_)))
                                        (_%hd9302893133%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9302793129%_))))
                                    (if (gx#stx-null? _%tl9302993136%_)
                                        (_%__match9954399544%_
                                         _%e9302193109%_
                                         _%hd9302293113%_
                                         _%tl9302393116%_
                                         _%e9302493119%_
                                         _%hd9302593123%_
                                         _%tl9302693126%_
                                         _%e9302793129%_
                                         _%hd9302893133%_
                                         _%tl9302993136%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9301793046%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9301793046%_)))))
                        (let () (declare (not safe)) (_%g9301793046%_)))))
                (let () (declare (not safe)) (_%g9301793046%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx93164%_)
      (let* ((_%__stx9956699567%_ _%$stx93164%_)
             (_%g9316993198%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9956699567%_))))
        (let ((_%__kont9956999570%_
               (lambda (_%L93290%_ _%L93292%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L93292%_ (cons _%L93290%_ '())))
                             (cons '0 '())))))
              (_%__kont9957199572%_
               (lambda (_%L93235%_ _%L93237%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L93235%_ (cons _%L93235%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L93237%_
                                                           (cons _%L93235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match9959399594%_
                 (lambda (_%e9317393260%_
                          _%hd9317493264%_
                          _%tl9317593267%_
                          _%e9317693270%_
                          _%hd9317793274%_
                          _%tl9317893277%_
                          _%e9317993280%_
                          _%hd9318093284%_
                          _%tl9318193287%_)
                   (let ((_%L93290%_ _%hd9318093284%_)
                         (_%L93292%_ _%hd9317793274%_))
                     (if (or (gx#identifier? _%L93290%_)
                             (gx#stx-fixnum? _%L93290%_))
                         (_%__kont9956999570%_ _%L93290%_ _%L93292%_)
                         (_%__kont9957199572%_
                          _%hd9318093284%_
                          _%hd9317793274%_))))))
            (if (gx#stx-pair? _%__stx9956699567%_)
                (let ((_%e9317393260%_ (gx#syntax-e _%__stx9956699567%_)))
                  (let ((_%tl9317593267%_
                         (let () (declare (not safe)) (##cdr _%e9317393260%_)))
                        (_%hd9317493264%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9317393260%_))))
                    (if (gx#stx-pair? _%tl9317593267%_)
                        (let ((_%e9317693270%_ (gx#syntax-e _%tl9317593267%_)))
                          (let ((_%tl9317893277%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9317693270%_)))
                                (_%hd9317793274%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9317693270%_))))
                            (if (gx#stx-pair? _%tl9317893277%_)
                                (let ((_%e9317993280%_
                                       (gx#syntax-e _%tl9317893277%_)))
                                  (let ((_%tl9318193287%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9317993280%_)))
                                        (_%hd9318093284%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9317993280%_))))
                                    (if (gx#stx-null? _%tl9318193287%_)
                                        (_%__match9959399594%_
                                         _%e9317393260%_
                                         _%hd9317493264%_
                                         _%tl9317593267%_
                                         _%e9317693270%_
                                         _%hd9317793274%_
                                         _%tl9317893277%_
                                         _%e9317993280%_
                                         _%hd9318093284%_
                                         _%tl9318193287%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9316993198%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9316993198%_)))))
                        (let () (declare (not safe)) (_%g9316993198%_)))))
                (let () (declare (not safe)) (_%g9316993198%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx93315%_)
      (let* ((_%g9331893339%_
              (lambda (_%g9331993335%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9331993335%_)))
             (_%g9331793567%_
              (lambda (_%g9331993343%_)
                (if (gx#stx-pair? _%g9331993343%_)
                    (let ((_%e9332293346%_ (gx#syntax-e _%g9331993343%_)))
                      (let ((_%hd9332393350%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9332293346%_)))
                            (_%tl9332493353%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9332293346%_))))
                        (if (gx#stx-pair? _%tl9332493353%_)
                            (let ((_%e9332593356%_
                                   (gx#syntax-e _%tl9332493353%_)))
                              (let ((_%hd9332693360%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9332593356%_)))
                                    (_%tl9332793363%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9332593356%_))))
                                (if (gx#stx-pair? _%hd9332693360%_)
                                    (let ((_%e9332893366%_
                                           (gx#syntax-e _%hd9332693360%_)))
                                      (let ((_%hd9332993370%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9332893366%_)))
                                            (_%tl9333093373%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9332893366%_))))
                                        (if (gx#stx-pair? _%tl9333093373%_)
                                            (let ((_%e9333193376%_
                                                   (gx#syntax-e
                                                    _%tl9333093373%_)))
                                              (let ((_%hd9333293380%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9333193376%_)))
                                                    (_%tl9333393383%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9333193376%_))))
                                                (if (gx#stx-null?
                                                     _%tl9333393383%_)
                                                    (if (gx#stx-null?
                                                         _%tl9332793363%_)
                                                        ((lambda (_%L93386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L93388%_)
                   (let* ((_%g9340693414%_
                           (lambda (_%g9340793410%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9340793410%_)))
                          (_%g9340593563%_
                           (lambda (_%g9340793418%_)
                             ((lambda (_%L93421%_)
                                (let* ((_%g9343393441%_
                                        (lambda (_%g9343493437%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g9343493437%_)))
                                       (_%g9343293559%_
                                        (lambda (_%g9343493445%_)
                                          ((lambda (_%L93448%_)
                                             (let* ((_%g9346193469%_
                                                     (lambda (_%g9346293465%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g9346293465%_)))
                                                    (_%g9346093555%_
                                                     (lambda (_%g9346293473%_)
                                                       ((lambda (_%L93476%_)
                                                          (let* ((_%g9348993497%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g9349093493%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g9349093493%_)))
                         (_%g9348893551%_
                          (lambda (_%g9349093501%_)
                            ((lambda (_%L93504%_)
                               (let* ((_%g9351793525%_
                                       (lambda (_%g9351893521%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9351893521%_)))
                                      (_%g9351693547%_
                                       (lambda (_%g9351893529%_)
                                         ((lambda (_%L93532%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%L93448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%L93421%_
                                                          (cons _%L93388%_
                                                                (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'lambda)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'klass)
                              '())
                        (cons (cons (gx#datum->syntax '#f '##structure-ref)
                                    (cons (gx#datum->syntax '#f 'klass)
                                          (cons _%L93386%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L93388%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%L93476%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%L93421%_
                                                                (cons _%L93388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '#f '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda)
                        (cons (cons (gx#datum->syntax '#f 'klass) '())
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           '##unchecked-structure-ref)
                                          (cons (gx#datum->syntax '#f 'klass)
                                                (cons _%L93386%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%L93388%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%L93504%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%L93421%_ (cons _%L93388%_ (cons '#t '()))))
                  (cons (cons (gx#datum->syntax '#f 'lambda)
                              (cons (cons (gx#datum->syntax '#f 'klass)
                                          (cons (gx#datum->syntax '#f 'val)
                                                '()))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 '##structure-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'klass)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            (cons _%L93386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L93388%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L93532%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%L93421%_
                                    (cons _%L93388%_ (cons '#f '()))))
                        (cons (cons (gx#datum->syntax '#f 'lambda)
                                    (cons (cons (gx#datum->syntax '#f 'klass)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##unchecked-structure-set!)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'klass)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'val)
                          (cons _%L93386%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L93388%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9351893529%_))))
                                 (_%g9351693547%_
                                  (gx#stx-identifier
                                   _%L93388%_
                                   '"&"
                                   _%L93504%_))))
                             _%g9349093501%_))))
                    (_%g9348893551%_
                     (gx#stx-identifier _%L93388%_ _%L93448%_ '"-set!"))))
                _%g9346293473%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g9346093555%_
                                                (gx#stx-identifier
                                                 _%L93388%_
                                                 '"&"
                                                 _%L93448%_))))
                                           _%g9343493445%_))))
                                  (_%g9343293559%_
                                   (gx#stx-identifier
                                    _%L93388%_
                                    '"class-type-"
                                    _%L93388%_))))
                              _%g9340793418%_))))
                     (_%g9340593563%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9333293380%_
                 _%hd9332993370%_)
                (_%g9331893339%_ _%g9331993343%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9331893339%_
                                                     _%g9331993343%_))))
                                            (_%g9331893339%_
                                             _%g9331993343%_))))
                                    (_%g9331893339%_ _%g9331993343%_))))
                            (_%g9331893339%_ _%g9331993343%_))))
                    (_%g9331893339%_ _%g9331993343%_)))))
        (_%g9331793567%_ _%stx93315%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx93571%_)
      (let* ((_%g9357593604%_
              (lambda (_%g9357693600%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9357693600%_)))
             (_%g9357493704%_
              (lambda (_%g9357693608%_)
                (if (gx#stx-pair? _%g9357693608%_)
                    (let ((_%e9357993611%_ (gx#syntax-e _%g9357693608%_)))
                      (let ((_%hd9358093615%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9357993611%_)))
                            (_%tl9358193618%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9357993611%_))))
                        (if (gx#stx-pair/null? _%tl9358193618%_)
                            (let ((_g99806_
                                   (gx#syntax-split-splice
                                    _%tl9358193618%_
                                    '0)))
                              (begin
                                (let ((_g99807_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g99806_)
                                             (##vector-length _g99806_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g99807_ 2)))
                                      (error "Context expects 2 values"
                                             _g99807_)))
                                (let ((_%target9358293621%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g99806_ 0)))
                                      (_%tl9358493624%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g99806_ 1))))
                                  (if (gx#stx-null? _%tl9358493624%_)
                                      (letrec ((_%loop9358593627%_
                                                (lambda (_%hd9358393631%_
                                                         _%field9358993634%_
                                                         _%slot9359093636%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9358393631%_)
                                                      (let ((_%e9358693639%_
                                                             (gx#syntax-e
                                                              _%hd9358393631%_)))
                                                        (let ((_%lp-hd9358793643%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9358693639%_)))
                      (_%lp-tl9358893646%_
                       (let () (declare (not safe)) (##cdr _%e9358693639%_))))
                  (if (gx#stx-pair? _%lp-hd9358793643%_)
                      (let ((_%e9359393649%_
                             (gx#syntax-e _%lp-hd9358793643%_)))
                        (let ((_%hd9359493653%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9359393649%_)))
                              (_%tl9359593656%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9359393649%_))))
                          (if (gx#stx-pair? _%tl9359593656%_)
                              (let ((_%e9359693659%_
                                     (gx#syntax-e _%tl9359593656%_)))
                                (let ((_%hd9359793663%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9359693659%_)))
                                      (_%tl9359893666%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9359693659%_))))
                                  (if (gx#stx-null? _%tl9359893666%_)
                                      (_%loop9358593627%_
                                       _%lp-tl9358893646%_
                                       (cons _%hd9359793663%_
                                             _%field9358993634%_)
                                       (cons _%hd9359493653%_
                                             _%slot9359093636%_))
                                      (_%g9357593604%_ _%g9357693608%_))))
                              (_%g9357593604%_ _%g9357693608%_))))
                      (_%g9357593604%_ _%g9357693608%_))))
              (let ((_%field9359193669%_ (reverse _%field9358993634%_))
                    (_%slot9359293672%_ (reverse _%slot9359093636%_)))
                ((lambda (_%L93675%_ _%L93677%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L93675%_
                            _%L93677%_)
                           (let ((__tmp99808
                                  (lambda (_%g9369293696%_
                                           _%g9369393699%_
                                           _%g9369493701%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9369393699%_
                                                            (cons _%g9369293696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9369493701%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp99808
                              '()
                              _%L93675%_
                              _%L93677%_)))))
                 _%field9359193669%_
                 _%slot9359293672%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9358593627%_
                                         _%target9358293621%_
                                         '()
                                         '()))
                                      (_%g9357593604%_ _%g9357693608%_)))))
                            (_%g9357593604%_ _%g9357693608%_))))
                    (_%g9357593604%_ _%g9357693608%_)))))
        (_%g9357493704%_ _%$stx93571%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx93709%_)
      (let* ((_%g9371393747%_
              (lambda (_%g9371493743%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9371493743%_)))
             (_%g9371293858%_
              (lambda (_%g9371493751%_)
                (if (gx#stx-pair? _%g9371493751%_)
                    (let ((_%e9372193754%_ (gx#syntax-e _%g9371493751%_)))
                      (let ((_%hd9372293758%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9372193754%_)))
                            (_%tl9372393761%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9372193754%_))))
                        (if (gx#stx-pair? _%tl9372393761%_)
                            (let ((_%e9372493764%_
                                   (gx#syntax-e _%tl9372393761%_)))
                              (let ((_%hd9372593768%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9372493764%_)))
                                    (_%tl9372693771%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9372493764%_))))
                                (if (gx#stx-pair? _%tl9372693771%_)
                                    (let ((_%e9372793774%_
                                           (gx#syntax-e _%tl9372693771%_)))
                                      (let ((_%hd9372893778%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9372793774%_)))
                                            (_%tl9372993781%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9372793774%_))))
                                        (if (gx#stx-pair? _%tl9372993781%_)
                                            (let ((_%e9373093784%_
                                                   (gx#syntax-e
                                                    _%tl9372993781%_)))
                                              (let ((_%hd9373193788%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9373093784%_)))
                                                    (_%tl9373293791%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9373093784%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9373293791%_)
                                                    (let ((_%e9373393794%_
                                                           (gx#syntax-e
                                                            _%tl9373293791%_)))
                                                      (let ((_%hd9373493798%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9373393794%_)))
                    (_%tl9373593801%_
                     (let () (declare (not safe)) (##cdr _%e9373393794%_))))
                (if (gx#stx-pair? _%tl9373593801%_)
                    (let ((_%e9373693804%_ (gx#syntax-e _%tl9373593801%_)))
                      (let ((_%hd9373793808%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9373693804%_)))
                            (_%tl9373893811%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9373693804%_))))
                        (if (gx#stx-pair? _%tl9373893811%_)
                            (let ((_%e9373993814%_
                                   (gx#syntax-e _%tl9373893811%_)))
                              (let ((_%hd9374093818%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9373993814%_)))
                                    (_%tl9374193821%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9373993814%_))))
                                (if (gx#stx-null? _%tl9374193821%_)
                                    ((lambda (_%L93824%_
                                              _%L93826%_
                                              _%L93827%_
                                              _%L93828%_
                                              _%L93829%_
                                              _%L93830%_)
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
                                         (cons _%L93830%_ '()))
                                   (cons _%L93829%_ (cons '#f '()))))
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
                               (cons _%L93830%_
                                     (cons 'slot: (cons _%L93829%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L93830%_ '()))
                                         (cons (cons _%L93828%_
                                                     (cons _%L93830%_
                                                           (cons _%L93829%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L93830%_ '()))
                                               (cons (cons _%L93827%_
                                                           (cons _%L93830%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L93829%_
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
                                           (cons _%L93830%_ '()))
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
                                                     (cons (cons _%L93826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L93830%_
                               (cons _%L93829%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L93824%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L93830%_
                                     (cons _%L93829%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9374093818%_
                                     _%hd9373793808%_
                                     _%hd9373493798%_
                                     _%hd9373193788%_
                                     _%hd9372893778%_
                                     _%hd9372593768%_)
                                    (_%g9371393747%_ _%g9371493751%_))))
                            (_%g9371393747%_ _%g9371493751%_))))
                    (_%g9371393747%_ _%g9371493751%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9371393747%_
                                                     _%g9371493751%_))))
                                            (_%g9371393747%_
                                             _%g9371493751%_))))
                                    (_%g9371393747%_ _%g9371493751%_))))
                            (_%g9371393747%_ _%g9371493751%_))))
                    (_%g9371393747%_ _%g9371493751%_)))))
        (_%g9371293858%_ _%$stx93709%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx93862%_)
      (let* ((_%g9386693892%_
              (lambda (_%g9386793888%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9386793888%_)))
             (_%g9386593975%_
              (lambda (_%g9386793896%_)
                (if (gx#stx-pair? _%g9386793896%_)
                    (let ((_%e9387293899%_ (gx#syntax-e _%g9386793896%_)))
                      (let ((_%hd9387393903%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9387293899%_)))
                            (_%tl9387493906%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9387293899%_))))
                        (if (gx#stx-pair? _%tl9387493906%_)
                            (let ((_%e9387593909%_
                                   (gx#syntax-e _%tl9387493906%_)))
                              (let ((_%hd9387693913%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9387593909%_)))
                                    (_%tl9387793916%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9387593909%_))))
                                (if (gx#stx-pair? _%tl9387793916%_)
                                    (let ((_%e9387893919%_
                                           (gx#syntax-e _%tl9387793916%_)))
                                      (let ((_%hd9387993923%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9387893919%_)))
                                            (_%tl9388093926%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9387893919%_))))
                                        (if (gx#stx-pair? _%tl9388093926%_)
                                            (let ((_%e9388193929%_
                                                   (gx#syntax-e
                                                    _%tl9388093926%_)))
                                              (let ((_%hd9388293933%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9388193929%_)))
                                                    (_%tl9388393936%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9388193929%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9388393936%_)
                                                    (let ((_%e9388493939%_
                                                           (gx#syntax-e
                                                            _%tl9388393936%_)))
                                                      (let ((_%hd9388593943%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9388493939%_)))
                    (_%tl9388693946%_
                     (let () (declare (not safe)) (##cdr _%e9388493939%_))))
                (if (gx#stx-null? _%tl9388693946%_)
                    ((lambda (_%L93949%_ _%L93951%_ _%L93952%_ _%L93953%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L93953%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L93952%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L93951%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L93949%_
                                     (cons _%L93953%_ (cons _%L93952%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9388593943%_
                     _%hd9388293933%_
                     _%hd9387993923%_
                     _%hd9387693913%_)
                    (_%g9386693892%_ _%g9386793896%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9386693892%_
                                                     _%g9386793896%_))))
                                            (_%g9386693892%_
                                             _%g9386793896%_))))
                                    (_%g9386693892%_ _%g9386793896%_))))
                            (_%g9386693892%_ _%g9386793896%_))))
                    (_%g9386693892%_ _%g9386793896%_)))))
        (_%g9386593975%_ _%$stx93862%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx93979%_)
      (let* ((_%g9398394012%_
              (lambda (_%g9398494008%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9398494008%_)))
             (_%g9398294112%_
              (lambda (_%g9398494016%_)
                (if (gx#stx-pair? _%g9398494016%_)
                    (let ((_%e9398794019%_ (gx#syntax-e _%g9398494016%_)))
                      (let ((_%hd9398894023%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9398794019%_)))
                            (_%tl9398994026%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9398794019%_))))
                        (if (gx#stx-pair/null? _%tl9398994026%_)
                            (let ((_g99809_
                                   (gx#syntax-split-splice
                                    _%tl9398994026%_
                                    '0)))
                              (begin
                                (let ((_g99810_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g99809_)
                                             (##vector-length _g99809_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g99810_ 2)))
                                      (error "Context expects 2 values"
                                             _g99810_)))
                                (let ((_%target9399094029%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g99809_ 0)))
                                      (_%tl9399294032%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g99809_ 1))))
                                  (if (gx#stx-null? _%tl9399294032%_)
                                      (letrec ((_%loop9399394035%_
                                                (lambda (_%hd9399194039%_
                                                         _%name9399794042%_
                                                         _%t9399894044%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9399194039%_)
                                                      (let ((_%e9399494047%_
                                                             (gx#syntax-e
                                                              _%hd9399194039%_)))
                                                        (let ((_%lp-hd9399594051%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9399494047%_)))
                      (_%lp-tl9399694054%_
                       (let () (declare (not safe)) (##cdr _%e9399494047%_))))
                  (if (gx#stx-pair? _%lp-hd9399594051%_)
                      (let ((_%e9400194057%_
                             (gx#syntax-e _%lp-hd9399594051%_)))
                        (let ((_%hd9400294061%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9400194057%_)))
                              (_%tl9400394064%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9400194057%_))))
                          (if (gx#stx-pair? _%tl9400394064%_)
                              (let ((_%e9400494067%_
                                     (gx#syntax-e _%tl9400394064%_)))
                                (let ((_%hd9400594071%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9400494067%_)))
                                      (_%tl9400694074%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9400494067%_))))
                                  (if (gx#stx-null? _%tl9400694074%_)
                                      (_%loop9399394035%_
                                       _%lp-tl9399694054%_
                                       (cons _%hd9400594071%_
                                             _%name9399794042%_)
                                       (cons _%hd9400294061%_ _%t9399894044%_))
                                      (_%g9398394012%_ _%g9398494016%_))))
                              (_%g9398394012%_ _%g9398494016%_))))
                      (_%g9398394012%_ _%g9398494016%_))))
              (let ((_%name9399994077%_ (reverse _%name9399794042%_))
                    (_%t9400094080%_ (reverse _%t9399894044%_)))
                ((lambda (_%L94083%_ _%L94085%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L94083%_
                            _%L94085%_)
                           (let ((__tmp99811
                                  (lambda (_%g9410094104%_
                                           _%g9410194107%_
                                           _%g9410294109%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g9410194107%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g9410094104%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9410294109%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp99811
                              '()
                              _%L94083%_
                              _%L94085%_)))))
                 _%name9399994077%_
                 _%t9400094080%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9399394035%_
                                         _%target9399094029%_
                                         '()
                                         '()))
                                      (_%g9398394012%_ _%g9398494016%_)))))
                            (_%g9398394012%_ _%g9398494016%_))))
                    (_%g9398394012%_ _%g9398494016%_)))))
        (_%g9398294112%_ _%$stx93979%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx94117%_)
      (let* ((_%g9412194152%_
              (lambda (_%g9412294148%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9412294148%_)))
             (_%g9412094271%_
              (lambda (_%g9412294156%_)
                (if (gx#stx-pair? _%g9412294156%_)
                    (let ((_%e9412694159%_ (gx#syntax-e _%g9412294156%_)))
                      (let ((_%hd9412794163%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9412694159%_)))
                            (_%tl9412894166%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9412694159%_))))
                        (if (gx#stx-pair? _%tl9412894166%_)
                            (let ((_%e9412994169%_
                                   (gx#syntax-e _%tl9412894166%_)))
                              (let ((_%hd9413094173%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9412994169%_)))
                                    (_%tl9413194176%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9412994169%_))))
                                (if (gx#stx-pair? _%tl9413194176%_)
                                    (let ((_%e9413294179%_
                                           (gx#syntax-e _%tl9413194176%_)))
                                      (let ((_%hd9413394183%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9413294179%_)))
                                            (_%tl9413494186%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9413294179%_))))
                                        (if (gx#stx-pair? _%tl9413494186%_)
                                            (let ((_%e9413594189%_
                                                   (gx#syntax-e
                                                    _%tl9413494186%_)))
                                              (let ((_%hd9413694193%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9413594189%_)))
                                                    (_%tl9413794196%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9413594189%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd9413694193%_)
                                                    (let ((_g99812_
                                                           (gx#syntax-split-splice
                                                            _%hd9413694193%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g99813_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g99812_)
                             (##vector-length _g99812_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g99813_ 2)))
                      (error "Context expects 2 values" _g99813_)))
                (let ((_%target9413894199%_
                       (let () (declare (not safe)) (##vector-ref _g99812_ 0)))
                      (_%tl9414094202%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g99812_ 1))))
                  (if (gx#stx-null? _%tl9414094202%_)
                      (letrec ((_%loop9414194205%_
                                (lambda (_%hd9413994209%_ _%super9414594212%_)
                                  (if (gx#stx-pair? _%hd9413994209%_)
                                      (let ((_%e9414294215%_
                                             (gx#syntax-e _%hd9413994209%_)))
                                        (let ((_%lp-hd9414394219%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9414294215%_)))
                                              (_%lp-tl9414494222%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9414294215%_))))
                                          (_%loop9414194205%_
                                           _%lp-tl9414494222%_
                                           (cons _%lp-hd9414394219%_
                                                 _%super9414594212%_))))
                                      (let ((_%super9414694225%_
                                             (reverse _%super9414594212%_)))
                                        (if (gx#stx-null? _%tl9413794196%_)
                                            ((lambda (_%L94229%_
                                                      _%L94231%_
                                                      _%L94232%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L94232%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L94231%_
                                                 (cons (let ((__tmp99814
                                                              (lambda (_%g9425694259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9425794262%_)
                        (cons _%g9425694259%_ _%g9425794262%_))))
                 (declare (not safe))
                 (__foldr1 __tmp99814 '() _%L94229%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L94231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp99815
                                  (lambda (_%g9425494265%_ _%g9425594268%_)
                                    (cons _%g9425494265%_ _%g9425594268%_))))
                             (declare (not safe))
                             (__foldr1 __tmp99815 '() _%L94229%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super9414694225%_
                                             _%hd9413394183%_
                                             _%hd9413094173%_)
                                            (_%g9412194152%_
                                             _%g9412294156%_)))))))
                        (_%loop9414194205%_ _%target9413894199%_ '()))
                      (_%g9412194152%_ _%g9412294156%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9412194152%_
                                                     _%g9412294156%_))))
                                            (_%g9412194152%_
                                             _%g9412294156%_))))
                                    (_%g9412194152%_ _%g9412294156%_))))
                            (_%g9412194152%_ _%g9412294156%_))))
                    (_%g9412194152%_ _%g9412294156%_)))))
        (_%g9412094271%_ _%$stx94117%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx94276%_)
      (let* ((_%g9428094311%_
              (lambda (_%g9428194307%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9428194307%_)))
             (_%g9427994422%_
              (lambda (_%g9428194315%_)
                (if (gx#stx-pair? _%g9428194315%_)
                    (let ((_%e9428594318%_ (gx#syntax-e _%g9428194315%_)))
                      (let ((_%hd9428694322%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9428594318%_)))
                            (_%tl9428794325%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9428594318%_))))
                        (if (gx#stx-pair? _%tl9428794325%_)
                            (let ((_%e9428894328%_
                                   (gx#syntax-e _%tl9428794325%_)))
                              (let ((_%hd9428994332%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9428894328%_)))
                                    (_%tl9429094335%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9428894328%_))))
                                (if (gx#stx-pair? _%tl9429094335%_)
                                    (let ((_%e9429194338%_
                                           (gx#syntax-e _%tl9429094335%_)))
                                      (let ((_%hd9429294342%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9429194338%_)))
                                            (_%tl9429394345%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9429194338%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd9429294342%_)
                                            (let ((_g99816_
                                                   (gx#syntax-split-splice
                                                    _%hd9429294342%_
                                                    '0)))
                                              (begin
                                                (let ((_g99817_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g99816_)
                                                             (##vector-length
                                                              _g99816_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g99817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g99817_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target9429494348%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g99816_
                                                          0)))
                                                      (_%tl9429694351%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g99816_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl9429694351%_)
                                                      (letrec ((_%loop9429794354%_
                                                                (lambda (_%hd9429594358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super9430194361%_)
                          (if (gx#stx-pair? _%hd9429594358%_)
                              (let ((_%e9429894364%_
                                     (gx#syntax-e _%hd9429594358%_)))
                                (let ((_%lp-hd9429994368%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9429894364%_)))
                                      (_%lp-tl9430094371%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9429894364%_))))
                                  (_%loop9429794354%_
                                   _%lp-tl9430094371%_
                                   (cons _%lp-hd9429994368%_
                                         _%super9430194361%_))))
                              (let ((_%super9430294374%_
                                     (reverse _%super9430194361%_)))
                                (if (gx#stx-pair? _%tl9429394345%_)
                                    (let ((_%e9430394378%_
                                           (gx#syntax-e _%tl9429394345%_)))
                                      (let ((_%hd9430494382%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9430394378%_)))
                                            (_%tl9430594385%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9430394378%_))))
                                        (if (gx#stx-null? _%tl9430594385%_)
                                            ((lambda (_%L94388%_
                                                      _%L94390%_
                                                      _%L94391%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L94391%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L94391%_
                                                 (cons (let ((__tmp99818
                                                              (lambda (_%g9441394416%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9441494419%_)
                        (cons _%g9441394416%_ _%g9441494419%_))))
                 (declare (not safe))
                 (__foldr1 __tmp99818 '() _%L94390%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L94388%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9430494382%_
                                             _%super9430294374%_
                                             _%hd9428994332%_)
                                            (_%g9428094311%_
                                             _%g9428194315%_))))
                                    (_%g9428094311%_ _%g9428194315%_)))))))
                (_%loop9429794354%_ _%target9429494348%_ '()))
              (_%g9428094311%_ _%g9428194315%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g9428094311%_
                                             _%g9428194315%_))))
                                    (_%g9428094311%_ _%g9428194315%_))))
                            (_%g9428094311%_ _%g9428194315%_))))
                    (_%g9428094311%_ _%g9428194315%_)))))
        (_%g9427994422%_ _%$stx94276%_)))))
