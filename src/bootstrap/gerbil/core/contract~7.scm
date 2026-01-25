(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx56615%_)
      (let* ((_%g5661956633%_
              (lambda (_%g5662056629%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5662056629%_)))
             (_%g5661856675%_
              (lambda (_%g5662056637%_)
                (if (gx#stx-pair? _%g5662056637%_)
                    (let ((_%e5662256640%_ (gx#syntax-e _%g5662056637%_)))
                      (let ((_%hd5662356644%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5662256640%_)))
                            (_%tl5662456647%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5662256640%_))))
                        (if (gx#stx-pair? _%tl5662456647%_)
                            (let ((_%e5662556650%_
                                   (gx#syntax-e _%tl5662456647%_)))
                              (let ((_%hd5662656654%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5662556650%_)))
                                    (_%tl5662756657%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5662556650%_))))
                                (if (gx#stx-null? _%tl5662756657%_)
                                    ((lambda (_%g5662156660%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%g5662156660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5662656654%_)
                                    (_%g5661956633%_ _%g5662056637%_))))
                            (_%g5661956633%_ _%g5662056637%_))))
                    (_%g5661956633%_ _%g5662056637%_)))))
        (_%g5661856675%_ _%$stx56615%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx56679%_)
      (let* ((_%g5668356701%_
              (lambda (_%g5668456697%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5668456697%_)))
             (_%g5668256756%_
              (lambda (_%g5668456705%_)
                (if (gx#stx-pair? _%g5668456705%_)
                    (let ((_%e5668756708%_ (gx#syntax-e _%g5668456705%_)))
                      (let ((_%hd5668856712%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5668756708%_)))
                            (_%tl5668956715%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5668756708%_))))
                        (if (gx#stx-pair? _%tl5668956715%_)
                            (let ((_%e5669056718%_
                                   (gx#syntax-e _%tl5668956715%_)))
                              (let ((_%hd5669156722%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5669056718%_)))
                                    (_%tl5669256725%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5669056718%_))))
                                (if (gx#stx-pair? _%tl5669256725%_)
                                    (let ((_%e5669356728%_
                                           (gx#syntax-e _%tl5669256725%_)))
                                      (let ((_%hd5669456732%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5669356728%_)))
                                            (_%tl5669556735%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5669356728%_))))
                                        (if (gx#stx-null? _%tl5669556735%_)
                                            ((lambda (_%g5668556738%_
                                                      _%g5668656740%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'o)
                         '())
                   (cons (cons (gx#datum->syntax '#f 'and)
                               (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                           (cons (gx#datum->syntax '#f 'o)
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'fx>=)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'o)
                                                       (cons _%g5668656740%_
                                                             '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%g5668556738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5669456732%_
                                             _%hd5669156722%_)
                                            (_%g5668356701%_
                                             _%g5668456705%_))))
                                    (_%g5668356701%_ _%g5668456705%_))))
                            (_%g5668356701%_ _%g5668456705%_))))
                    (_%g5668356701%_ _%g5668456705%_)))))
        (_%g5668256756%_ _%$stx56679%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx56760%_)
      (let* ((_%g5676456782%_
              (lambda (_%g5676556778%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5676556778%_)))
             (_%g5676356837%_
              (lambda (_%g5676556786%_)
                (if (gx#stx-pair? _%g5676556786%_)
                    (let ((_%e5676856789%_ (gx#syntax-e _%g5676556786%_)))
                      (let ((_%hd5676956793%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5676856789%_)))
                            (_%tl5677056796%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5676856789%_))))
                        (if (gx#stx-pair? _%tl5677056796%_)
                            (let ((_%e5677156799%_
                                   (gx#syntax-e _%tl5677056796%_)))
                              (let ((_%hd5677256803%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5677156799%_)))
                                    (_%tl5677356806%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5677156799%_))))
                                (if (gx#stx-pair? _%tl5677356806%_)
                                    (let ((_%e5677456809%_
                                           (gx#syntax-e _%tl5677356806%_)))
                                      (let ((_%hd5677556813%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5677456809%_)))
                                            (_%tl5677656816%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5677456809%_))))
                                        (if (gx#stx-null? _%tl5677656816%_)
                                            ((lambda (_%g5676656819%_
                                                      _%g5676756821%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'o)
                         '())
                   (cons (cons (gx#datum->syntax '#f 'and)
                               (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                           (cons (gx#datum->syntax '#f 'o)
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'fx<=)
                                                 (cons _%g5676756821%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%g5676656819%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5677556813%_
                                             _%hd5677256803%_)
                                            (_%g5676456782%_
                                             _%g5676556786%_))))
                                    (_%g5676456782%_ _%g5676556786%_))))
                            (_%g5676456782%_ _%g5676556786%_))))
                    (_%g5676456782%_ _%g5676556786%_)))))
        (_%g5676356837%_ _%$stx56760%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx56841%_)
      (let* ((_%g5684556859%_
              (lambda (_%g5684656855%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5684656855%_)))
             (_%g5684456900%_
              (lambda (_%g5684656863%_)
                (if (gx#stx-pair? _%g5684656863%_)
                    (let ((_%e5684856866%_ (gx#syntax-e _%g5684656863%_)))
                      (let ((_%hd5684956870%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5684856866%_)))
                            (_%tl5685056873%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5684856866%_))))
                        (if (gx#stx-pair? _%tl5685056873%_)
                            (let ((_%e5685156876%_
                                   (gx#syntax-e _%tl5685056873%_)))
                              (let ((_%hd5685256880%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5685156876%_)))
                                    (_%tl5685356883%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5685156876%_))))
                                (if (gx#stx-null? _%tl5685356883%_)
                                    ((lambda (_%g5684756886%_)
                                       (cons (gx#datum->syntax '#f 'lambda)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'o)
                                                         '())
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'and)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'list?)
                                   (cons (gx#datum->syntax '#f 'o) '()))
                             (cons (cons (gx#datum->syntax '#f 'andmap)
                                         (cons _%g5684756886%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5685256880%_)
                                    (_%g5684556859%_ _%g5684656863%_))))
                            (_%g5684556859%_ _%g5684656863%_))))
                    (_%g5684556859%_ _%g5684656863%_)))))
        (_%g5684456900%_ _%$stx56841%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#one-of|
    (lambda (_%$stx56904%_)
      (let* ((_%g5690856928%_
              (lambda (_%g5690956924%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5690956924%_)))
             (_%g5690756997%_
              (lambda (_%g5690956932%_)
                (if (gx#stx-pair? _%g5690956932%_)
                    (let ((_%e5691156935%_ (gx#syntax-e _%g5690956932%_)))
                      (let ((_%hd5691256939%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5691156935%_)))
                            (_%tl5691356942%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5691156935%_))))
                        (if (gx#stx-pair/null? _%tl5691356942%_)
                            (let ((_g92726_
                                   (gx#syntax-split-splice
                                    _%tl5691356942%_
                                    '0)))
                              (begin
                                (let ((_g92727_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g92726_)
                                             (##values-length _g92726_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g92727_ 2)))
                                      (error "Context expects 2 values"
                                             _g92727_)))
                                (let ((_%target5691456945%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g92726_ 0)))
                                      (_%tl5691656948%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g92726_ 1))))
                                  (if (gx#stx-null? _%tl5691656948%_)
                                      (letrec ((_%loop5691756951%_
                                                (lambda (_%hd5691556955%_
                                                         _%val5692156958%_)
                                                  (if (gx#stx-pair?
                                                       _%hd5691556955%_)
                                                      (let ((_%e5691856960%_
                                                             (gx#syntax-e
                                                              _%hd5691556955%_)))
                                                        (let ((_%lp-hd5691956964%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e5691856960%_)))
                      (_%lp-tl5692056967%_
                       (let () (declare (not safe)) (##cdr _%e5691856960%_))))
                  (_%loop5691756951%_
                   _%lp-tl5692056967%_
                   (cons _%lp-hd5691956964%_ _%val5692156958%_))))
              (let ((_%val5692256970%_ (reverse _%val5692156958%_)))
                ((lambda (_%g5691056973%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f 'o) '())
                               (cons (cons (gx#datum->syntax '#f 'or)
                                           (foldr (lambda (_%g5698856991%_
                                                           _%g5698956994%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?)
                        (cons (gx#datum->syntax '#f 'o)
                              (cons (cons (gx#datum->syntax '#f 'quasiquote)
                                          (cons _%g5698856991%_ '()))
                                    '())))
                  _%g5698956994%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _%g5691056973%_))
                                     '()))))
                 _%val5692256970%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop5691756951%_
                                         _%target5691456945%_
                                         '()))
                                      (_%g5690856928%_ _%g5690956932%_)))))
                            (_%g5690856928%_ _%g5690956932%_))))
                    (_%g5690856928%_ _%g5690956932%_)))))
        (_%g5690756997%_ _%$stx56904%_)))))
