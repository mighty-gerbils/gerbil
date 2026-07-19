(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~QuasiquoteRuntime[:0:]#qq-quote|
    (lambda (_%$stx17403%_)
      (let* ((_%$%g1740717421%_
              (lambda (_%$%g1740817417%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g1740817417%_)))
             (_%$%g1740617463%_
              (lambda (_%$%g1740817425%_)
                (if (gx#stx-pair? _%$%g1740817425%_)
                    (let ((_%$%e1741017428%_ (gx#syntax-e _%$%g1740817425%_)))
                      (let ((_%$%hd1741117432%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e1741017428%_)))
                            (_%$%tl1741217435%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e1741017428%_))))
                        (if (gx#stx-pair? _%$%tl1741217435%_)
                            (let ((_%$%e1741317438%_
                                   (gx#syntax-e _%$%tl1741217435%_)))
                              (let ((_%$%hd1741417442%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e1741317438%_)))
                                    (_%$%tl1741517445%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e1741317438%_))))
                                (if (gx#stx-null? _%$%tl1741517445%_)
                                    (cons (gx#datum->syntax '#f 'quote)
                                          (cons _%$%hd1741417442%_ '()))
                                    (_%$%g1740717421%_ _%$%g1740817425%_))))
                            (_%$%g1740717421%_ _%$%g1740817425%_))))
                    (_%$%g1740717421%_ _%$%g1740817425%_)))))
        (_%$%g1740617463%_ _%$stx17403%_))))
  (define |gerbil/core/sugar~QuasiquoteRuntime[:0:]#qq-list|
    (lambda (_%$stx17467%_)
      (let* ((_%$%g1747117491%_
              (lambda (_%$%g1747217487%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g1747217487%_)))
             (_%$%g1747017560%_
              (lambda (_%$%g1747217495%_)
                (if (gx#stx-pair? _%$%g1747217495%_)
                    (let ((_%$%e1747417498%_ (gx#syntax-e _%$%g1747217495%_)))
                      (let ((_%$%hd1747517502%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e1747417498%_)))
                            (_%$%tl1747617505%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e1747417498%_))))
                        (if (gx#stx-pair/null? _%$%tl1747617505%_)
                            (let ((_g21964_
                                   (gx#syntax-split-splice
                                    _%$%tl1747617505%_
                                    '0)))
                              (begin
                                (let ((_g21965_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g21964_)
                                             (##values-length _g21964_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g21965_ 2)))
                                      (error "Context expects 2 values"
                                             _g21965_)))
                                (let ((_%$%target1747717508%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g21964_ 0)))
                                      (_%$%tl1747917511%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g21964_ 1))))
                                  (if (gx#stx-null? _%$%tl1747917511%_)
                                      (letrec ((_%$%loop1748017514%_
                                                (lambda (_%$%hd1747817518%_
                                                         _%$%x1748417521%_)
                                                  (if (gx#stx-pair?
                                                       _%$%hd1747817518%_)
                                                      (let ((_%$%e1748117523%_
                                                             (gx#syntax-e
                                                              _%$%hd1747817518%_)))
                                                        (let ((_%$%lp-hd1748217527%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e1748117523%_)))
                      (_%$%lp-tl1748317530%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e1748117523%_))))
                  (_%$%loop1748017514%_
                   _%$%lp-tl1748317530%_
                   (cons _%$%lp-hd1748217527%_ _%$%x1748417521%_))))
              (let ((_%$%x1748517533%_ (reverse _%$%x1748417521%_)))
                (cons (gx#datum->syntax '#f 'list)
                      (foldr (lambda (_%$%g1755117554%_ _%$%g1755217557%_)
                               (cons _%$%g1755117554%_ _%$%g1755217557%_))
                             '()
                             _%$%x1748517533%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%loop1748017514%_
                                         _%$%target1747717508%_
                                         '()))
                                      (_%$%g1747117491%_ _%$%g1747217495%_)))))
                            (_%$%g1747117491%_ _%$%g1747217495%_))))
                    (_%$%g1747117491%_ _%$%g1747217495%_)))))
        (_%$%g1747017560%_ _%$stx17467%_))))
  (define |gerbil/core/sugar~QuasiquoteRuntime[:0:]#qq-list*|
    (lambda (_%$stx17565%_)
      (let* ((_%$%g1756917593%_
              (lambda (_%$%g1757017589%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g1757017589%_)))
             (_%$%g1756817676%_
              (lambda (_%$%g1757017597%_)
                (if (gx#stx-pair? _%$%g1757017597%_)
                    (let ((_%$%e1757317600%_ (gx#syntax-e _%$%g1757017597%_)))
                      (let ((_%$%hd1757417604%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e1757317600%_)))
                            (_%$%tl1757517607%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e1757317600%_))))
                        (if (gx#stx-pair? _%$%tl1757517607%_)
                            (let ((_%$%e1757617610%_
                                   (gx#syntax-e _%$%tl1757517607%_)))
                              (let ((_%$%hd1757717614%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e1757617610%_)))
                                    (_%$%tl1757817617%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e1757617610%_))))
                                (if (gx#stx-pair/null? _%$%tl1757817617%_)
                                    (let ((_g21966_
                                           (gx#syntax-split-splice
                                            _%$%tl1757817617%_
                                            '0)))
                                      (begin
                                        (let ((_g21967_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g21966_)
                                                     (##values-length _g21966_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g21967_ 2)))
                                              (error "Context expects 2 values"
                                                     _g21967_)))
                                        (let ((_%$%target1757917620%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g21966_ 0)))
                                              (_%$%tl1758117623%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g21966_ 1))))
                                          (if (gx#stx-null? _%$%tl1758117623%_)
                                              (letrec ((_%$%loop1758217626%_
                                                        (lambda (_%$%hd1758017630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%y1758617633%_)
                  (if (gx#stx-pair? _%$%hd1758017630%_)
                      (let ((_%$%e1758317635%_
                             (gx#syntax-e _%$%hd1758017630%_)))
                        (let ((_%$%lp-hd1758417639%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1758317635%_)))
                              (_%$%lp-tl1758517642%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1758317635%_))))
                          (_%$%loop1758217626%_
                           _%$%lp-tl1758517642%_
                           (cons _%$%lp-hd1758417639%_ _%$%y1758617633%_))))
                      (let ((_%$%y1758717645%_ (reverse _%$%y1758617633%_)))
                        (cons (gx#datum->syntax '#f 'cons*)
                              (cons _%$%hd1757717614%_
                                    (foldr (lambda (_%$%g1766717670%_
                                                    _%$%g1766817673%_)
                                             (cons _%$%g1766717670%_
                                                   _%$%g1766817673%_))
                                           '()
                                           _%$%y1758717645%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop1758217626%_
                                                 _%$%target1757917620%_
                                                 '()))
                                              (_%$%g1756917593%_
                                               _%$%g1757017597%_)))))
                                    (_%$%g1756917593%_ _%$%g1757017597%_))))
                            (_%$%g1756917593%_ _%$%g1757017597%_))))
                    (_%$%g1756917593%_ _%$%g1757017597%_)))))
        (_%$%g1756817676%_ _%$stx17565%_))))
  (define |gerbil/core/sugar~QuasiquoteRuntime[:0:]#qq-append|
    (lambda (_%$stx17681%_)
      (let* ((_%$%g1768517705%_
              (lambda (_%$%g1768617701%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g1768617701%_)))
             (_%$%g1768417774%_
              (lambda (_%$%g1768617709%_)
                (if (gx#stx-pair? _%$%g1768617709%_)
                    (let ((_%$%e1768817712%_ (gx#syntax-e _%$%g1768617709%_)))
                      (let ((_%$%hd1768917716%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e1768817712%_)))
                            (_%$%tl1769017719%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e1768817712%_))))
                        (if (gx#stx-pair/null? _%$%tl1769017719%_)
                            (let ((_g21968_
                                   (gx#syntax-split-splice
                                    _%$%tl1769017719%_
                                    '0)))
                              (begin
                                (let ((_g21969_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g21968_)
                                             (##values-length _g21968_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g21969_ 2)))
                                      (error "Context expects 2 values"
                                             _g21969_)))
                                (let ((_%$%target1769117722%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g21968_ 0)))
                                      (_%$%tl1769317725%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g21968_ 1))))
                                  (if (gx#stx-null? _%$%tl1769317725%_)
                                      (letrec ((_%$%loop1769417728%_
                                                (lambda (_%$%hd1769217732%_
                                                         _%$%x1769817735%_)
                                                  (if (gx#stx-pair?
                                                       _%$%hd1769217732%_)
                                                      (let ((_%$%e1769517737%_
                                                             (gx#syntax-e
                                                              _%$%hd1769217732%_)))
                                                        (let ((_%$%lp-hd1769617741%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e1769517737%_)))
                      (_%$%lp-tl1769717744%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e1769517737%_))))
                  (_%$%loop1769417728%_
                   _%$%lp-tl1769717744%_
                   (cons _%$%lp-hd1769617741%_ _%$%x1769817735%_))))
              (let ((_%$%x1769917747%_ (reverse _%$%x1769817735%_)))
                (cons (gx#datum->syntax '#f 'append)
                      (foldr (lambda (_%$%g1776517768%_ _%$%g1776617771%_)
                               (cons _%$%g1776517768%_ _%$%g1776617771%_))
                             '()
                             _%$%x1769917747%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%loop1769417728%_
                                         _%$%target1769117722%_
                                         '()))
                                      (_%$%g1768517705%_ _%$%g1768617709%_)))))
                            (_%$%g1768517705%_ _%$%g1768617709%_))))
                    (_%$%g1768517705%_ _%$%g1768617709%_)))))
        (_%$%g1768417774%_ _%$stx17681%_)))))
