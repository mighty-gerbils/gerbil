(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g112961_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx112533%_)
      (let* ((_%g112536112574%_
              (lambda (_%g112537112570%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g112537112570%_)))
             (_%g112535112741%_
              (lambda (_%g112537112578%_)
                (if (gx#stx-pair? _%g112537112578%_)
                    (let ((_%e112542112581%_ (gx#syntax-e _%g112537112578%_)))
                      (let ((_%hd112543112585%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112542112581%_)))
                            (_%tl112544112588%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112542112581%_))))
                        (if (gx#stx-pair? _%tl112544112588%_)
                            (let ((_%e112545112591%_
                                   (gx#syntax-e _%tl112544112588%_)))
                              (let ((_%hd112546112595%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e112545112591%_)))
                                    (_%tl112547112598%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e112545112591%_))))
                                (if (gx#stx-pair? _%hd112546112595%_)
                                    (let ((_%e112548112601%_
                                           (gx#syntax-e _%hd112546112595%_)))
                                      (let ((_%hd112549112605%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e112548112601%_)))
                                            (_%tl112550112608%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e112548112601%_))))
                                        (if (gx#stx-pair? _%tl112550112608%_)
                                            (let ((_%e112551112611%_
                                                   (gx#syntax-e
                                                    _%tl112550112608%_)))
                                              (let ((_%hd112552112615%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e112551112611%_)))
                                                    (_%tl112553112618%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e112551112611%_))))
                                                (if (gx#stx-null?
                                                     _%tl112553112618%_)
                                                    (if (gx#stx-pair?
                                                         _%tl112547112598%_)
                                                        (let ((_%e112554112621%_
                                                               (gx#syntax-e
                                                                _%tl112547112598%_)))
                                                          (let ((_%hd112555112625%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e112554112621%_)))
                        (_%tl112556112628%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e112554112621%_))))
                    (if (gx#identifier? _%hd112555112625%_)
                        (if (gx#free-identifier=?
                             |[1]#_g112961_|
                             _%hd112555112625%_)
                            (if (gx#stx-pair? _%tl112556112628%_)
                                (let ((_%e112557112631%_
                                       (gx#syntax-e _%tl112556112628%_)))
                                  (let ((_%hd112558112635%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e112557112631%_)))
                                        (_%tl112559112638%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e112557112631%_))))
                                    (if (gx#stx-pair/null? _%tl112559112638%_)
                                        (let ((_g112962_
                                               (gx#syntax-split-splice
                                                _%tl112559112638%_
                                                '0)))
                                          (begin
                                            (let ((_g112963_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g112962_)
                                                         (##values-length
                                                          _g112962_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g112963_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g112963_)))
                                            (let ((_%target112560112641%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g112962_
                                                      0)))
                                                  (_%tl112562112644%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g112962_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl112562112644%_)
                                                  (letrec ((_%loop112563112647%_
                                                            (lambda (_%hd112561112651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body112567112654%_)
                      (if (gx#stx-pair? _%hd112561112651%_)
                          (let ((_%e112564112656%_
                                 (gx#syntax-e _%hd112561112651%_)))
                            (let ((_%lp-hd112565112660%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e112564112656%_)))
                                  (_%lp-tl112566112663%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e112564112656%_))))
                              (_%loop112563112647%_
                               _%lp-tl112566112663%_
                               (cons _%lp-hd112565112660%_
                                     _%body112567112654%_))))
                          (let ((_%body112568112666%_
                                 (reverse _%body112567112654%_)))
                            ((lambda (_%g112538112669%_
                                      _%g112539112671%_
                                      _%g112540112672%_
                                      _%g112541112673%_)
                               (let* ((_%g112702112710%_
                                       (lambda (_%g112703112706%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g112703112706%_)))
                                      (_%g112701112737%_
                                       (lambda (_%g112703112714%_)
                                         ((lambda (_%g112704112717%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%g112541112673%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%g112704112717%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%g112540112672%_
                                                          '())
                                                    (let ((__tmp112964
                                                           (lambda (_%g112728112731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g112729112734%_)
                     (cons _%g112728112731%_ _%g112729112734%_))))
              (declare (not safe))
              (__foldr1 __tmp112964 '() _%g112538112669%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g112703112714%_))))
                                 (_%g112701112737%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx112533%_
                                     _%g112539112671%_)))))
                             _%body112568112666%_
                             _%hd112558112635%_
                             _%hd112552112615%_
                             _%hd112549112605%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop112563112647%_
                                                     _%target112560112641%_
                                                     '()))
                                                  (_%g112536112574%_
                                                   _%g112537112578%_)))))
                                        (_%g112536112574%_
                                         _%g112537112578%_))))
                                (_%g112536112574%_ _%g112537112578%_))
                            (_%g112536112574%_ _%g112537112578%_))
                        (_%g112536112574%_ _%g112537112578%_))))
                (_%g112536112574%_ _%g112537112578%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g112536112574%_
                                                     _%g112537112578%_))))
                                            (_%g112536112574%_
                                             _%g112537112578%_))))
                                    (_%g112536112574%_ _%g112537112578%_))))
                            (_%g112536112574%_ _%g112537112578%_))))
                    (_%g112536112574%_ _%g112537112578%_)))))
        (_%g112535112741%_ _%stx112533%_)))))
