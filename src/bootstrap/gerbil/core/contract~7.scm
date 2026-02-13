(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx56851%_)
      (let* ((_%g5685556869%_
              (lambda (_%g5685656865%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5685656865%_)))
             (_%g5685456911%_
              (lambda (_%g5685656873%_)
                (if (gx#stx-pair? _%g5685656873%_)
                    (let ((_%e5685856876%_ (gx#syntax-e _%g5685656873%_)))
                      (let ((_%hd5685956880%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5685856876%_)))
                            (_%tl5686056883%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5685856876%_))))
                        (if (gx#stx-pair? _%tl5686056883%_)
                            (let ((_%e5686156886%_
                                   (gx#syntax-e _%tl5686056883%_)))
                              (let ((_%hd5686256890%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5686156886%_)))
                                    (_%tl5686356893%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5686156886%_))))
                                (if (gx#stx-null? _%tl5686356893%_)
                                    ((lambda (_%g5685756896%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%g5685756896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5686256890%_)
                                    (_%g5685556869%_ _%g5685656873%_))))
                            (_%g5685556869%_ _%g5685656873%_))))
                    (_%g5685556869%_ _%g5685656873%_)))))
        (_%g5685456911%_ _%$stx56851%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx56915%_)
      (let* ((_%g5691956937%_
              (lambda (_%g5692056933%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5692056933%_)))
             (_%g5691856992%_
              (lambda (_%g5692056941%_)
                (if (gx#stx-pair? _%g5692056941%_)
                    (let ((_%e5692356944%_ (gx#syntax-e _%g5692056941%_)))
                      (let ((_%hd5692456948%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5692356944%_)))
                            (_%tl5692556951%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5692356944%_))))
                        (if (gx#stx-pair? _%tl5692556951%_)
                            (let ((_%e5692656954%_
                                   (gx#syntax-e _%tl5692556951%_)))
                              (let ((_%hd5692756958%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5692656954%_)))
                                    (_%tl5692856961%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5692656954%_))))
                                (if (gx#stx-pair? _%tl5692856961%_)
                                    (let ((_%e5692956964%_
                                           (gx#syntax-e _%tl5692856961%_)))
                                      (let ((_%hd5693056968%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5692956964%_)))
                                            (_%tl5693156971%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5692956964%_))))
                                        (if (gx#stx-null? _%tl5693156971%_)
                                            ((lambda (_%g5692156974%_
                                                      _%g5692256976%_)
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
                                                       (cons _%g5692256976%_
                                                             '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%g5692156974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5693056968%_
                                             _%hd5692756958%_)
                                            (_%g5691956937%_
                                             _%g5692056941%_))))
                                    (_%g5691956937%_ _%g5692056941%_))))
                            (_%g5691956937%_ _%g5692056941%_))))
                    (_%g5691956937%_ _%g5692056941%_)))))
        (_%g5691856992%_ _%$stx56915%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx56996%_)
      (let* ((_%g5700057018%_
              (lambda (_%g5700157014%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5700157014%_)))
             (_%g5699957073%_
              (lambda (_%g5700157022%_)
                (if (gx#stx-pair? _%g5700157022%_)
                    (let ((_%e5700457025%_ (gx#syntax-e _%g5700157022%_)))
                      (let ((_%hd5700557029%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5700457025%_)))
                            (_%tl5700657032%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5700457025%_))))
                        (if (gx#stx-pair? _%tl5700657032%_)
                            (let ((_%e5700757035%_
                                   (gx#syntax-e _%tl5700657032%_)))
                              (let ((_%hd5700857039%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5700757035%_)))
                                    (_%tl5700957042%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5700757035%_))))
                                (if (gx#stx-pair? _%tl5700957042%_)
                                    (let ((_%e5701057045%_
                                           (gx#syntax-e _%tl5700957042%_)))
                                      (let ((_%hd5701157049%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5701057045%_)))
                                            (_%tl5701257052%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5701057045%_))))
                                        (if (gx#stx-null? _%tl5701257052%_)
                                            ((lambda (_%g5700257055%_
                                                      _%g5700357057%_)
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
                                                 (cons _%g5700357057%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%g5700257055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5701157049%_
                                             _%hd5700857039%_)
                                            (_%g5700057018%_
                                             _%g5700157022%_))))
                                    (_%g5700057018%_ _%g5700157022%_))))
                            (_%g5700057018%_ _%g5700157022%_))))
                    (_%g5700057018%_ _%g5700157022%_)))))
        (_%g5699957073%_ _%$stx56996%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx57077%_)
      (let* ((_%g5708157095%_
              (lambda (_%g5708257091%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5708257091%_)))
             (_%g5708057136%_
              (lambda (_%g5708257099%_)
                (if (gx#stx-pair? _%g5708257099%_)
                    (let ((_%e5708457102%_ (gx#syntax-e _%g5708257099%_)))
                      (let ((_%hd5708557106%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5708457102%_)))
                            (_%tl5708657109%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5708457102%_))))
                        (if (gx#stx-pair? _%tl5708657109%_)
                            (let ((_%e5708757112%_
                                   (gx#syntax-e _%tl5708657109%_)))
                              (let ((_%hd5708857116%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5708757112%_)))
                                    (_%tl5708957119%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5708757112%_))))
                                (if (gx#stx-null? _%tl5708957119%_)
                                    ((lambda (_%g5708357122%_)
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
                                         (cons _%g5708357122%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5708857116%_)
                                    (_%g5708157095%_ _%g5708257099%_))))
                            (_%g5708157095%_ _%g5708257099%_))))
                    (_%g5708157095%_ _%g5708257099%_)))))
        (_%g5708057136%_ _%$stx57077%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#one-of|
    (lambda (_%$stx57140%_)
      (let* ((_%g5714457164%_
              (lambda (_%g5714557160%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5714557160%_)))
             (_%g5714357233%_
              (lambda (_%g5714557168%_)
                (if (gx#stx-pair? _%g5714557168%_)
                    (let ((_%e5714757171%_ (gx#syntax-e _%g5714557168%_)))
                      (let ((_%hd5714857175%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5714757171%_)))
                            (_%tl5714957178%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5714757171%_))))
                        (if (gx#stx-pair/null? _%tl5714957178%_)
                            (let ((_g99666_
                                   (gx#syntax-split-splice
                                    _%tl5714957178%_
                                    '0)))
                              (begin
                                (let ((_g99667_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g99666_)
                                             (##values-length _g99666_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g99667_ 2)))
                                      (error "Context expects 2 values"
                                             _g99667_)))
                                (let ((_%target5715057181%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g99666_ 0)))
                                      (_%tl5715257184%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g99666_ 1))))
                                  (if (gx#stx-null? _%tl5715257184%_)
                                      (letrec ((_%loop5715357187%_
                                                (lambda (_%hd5715157191%_
                                                         _%val5715757194%_)
                                                  (if (gx#stx-pair?
                                                       _%hd5715157191%_)
                                                      (let ((_%e5715457196%_
                                                             (gx#syntax-e
                                                              _%hd5715157191%_)))
                                                        (let ((_%lp-hd5715557200%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e5715457196%_)))
                      (_%lp-tl5715657203%_
                       (let () (declare (not safe)) (##cdr _%e5715457196%_))))
                  (_%loop5715357187%_
                   _%lp-tl5715657203%_
                   (cons _%lp-hd5715557200%_ _%val5715757194%_))))
              (let ((_%val5715857206%_ (reverse _%val5715757194%_)))
                ((lambda (_%g5714657209%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f 'o) '())
                               (cons (cons (gx#datum->syntax '#f 'or)
                                           (foldr (lambda (_%g5722457227%_
                                                           _%g5722557230%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?)
                        (cons (gx#datum->syntax '#f 'o)
                              (cons (cons (gx#datum->syntax '#f 'quasiquote)
                                          (cons _%g5722457227%_ '()))
                                    '())))
                  _%g5722557230%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _%g5714657209%_))
                                     '()))))
                 _%val5715857206%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop5715357187%_
                                         _%target5715057181%_
                                         '()))
                                      (_%g5714457164%_ _%g5714557168%_)))))
                            (_%g5714457164%_ _%g5714557168%_))))
                    (_%g5714457164%_ _%g5714557168%_)))))
        (_%g5714357233%_ _%$stx57140%_)))))
