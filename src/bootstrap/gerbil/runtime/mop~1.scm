(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx93010%_)
      (let* ((_%__stx9951499515%_ _%$stx93010%_)
             (_%g9301593044%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9951499515%_))))
        (let ((_%__kont9951799518%_
               (lambda (_%L93137%_ _%L93139%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L93139%_ (cons _%L93137%_ '())))
                             (cons _%L93137%_ '())))))
              (_%__kont9951999520%_
               (lambda (_%L93081%_ _%L93083%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L93081%_ (cons _%L93081%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L93083%_
                                                           (cons _%L93081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L93081%_ '())))
                                   '()))))))
          (let ((_%__match9954199542%_
                 (lambda (_%e9301993107%_
                          _%hd9302093111%_
                          _%tl9302193114%_
                          _%e9302293117%_
                          _%hd9302393121%_
                          _%tl9302493124%_
                          _%e9302593127%_
                          _%hd9302693131%_
                          _%tl9302793134%_)
                   (let ((_%L93137%_ _%hd9302693131%_)
                         (_%L93139%_ _%hd9302393121%_))
                     (if (or (gx#identifier? _%L93137%_)
                             (gx#stx-fixnum? _%L93137%_))
                         (_%__kont9951799518%_ _%L93137%_ _%L93139%_)
                         (_%__kont9951999520%_
                          _%hd9302693131%_
                          _%hd9302393121%_))))))
            (if (gx#stx-pair? _%__stx9951499515%_)
                (let ((_%e9301993107%_ (gx#syntax-e _%__stx9951499515%_)))
                  (let ((_%tl9302193114%_
                         (let () (declare (not safe)) (##cdr _%e9301993107%_)))
                        (_%hd9302093111%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9301993107%_))))
                    (if (gx#stx-pair? _%tl9302193114%_)
                        (let ((_%e9302293117%_ (gx#syntax-e _%tl9302193114%_)))
                          (let ((_%tl9302493124%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9302293117%_)))
                                (_%hd9302393121%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9302293117%_))))
                            (if (gx#stx-pair? _%tl9302493124%_)
                                (let ((_%e9302593127%_
                                       (gx#syntax-e _%tl9302493124%_)))
                                  (let ((_%tl9302793134%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9302593127%_)))
                                        (_%hd9302693131%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9302593127%_))))
                                    (if (gx#stx-null? _%tl9302793134%_)
                                        (_%__match9954199542%_
                                         _%e9301993107%_
                                         _%hd9302093111%_
                                         _%tl9302193114%_
                                         _%e9302293117%_
                                         _%hd9302393121%_
                                         _%tl9302493124%_
                                         _%e9302593127%_
                                         _%hd9302693131%_
                                         _%tl9302793134%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9301593044%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9301593044%_)))))
                        (let () (declare (not safe)) (_%g9301593044%_)))))
                (let () (declare (not safe)) (_%g9301593044%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx93162%_)
      (let* ((_%__stx9956499565%_ _%$stx93162%_)
             (_%g9316793196%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9956499565%_))))
        (let ((_%__kont9956799568%_
               (lambda (_%L93288%_ _%L93290%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L93290%_ (cons _%L93288%_ '())))
                             (cons '0 '())))))
              (_%__kont9956999570%_
               (lambda (_%L93233%_ _%L93235%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L93233%_ (cons _%L93233%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L93235%_
                                                           (cons _%L93233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match9959199592%_
                 (lambda (_%e9317193258%_
                          _%hd9317293262%_
                          _%tl9317393265%_
                          _%e9317493268%_
                          _%hd9317593272%_
                          _%tl9317693275%_
                          _%e9317793278%_
                          _%hd9317893282%_
                          _%tl9317993285%_)
                   (let ((_%L93288%_ _%hd9317893282%_)
                         (_%L93290%_ _%hd9317593272%_))
                     (if (or (gx#identifier? _%L93288%_)
                             (gx#stx-fixnum? _%L93288%_))
                         (_%__kont9956799568%_ _%L93288%_ _%L93290%_)
                         (_%__kont9956999570%_
                          _%hd9317893282%_
                          _%hd9317593272%_))))))
            (if (gx#stx-pair? _%__stx9956499565%_)
                (let ((_%e9317193258%_ (gx#syntax-e _%__stx9956499565%_)))
                  (let ((_%tl9317393265%_
                         (let () (declare (not safe)) (##cdr _%e9317193258%_)))
                        (_%hd9317293262%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9317193258%_))))
                    (if (gx#stx-pair? _%tl9317393265%_)
                        (let ((_%e9317493268%_ (gx#syntax-e _%tl9317393265%_)))
                          (let ((_%tl9317693275%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9317493268%_)))
                                (_%hd9317593272%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9317493268%_))))
                            (if (gx#stx-pair? _%tl9317693275%_)
                                (let ((_%e9317793278%_
                                       (gx#syntax-e _%tl9317693275%_)))
                                  (let ((_%tl9317993285%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9317793278%_)))
                                        (_%hd9317893282%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9317793278%_))))
                                    (if (gx#stx-null? _%tl9317993285%_)
                                        (_%__match9959199592%_
                                         _%e9317193258%_
                                         _%hd9317293262%_
                                         _%tl9317393265%_
                                         _%e9317493268%_
                                         _%hd9317593272%_
                                         _%tl9317693275%_
                                         _%e9317793278%_
                                         _%hd9317893282%_
                                         _%tl9317993285%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9316793196%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9316793196%_)))))
                        (let () (declare (not safe)) (_%g9316793196%_)))))
                (let () (declare (not safe)) (_%g9316793196%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx93313%_)
      (let* ((_%g9331693337%_
              (lambda (_%g9331793333%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9331793333%_)))
             (_%g9331593565%_
              (lambda (_%g9331793341%_)
                (if (gx#stx-pair? _%g9331793341%_)
                    (let ((_%e9332093344%_ (gx#syntax-e _%g9331793341%_)))
                      (let ((_%hd9332193348%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9332093344%_)))
                            (_%tl9332293351%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9332093344%_))))
                        (if (gx#stx-pair? _%tl9332293351%_)
                            (let ((_%e9332393354%_
                                   (gx#syntax-e _%tl9332293351%_)))
                              (let ((_%hd9332493358%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9332393354%_)))
                                    (_%tl9332593361%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9332393354%_))))
                                (if (gx#stx-pair? _%hd9332493358%_)
                                    (let ((_%e9332693364%_
                                           (gx#syntax-e _%hd9332493358%_)))
                                      (let ((_%hd9332793368%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9332693364%_)))
                                            (_%tl9332893371%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9332693364%_))))
                                        (if (gx#stx-pair? _%tl9332893371%_)
                                            (let ((_%e9332993374%_
                                                   (gx#syntax-e
                                                    _%tl9332893371%_)))
                                              (let ((_%hd9333093378%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9332993374%_)))
                                                    (_%tl9333193381%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9332993374%_))))
                                                (if (gx#stx-null?
                                                     _%tl9333193381%_)
                                                    (if (gx#stx-null?
                                                         _%tl9332593361%_)
                                                        ((lambda (_%L93384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L93386%_)
                   (let* ((_%g9340493412%_
                           (lambda (_%g9340593408%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9340593408%_)))
                          (_%g9340393561%_
                           (lambda (_%g9340593416%_)
                             ((lambda (_%L93419%_)
                                (let* ((_%g9343193439%_
                                        (lambda (_%g9343293435%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g9343293435%_)))
                                       (_%g9343093557%_
                                        (lambda (_%g9343293443%_)
                                          ((lambda (_%L93446%_)
                                             (let* ((_%g9345993467%_
                                                     (lambda (_%g9346093463%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g9346093463%_)))
                                                    (_%g9345893553%_
                                                     (lambda (_%g9346093471%_)
                                                       ((lambda (_%L93474%_)
                                                          (let* ((_%g9348793495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g9348893491%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g9348893491%_)))
                         (_%g9348693549%_
                          (lambda (_%g9348893499%_)
                            ((lambda (_%L93502%_)
                               (let* ((_%g9351593523%_
                                       (lambda (_%g9351693519%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9351693519%_)))
                                      (_%g9351493545%_
                                       (lambda (_%g9351693527%_)
                                         ((lambda (_%L93530%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%L93446%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%L93419%_
                                                          (cons _%L93386%_
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
                                          (cons _%L93384%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L93386%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%L93474%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%L93419%_
                                                                (cons _%L93386%_
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
                                                (cons _%L93384%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%L93386%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%L93502%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%L93419%_ (cons _%L93386%_ (cons '#t '()))))
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
                                                            (cons _%L93384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L93386%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L93530%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%L93419%_
                                    (cons _%L93386%_ (cons '#f '()))))
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
                          (cons _%L93384%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L93386%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9351693527%_))))
                                 (_%g9351493545%_
                                  (gx#stx-identifier
                                   _%L93386%_
                                   '"&"
                                   _%L93502%_))))
                             _%g9348893499%_))))
                    (_%g9348693549%_
                     (gx#stx-identifier _%L93386%_ _%L93446%_ '"-set!"))))
                _%g9346093471%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g9345893553%_
                                                (gx#stx-identifier
                                                 _%L93386%_
                                                 '"&"
                                                 _%L93446%_))))
                                           _%g9343293443%_))))
                                  (_%g9343093557%_
                                   (gx#stx-identifier
                                    _%L93386%_
                                    '"class-type-"
                                    _%L93386%_))))
                              _%g9340593416%_))))
                     (_%g9340393561%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9333093378%_
                 _%hd9332793368%_)
                (_%g9331693337%_ _%g9331793341%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9331693337%_
                                                     _%g9331793341%_))))
                                            (_%g9331693337%_
                                             _%g9331793341%_))))
                                    (_%g9331693337%_ _%g9331793341%_))))
                            (_%g9331693337%_ _%g9331793341%_))))
                    (_%g9331693337%_ _%g9331793341%_)))))
        (_%g9331593565%_ _%stx93313%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx93569%_)
      (let* ((_%g9357393602%_
              (lambda (_%g9357493598%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9357493598%_)))
             (_%g9357293702%_
              (lambda (_%g9357493606%_)
                (if (gx#stx-pair? _%g9357493606%_)
                    (let ((_%e9357793609%_ (gx#syntax-e _%g9357493606%_)))
                      (let ((_%hd9357893613%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9357793609%_)))
                            (_%tl9357993616%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9357793609%_))))
                        (if (gx#stx-pair/null? _%tl9357993616%_)
                            (let ((_g99804_
                                   (gx#syntax-split-splice
                                    _%tl9357993616%_
                                    '0)))
                              (begin
                                (let ((_g99805_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g99804_)
                                             (##vector-length _g99804_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g99805_ 2)))
                                      (error "Context expects 2 values"
                                             _g99805_)))
                                (let ((_%target9358093619%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g99804_ 0)))
                                      (_%tl9358293622%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g99804_ 1))))
                                  (if (gx#stx-null? _%tl9358293622%_)
                                      (letrec ((_%loop9358393625%_
                                                (lambda (_%hd9358193629%_
                                                         _%field9358793632%_
                                                         _%slot9358893634%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9358193629%_)
                                                      (let ((_%e9358493637%_
                                                             (gx#syntax-e
                                                              _%hd9358193629%_)))
                                                        (let ((_%lp-hd9358593641%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9358493637%_)))
                      (_%lp-tl9358693644%_
                       (let () (declare (not safe)) (##cdr _%e9358493637%_))))
                  (if (gx#stx-pair? _%lp-hd9358593641%_)
                      (let ((_%e9359193647%_
                             (gx#syntax-e _%lp-hd9358593641%_)))
                        (let ((_%hd9359293651%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9359193647%_)))
                              (_%tl9359393654%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9359193647%_))))
                          (if (gx#stx-pair? _%tl9359393654%_)
                              (let ((_%e9359493657%_
                                     (gx#syntax-e _%tl9359393654%_)))
                                (let ((_%hd9359593661%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9359493657%_)))
                                      (_%tl9359693664%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9359493657%_))))
                                  (if (gx#stx-null? _%tl9359693664%_)
                                      (_%loop9358393625%_
                                       _%lp-tl9358693644%_
                                       (cons _%hd9359593661%_
                                             _%field9358793632%_)
                                       (cons _%hd9359293651%_
                                             _%slot9358893634%_))
                                      (_%g9357393602%_ _%g9357493606%_))))
                              (_%g9357393602%_ _%g9357493606%_))))
                      (_%g9357393602%_ _%g9357493606%_))))
              (let ((_%field9358993667%_ (reverse _%field9358793632%_))
                    (_%slot9359093670%_ (reverse _%slot9358893634%_)))
                ((lambda (_%L93673%_ _%L93675%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L93673%_
                            _%L93675%_)
                           (let ((__tmp99806
                                  (lambda (_%g9369093694%_
                                           _%g9369193697%_
                                           _%g9369293699%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9369193697%_
                                                            (cons _%g9369093694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9369293699%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp99806
                              '()
                              _%L93673%_
                              _%L93675%_)))))
                 _%field9358993667%_
                 _%slot9359093670%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9358393625%_
                                         _%target9358093619%_
                                         '()
                                         '()))
                                      (_%g9357393602%_ _%g9357493606%_)))))
                            (_%g9357393602%_ _%g9357493606%_))))
                    (_%g9357393602%_ _%g9357493606%_)))))
        (_%g9357293702%_ _%$stx93569%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx93707%_)
      (let* ((_%g9371193745%_
              (lambda (_%g9371293741%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9371293741%_)))
             (_%g9371093856%_
              (lambda (_%g9371293749%_)
                (if (gx#stx-pair? _%g9371293749%_)
                    (let ((_%e9371993752%_ (gx#syntax-e _%g9371293749%_)))
                      (let ((_%hd9372093756%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9371993752%_)))
                            (_%tl9372193759%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9371993752%_))))
                        (if (gx#stx-pair? _%tl9372193759%_)
                            (let ((_%e9372293762%_
                                   (gx#syntax-e _%tl9372193759%_)))
                              (let ((_%hd9372393766%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9372293762%_)))
                                    (_%tl9372493769%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9372293762%_))))
                                (if (gx#stx-pair? _%tl9372493769%_)
                                    (let ((_%e9372593772%_
                                           (gx#syntax-e _%tl9372493769%_)))
                                      (let ((_%hd9372693776%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9372593772%_)))
                                            (_%tl9372793779%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9372593772%_))))
                                        (if (gx#stx-pair? _%tl9372793779%_)
                                            (let ((_%e9372893782%_
                                                   (gx#syntax-e
                                                    _%tl9372793779%_)))
                                              (let ((_%hd9372993786%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9372893782%_)))
                                                    (_%tl9373093789%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9372893782%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9373093789%_)
                                                    (let ((_%e9373193792%_
                                                           (gx#syntax-e
                                                            _%tl9373093789%_)))
                                                      (let ((_%hd9373293796%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9373193792%_)))
                    (_%tl9373393799%_
                     (let () (declare (not safe)) (##cdr _%e9373193792%_))))
                (if (gx#stx-pair? _%tl9373393799%_)
                    (let ((_%e9373493802%_ (gx#syntax-e _%tl9373393799%_)))
                      (let ((_%hd9373593806%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9373493802%_)))
                            (_%tl9373693809%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9373493802%_))))
                        (if (gx#stx-pair? _%tl9373693809%_)
                            (let ((_%e9373793812%_
                                   (gx#syntax-e _%tl9373693809%_)))
                              (let ((_%hd9373893816%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9373793812%_)))
                                    (_%tl9373993819%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9373793812%_))))
                                (if (gx#stx-null? _%tl9373993819%_)
                                    ((lambda (_%L93822%_
                                              _%L93824%_
                                              _%L93825%_
                                              _%L93826%_
                                              _%L93827%_
                                              _%L93828%_)
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
                                         (cons _%L93828%_ '()))
                                   (cons _%L93827%_ (cons '#f '()))))
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
                               (cons _%L93828%_
                                     (cons 'slot: (cons _%L93827%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L93828%_ '()))
                                         (cons (cons _%L93826%_
                                                     (cons _%L93828%_
                                                           (cons _%L93827%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L93828%_ '()))
                                               (cons (cons _%L93825%_
                                                           (cons _%L93828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L93827%_
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
                                           (cons _%L93828%_ '()))
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
                                                     (cons (cons _%L93824%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L93828%_
                               (cons _%L93827%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L93822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L93828%_
                                     (cons _%L93827%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9373893816%_
                                     _%hd9373593806%_
                                     _%hd9373293796%_
                                     _%hd9372993786%_
                                     _%hd9372693776%_
                                     _%hd9372393766%_)
                                    (_%g9371193745%_ _%g9371293749%_))))
                            (_%g9371193745%_ _%g9371293749%_))))
                    (_%g9371193745%_ _%g9371293749%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9371193745%_
                                                     _%g9371293749%_))))
                                            (_%g9371193745%_
                                             _%g9371293749%_))))
                                    (_%g9371193745%_ _%g9371293749%_))))
                            (_%g9371193745%_ _%g9371293749%_))))
                    (_%g9371193745%_ _%g9371293749%_)))))
        (_%g9371093856%_ _%$stx93707%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx93860%_)
      (let* ((_%g9386493890%_
              (lambda (_%g9386593886%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9386593886%_)))
             (_%g9386393973%_
              (lambda (_%g9386593894%_)
                (if (gx#stx-pair? _%g9386593894%_)
                    (let ((_%e9387093897%_ (gx#syntax-e _%g9386593894%_)))
                      (let ((_%hd9387193901%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9387093897%_)))
                            (_%tl9387293904%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9387093897%_))))
                        (if (gx#stx-pair? _%tl9387293904%_)
                            (let ((_%e9387393907%_
                                   (gx#syntax-e _%tl9387293904%_)))
                              (let ((_%hd9387493911%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9387393907%_)))
                                    (_%tl9387593914%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9387393907%_))))
                                (if (gx#stx-pair? _%tl9387593914%_)
                                    (let ((_%e9387693917%_
                                           (gx#syntax-e _%tl9387593914%_)))
                                      (let ((_%hd9387793921%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9387693917%_)))
                                            (_%tl9387893924%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9387693917%_))))
                                        (if (gx#stx-pair? _%tl9387893924%_)
                                            (let ((_%e9387993927%_
                                                   (gx#syntax-e
                                                    _%tl9387893924%_)))
                                              (let ((_%hd9388093931%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9387993927%_)))
                                                    (_%tl9388193934%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9387993927%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9388193934%_)
                                                    (let ((_%e9388293937%_
                                                           (gx#syntax-e
                                                            _%tl9388193934%_)))
                                                      (let ((_%hd9388393941%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9388293937%_)))
                    (_%tl9388493944%_
                     (let () (declare (not safe)) (##cdr _%e9388293937%_))))
                (if (gx#stx-null? _%tl9388493944%_)
                    ((lambda (_%L93947%_ _%L93949%_ _%L93950%_ _%L93951%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L93951%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L93950%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L93949%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L93947%_
                                     (cons _%L93951%_ (cons _%L93950%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9388393941%_
                     _%hd9388093931%_
                     _%hd9387793921%_
                     _%hd9387493911%_)
                    (_%g9386493890%_ _%g9386593894%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9386493890%_
                                                     _%g9386593894%_))))
                                            (_%g9386493890%_
                                             _%g9386593894%_))))
                                    (_%g9386493890%_ _%g9386593894%_))))
                            (_%g9386493890%_ _%g9386593894%_))))
                    (_%g9386493890%_ _%g9386593894%_)))))
        (_%g9386393973%_ _%$stx93860%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx93977%_)
      (let* ((_%g9398194010%_
              (lambda (_%g9398294006%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9398294006%_)))
             (_%g9398094110%_
              (lambda (_%g9398294014%_)
                (if (gx#stx-pair? _%g9398294014%_)
                    (let ((_%e9398594017%_ (gx#syntax-e _%g9398294014%_)))
                      (let ((_%hd9398694021%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9398594017%_)))
                            (_%tl9398794024%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9398594017%_))))
                        (if (gx#stx-pair/null? _%tl9398794024%_)
                            (let ((_g99807_
                                   (gx#syntax-split-splice
                                    _%tl9398794024%_
                                    '0)))
                              (begin
                                (let ((_g99808_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g99807_)
                                             (##vector-length _g99807_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g99808_ 2)))
                                      (error "Context expects 2 values"
                                             _g99808_)))
                                (let ((_%target9398894027%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g99807_ 0)))
                                      (_%tl9399094030%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g99807_ 1))))
                                  (if (gx#stx-null? _%tl9399094030%_)
                                      (letrec ((_%loop9399194033%_
                                                (lambda (_%hd9398994037%_
                                                         _%name9399594040%_
                                                         _%t9399694042%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9398994037%_)
                                                      (let ((_%e9399294045%_
                                                             (gx#syntax-e
                                                              _%hd9398994037%_)))
                                                        (let ((_%lp-hd9399394049%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9399294045%_)))
                      (_%lp-tl9399494052%_
                       (let () (declare (not safe)) (##cdr _%e9399294045%_))))
                  (if (gx#stx-pair? _%lp-hd9399394049%_)
                      (let ((_%e9399994055%_
                             (gx#syntax-e _%lp-hd9399394049%_)))
                        (let ((_%hd9400094059%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9399994055%_)))
                              (_%tl9400194062%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9399994055%_))))
                          (if (gx#stx-pair? _%tl9400194062%_)
                              (let ((_%e9400294065%_
                                     (gx#syntax-e _%tl9400194062%_)))
                                (let ((_%hd9400394069%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9400294065%_)))
                                      (_%tl9400494072%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9400294065%_))))
                                  (if (gx#stx-null? _%tl9400494072%_)
                                      (_%loop9399194033%_
                                       _%lp-tl9399494052%_
                                       (cons _%hd9400394069%_
                                             _%name9399594040%_)
                                       (cons _%hd9400094059%_ _%t9399694042%_))
                                      (_%g9398194010%_ _%g9398294014%_))))
                              (_%g9398194010%_ _%g9398294014%_))))
                      (_%g9398194010%_ _%g9398294014%_))))
              (let ((_%name9399794075%_ (reverse _%name9399594040%_))
                    (_%t9399894078%_ (reverse _%t9399694042%_)))
                ((lambda (_%L94081%_ _%L94083%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L94081%_
                            _%L94083%_)
                           (let ((__tmp99809
                                  (lambda (_%g9409894102%_
                                           _%g9409994105%_
                                           _%g9410094107%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g9409994105%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g9409894102%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9410094107%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp99809
                              '()
                              _%L94081%_
                              _%L94083%_)))))
                 _%name9399794075%_
                 _%t9399894078%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9399194033%_
                                         _%target9398894027%_
                                         '()
                                         '()))
                                      (_%g9398194010%_ _%g9398294014%_)))))
                            (_%g9398194010%_ _%g9398294014%_))))
                    (_%g9398194010%_ _%g9398294014%_)))))
        (_%g9398094110%_ _%$stx93977%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx94115%_)
      (let* ((_%g9411994150%_
              (lambda (_%g9412094146%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9412094146%_)))
             (_%g9411894269%_
              (lambda (_%g9412094154%_)
                (if (gx#stx-pair? _%g9412094154%_)
                    (let ((_%e9412494157%_ (gx#syntax-e _%g9412094154%_)))
                      (let ((_%hd9412594161%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9412494157%_)))
                            (_%tl9412694164%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9412494157%_))))
                        (if (gx#stx-pair? _%tl9412694164%_)
                            (let ((_%e9412794167%_
                                   (gx#syntax-e _%tl9412694164%_)))
                              (let ((_%hd9412894171%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9412794167%_)))
                                    (_%tl9412994174%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9412794167%_))))
                                (if (gx#stx-pair? _%tl9412994174%_)
                                    (let ((_%e9413094177%_
                                           (gx#syntax-e _%tl9412994174%_)))
                                      (let ((_%hd9413194181%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9413094177%_)))
                                            (_%tl9413294184%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9413094177%_))))
                                        (if (gx#stx-pair? _%tl9413294184%_)
                                            (let ((_%e9413394187%_
                                                   (gx#syntax-e
                                                    _%tl9413294184%_)))
                                              (let ((_%hd9413494191%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9413394187%_)))
                                                    (_%tl9413594194%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9413394187%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd9413494191%_)
                                                    (let ((_g99810_
                                                           (gx#syntax-split-splice
                                                            _%hd9413494191%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g99811_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g99810_)
                             (##vector-length _g99810_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g99811_ 2)))
                      (error "Context expects 2 values" _g99811_)))
                (let ((_%target9413694197%_
                       (let () (declare (not safe)) (##vector-ref _g99810_ 0)))
                      (_%tl9413894200%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g99810_ 1))))
                  (if (gx#stx-null? _%tl9413894200%_)
                      (letrec ((_%loop9413994203%_
                                (lambda (_%hd9413794207%_ _%super9414394210%_)
                                  (if (gx#stx-pair? _%hd9413794207%_)
                                      (let ((_%e9414094213%_
                                             (gx#syntax-e _%hd9413794207%_)))
                                        (let ((_%lp-hd9414194217%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9414094213%_)))
                                              (_%lp-tl9414294220%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9414094213%_))))
                                          (_%loop9413994203%_
                                           _%lp-tl9414294220%_
                                           (cons _%lp-hd9414194217%_
                                                 _%super9414394210%_))))
                                      (let ((_%super9414494223%_
                                             (reverse _%super9414394210%_)))
                                        (if (gx#stx-null? _%tl9413594194%_)
                                            ((lambda (_%L94227%_
                                                      _%L94229%_
                                                      _%L94230%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L94230%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L94229%_
                                                 (cons (let ((__tmp99812
                                                              (lambda (_%g9425494257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9425594260%_)
                        (cons _%g9425494257%_ _%g9425594260%_))))
                 (declare (not safe))
                 (__foldr1 __tmp99812 '() _%L94227%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L94229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp99813
                                  (lambda (_%g9425294263%_ _%g9425394266%_)
                                    (cons _%g9425294263%_ _%g9425394266%_))))
                             (declare (not safe))
                             (__foldr1 __tmp99813 '() _%L94227%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super9414494223%_
                                             _%hd9413194181%_
                                             _%hd9412894171%_)
                                            (_%g9411994150%_
                                             _%g9412094154%_)))))))
                        (_%loop9413994203%_ _%target9413694197%_ '()))
                      (_%g9411994150%_ _%g9412094154%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9411994150%_
                                                     _%g9412094154%_))))
                                            (_%g9411994150%_
                                             _%g9412094154%_))))
                                    (_%g9411994150%_ _%g9412094154%_))))
                            (_%g9411994150%_ _%g9412094154%_))))
                    (_%g9411994150%_ _%g9412094154%_)))))
        (_%g9411894269%_ _%$stx94115%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx94274%_)
      (let* ((_%g9427894309%_
              (lambda (_%g9427994305%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9427994305%_)))
             (_%g9427794420%_
              (lambda (_%g9427994313%_)
                (if (gx#stx-pair? _%g9427994313%_)
                    (let ((_%e9428394316%_ (gx#syntax-e _%g9427994313%_)))
                      (let ((_%hd9428494320%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9428394316%_)))
                            (_%tl9428594323%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9428394316%_))))
                        (if (gx#stx-pair? _%tl9428594323%_)
                            (let ((_%e9428694326%_
                                   (gx#syntax-e _%tl9428594323%_)))
                              (let ((_%hd9428794330%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9428694326%_)))
                                    (_%tl9428894333%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9428694326%_))))
                                (if (gx#stx-pair? _%tl9428894333%_)
                                    (let ((_%e9428994336%_
                                           (gx#syntax-e _%tl9428894333%_)))
                                      (let ((_%hd9429094340%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9428994336%_)))
                                            (_%tl9429194343%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9428994336%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd9429094340%_)
                                            (let ((_g99814_
                                                   (gx#syntax-split-splice
                                                    _%hd9429094340%_
                                                    '0)))
                                              (begin
                                                (let ((_g99815_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g99814_)
                                                             (##vector-length
                                                              _g99814_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g99815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g99815_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target9429294346%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g99814_
                                                          0)))
                                                      (_%tl9429494349%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g99814_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl9429494349%_)
                                                      (letrec ((_%loop9429594352%_
                                                                (lambda (_%hd9429394356%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super9429994359%_)
                          (if (gx#stx-pair? _%hd9429394356%_)
                              (let ((_%e9429694362%_
                                     (gx#syntax-e _%hd9429394356%_)))
                                (let ((_%lp-hd9429794366%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9429694362%_)))
                                      (_%lp-tl9429894369%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9429694362%_))))
                                  (_%loop9429594352%_
                                   _%lp-tl9429894369%_
                                   (cons _%lp-hd9429794366%_
                                         _%super9429994359%_))))
                              (let ((_%super9430094372%_
                                     (reverse _%super9429994359%_)))
                                (if (gx#stx-pair? _%tl9429194343%_)
                                    (let ((_%e9430194376%_
                                           (gx#syntax-e _%tl9429194343%_)))
                                      (let ((_%hd9430294380%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9430194376%_)))
                                            (_%tl9430394383%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9430194376%_))))
                                        (if (gx#stx-null? _%tl9430394383%_)
                                            ((lambda (_%L94386%_
                                                      _%L94388%_
                                                      _%L94389%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L94389%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L94389%_
                                                 (cons (let ((__tmp99816
                                                              (lambda (_%g9441194414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9441294417%_)
                        (cons _%g9441194414%_ _%g9441294417%_))))
                 (declare (not safe))
                 (__foldr1 __tmp99816 '() _%L94388%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L94386%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9430294380%_
                                             _%super9430094372%_
                                             _%hd9428794330%_)
                                            (_%g9427894309%_
                                             _%g9427994313%_))))
                                    (_%g9427894309%_ _%g9427994313%_)))))))
                (_%loop9429594352%_ _%target9429294346%_ '()))
              (_%g9427894309%_ _%g9427994313%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g9427894309%_
                                             _%g9427994313%_))))
                                    (_%g9427894309%_ _%g9427994313%_))))
                            (_%g9427894309%_ _%g9427994313%_))))
                    (_%g9427894309%_ _%g9427994313%_)))))
        (_%g9427794420%_ _%$stx94274%_)))))
