(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx95821%_)
      (let* ((_%__stx102372102373%_ _%$stx95821%_)
             (_%g9582695855%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx102372102373%_))))
        (let ((_%__kont102375102376%_
               (lambda (_%L95948%_ _%L95950%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L95950%_ (cons _%L95948%_ '())))
                             (cons _%L95948%_ '())))))
              (_%__kont102377102378%_
               (lambda (_%L95892%_ _%L95894%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L95892%_ (cons _%L95892%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L95894%_
                                                           (cons _%L95892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L95892%_ '())))
                                   '()))))))
          (let ((_%__match102399102400%_
                 (lambda (_%e9583095918%_
                          _%hd9583195922%_
                          _%tl9583295925%_
                          _%e9583395928%_
                          _%hd9583495932%_
                          _%tl9583595935%_
                          _%e9583695938%_
                          _%hd9583795942%_
                          _%tl9583895945%_)
                   (let ((_%L95948%_ _%hd9583795942%_)
                         (_%L95950%_ _%hd9583495932%_))
                     (if (or (gx#identifier? _%L95948%_)
                             (gx#stx-fixnum? _%L95948%_))
                         (_%__kont102375102376%_ _%L95948%_ _%L95950%_)
                         (_%__kont102377102378%_
                          _%hd9583795942%_
                          _%hd9583495932%_))))))
            (if (gx#stx-pair? _%__stx102372102373%_)
                (let ((_%e9583095918%_ (gx#syntax-e _%__stx102372102373%_)))
                  (let ((_%tl9583295925%_
                         (let () (declare (not safe)) (##cdr _%e9583095918%_)))
                        (_%hd9583195922%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9583095918%_))))
                    (if (gx#stx-pair? _%tl9583295925%_)
                        (let ((_%e9583395928%_ (gx#syntax-e _%tl9583295925%_)))
                          (let ((_%tl9583595935%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9583395928%_)))
                                (_%hd9583495932%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9583395928%_))))
                            (if (gx#stx-pair? _%tl9583595935%_)
                                (let ((_%e9583695938%_
                                       (gx#syntax-e _%tl9583595935%_)))
                                  (let ((_%tl9583895945%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9583695938%_)))
                                        (_%hd9583795942%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9583695938%_))))
                                    (if (gx#stx-null? _%tl9583895945%_)
                                        (_%__match102399102400%_
                                         _%e9583095918%_
                                         _%hd9583195922%_
                                         _%tl9583295925%_
                                         _%e9583395928%_
                                         _%hd9583495932%_
                                         _%tl9583595935%_
                                         _%e9583695938%_
                                         _%hd9583795942%_
                                         _%tl9583895945%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9582695855%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9582695855%_)))))
                        (let () (declare (not safe)) (_%g9582695855%_)))))
                (let () (declare (not safe)) (_%g9582695855%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx95973%_)
      (let* ((_%__stx102422102423%_ _%$stx95973%_)
             (_%g9597896007%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx102422102423%_))))
        (let ((_%__kont102425102426%_
               (lambda (_%L96099%_ _%L96101%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L96101%_ (cons _%L96099%_ '())))
                             (cons '0 '())))))
              (_%__kont102427102428%_
               (lambda (_%L96044%_ _%L96046%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L96044%_ (cons _%L96044%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L96046%_
                                                           (cons _%L96044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match102449102450%_
                 (lambda (_%e9598296069%_
                          _%hd9598396073%_
                          _%tl9598496076%_
                          _%e9598596079%_
                          _%hd9598696083%_
                          _%tl9598796086%_
                          _%e9598896089%_
                          _%hd9598996093%_
                          _%tl9599096096%_)
                   (let ((_%L96099%_ _%hd9598996093%_)
                         (_%L96101%_ _%hd9598696083%_))
                     (if (or (gx#identifier? _%L96099%_)
                             (gx#stx-fixnum? _%L96099%_))
                         (_%__kont102425102426%_ _%L96099%_ _%L96101%_)
                         (_%__kont102427102428%_
                          _%hd9598996093%_
                          _%hd9598696083%_))))))
            (if (gx#stx-pair? _%__stx102422102423%_)
                (let ((_%e9598296069%_ (gx#syntax-e _%__stx102422102423%_)))
                  (let ((_%tl9598496076%_
                         (let () (declare (not safe)) (##cdr _%e9598296069%_)))
                        (_%hd9598396073%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9598296069%_))))
                    (if (gx#stx-pair? _%tl9598496076%_)
                        (let ((_%e9598596079%_ (gx#syntax-e _%tl9598496076%_)))
                          (let ((_%tl9598796086%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9598596079%_)))
                                (_%hd9598696083%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9598596079%_))))
                            (if (gx#stx-pair? _%tl9598796086%_)
                                (let ((_%e9598896089%_
                                       (gx#syntax-e _%tl9598796086%_)))
                                  (let ((_%tl9599096096%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9598896089%_)))
                                        (_%hd9598996093%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9598896089%_))))
                                    (if (gx#stx-null? _%tl9599096096%_)
                                        (_%__match102449102450%_
                                         _%e9598296069%_
                                         _%hd9598396073%_
                                         _%tl9598496076%_
                                         _%e9598596079%_
                                         _%hd9598696083%_
                                         _%tl9598796086%_
                                         _%e9598896089%_
                                         _%hd9598996093%_
                                         _%tl9599096096%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9597896007%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9597896007%_)))))
                        (let () (declare (not safe)) (_%g9597896007%_)))))
                (let () (declare (not safe)) (_%g9597896007%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx96124%_)
      (let* ((_%g9612796148%_
              (lambda (_%g9612896144%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9612896144%_)))
             (_%g9612696376%_
              (lambda (_%g9612896152%_)
                (if (gx#stx-pair? _%g9612896152%_)
                    (let ((_%e9613196155%_ (gx#syntax-e _%g9612896152%_)))
                      (let ((_%hd9613296159%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9613196155%_)))
                            (_%tl9613396162%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9613196155%_))))
                        (if (gx#stx-pair? _%tl9613396162%_)
                            (let ((_%e9613496165%_
                                   (gx#syntax-e _%tl9613396162%_)))
                              (let ((_%hd9613596169%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9613496165%_)))
                                    (_%tl9613696172%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9613496165%_))))
                                (if (gx#stx-pair? _%hd9613596169%_)
                                    (let ((_%e9613796175%_
                                           (gx#syntax-e _%hd9613596169%_)))
                                      (let ((_%hd9613896179%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9613796175%_)))
                                            (_%tl9613996182%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9613796175%_))))
                                        (if (gx#stx-pair? _%tl9613996182%_)
                                            (let ((_%e9614096185%_
                                                   (gx#syntax-e
                                                    _%tl9613996182%_)))
                                              (let ((_%hd9614196189%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9614096185%_)))
                                                    (_%tl9614296192%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9614096185%_))))
                                                (if (gx#stx-null?
                                                     _%tl9614296192%_)
                                                    (if (gx#stx-null?
                                                         _%tl9613696172%_)
                                                        ((lambda (_%L96195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L96197%_)
                   (let* ((_%g9621596223%_
                           (lambda (_%g9621696219%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9621696219%_)))
                          (_%g9621496372%_
                           (lambda (_%g9621696227%_)
                             ((lambda (_%L96230%_)
                                (let* ((_%g9624296250%_
                                        (lambda (_%g9624396246%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g9624396246%_)))
                                       (_%g9624196368%_
                                        (lambda (_%g9624396254%_)
                                          ((lambda (_%L96257%_)
                                             (let* ((_%g9627096278%_
                                                     (lambda (_%g9627196274%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g9627196274%_)))
                                                    (_%g9626996364%_
                                                     (lambda (_%g9627196282%_)
                                                       ((lambda (_%L96285%_)
                                                          (let* ((_%g9629896306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g9629996302%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g9629996302%_)))
                         (_%g9629796360%_
                          (lambda (_%g9629996310%_)
                            ((lambda (_%L96313%_)
                               (let* ((_%g9632696334%_
                                       (lambda (_%g9632796330%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9632796330%_)))
                                      (_%g9632596356%_
                                       (lambda (_%g9632796338%_)
                                         ((lambda (_%L96341%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%L96257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%L96230%_
                                                          (cons _%L96197%_
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
                                          (cons _%L96195%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L96197%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%L96285%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%L96230%_
                                                                (cons _%L96197%_
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
                                                (cons _%L96195%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%L96197%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%L96313%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%L96230%_ (cons _%L96197%_ (cons '#t '()))))
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
                                                            (cons _%L96195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L96197%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L96341%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%L96230%_
                                    (cons _%L96197%_ (cons '#f '()))))
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
                          (cons _%L96195%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L96197%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9632796338%_))))
                                 (_%g9632596356%_
                                  (gx#stx-identifier
                                   _%L96197%_
                                   '"&"
                                   _%L96313%_))))
                             _%g9629996310%_))))
                    (_%g9629796360%_
                     (gx#stx-identifier _%L96197%_ _%L96257%_ '"-set!"))))
                _%g9627196282%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g9626996364%_
                                                (gx#stx-identifier
                                                 _%L96197%_
                                                 '"&"
                                                 _%L96257%_))))
                                           _%g9624396254%_))))
                                  (_%g9624196368%_
                                   (gx#stx-identifier
                                    _%L96197%_
                                    '"class-type-"
                                    _%L96197%_))))
                              _%g9621696227%_))))
                     (_%g9621496372%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9614196189%_
                 _%hd9613896179%_)
                (_%g9612796148%_ _%g9612896152%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9612796148%_
                                                     _%g9612896152%_))))
                                            (_%g9612796148%_
                                             _%g9612896152%_))))
                                    (_%g9612796148%_ _%g9612896152%_))))
                            (_%g9612796148%_ _%g9612896152%_))))
                    (_%g9612796148%_ _%g9612896152%_)))))
        (_%g9612696376%_ _%stx96124%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx96380%_)
      (let* ((_%g9638496413%_
              (lambda (_%g9638596409%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9638596409%_)))
             (_%g9638396513%_
              (lambda (_%g9638596417%_)
                (if (gx#stx-pair? _%g9638596417%_)
                    (let ((_%e9638896420%_ (gx#syntax-e _%g9638596417%_)))
                      (let ((_%hd9638996424%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9638896420%_)))
                            (_%tl9639096427%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9638896420%_))))
                        (if (gx#stx-pair/null? _%tl9639096427%_)
                            (let ((_g102661_
                                   (gx#syntax-split-splice
                                    _%tl9639096427%_
                                    '0)))
                              (begin
                                (let ((_g102662_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g102661_)
                                             (##values-length _g102661_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g102662_ 2)))
                                      (error "Context expects 2 values"
                                             _g102662_)))
                                (let ((_%target9639196430%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102661_ 0)))
                                      (_%tl9639396433%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102661_ 1))))
                                  (if (gx#stx-null? _%tl9639396433%_)
                                      (letrec ((_%loop9639496436%_
                                                (lambda (_%hd9639296440%_
                                                         _%field9639896443%_
                                                         _%slot9639996445%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9639296440%_)
                                                      (let ((_%e9639596448%_
                                                             (gx#syntax-e
                                                              _%hd9639296440%_)))
                                                        (let ((_%lp-hd9639696452%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9639596448%_)))
                      (_%lp-tl9639796455%_
                       (let () (declare (not safe)) (##cdr _%e9639596448%_))))
                  (if (gx#stx-pair? _%lp-hd9639696452%_)
                      (let ((_%e9640296458%_
                             (gx#syntax-e _%lp-hd9639696452%_)))
                        (let ((_%hd9640396462%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9640296458%_)))
                              (_%tl9640496465%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9640296458%_))))
                          (if (gx#stx-pair? _%tl9640496465%_)
                              (let ((_%e9640596468%_
                                     (gx#syntax-e _%tl9640496465%_)))
                                (let ((_%hd9640696472%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9640596468%_)))
                                      (_%tl9640796475%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9640596468%_))))
                                  (if (gx#stx-null? _%tl9640796475%_)
                                      (_%loop9639496436%_
                                       _%lp-tl9639796455%_
                                       (cons _%hd9640696472%_
                                             _%field9639896443%_)
                                       (cons _%hd9640396462%_
                                             _%slot9639996445%_))
                                      (_%g9638496413%_ _%g9638596417%_))))
                              (_%g9638496413%_ _%g9638596417%_))))
                      (_%g9638496413%_ _%g9638596417%_))))
              (let ((_%field9640096478%_ (reverse _%field9639896443%_))
                    (_%slot9640196481%_ (reverse _%slot9639996445%_)))
                ((lambda (_%L96484%_ _%L96486%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L96484%_
                            _%L96486%_)
                           (let ((__tmp102663
                                  (lambda (_%g9650196505%_
                                           _%g9650296508%_
                                           _%g9650396510%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9650296508%_
                                                            (cons _%g9650196505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9650396510%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp102663
                              '()
                              _%L96484%_
                              _%L96486%_)))))
                 _%field9640096478%_
                 _%slot9640196481%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9639496436%_
                                         _%target9639196430%_
                                         '()
                                         '()))
                                      (_%g9638496413%_ _%g9638596417%_)))))
                            (_%g9638496413%_ _%g9638596417%_))))
                    (_%g9638496413%_ _%g9638596417%_)))))
        (_%g9638396513%_ _%$stx96380%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx96518%_)
      (let* ((_%g9652296556%_
              (lambda (_%g9652396552%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9652396552%_)))
             (_%g9652196667%_
              (lambda (_%g9652396560%_)
                (if (gx#stx-pair? _%g9652396560%_)
                    (let ((_%e9653096563%_ (gx#syntax-e _%g9652396560%_)))
                      (let ((_%hd9653196567%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9653096563%_)))
                            (_%tl9653296570%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9653096563%_))))
                        (if (gx#stx-pair? _%tl9653296570%_)
                            (let ((_%e9653396573%_
                                   (gx#syntax-e _%tl9653296570%_)))
                              (let ((_%hd9653496577%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9653396573%_)))
                                    (_%tl9653596580%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9653396573%_))))
                                (if (gx#stx-pair? _%tl9653596580%_)
                                    (let ((_%e9653696583%_
                                           (gx#syntax-e _%tl9653596580%_)))
                                      (let ((_%hd9653796587%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9653696583%_)))
                                            (_%tl9653896590%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9653696583%_))))
                                        (if (gx#stx-pair? _%tl9653896590%_)
                                            (let ((_%e9653996593%_
                                                   (gx#syntax-e
                                                    _%tl9653896590%_)))
                                              (let ((_%hd9654096597%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9653996593%_)))
                                                    (_%tl9654196600%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9653996593%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9654196600%_)
                                                    (let ((_%e9654296603%_
                                                           (gx#syntax-e
                                                            _%tl9654196600%_)))
                                                      (let ((_%hd9654396607%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9654296603%_)))
                    (_%tl9654496610%_
                     (let () (declare (not safe)) (##cdr _%e9654296603%_))))
                (if (gx#stx-pair? _%tl9654496610%_)
                    (let ((_%e9654596613%_ (gx#syntax-e _%tl9654496610%_)))
                      (let ((_%hd9654696617%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9654596613%_)))
                            (_%tl9654796620%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9654596613%_))))
                        (if (gx#stx-pair? _%tl9654796620%_)
                            (let ((_%e9654896623%_
                                   (gx#syntax-e _%tl9654796620%_)))
                              (let ((_%hd9654996627%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9654896623%_)))
                                    (_%tl9655096630%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9654896623%_))))
                                (if (gx#stx-null? _%tl9655096630%_)
                                    ((lambda (_%L96633%_
                                              _%L96635%_
                                              _%L96636%_
                                              _%L96637%_
                                              _%L96638%_
                                              _%L96639%_)
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
                                         (cons _%L96639%_ '()))
                                   (cons _%L96638%_ (cons '#f '()))))
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
                               (cons _%L96639%_
                                     (cons 'slot: (cons _%L96638%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L96639%_ '()))
                                         (cons (cons _%L96637%_
                                                     (cons _%L96639%_
                                                           (cons _%L96638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L96639%_ '()))
                                               (cons (cons _%L96636%_
                                                           (cons _%L96639%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L96638%_
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
                                           (cons _%L96639%_ '()))
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
                                                     (cons (cons _%L96635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L96639%_
                               (cons _%L96638%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L96633%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L96639%_
                                     (cons _%L96638%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9654996627%_
                                     _%hd9654696617%_
                                     _%hd9654396607%_
                                     _%hd9654096597%_
                                     _%hd9653796587%_
                                     _%hd9653496577%_)
                                    (_%g9652296556%_ _%g9652396560%_))))
                            (_%g9652296556%_ _%g9652396560%_))))
                    (_%g9652296556%_ _%g9652396560%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9652296556%_
                                                     _%g9652396560%_))))
                                            (_%g9652296556%_
                                             _%g9652396560%_))))
                                    (_%g9652296556%_ _%g9652396560%_))))
                            (_%g9652296556%_ _%g9652396560%_))))
                    (_%g9652296556%_ _%g9652396560%_)))))
        (_%g9652196667%_ _%$stx96518%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx96671%_)
      (let* ((_%g9667596701%_
              (lambda (_%g9667696697%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9667696697%_)))
             (_%g9667496784%_
              (lambda (_%g9667696705%_)
                (if (gx#stx-pair? _%g9667696705%_)
                    (let ((_%e9668196708%_ (gx#syntax-e _%g9667696705%_)))
                      (let ((_%hd9668296712%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9668196708%_)))
                            (_%tl9668396715%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9668196708%_))))
                        (if (gx#stx-pair? _%tl9668396715%_)
                            (let ((_%e9668496718%_
                                   (gx#syntax-e _%tl9668396715%_)))
                              (let ((_%hd9668596722%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9668496718%_)))
                                    (_%tl9668696725%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9668496718%_))))
                                (if (gx#stx-pair? _%tl9668696725%_)
                                    (let ((_%e9668796728%_
                                           (gx#syntax-e _%tl9668696725%_)))
                                      (let ((_%hd9668896732%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9668796728%_)))
                                            (_%tl9668996735%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9668796728%_))))
                                        (if (gx#stx-pair? _%tl9668996735%_)
                                            (let ((_%e9669096738%_
                                                   (gx#syntax-e
                                                    _%tl9668996735%_)))
                                              (let ((_%hd9669196742%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9669096738%_)))
                                                    (_%tl9669296745%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9669096738%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9669296745%_)
                                                    (let ((_%e9669396748%_
                                                           (gx#syntax-e
                                                            _%tl9669296745%_)))
                                                      (let ((_%hd9669496752%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9669396748%_)))
                    (_%tl9669596755%_
                     (let () (declare (not safe)) (##cdr _%e9669396748%_))))
                (if (gx#stx-null? _%tl9669596755%_)
                    ((lambda (_%L96758%_ _%L96760%_ _%L96761%_ _%L96762%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L96762%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L96761%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L96760%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L96758%_
                                     (cons _%L96762%_ (cons _%L96761%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9669496752%_
                     _%hd9669196742%_
                     _%hd9668896732%_
                     _%hd9668596722%_)
                    (_%g9667596701%_ _%g9667696705%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9667596701%_
                                                     _%g9667696705%_))))
                                            (_%g9667596701%_
                                             _%g9667696705%_))))
                                    (_%g9667596701%_ _%g9667696705%_))))
                            (_%g9667596701%_ _%g9667696705%_))))
                    (_%g9667596701%_ _%g9667696705%_)))))
        (_%g9667496784%_ _%$stx96671%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx96788%_)
      (let* ((_%g9679296821%_
              (lambda (_%g9679396817%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9679396817%_)))
             (_%g9679196921%_
              (lambda (_%g9679396825%_)
                (if (gx#stx-pair? _%g9679396825%_)
                    (let ((_%e9679696828%_ (gx#syntax-e _%g9679396825%_)))
                      (let ((_%hd9679796832%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9679696828%_)))
                            (_%tl9679896835%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9679696828%_))))
                        (if (gx#stx-pair/null? _%tl9679896835%_)
                            (let ((_g102664_
                                   (gx#syntax-split-splice
                                    _%tl9679896835%_
                                    '0)))
                              (begin
                                (let ((_g102665_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g102664_)
                                             (##values-length _g102664_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g102665_ 2)))
                                      (error "Context expects 2 values"
                                             _g102665_)))
                                (let ((_%target9679996838%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102664_ 0)))
                                      (_%tl9680196841%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102664_ 1))))
                                  (if (gx#stx-null? _%tl9680196841%_)
                                      (letrec ((_%loop9680296844%_
                                                (lambda (_%hd9680096848%_
                                                         _%name9680696851%_
                                                         _%t9680796853%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9680096848%_)
                                                      (let ((_%e9680396856%_
                                                             (gx#syntax-e
                                                              _%hd9680096848%_)))
                                                        (let ((_%lp-hd9680496860%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9680396856%_)))
                      (_%lp-tl9680596863%_
                       (let () (declare (not safe)) (##cdr _%e9680396856%_))))
                  (if (gx#stx-pair? _%lp-hd9680496860%_)
                      (let ((_%e9681096866%_
                             (gx#syntax-e _%lp-hd9680496860%_)))
                        (let ((_%hd9681196870%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9681096866%_)))
                              (_%tl9681296873%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9681096866%_))))
                          (if (gx#stx-pair? _%tl9681296873%_)
                              (let ((_%e9681396876%_
                                     (gx#syntax-e _%tl9681296873%_)))
                                (let ((_%hd9681496880%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9681396876%_)))
                                      (_%tl9681596883%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9681396876%_))))
                                  (if (gx#stx-null? _%tl9681596883%_)
                                      (_%loop9680296844%_
                                       _%lp-tl9680596863%_
                                       (cons _%hd9681496880%_
                                             _%name9680696851%_)
                                       (cons _%hd9681196870%_ _%t9680796853%_))
                                      (_%g9679296821%_ _%g9679396825%_))))
                              (_%g9679296821%_ _%g9679396825%_))))
                      (_%g9679296821%_ _%g9679396825%_))))
              (let ((_%name9680896886%_ (reverse _%name9680696851%_))
                    (_%t9680996889%_ (reverse _%t9680796853%_)))
                ((lambda (_%L96892%_ _%L96894%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L96892%_
                            _%L96894%_)
                           (let ((__tmp102666
                                  (lambda (_%g9690996913%_
                                           _%g9691096916%_
                                           _%g9691196918%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g9691096916%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g9690996913%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9691196918%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp102666
                              '()
                              _%L96892%_
                              _%L96894%_)))))
                 _%name9680896886%_
                 _%t9680996889%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9680296844%_
                                         _%target9679996838%_
                                         '()
                                         '()))
                                      (_%g9679296821%_ _%g9679396825%_)))))
                            (_%g9679296821%_ _%g9679396825%_))))
                    (_%g9679296821%_ _%g9679396825%_)))))
        (_%g9679196921%_ _%$stx96788%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx96926%_)
      (let* ((_%g9693096961%_
              (lambda (_%g9693196957%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9693196957%_)))
             (_%g9692997080%_
              (lambda (_%g9693196965%_)
                (if (gx#stx-pair? _%g9693196965%_)
                    (let ((_%e9693596968%_ (gx#syntax-e _%g9693196965%_)))
                      (let ((_%hd9693696972%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9693596968%_)))
                            (_%tl9693796975%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9693596968%_))))
                        (if (gx#stx-pair? _%tl9693796975%_)
                            (let ((_%e9693896978%_
                                   (gx#syntax-e _%tl9693796975%_)))
                              (let ((_%hd9693996982%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9693896978%_)))
                                    (_%tl9694096985%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9693896978%_))))
                                (if (gx#stx-pair? _%tl9694096985%_)
                                    (let ((_%e9694196988%_
                                           (gx#syntax-e _%tl9694096985%_)))
                                      (let ((_%hd9694296992%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9694196988%_)))
                                            (_%tl9694396995%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9694196988%_))))
                                        (if (gx#stx-pair? _%tl9694396995%_)
                                            (let ((_%e9694496998%_
                                                   (gx#syntax-e
                                                    _%tl9694396995%_)))
                                              (let ((_%hd9694597002%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9694496998%_)))
                                                    (_%tl9694697005%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9694496998%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd9694597002%_)
                                                    (let ((_g102667_
                                                           (gx#syntax-split-splice
                                                            _%hd9694597002%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g102668_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g102667_)
                             (##values-length _g102667_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g102668_ 2)))
                      (error "Context expects 2 values" _g102668_)))
                (let ((_%target9694797008%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102667_ 0)))
                      (_%tl9694997011%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102667_ 1))))
                  (if (gx#stx-null? _%tl9694997011%_)
                      (letrec ((_%loop9695097014%_
                                (lambda (_%hd9694897018%_ _%super9695497021%_)
                                  (if (gx#stx-pair? _%hd9694897018%_)
                                      (let ((_%e9695197024%_
                                             (gx#syntax-e _%hd9694897018%_)))
                                        (let ((_%lp-hd9695297028%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9695197024%_)))
                                              (_%lp-tl9695397031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9695197024%_))))
                                          (_%loop9695097014%_
                                           _%lp-tl9695397031%_
                                           (cons _%lp-hd9695297028%_
                                                 _%super9695497021%_))))
                                      (let ((_%super9695597034%_
                                             (reverse _%super9695497021%_)))
                                        (if (gx#stx-null? _%tl9694697005%_)
                                            ((lambda (_%L97038%_
                                                      _%L97040%_
                                                      _%L97041%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L97041%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L97040%_
                                                 (cons (let ((__tmp102669
                                                              (lambda (_%g9706597068%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9706697071%_)
                        (cons _%g9706597068%_ _%g9706697071%_))))
                 (declare (not safe))
                 (__foldr1 __tmp102669 '() _%L97038%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L97040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp102670
                                  (lambda (_%g9706397074%_ _%g9706497077%_)
                                    (cons _%g9706397074%_ _%g9706497077%_))))
                             (declare (not safe))
                             (__foldr1 __tmp102670 '() _%L97038%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super9695597034%_
                                             _%hd9694296992%_
                                             _%hd9693996982%_)
                                            (_%g9693096961%_
                                             _%g9693196965%_)))))))
                        (_%loop9695097014%_ _%target9694797008%_ '()))
                      (_%g9693096961%_ _%g9693196965%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9693096961%_
                                                     _%g9693196965%_))))
                                            (_%g9693096961%_
                                             _%g9693196965%_))))
                                    (_%g9693096961%_ _%g9693196965%_))))
                            (_%g9693096961%_ _%g9693196965%_))))
                    (_%g9693096961%_ _%g9693196965%_)))))
        (_%g9692997080%_ _%$stx96926%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx97085%_)
      (let* ((_%g9708997120%_
              (lambda (_%g9709097116%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9709097116%_)))
             (_%g9708897231%_
              (lambda (_%g9709097124%_)
                (if (gx#stx-pair? _%g9709097124%_)
                    (let ((_%e9709497127%_ (gx#syntax-e _%g9709097124%_)))
                      (let ((_%hd9709597131%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9709497127%_)))
                            (_%tl9709697134%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9709497127%_))))
                        (if (gx#stx-pair? _%tl9709697134%_)
                            (let ((_%e9709797137%_
                                   (gx#syntax-e _%tl9709697134%_)))
                              (let ((_%hd9709897141%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9709797137%_)))
                                    (_%tl9709997144%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9709797137%_))))
                                (if (gx#stx-pair? _%tl9709997144%_)
                                    (let ((_%e9710097147%_
                                           (gx#syntax-e _%tl9709997144%_)))
                                      (let ((_%hd9710197151%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9710097147%_)))
                                            (_%tl9710297154%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9710097147%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd9710197151%_)
                                            (let ((_g102671_
                                                   (gx#syntax-split-splice
                                                    _%hd9710197151%_
                                                    '0)))
                                              (begin
                                                (let ((_g102672_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g102671_)
                                                             (##values-length
                                                              _g102671_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g102672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g102672_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target9710397157%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g102671_
                                                          0)))
                                                      (_%tl9710597160%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g102671_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl9710597160%_)
                                                      (letrec ((_%loop9710697163%_
                                                                (lambda (_%hd9710497167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super9711097170%_)
                          (if (gx#stx-pair? _%hd9710497167%_)
                              (let ((_%e9710797173%_
                                     (gx#syntax-e _%hd9710497167%_)))
                                (let ((_%lp-hd9710897177%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9710797173%_)))
                                      (_%lp-tl9710997180%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9710797173%_))))
                                  (_%loop9710697163%_
                                   _%lp-tl9710997180%_
                                   (cons _%lp-hd9710897177%_
                                         _%super9711097170%_))))
                              (let ((_%super9711197183%_
                                     (reverse _%super9711097170%_)))
                                (if (gx#stx-pair? _%tl9710297154%_)
                                    (let ((_%e9711297187%_
                                           (gx#syntax-e _%tl9710297154%_)))
                                      (let ((_%hd9711397191%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9711297187%_)))
                                            (_%tl9711497194%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9711297187%_))))
                                        (if (gx#stx-null? _%tl9711497194%_)
                                            ((lambda (_%L97197%_
                                                      _%L97199%_
                                                      _%L97200%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L97200%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L97200%_
                                                 (cons (let ((__tmp102673
                                                              (lambda (_%g9722297225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9722397228%_)
                        (cons _%g9722297225%_ _%g9722397228%_))))
                 (declare (not safe))
                 (__foldr1 __tmp102673 '() _%L97199%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L97197%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9711397191%_
                                             _%super9711197183%_
                                             _%hd9709897141%_)
                                            (_%g9708997120%_
                                             _%g9709097124%_))))
                                    (_%g9708997120%_ _%g9709097124%_)))))))
                (_%loop9710697163%_ _%target9710397157%_ '()))
              (_%g9708997120%_ _%g9709097124%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g9708997120%_
                                             _%g9709097124%_))))
                                    (_%g9708997120%_ _%g9709097124%_))))
                            (_%g9708997120%_ _%g9709097124%_))))
                    (_%g9708997120%_ _%g9709097124%_)))))
        (_%g9708897231%_ _%$stx97085%_)))))
