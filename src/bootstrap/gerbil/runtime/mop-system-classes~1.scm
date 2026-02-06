(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g133468_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx133040%_)
      (let* ((_%g133043133081%_
              (lambda (_%g133044133077%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g133044133077%_)))
             (_%g133042133248%_
              (lambda (_%g133044133085%_)
                (if (gx#stx-pair? _%g133044133085%_)
                    (let ((_%e133049133088%_ (gx#syntax-e _%g133044133085%_)))
                      (let ((_%hd133050133092%_
                             (let ()
                               (declare (not safe))
                               (##car _%e133049133088%_)))
                            (_%tl133051133095%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e133049133088%_))))
                        (if (gx#stx-pair? _%tl133051133095%_)
                            (let ((_%e133052133098%_
                                   (gx#syntax-e _%tl133051133095%_)))
                              (let ((_%hd133053133102%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e133052133098%_)))
                                    (_%tl133054133105%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e133052133098%_))))
                                (if (gx#stx-pair? _%hd133053133102%_)
                                    (let ((_%e133055133108%_
                                           (gx#syntax-e _%hd133053133102%_)))
                                      (let ((_%hd133056133112%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e133055133108%_)))
                                            (_%tl133057133115%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e133055133108%_))))
                                        (if (gx#stx-pair? _%tl133057133115%_)
                                            (let ((_%e133058133118%_
                                                   (gx#syntax-e
                                                    _%tl133057133115%_)))
                                              (let ((_%hd133059133122%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e133058133118%_)))
                                                    (_%tl133060133125%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e133058133118%_))))
                                                (if (gx#stx-null?
                                                     _%tl133060133125%_)
                                                    (if (gx#stx-pair?
                                                         _%tl133054133105%_)
                                                        (let ((_%e133061133128%_
                                                               (gx#syntax-e
                                                                _%tl133054133105%_)))
                                                          (let ((_%hd133062133132%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e133061133128%_)))
                        (_%tl133063133135%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133061133128%_))))
                    (if (gx#identifier? _%hd133062133132%_)
                        (if (gx#free-identifier=?
                             |[1]#_g133468_|
                             _%hd133062133132%_)
                            (if (gx#stx-pair? _%tl133063133135%_)
                                (let ((_%e133064133138%_
                                       (gx#syntax-e _%tl133063133135%_)))
                                  (let ((_%hd133065133142%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133064133138%_)))
                                        (_%tl133066133145%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133064133138%_))))
                                    (if (gx#stx-pair/null? _%tl133066133145%_)
                                        (let ((_g133469_
                                               (gx#syntax-split-splice
                                                _%tl133066133145%_
                                                '0)))
                                          (begin
                                            (let ((_g133470_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g133469_)
                                                         (##values-length
                                                          _g133469_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g133470_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g133470_)))
                                            (let ((_%target133067133148%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g133469_
                                                      0)))
                                                  (_%tl133069133151%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g133469_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl133069133151%_)
                                                  (letrec ((_%loop133070133154%_
                                                            (lambda (_%hd133068133158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body133074133161%_)
                      (if (gx#stx-pair? _%hd133068133158%_)
                          (let ((_%e133071133163%_
                                 (gx#syntax-e _%hd133068133158%_)))
                            (let ((_%lp-hd133072133167%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e133071133163%_)))
                                  (_%lp-tl133073133170%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e133071133163%_))))
                              (_%loop133070133154%_
                               _%lp-tl133073133170%_
                               (cons _%lp-hd133072133167%_
                                     _%body133074133161%_))))
                          (let ((_%body133075133173%_
                                 (reverse _%body133074133161%_)))
                            ((lambda (_%g133045133176%_
                                      _%g133046133178%_
                                      _%g133047133179%_
                                      _%g133048133180%_)
                               (let* ((_%g133209133217%_
                                       (lambda (_%g133210133213%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g133210133213%_)))
                                      (_%g133208133244%_
                                       (lambda (_%g133210133221%_)
                                         ((lambda (_%g133211133224%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%g133048133180%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%g133211133224%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%g133047133179%_
                                                          '())
                                                    (let ((__tmp133471
                                                           (lambda (_%g133235133238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g133236133241%_)
                     (cons _%g133235133238%_ _%g133236133241%_))))
              (declare (not safe))
              (__foldr1 __tmp133471 '() _%g133045133176%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g133210133221%_))))
                                 (_%g133208133244%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx133040%_
                                     _%g133046133178%_)))))
                             _%body133075133173%_
                             _%hd133065133142%_
                             _%hd133059133122%_
                             _%hd133056133112%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop133070133154%_
                                                     _%target133067133148%_
                                                     '()))
                                                  (_%g133043133081%_
                                                   _%g133044133085%_)))))
                                        (_%g133043133081%_
                                         _%g133044133085%_))))
                                (_%g133043133081%_ _%g133044133085%_))
                            (_%g133043133081%_ _%g133044133085%_))
                        (_%g133043133081%_ _%g133044133085%_))))
                (_%g133043133081%_ _%g133044133085%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g133043133081%_
                                                     _%g133044133085%_))))
                                            (_%g133043133081%_
                                             _%g133044133085%_))))
                                    (_%g133043133081%_ _%g133044133085%_))))
                            (_%g133043133081%_ _%g133044133085%_))))
                    (_%g133043133081%_ _%g133044133085%_)))))
        (_%g133042133248%_ _%stx133040%_)))))
