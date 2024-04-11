(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx93011%_)
      (let* ((_%__stx9951599516%_ _%$stx93011%_)
             (_%g9301693045%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9951599516%_))))
        (let ((_%__kont9951899519%_
               (lambda (_%L93138%_ _%L93140%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L93140%_ (cons _%L93138%_ '())))
                             (cons _%L93138%_ '())))))
              (_%__kont9952099521%_
               (lambda (_%L93082%_ _%L93084%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L93082%_ (cons _%L93082%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L93084%_
                                                           (cons _%L93082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L93082%_ '())))
                                   '()))))))
          (let ((_%__match9954299543%_
                 (lambda (_%e9302093108%_
                          _%hd9302193112%_
                          _%tl9302293115%_
                          _%e9302393118%_
                          _%hd9302493122%_
                          _%tl9302593125%_
                          _%e9302693128%_
                          _%hd9302793132%_
                          _%tl9302893135%_)
                   (let ((_%L93138%_ _%hd9302793132%_)
                         (_%L93140%_ _%hd9302493122%_))
                     (if (or (gx#identifier? _%L93138%_)
                             (gx#stx-fixnum? _%L93138%_))
                         (_%__kont9951899519%_ _%L93138%_ _%L93140%_)
                         (_%__kont9952099521%_
                          _%hd9302793132%_
                          _%hd9302493122%_))))))
            (if (gx#stx-pair? _%__stx9951599516%_)
                (let ((_%e9302093108%_ (gx#syntax-e _%__stx9951599516%_)))
                  (let ((_%tl9302293115%_
                         (let () (declare (not safe)) (##cdr _%e9302093108%_)))
                        (_%hd9302193112%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9302093108%_))))
                    (if (gx#stx-pair? _%tl9302293115%_)
                        (let ((_%e9302393118%_ (gx#syntax-e _%tl9302293115%_)))
                          (let ((_%tl9302593125%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9302393118%_)))
                                (_%hd9302493122%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9302393118%_))))
                            (if (gx#stx-pair? _%tl9302593125%_)
                                (let ((_%e9302693128%_
                                       (gx#syntax-e _%tl9302593125%_)))
                                  (let ((_%tl9302893135%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9302693128%_)))
                                        (_%hd9302793132%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9302693128%_))))
                                    (if (gx#stx-null? _%tl9302893135%_)
                                        (_%__match9954299543%_
                                         _%e9302093108%_
                                         _%hd9302193112%_
                                         _%tl9302293115%_
                                         _%e9302393118%_
                                         _%hd9302493122%_
                                         _%tl9302593125%_
                                         _%e9302693128%_
                                         _%hd9302793132%_
                                         _%tl9302893135%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9301693045%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9301693045%_)))))
                        (let () (declare (not safe)) (_%g9301693045%_)))))
                (let () (declare (not safe)) (_%g9301693045%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx93163%_)
      (let* ((_%__stx9956599566%_ _%$stx93163%_)
             (_%g9316893197%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9956599566%_))))
        (let ((_%__kont9956899569%_
               (lambda (_%L93289%_ _%L93291%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L93291%_ (cons _%L93289%_ '())))
                             (cons '0 '())))))
              (_%__kont9957099571%_
               (lambda (_%L93234%_ _%L93236%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L93234%_ (cons _%L93234%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L93236%_
                                                           (cons _%L93234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match9959299593%_
                 (lambda (_%e9317293259%_
                          _%hd9317393263%_
                          _%tl9317493266%_
                          _%e9317593269%_
                          _%hd9317693273%_
                          _%tl9317793276%_
                          _%e9317893279%_
                          _%hd9317993283%_
                          _%tl9318093286%_)
                   (let ((_%L93289%_ _%hd9317993283%_)
                         (_%L93291%_ _%hd9317693273%_))
                     (if (or (gx#identifier? _%L93289%_)
                             (gx#stx-fixnum? _%L93289%_))
                         (_%__kont9956899569%_ _%L93289%_ _%L93291%_)
                         (_%__kont9957099571%_
                          _%hd9317993283%_
                          _%hd9317693273%_))))))
            (if (gx#stx-pair? _%__stx9956599566%_)
                (let ((_%e9317293259%_ (gx#syntax-e _%__stx9956599566%_)))
                  (let ((_%tl9317493266%_
                         (let () (declare (not safe)) (##cdr _%e9317293259%_)))
                        (_%hd9317393263%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9317293259%_))))
                    (if (gx#stx-pair? _%tl9317493266%_)
                        (let ((_%e9317593269%_ (gx#syntax-e _%tl9317493266%_)))
                          (let ((_%tl9317793276%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9317593269%_)))
                                (_%hd9317693273%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9317593269%_))))
                            (if (gx#stx-pair? _%tl9317793276%_)
                                (let ((_%e9317893279%_
                                       (gx#syntax-e _%tl9317793276%_)))
                                  (let ((_%tl9318093286%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9317893279%_)))
                                        (_%hd9317993283%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9317893279%_))))
                                    (if (gx#stx-null? _%tl9318093286%_)
                                        (_%__match9959299593%_
                                         _%e9317293259%_
                                         _%hd9317393263%_
                                         _%tl9317493266%_
                                         _%e9317593269%_
                                         _%hd9317693273%_
                                         _%tl9317793276%_
                                         _%e9317893279%_
                                         _%hd9317993283%_
                                         _%tl9318093286%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9316893197%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9316893197%_)))))
                        (let () (declare (not safe)) (_%g9316893197%_)))))
                (let () (declare (not safe)) (_%g9316893197%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx93314%_)
      (let* ((_%g9331793338%_
              (lambda (_%g9331893334%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9331893334%_)))
             (_%g9331693566%_
              (lambda (_%g9331893342%_)
                (if (gx#stx-pair? _%g9331893342%_)
                    (let ((_%e9332193345%_ (gx#syntax-e _%g9331893342%_)))
                      (let ((_%hd9332293349%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9332193345%_)))
                            (_%tl9332393352%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9332193345%_))))
                        (if (gx#stx-pair? _%tl9332393352%_)
                            (let ((_%e9332493355%_
                                   (gx#syntax-e _%tl9332393352%_)))
                              (let ((_%hd9332593359%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9332493355%_)))
                                    (_%tl9332693362%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9332493355%_))))
                                (if (gx#stx-pair? _%hd9332593359%_)
                                    (let ((_%e9332793365%_
                                           (gx#syntax-e _%hd9332593359%_)))
                                      (let ((_%hd9332893369%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9332793365%_)))
                                            (_%tl9332993372%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9332793365%_))))
                                        (if (gx#stx-pair? _%tl9332993372%_)
                                            (let ((_%e9333093375%_
                                                   (gx#syntax-e
                                                    _%tl9332993372%_)))
                                              (let ((_%hd9333193379%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9333093375%_)))
                                                    (_%tl9333293382%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9333093375%_))))
                                                (if (gx#stx-null?
                                                     _%tl9333293382%_)
                                                    (if (gx#stx-null?
                                                         _%tl9332693362%_)
                                                        ((lambda (_%L93385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L93387%_)
                   (let* ((_%g9340593413%_
                           (lambda (_%g9340693409%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9340693409%_)))
                          (_%g9340493562%_
                           (lambda (_%g9340693417%_)
                             ((lambda (_%L93420%_)
                                (let* ((_%g9343293440%_
                                        (lambda (_%g9343393436%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g9343393436%_)))
                                       (_%g9343193558%_
                                        (lambda (_%g9343393444%_)
                                          ((lambda (_%L93447%_)
                                             (let* ((_%g9346093468%_
                                                     (lambda (_%g9346193464%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g9346193464%_)))
                                                    (_%g9345993554%_
                                                     (lambda (_%g9346193472%_)
                                                       ((lambda (_%L93475%_)
                                                          (let* ((_%g9348893496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g9348993492%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g9348993492%_)))
                         (_%g9348793550%_
                          (lambda (_%g9348993500%_)
                            ((lambda (_%L93503%_)
                               (let* ((_%g9351693524%_
                                       (lambda (_%g9351793520%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9351793520%_)))
                                      (_%g9351593546%_
                                       (lambda (_%g9351793528%_)
                                         ((lambda (_%L93531%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%L93447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%L93420%_
                                                          (cons _%L93387%_
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
                                          (cons _%L93385%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L93387%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%L93475%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%L93420%_
                                                                (cons _%L93387%_
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
                                                (cons _%L93385%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%L93387%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%L93503%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%L93420%_ (cons _%L93387%_ (cons '#t '()))))
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
                                                            (cons _%L93385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L93387%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L93531%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%L93420%_
                                    (cons _%L93387%_ (cons '#f '()))))
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
                          (cons _%L93385%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L93387%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9351793528%_))))
                                 (_%g9351593546%_
                                  (gx#stx-identifier
                                   _%L93387%_
                                   '"&"
                                   _%L93503%_))))
                             _%g9348993500%_))))
                    (_%g9348793550%_
                     (gx#stx-identifier _%L93387%_ _%L93447%_ '"-set!"))))
                _%g9346193472%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g9345993554%_
                                                (gx#stx-identifier
                                                 _%L93387%_
                                                 '"&"
                                                 _%L93447%_))))
                                           _%g9343393444%_))))
                                  (_%g9343193558%_
                                   (gx#stx-identifier
                                    _%L93387%_
                                    '"class-type-"
                                    _%L93387%_))))
                              _%g9340693417%_))))
                     (_%g9340493562%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9333193379%_
                 _%hd9332893369%_)
                (_%g9331793338%_ _%g9331893342%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9331793338%_
                                                     _%g9331893342%_))))
                                            (_%g9331793338%_
                                             _%g9331893342%_))))
                                    (_%g9331793338%_ _%g9331893342%_))))
                            (_%g9331793338%_ _%g9331893342%_))))
                    (_%g9331793338%_ _%g9331893342%_)))))
        (_%g9331693566%_ _%stx93314%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx93570%_)
      (let* ((_%g9357493603%_
              (lambda (_%g9357593599%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9357593599%_)))
             (_%g9357393703%_
              (lambda (_%g9357593607%_)
                (if (gx#stx-pair? _%g9357593607%_)
                    (let ((_%e9357893610%_ (gx#syntax-e _%g9357593607%_)))
                      (let ((_%hd9357993614%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9357893610%_)))
                            (_%tl9358093617%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9357893610%_))))
                        (if (gx#stx-pair/null? _%tl9358093617%_)
                            (let ((_g99806_
                                   (gx#syntax-split-splice
                                    _%tl9358093617%_
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
                                (let ((_%target9358193620%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g99806_ 0)))
                                      (_%tl9358393623%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g99806_ 1))))
                                  (if (gx#stx-null? _%tl9358393623%_)
                                      (letrec ((_%loop9358493626%_
                                                (lambda (_%hd9358293630%_
                                                         _%field9358893633%_
                                                         _%slot9358993635%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9358293630%_)
                                                      (let ((_%e9358593638%_
                                                             (gx#syntax-e
                                                              _%hd9358293630%_)))
                                                        (let ((_%lp-hd9358693642%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9358593638%_)))
                      (_%lp-tl9358793645%_
                       (let () (declare (not safe)) (##cdr _%e9358593638%_))))
                  (if (gx#stx-pair? _%lp-hd9358693642%_)
                      (let ((_%e9359293648%_
                             (gx#syntax-e _%lp-hd9358693642%_)))
                        (let ((_%hd9359393652%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9359293648%_)))
                              (_%tl9359493655%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9359293648%_))))
                          (if (gx#stx-pair? _%tl9359493655%_)
                              (let ((_%e9359593658%_
                                     (gx#syntax-e _%tl9359493655%_)))
                                (let ((_%hd9359693662%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9359593658%_)))
                                      (_%tl9359793665%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9359593658%_))))
                                  (if (gx#stx-null? _%tl9359793665%_)
                                      (_%loop9358493626%_
                                       _%lp-tl9358793645%_
                                       (cons _%hd9359693662%_
                                             _%field9358893633%_)
                                       (cons _%hd9359393652%_
                                             _%slot9358993635%_))
                                      (_%g9357493603%_ _%g9357593607%_))))
                              (_%g9357493603%_ _%g9357593607%_))))
                      (_%g9357493603%_ _%g9357593607%_))))
              (let ((_%field9359093668%_ (reverse _%field9358893633%_))
                    (_%slot9359193671%_ (reverse _%slot9358993635%_)))
                ((lambda (_%L93674%_ _%L93676%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L93674%_
                            _%L93676%_)
                           (let ((__tmp99808
                                  (lambda (_%g9369193695%_
                                           _%g9369293698%_
                                           _%g9369393700%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9369293698%_
                                                            (cons _%g9369193695%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9369393700%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp99808
                              '()
                              _%L93674%_
                              _%L93676%_)))))
                 _%field9359093668%_
                 _%slot9359193671%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9358493626%_
                                         _%target9358193620%_
                                         '()
                                         '()))
                                      (_%g9357493603%_ _%g9357593607%_)))))
                            (_%g9357493603%_ _%g9357593607%_))))
                    (_%g9357493603%_ _%g9357593607%_)))))
        (_%g9357393703%_ _%$stx93570%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx93708%_)
      (let* ((_%g9371293746%_
              (lambda (_%g9371393742%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9371393742%_)))
             (_%g9371193857%_
              (lambda (_%g9371393750%_)
                (if (gx#stx-pair? _%g9371393750%_)
                    (let ((_%e9372093753%_ (gx#syntax-e _%g9371393750%_)))
                      (let ((_%hd9372193757%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9372093753%_)))
                            (_%tl9372293760%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9372093753%_))))
                        (if (gx#stx-pair? _%tl9372293760%_)
                            (let ((_%e9372393763%_
                                   (gx#syntax-e _%tl9372293760%_)))
                              (let ((_%hd9372493767%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9372393763%_)))
                                    (_%tl9372593770%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9372393763%_))))
                                (if (gx#stx-pair? _%tl9372593770%_)
                                    (let ((_%e9372693773%_
                                           (gx#syntax-e _%tl9372593770%_)))
                                      (let ((_%hd9372793777%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9372693773%_)))
                                            (_%tl9372893780%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9372693773%_))))
                                        (if (gx#stx-pair? _%tl9372893780%_)
                                            (let ((_%e9372993783%_
                                                   (gx#syntax-e
                                                    _%tl9372893780%_)))
                                              (let ((_%hd9373093787%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9372993783%_)))
                                                    (_%tl9373193790%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9372993783%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9373193790%_)
                                                    (let ((_%e9373293793%_
                                                           (gx#syntax-e
                                                            _%tl9373193790%_)))
                                                      (let ((_%hd9373393797%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9373293793%_)))
                    (_%tl9373493800%_
                     (let () (declare (not safe)) (##cdr _%e9373293793%_))))
                (if (gx#stx-pair? _%tl9373493800%_)
                    (let ((_%e9373593803%_ (gx#syntax-e _%tl9373493800%_)))
                      (let ((_%hd9373693807%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9373593803%_)))
                            (_%tl9373793810%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9373593803%_))))
                        (if (gx#stx-pair? _%tl9373793810%_)
                            (let ((_%e9373893813%_
                                   (gx#syntax-e _%tl9373793810%_)))
                              (let ((_%hd9373993817%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9373893813%_)))
                                    (_%tl9374093820%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9373893813%_))))
                                (if (gx#stx-null? _%tl9374093820%_)
                                    ((lambda (_%L93823%_
                                              _%L93825%_
                                              _%L93826%_
                                              _%L93827%_
                                              _%L93828%_
                                              _%L93829%_)
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
                                         (cons _%L93829%_ '()))
                                   (cons _%L93828%_ (cons '#f '()))))
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
                               (cons _%L93829%_
                                     (cons 'slot: (cons _%L93828%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L93829%_ '()))
                                         (cons (cons _%L93827%_
                                                     (cons _%L93829%_
                                                           (cons _%L93828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L93829%_ '()))
                                               (cons (cons _%L93826%_
                                                           (cons _%L93829%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L93828%_
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
                                           (cons _%L93829%_ '()))
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
                                                     (cons (cons _%L93825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L93829%_
                               (cons _%L93828%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L93823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L93829%_
                                     (cons _%L93828%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9373993817%_
                                     _%hd9373693807%_
                                     _%hd9373393797%_
                                     _%hd9373093787%_
                                     _%hd9372793777%_
                                     _%hd9372493767%_)
                                    (_%g9371293746%_ _%g9371393750%_))))
                            (_%g9371293746%_ _%g9371393750%_))))
                    (_%g9371293746%_ _%g9371393750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9371293746%_
                                                     _%g9371393750%_))))
                                            (_%g9371293746%_
                                             _%g9371393750%_))))
                                    (_%g9371293746%_ _%g9371393750%_))))
                            (_%g9371293746%_ _%g9371393750%_))))
                    (_%g9371293746%_ _%g9371393750%_)))))
        (_%g9371193857%_ _%$stx93708%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx93861%_)
      (let* ((_%g9386593891%_
              (lambda (_%g9386693887%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9386693887%_)))
             (_%g9386493974%_
              (lambda (_%g9386693895%_)
                (if (gx#stx-pair? _%g9386693895%_)
                    (let ((_%e9387193898%_ (gx#syntax-e _%g9386693895%_)))
                      (let ((_%hd9387293902%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9387193898%_)))
                            (_%tl9387393905%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9387193898%_))))
                        (if (gx#stx-pair? _%tl9387393905%_)
                            (let ((_%e9387493908%_
                                   (gx#syntax-e _%tl9387393905%_)))
                              (let ((_%hd9387593912%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9387493908%_)))
                                    (_%tl9387693915%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9387493908%_))))
                                (if (gx#stx-pair? _%tl9387693915%_)
                                    (let ((_%e9387793918%_
                                           (gx#syntax-e _%tl9387693915%_)))
                                      (let ((_%hd9387893922%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9387793918%_)))
                                            (_%tl9387993925%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9387793918%_))))
                                        (if (gx#stx-pair? _%tl9387993925%_)
                                            (let ((_%e9388093928%_
                                                   (gx#syntax-e
                                                    _%tl9387993925%_)))
                                              (let ((_%hd9388193932%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9388093928%_)))
                                                    (_%tl9388293935%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9388093928%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9388293935%_)
                                                    (let ((_%e9388393938%_
                                                           (gx#syntax-e
                                                            _%tl9388293935%_)))
                                                      (let ((_%hd9388493942%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9388393938%_)))
                    (_%tl9388593945%_
                     (let () (declare (not safe)) (##cdr _%e9388393938%_))))
                (if (gx#stx-null? _%tl9388593945%_)
                    ((lambda (_%L93948%_ _%L93950%_ _%L93951%_ _%L93952%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L93952%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L93951%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L93950%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L93948%_
                                     (cons _%L93952%_ (cons _%L93951%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9388493942%_
                     _%hd9388193932%_
                     _%hd9387893922%_
                     _%hd9387593912%_)
                    (_%g9386593891%_ _%g9386693895%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9386593891%_
                                                     _%g9386693895%_))))
                                            (_%g9386593891%_
                                             _%g9386693895%_))))
                                    (_%g9386593891%_ _%g9386693895%_))))
                            (_%g9386593891%_ _%g9386693895%_))))
                    (_%g9386593891%_ _%g9386693895%_)))))
        (_%g9386493974%_ _%$stx93861%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx93978%_)
      (let* ((_%g9398294011%_
              (lambda (_%g9398394007%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9398394007%_)))
             (_%g9398194111%_
              (lambda (_%g9398394015%_)
                (if (gx#stx-pair? _%g9398394015%_)
                    (let ((_%e9398694018%_ (gx#syntax-e _%g9398394015%_)))
                      (let ((_%hd9398794022%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9398694018%_)))
                            (_%tl9398894025%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9398694018%_))))
                        (if (gx#stx-pair/null? _%tl9398894025%_)
                            (let ((_g99809_
                                   (gx#syntax-split-splice
                                    _%tl9398894025%_
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
                                (let ((_%target9398994028%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g99809_ 0)))
                                      (_%tl9399194031%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g99809_ 1))))
                                  (if (gx#stx-null? _%tl9399194031%_)
                                      (letrec ((_%loop9399294034%_
                                                (lambda (_%hd9399094038%_
                                                         _%name9399694041%_
                                                         _%t9399794043%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9399094038%_)
                                                      (let ((_%e9399394046%_
                                                             (gx#syntax-e
                                                              _%hd9399094038%_)))
                                                        (let ((_%lp-hd9399494050%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9399394046%_)))
                      (_%lp-tl9399594053%_
                       (let () (declare (not safe)) (##cdr _%e9399394046%_))))
                  (if (gx#stx-pair? _%lp-hd9399494050%_)
                      (let ((_%e9400094056%_
                             (gx#syntax-e _%lp-hd9399494050%_)))
                        (let ((_%hd9400194060%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9400094056%_)))
                              (_%tl9400294063%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9400094056%_))))
                          (if (gx#stx-pair? _%tl9400294063%_)
                              (let ((_%e9400394066%_
                                     (gx#syntax-e _%tl9400294063%_)))
                                (let ((_%hd9400494070%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9400394066%_)))
                                      (_%tl9400594073%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9400394066%_))))
                                  (if (gx#stx-null? _%tl9400594073%_)
                                      (_%loop9399294034%_
                                       _%lp-tl9399594053%_
                                       (cons _%hd9400494070%_
                                             _%name9399694041%_)
                                       (cons _%hd9400194060%_ _%t9399794043%_))
                                      (_%g9398294011%_ _%g9398394015%_))))
                              (_%g9398294011%_ _%g9398394015%_))))
                      (_%g9398294011%_ _%g9398394015%_))))
              (let ((_%name9399894076%_ (reverse _%name9399694041%_))
                    (_%t9399994079%_ (reverse _%t9399794043%_)))
                ((lambda (_%L94082%_ _%L94084%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L94082%_
                            _%L94084%_)
                           (let ((__tmp99811
                                  (lambda (_%g9409994103%_
                                           _%g9410094106%_
                                           _%g9410194108%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g9410094106%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g9409994103%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9410194108%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp99811
                              '()
                              _%L94082%_
                              _%L94084%_)))))
                 _%name9399894076%_
                 _%t9399994079%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9399294034%_
                                         _%target9398994028%_
                                         '()
                                         '()))
                                      (_%g9398294011%_ _%g9398394015%_)))))
                            (_%g9398294011%_ _%g9398394015%_))))
                    (_%g9398294011%_ _%g9398394015%_)))))
        (_%g9398194111%_ _%$stx93978%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx94116%_)
      (let* ((_%g9412094151%_
              (lambda (_%g9412194147%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9412194147%_)))
             (_%g9411994270%_
              (lambda (_%g9412194155%_)
                (if (gx#stx-pair? _%g9412194155%_)
                    (let ((_%e9412594158%_ (gx#syntax-e _%g9412194155%_)))
                      (let ((_%hd9412694162%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9412594158%_)))
                            (_%tl9412794165%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9412594158%_))))
                        (if (gx#stx-pair? _%tl9412794165%_)
                            (let ((_%e9412894168%_
                                   (gx#syntax-e _%tl9412794165%_)))
                              (let ((_%hd9412994172%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9412894168%_)))
                                    (_%tl9413094175%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9412894168%_))))
                                (if (gx#stx-pair? _%tl9413094175%_)
                                    (let ((_%e9413194178%_
                                           (gx#syntax-e _%tl9413094175%_)))
                                      (let ((_%hd9413294182%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9413194178%_)))
                                            (_%tl9413394185%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9413194178%_))))
                                        (if (gx#stx-pair? _%tl9413394185%_)
                                            (let ((_%e9413494188%_
                                                   (gx#syntax-e
                                                    _%tl9413394185%_)))
                                              (let ((_%hd9413594192%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9413494188%_)))
                                                    (_%tl9413694195%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9413494188%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd9413594192%_)
                                                    (let ((_g99812_
                                                           (gx#syntax-split-splice
                                                            _%hd9413594192%_
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
                (let ((_%target9413794198%_
                       (let () (declare (not safe)) (##vector-ref _g99812_ 0)))
                      (_%tl9413994201%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g99812_ 1))))
                  (if (gx#stx-null? _%tl9413994201%_)
                      (letrec ((_%loop9414094204%_
                                (lambda (_%hd9413894208%_ _%super9414494211%_)
                                  (if (gx#stx-pair? _%hd9413894208%_)
                                      (let ((_%e9414194214%_
                                             (gx#syntax-e _%hd9413894208%_)))
                                        (let ((_%lp-hd9414294218%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9414194214%_)))
                                              (_%lp-tl9414394221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9414194214%_))))
                                          (_%loop9414094204%_
                                           _%lp-tl9414394221%_
                                           (cons _%lp-hd9414294218%_
                                                 _%super9414494211%_))))
                                      (let ((_%super9414594224%_
                                             (reverse _%super9414494211%_)))
                                        (if (gx#stx-null? _%tl9413694195%_)
                                            ((lambda (_%L94228%_
                                                      _%L94230%_
                                                      _%L94231%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L94231%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L94230%_
                                                 (cons (let ((__tmp99814
                                                              (lambda (_%g9425594258%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9425694261%_)
                        (cons _%g9425594258%_ _%g9425694261%_))))
                 (declare (not safe))
                 (__foldr1 __tmp99814 '() _%L94228%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L94230%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp99815
                                  (lambda (_%g9425394264%_ _%g9425494267%_)
                                    (cons _%g9425394264%_ _%g9425494267%_))))
                             (declare (not safe))
                             (__foldr1 __tmp99815 '() _%L94228%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super9414594224%_
                                             _%hd9413294182%_
                                             _%hd9412994172%_)
                                            (_%g9412094151%_
                                             _%g9412194155%_)))))))
                        (_%loop9414094204%_ _%target9413794198%_ '()))
                      (_%g9412094151%_ _%g9412194155%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9412094151%_
                                                     _%g9412194155%_))))
                                            (_%g9412094151%_
                                             _%g9412194155%_))))
                                    (_%g9412094151%_ _%g9412194155%_))))
                            (_%g9412094151%_ _%g9412194155%_))))
                    (_%g9412094151%_ _%g9412194155%_)))))
        (_%g9411994270%_ _%$stx94116%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx94275%_)
      (let* ((_%g9427994310%_
              (lambda (_%g9428094306%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9428094306%_)))
             (_%g9427894421%_
              (lambda (_%g9428094314%_)
                (if (gx#stx-pair? _%g9428094314%_)
                    (let ((_%e9428494317%_ (gx#syntax-e _%g9428094314%_)))
                      (let ((_%hd9428594321%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9428494317%_)))
                            (_%tl9428694324%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9428494317%_))))
                        (if (gx#stx-pair? _%tl9428694324%_)
                            (let ((_%e9428794327%_
                                   (gx#syntax-e _%tl9428694324%_)))
                              (let ((_%hd9428894331%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9428794327%_)))
                                    (_%tl9428994334%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9428794327%_))))
                                (if (gx#stx-pair? _%tl9428994334%_)
                                    (let ((_%e9429094337%_
                                           (gx#syntax-e _%tl9428994334%_)))
                                      (let ((_%hd9429194341%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9429094337%_)))
                                            (_%tl9429294344%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9429094337%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd9429194341%_)
                                            (let ((_g99816_
                                                   (gx#syntax-split-splice
                                                    _%hd9429194341%_
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
                                                (let ((_%target9429394347%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g99816_
                                                          0)))
                                                      (_%tl9429594350%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g99816_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl9429594350%_)
                                                      (letrec ((_%loop9429694353%_
                                                                (lambda (_%hd9429494357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super9430094360%_)
                          (if (gx#stx-pair? _%hd9429494357%_)
                              (let ((_%e9429794363%_
                                     (gx#syntax-e _%hd9429494357%_)))
                                (let ((_%lp-hd9429894367%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9429794363%_)))
                                      (_%lp-tl9429994370%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9429794363%_))))
                                  (_%loop9429694353%_
                                   _%lp-tl9429994370%_
                                   (cons _%lp-hd9429894367%_
                                         _%super9430094360%_))))
                              (let ((_%super9430194373%_
                                     (reverse _%super9430094360%_)))
                                (if (gx#stx-pair? _%tl9429294344%_)
                                    (let ((_%e9430294377%_
                                           (gx#syntax-e _%tl9429294344%_)))
                                      (let ((_%hd9430394381%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9430294377%_)))
                                            (_%tl9430494384%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9430294377%_))))
                                        (if (gx#stx-null? _%tl9430494384%_)
                                            ((lambda (_%L94387%_
                                                      _%L94389%_
                                                      _%L94390%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L94390%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L94390%_
                                                 (cons (let ((__tmp99818
                                                              (lambda (_%g9441294415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9441394418%_)
                        (cons _%g9441294415%_ _%g9441394418%_))))
                 (declare (not safe))
                 (__foldr1 __tmp99818 '() _%L94389%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L94387%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9430394381%_
                                             _%super9430194373%_
                                             _%hd9428894331%_)
                                            (_%g9427994310%_
                                             _%g9428094314%_))))
                                    (_%g9427994310%_ _%g9428094314%_)))))))
                (_%loop9429694353%_ _%target9429394347%_ '()))
              (_%g9427994310%_ _%g9428094314%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g9427994310%_
                                             _%g9428094314%_))))
                                    (_%g9427994310%_ _%g9428094314%_))))
                            (_%g9427994310%_ _%g9428094314%_))))
                    (_%g9427994310%_ _%g9428094314%_)))))
        (_%g9427894421%_ _%$stx94275%_)))))
