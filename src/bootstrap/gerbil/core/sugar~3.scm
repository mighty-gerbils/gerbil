(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-3[1]#_g21081_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-3[:0:]#defsyntax|
      (lambda (_%$stx17761%_)
        (let* ((_%__stx2084420845%_ _%$stx17761%_)
               (_%g1776617805%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2084420845%_))))
          (let ((_%__kont2084720848%_
                 (lambda (_%g1776817926%_ _%g1776917928%_ _%g1777017929%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g1777017929%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%g1776917928%_
                                                 (foldr (lambda (_%g1794817951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1794917954%_)
                  (cons _%g1794817951%_ _%g1794917954%_))
                '()
                _%g1776817926%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont2085120852%_
                 (lambda (_%g1778917842%_ _%g1779017844%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g1779017844%_ (cons _%g1778917842%_ '()))))))
            (let* ((_%__match2089920900%_
                    (lambda (_%e1779117812%_
                             _%hd1779217816%_
                             _%tl1779317819%_
                             _%e1779417822%_
                             _%hd1779517826%_
                             _%tl1779617829%_
                             _%e1779717832%_
                             _%hd1779817836%_
                             _%tl1779917839%_)
                      (let ((_%g1778917842%_ _%hd1779817836%_)
                            (_%g1779017844%_ _%hd1779517826%_))
                        (if (gx#identifier? _%g1779017844%_)
                            (_%__kont2085120852%_
                             _%g1778917842%_
                             _%g1779017844%_)
                            (let () (declare (not safe)) (_%g1776617805%_))))))
                   (_%__match2089120892%_
                    (lambda (_%e1779117812%_
                             _%hd1779217816%_
                             _%tl1779317819%_
                             _%e1779417822%_
                             _%hd1779517826%_
                             _%tl1779617829%_)
                      (if (gx#stx-pair? _%tl1779617829%_)
                          (let ((_%e1779717832%_
                                 (gx#syntax-e _%tl1779617829%_)))
                            (let ((_%tl1779917839%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1779717832%_)))
                                  (_%hd1779817836%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1779717832%_))))
                              (if (gx#stx-null? _%tl1779917839%_)
                                  (_%__match2089920900%_
                                   _%e1779117812%_
                                   _%hd1779217816%_
                                   _%tl1779317819%_
                                   _%e1779417822%_
                                   _%hd1779517826%_
                                   _%tl1779617829%_
                                   _%e1779717832%_
                                   _%hd1779817836%_
                                   _%tl1779917839%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g1776617805%_)))))
                          (let () (declare (not safe)) (_%g1776617805%_)))))
                   (_%__match2087920880%_
                    (lambda (_%e1777117868%_
                             _%hd1777217872%_
                             _%tl1777317875%_
                             _%e1777417878%_
                             _%hd1777517882%_
                             _%tl1777617885%_
                             _%e1777717888%_
                             _%hd1777817892%_
                             _%tl1777917895%_
                             _%__splice2084920850%_
                             _%target1778017898%_
                             _%tl1778217901%_)
                      (letrec ((_%loop1778317904%_
                                (lambda (_%hd1778117908%_ _%body1778717911%_)
                                  (if (gx#stx-pair? _%hd1778117908%_)
                                      (let ((_%e1778417913%_
                                             (gx#syntax-e _%hd1778117908%_)))
                                        (let ((_%lp-tl1778617920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1778417913%_)))
                                              (_%lp-hd1778517917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1778417913%_))))
                                          (_%loop1778317904%_
                                           _%lp-tl1778617920%_
                                           (cons _%lp-hd1778517917%_
                                                 _%body1778717911%_))))
                                      (let ((_%body1778817923%_
                                             (reverse _%body1778717911%_)))
                                        (let ((_%g1776817926%_
                                               _%body1778817923%_)
                                              (_%g1776917928%_
                                               _%tl1777917895%_)
                                              (_%g1777017929%_
                                               _%hd1777817892%_))
                                          (if (gx#identifier? _%g1777017929%_)
                                              (_%__kont2084720848%_
                                               _%g1776817926%_
                                               _%g1776917928%_
                                               _%g1777017929%_)
                                              (_%__match2089120892%_
                                               _%e1777117868%_
                                               _%hd1777217872%_
                                               _%tl1777317875%_
                                               _%e1777417878%_
                                               _%hd1777517882%_
                                               _%tl1777617885%_))))))))
                        (_%loop1778317904%_ _%target1778017898%_ '())))))
              (if (gx#stx-pair? _%__stx2084420845%_)
                  (let ((_%e1777117868%_ (gx#syntax-e _%__stx2084420845%_)))
                    (let ((_%tl1777317875%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1777117868%_)))
                          (_%hd1777217872%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1777117868%_))))
                      (if (gx#stx-pair? _%tl1777317875%_)
                          (let ((_%e1777417878%_
                                 (gx#syntax-e _%tl1777317875%_)))
                            (let ((_%tl1777617885%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1777417878%_)))
                                  (_%hd1777517882%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1777417878%_))))
                              (if (gx#stx-pair? _%hd1777517882%_)
                                  (let ((_%e1777717888%_
                                         (gx#syntax-e _%hd1777517882%_)))
                                    (let ((_%tl1777917895%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1777717888%_)))
                                          (_%hd1777817892%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1777717888%_))))
                                      (if (gx#stx-pair/null? _%tl1777617885%_)
                                          (let ((_%__splice2084920850%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl1777617885%_
                                                  '0)))
                                            (let ((_%tl1778217901%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2084920850%_
                                                      '1)))
                                                  (_%target1778017898%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2084920850%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1778217901%_)
                                                  (_%__match2087920880%_
                                                   _%e1777117868%_
                                                   _%hd1777217872%_
                                                   _%tl1777317875%_
                                                   _%e1777417878%_
                                                   _%hd1777517882%_
                                                   _%tl1777617885%_
                                                   _%e1777717888%_
                                                   _%hd1777817892%_
                                                   _%tl1777917895%_
                                                   _%__splice2084920850%_
                                                   _%target1778017898%_
                                                   _%tl1778217901%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1777617885%_)
                                                      (let ((_%e1779717832%_
                                                             (gx#syntax-e
                                                              _%tl1777617885%_)))
                                                        (let ((_%tl1779917839%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1779717832%_)))
                      (_%hd1779817836%_
                       (let () (declare (not safe)) (##car _%e1779717832%_))))
                  (if (gx#stx-null? _%tl1779917839%_)
                      (_%__match2089920900%_
                       _%e1777117868%_
                       _%hd1777217872%_
                       _%tl1777317875%_
                       _%e1777417878%_
                       _%hd1777517882%_
                       _%tl1777617885%_
                       _%e1779717832%_
                       _%hd1779817836%_
                       _%tl1779917839%_)
                      (let () (declare (not safe)) (_%g1776617805%_)))))
              (let () (declare (not safe)) (_%g1776617805%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl1777617885%_)
                                              (let ((_%e1779717832%_
                                                     (gx#syntax-e
                                                      _%tl1777617885%_)))
                                                (let ((_%tl1779917839%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1779717832%_)))
                                                      (_%hd1779817836%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1779717832%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1779917839%_)
                                                      (_%__match2089920900%_
                                                       _%e1777117868%_
                                                       _%hd1777217872%_
                                                       _%tl1777317875%_
                                                       _%e1777417878%_
                                                       _%hd1777517882%_
                                                       _%tl1777617885%_
                                                       _%e1779717832%_
                                                       _%hd1779817836%_
                                                       _%tl1779917839%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1776617805%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1776617805%_))))))
                                  (if (gx#stx-pair? _%tl1777617885%_)
                                      (let ((_%e1779717832%_
                                             (gx#syntax-e _%tl1777617885%_)))
                                        (let ((_%tl1779917839%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1779717832%_)))
                                              (_%hd1779817836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1779717832%_))))
                                          (if (gx#stx-null? _%tl1779917839%_)
                                              (_%__match2089920900%_
                                               _%e1777117868%_
                                               _%hd1777217872%_
                                               _%tl1777317875%_
                                               _%e1777417878%_
                                               _%hd1777517882%_
                                               _%tl1777617885%_
                                               _%e1779717832%_
                                               _%hd1779817836%_
                                               _%tl1779917839%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1776617805%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1776617805%_))))))
                          (let () (declare (not safe)) (_%g1776617805%_)))))
                  (let () (declare (not safe)) (_%g1776617805%_))))))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#defsyntax-case|
      (lambda (_%stx17962%_)
        (let* ((_%g1796518002%_
                (lambda (_%g1796617998%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1796617998%_)))
               (_%g1796418170%_
                (lambda (_%g1796618006%_)
                  (if (gx#stx-pair? _%g1796618006%_)
                      (let ((_%e1797018009%_ (gx#syntax-e _%g1796618006%_)))
                        (let ((_%hd1797118013%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1797018009%_)))
                              (_%tl1797218016%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1797018009%_))))
                          (if (gx#stx-pair? _%tl1797218016%_)
                              (let ((_%e1797318019%_
                                     (gx#syntax-e _%tl1797218016%_)))
                                (let ((_%hd1797418023%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1797318019%_)))
                                      (_%tl1797518026%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1797318019%_))))
                                  (if (gx#stx-pair? _%tl1797518026%_)
                                      (let ((_%e1797618029%_
                                             (gx#syntax-e _%tl1797518026%_)))
                                        (let ((_%hd1797718033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1797618029%_)))
                                              (_%tl1797818036%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1797618029%_))))
                                          (if (gx#stx-pair/null?
                                               _%hd1797718033%_)
                                              (let ((_g21077_
                                                     (gx#syntax-split-splice
                                                      _%hd1797718033%_
                                                      '0)))
                                                (begin
                                                  (let ((_g21078_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g21077_)
                                                               (##values-length
                                                                _g21077_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g21078_ 2)))
                (error "Context expects 2 values" _g21078_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target1797918039%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21077_
                                                            0)))
                                                        (_%tl1798118042%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21077_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl1798118042%_)
                                                        (letrec ((_%loop1798218045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd1798018049%_ _%lit1798618052%_)
                            (if (gx#stx-pair? _%hd1798018049%_)
                                (let ((_%e1798318054%_
                                       (gx#syntax-e _%hd1798018049%_)))
                                  (let ((_%lp-hd1798418058%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1798318054%_)))
                                        (_%lp-tl1798518061%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1798318054%_))))
                                    (_%loop1798218045%_
                                     _%lp-tl1798518061%_
                                     (cons _%lp-hd1798418058%_
                                           _%lit1798618052%_))))
                                (let ((_%lit1798718064%_
                                       (reverse _%lit1798618052%_)))
                                  (if (gx#stx-pair/null? _%tl1797818036%_)
                                      (let ((_g21079_
                                             (gx#syntax-split-splice
                                              _%tl1797818036%_
                                              '0)))
                                        (begin
                                          (let ((_g21080_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21079_)
                                                       (##values-length
                                                        _g21079_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21080_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21080_)))
                                          (let ((_%target1798818067%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21079_ 0)))
                                                (_%tl1799018070%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21079_ 1))))
                                            (if (gx#stx-null? _%tl1799018070%_)
                                                (letrec ((_%loop1799118073%_
                                                          (lambda (_%hd1798918077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause1799518080%_)
                    (if (gx#stx-pair? _%hd1798918077%_)
                        (let ((_%e1799218082%_ (gx#syntax-e _%hd1798918077%_)))
                          (let ((_%lp-hd1799318086%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1799218082%_)))
                                (_%lp-tl1799418089%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1799218082%_))))
                            (_%loop1799118073%_
                             _%lp-tl1799418089%_
                             (cons _%lp-hd1799318086%_ _%clause1799518080%_))))
                        (let ((_%clause1799618092%_
                               (reverse _%clause1799518080%_)))
                          ((lambda (_%g1796718095%_
                                    _%g1796818097%_
                                    _%g1796918098%_)
                             (let* ((_%g1812318131%_
                                     (lambda (_%g1812418127%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g1812418127%_)))
                                    (_%g1812218166%_
                                     (lambda (_%g1812418135%_)
                                       ((lambda (_%g1812518138%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'defsyntax)
                                                (cons _%g1796918098%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons (cons _%g1812518138%_ '())
                                (cons (cons (gx#datum->syntax '#f 'syntax-case)
                                            (cons _%g1812518138%_
                                                  (cons (foldr (lambda (_%g1814918154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g1815018157%_)
                         (cons _%g1814918154%_ _%g1815018157%_))
                       '()
                       _%g1796818097%_)
                (foldr (lambda (_%g1815118160%_ _%g1815218163%_)
                         (cons _%g1815118160%_ _%g1815218163%_))
                       '()
                       _%g1796718095%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g1812418135%_))))
                               (_%g1812218166%_
                                (gx#syntax-local-introduce 'stx))))
                           _%clause1799618092%_
                           _%lit1798718064%_
                           _%hd1797418023%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1799118073%_
                                                   _%target1798818067%_
                                                   '()))
                                                (_%g1796518002%_
                                                 _%g1796618006%_)))))
                                      (_%g1796518002%_ _%g1796618006%_)))))))
                  (_%loop1798218045%_ _%target1797918039%_ '()))
                (_%g1796518002%_ _%g1796618006%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1796518002%_
                                               _%g1796618006%_))))
                                      (_%g1796518002%_ _%g1796618006%_))))
                              (_%g1796518002%_ _%g1796618006%_))))
                      (_%g1796518002%_ _%g1796618006%_)))))
          (_%g1796418170%_ _%stx17962%_))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#defconst|
      (lambda (_%$stx18176%_)
        (let* ((_%__stx2090220903%_ _%$stx18176%_)
               (_%g1818118217%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2090220903%_))))
          (let ((_%__kont2090520906%_
                 (lambda (_%g1818318331%_ _%g1818418333%_)
                   (cons (gx#datum->syntax '#f 'defrules)
                         (cons _%g1818418333%_
                               (cons '()
                                     (cons (cons (gx#datum->syntax '#f 'x)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'identifier?)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'syntax)
                                 (cons (gx#datum->syntax '#f 'x) '()))
                           '()))
               (cons (cons (gx#datum->syntax '#f 'quote)
                           (cons _%g1818318331%_ '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont2090720908%_
                 (lambda (_%g1820018254%_ _%g1820118256%_ _%g1820218257%_)
                   (cons _%g1820218257%_
                         (cons _%g1820118256%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g1820018254%_ '()))
                                     '()))))))
            (let* ((_%__match2096720968%_
                    (lambda (_%e1820318224%_
                             _%hd1820418228%_
                             _%tl1820518231%_
                             _%e1820618234%_
                             _%hd1820718238%_
                             _%tl1820818241%_
                             _%e1820918244%_
                             _%hd1821018248%_
                             _%tl1821118251%_)
                      (let ((_%g1820018254%_ _%hd1821018248%_)
                            (_%g1820118256%_ _%hd1820718238%_)
                            (_%g1820218257%_ _%hd1820418228%_))
                        (if (and (gx#identifier? _%g1820118256%_)
                                 (gx#stx-datum? _%g1820018254%_))
                            (_%__kont2090720908%_
                             _%g1820018254%_
                             _%g1820118256%_
                             _%g1820218257%_)
                            (let () (declare (not safe)) (_%g1818118217%_))))))
                   (_%__match2094720948%_
                    (lambda (_%e1818518281%_
                             _%hd1818618285%_
                             _%tl1818718288%_
                             _%e1818818291%_
                             _%hd1818918295%_
                             _%tl1819018298%_
                             _%e1819118301%_
                             _%hd1819218305%_
                             _%tl1819318308%_
                             _%e1819418311%_
                             _%hd1819518315%_
                             _%tl1819618318%_
                             _%e1819718321%_
                             _%hd1819818325%_
                             _%tl1819918328%_)
                      (let ((_%g1818318331%_ _%hd1819818325%_)
                            (_%g1818418333%_ _%hd1818918295%_))
                        (if (gx#identifier? _%g1818418333%_)
                            (_%__kont2090520906%_
                             _%g1818318331%_
                             _%g1818418333%_)
                            (_%__match2096720968%_
                             _%e1818518281%_
                             _%hd1818618285%_
                             _%tl1818718288%_
                             _%e1818818291%_
                             _%hd1818918295%_
                             _%tl1819018298%_
                             _%e1819118301%_
                             _%hd1819218305%_
                             _%tl1819318308%_))))))
              (if (gx#stx-pair? _%__stx2090220903%_)
                  (let ((_%e1818518281%_ (gx#syntax-e _%__stx2090220903%_)))
                    (let ((_%tl1818718288%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1818518281%_)))
                          (_%hd1818618285%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1818518281%_))))
                      (if (gx#stx-pair? _%tl1818718288%_)
                          (let ((_%e1818818291%_
                                 (gx#syntax-e _%tl1818718288%_)))
                            (let ((_%tl1819018298%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1818818291%_)))
                                  (_%hd1818918295%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1818818291%_))))
                              (if (gx#stx-pair? _%tl1819018298%_)
                                  (let ((_%e1819118301%_
                                         (gx#syntax-e _%tl1819018298%_)))
                                    (let ((_%tl1819318308%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1819118301%_)))
                                          (_%hd1819218305%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1819118301%_))))
                                      (if (gx#stx-pair? _%hd1819218305%_)
                                          (let ((_%e1819418311%_
                                                 (gx#syntax-e
                                                  _%hd1819218305%_)))
                                            (let ((_%tl1819618318%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1819418311%_)))
                                                  (_%hd1819518315%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1819418311%_))))
                                              (if (gx#identifier?
                                                   _%hd1819518315%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-3[1]#_g21081_|
                                                       _%hd1819518315%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1819618318%_)
                                                          (let ((_%e1819718321%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1819618318%_)))
                    (let ((_%tl1819918328%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1819718321%_)))
                          (_%hd1819818325%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1819718321%_))))
                      (if (gx#stx-null? _%tl1819918328%_)
                          (if (gx#stx-null? _%tl1819318308%_)
                              (_%__match2094720948%_
                               _%e1818518281%_
                               _%hd1818618285%_
                               _%tl1818718288%_
                               _%e1818818291%_
                               _%hd1818918295%_
                               _%tl1819018298%_
                               _%e1819118301%_
                               _%hd1819218305%_
                               _%tl1819318308%_
                               _%e1819418311%_
                               _%hd1819518315%_
                               _%tl1819618318%_
                               _%e1819718321%_
                               _%hd1819818325%_
                               _%tl1819918328%_)
                              (let () (declare (not safe)) (_%g1818118217%_)))
                          (if (gx#stx-null? _%tl1819318308%_)
                              (_%__match2096720968%_
                               _%e1818518281%_
                               _%hd1818618285%_
                               _%tl1818718288%_
                               _%e1818818291%_
                               _%hd1818918295%_
                               _%tl1819018298%_
                               _%e1819118301%_
                               _%hd1819218305%_
                               _%tl1819318308%_)
                              (let ()
                                (declare (not safe))
                                (_%g1818118217%_))))))
                  (if (gx#stx-null? _%tl1819318308%_)
                      (_%__match2096720968%_
                       _%e1818518281%_
                       _%hd1818618285%_
                       _%tl1818718288%_
                       _%e1818818291%_
                       _%hd1818918295%_
                       _%tl1819018298%_
                       _%e1819118301%_
                       _%hd1819218305%_
                       _%tl1819318308%_)
                      (let () (declare (not safe)) (_%g1818118217%_))))
              (if (gx#stx-null? _%tl1819318308%_)
                  (_%__match2096720968%_
                   _%e1818518281%_
                   _%hd1818618285%_
                   _%tl1818718288%_
                   _%e1818818291%_
                   _%hd1818918295%_
                   _%tl1819018298%_
                   _%e1819118301%_
                   _%hd1819218305%_
                   _%tl1819318308%_)
                  (let () (declare (not safe)) (_%g1818118217%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%tl1819318308%_)
                                                      (_%__match2096720968%_
                                                       _%e1818518281%_
                                                       _%hd1818618285%_
                                                       _%tl1818718288%_
                                                       _%e1818818291%_
                                                       _%hd1818918295%_
                                                       _%tl1819018298%_
                                                       _%e1819118301%_
                                                       _%hd1819218305%_
                                                       _%tl1819318308%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1818118217%_))))))
                                          (if (gx#stx-null? _%tl1819318308%_)
                                              (_%__match2096720968%_
                                               _%e1818518281%_
                                               _%hd1818618285%_
                                               _%tl1818718288%_
                                               _%e1818818291%_
                                               _%hd1818918295%_
                                               _%tl1819018298%_
                                               _%e1819118301%_
                                               _%hd1819218305%_
                                               _%tl1819318308%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1818118217%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1818118217%_)))))
                          (let () (declare (not safe)) (_%g1818118217%_)))))
                  (let () (declare (not safe)) (_%g1818118217%_))))))))))
