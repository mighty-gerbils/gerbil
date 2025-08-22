(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g106464_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx106091%_)
      (let* ((_%g106094106132%_
              (lambda (_%g106095106128%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g106095106128%_)))
             (_%g106093106301%_
              (lambda (_%g106095106136%_)
                (if (gx#stx-pair? _%g106095106136%_)
                    (let ((_%e106100106139%_ (gx#syntax-e _%g106095106136%_)))
                      (let ((_%hd106101106143%_
                             (let ()
                               (declare (not safe))
                               (##car _%e106100106139%_)))
                            (_%tl106102106146%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e106100106139%_))))
                        (if (gx#stx-pair? _%tl106102106146%_)
                            (let ((_%e106103106149%_
                                   (gx#syntax-e _%tl106102106146%_)))
                              (let ((_%hd106104106153%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e106103106149%_)))
                                    (_%tl106105106156%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e106103106149%_))))
                                (if (gx#stx-pair? _%hd106104106153%_)
                                    (let ((_%e106106106159%_
                                           (gx#syntax-e _%hd106104106153%_)))
                                      (let ((_%hd106107106163%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e106106106159%_)))
                                            (_%tl106108106166%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e106106106159%_))))
                                        (if (gx#stx-pair? _%tl106108106166%_)
                                            (let ((_%e106109106169%_
                                                   (gx#syntax-e
                                                    _%tl106108106166%_)))
                                              (let ((_%hd106110106173%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e106109106169%_)))
                                                    (_%tl106111106176%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e106109106169%_))))
                                                (if (gx#stx-null?
                                                     _%tl106111106176%_)
                                                    (if (gx#stx-pair?
                                                         _%tl106105106156%_)
                                                        (let ((_%e106112106179%_
                                                               (gx#syntax-e
                                                                _%tl106105106156%_)))
                                                          (let ((_%hd106113106183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e106112106179%_)))
                        (_%tl106114106186%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e106112106179%_))))
                    (if (gx#identifier? _%hd106113106183%_)
                        (if (gx#free-identifier=?
                             |[1]#_g106464_|
                             _%hd106113106183%_)
                            (if (gx#stx-pair? _%tl106114106186%_)
                                (let ((_%e106115106189%_
                                       (gx#syntax-e _%tl106114106186%_)))
                                  (let ((_%hd106116106193%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e106115106189%_)))
                                        (_%tl106117106196%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e106115106189%_))))
                                    (if (gx#stx-pair/null? _%tl106117106196%_)
                                        (let ((_g106465_
                                               (gx#syntax-split-splice
                                                _%tl106117106196%_
                                                '0)))
                                          (begin
                                            (let ((_g106466_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g106465_)
                                                         (##values-length
                                                          _g106465_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g106466_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g106466_)))
                                            (let ((_%target106118106199%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g106465_
                                                      0)))
                                                  (_%tl106120106202%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g106465_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl106120106202%_)
                                                  (letrec ((_%loop106121106205%_
                                                            (lambda (_%hd106119106209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body106125106212%_)
                      (if (gx#stx-pair? _%hd106119106209%_)
                          (let ((_%e106122106215%_
                                 (gx#syntax-e _%hd106119106209%_)))
                            (let ((_%lp-hd106123106219%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e106122106215%_)))
                                  (_%lp-tl106124106222%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e106122106215%_))))
                              (_%loop106121106205%_
                               _%lp-tl106124106222%_
                               (cons _%lp-hd106123106219%_
                                     _%body106125106212%_))))
                          (let ((_%body106126106225%_
                                 (reverse _%body106125106212%_)))
                            ((lambda (_%L106229%_
                                      _%L106231%_
                                      _%L106232%_
                                      _%L106233%_)
                               (let* ((_%g106262106270%_
                                       (lambda (_%g106263106266%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g106263106266%_)))
                                      (_%g106261106297%_
                                       (lambda (_%g106263106274%_)
                                         ((lambda (_%L106277%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L106233%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%L106277%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%L106232%_ '())
                                                    (let ((__tmp106467
                                                           (lambda (_%g106288106291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g106289106294%_)
                     (cons _%g106288106291%_ _%g106289106294%_))))
              (declare (not safe))
              (__foldr1 __tmp106467 '() _%L106229%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g106263106274%_))))
                                 (_%g106261106297%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx106091%_
                                     _%L106231%_)))))
                             _%body106126106225%_
                             _%hd106116106193%_
                             _%hd106110106173%_
                             _%hd106107106163%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop106121106205%_
                                                     _%target106118106199%_
                                                     '()))
                                                  (_%g106094106132%_
                                                   _%g106095106136%_)))))
                                        (_%g106094106132%_
                                         _%g106095106136%_))))
                                (_%g106094106132%_ _%g106095106136%_))
                            (_%g106094106132%_ _%g106095106136%_))
                        (_%g106094106132%_ _%g106095106136%_))))
                (_%g106094106132%_ _%g106095106136%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g106094106132%_
                                                     _%g106095106136%_))))
                                            (_%g106094106132%_
                                             _%g106095106136%_))))
                                    (_%g106094106132%_ _%g106095106136%_))))
                            (_%g106094106132%_ _%g106095106136%_))))
                    (_%g106094106132%_ _%g106095106136%_)))))
        (_%g106093106301%_ _%stx106091%_)))))
