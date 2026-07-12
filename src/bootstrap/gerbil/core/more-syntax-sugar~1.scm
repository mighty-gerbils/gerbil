(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[1]#_g47416_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-syntax-sugar[1]#_g47417_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-syntax-sugar[1]#_g47418_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
      (lambda (_%$stx46424%_)
        (let* ((_%$%g4642846439%_
                (lambda (_%$%g4642946435%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4642946435%_)))
               (_%$%g4642746469%_
                (lambda (_%$%g4642946443%_)
                  (if (gx#stx-pair? _%$%g4642946443%_)
                      (let ((_%$%e4643146446%_
                             (gx#syntax-e _%$%g4642946443%_)))
                        (let ((_%$%hd4643246450%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4643146446%_)))
                              (_%$%tl4643346453%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4643146446%_))))
                          (cons (gx#datum->syntax '#f 'make-setq-macro)
                                (cons 'macro:
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'syntax-rules)
                                                  _%$%tl4643346453%_)
                                            '())))))
                      (_%$%g4642846439%_ _%$%g4642946443%_)))))
          (_%$%g4642746469%_ _%$stx46424%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifiers|
      (lambda (_%stx46473%_)
        (let* ((_%$%g4647646509%_
                (lambda (_%$%g4647746505%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4647746505%_)))
               (_%$%g4647547073%_
                (lambda (_%$%g4647746513%_)
                  (if (gx#stx-pair? _%$%g4647746513%_)
                      (let ((_%$%e4648046516%_
                             (gx#syntax-e _%$%g4647746513%_)))
                        (let ((_%$%hd4648146520%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4648046516%_)))
                              (_%$%tl4648246523%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4648046516%_))))
                          (if (gx#stx-pair? _%$%tl4648246523%_)
                              (let ((_%$%e4648346526%_
                                     (gx#syntax-e _%$%tl4648246523%_)))
                                (let ((_%$%hd4648446530%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4648346526%_)))
                                      (_%$%tl4648546533%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4648346526%_))))
                                  (if (gx#stx-pair/null? _%$%hd4648446530%_)
                                      (let ((_g47410_
                                             (gx#syntax-split-splice
                                              _%$%hd4648446530%_
                                              '0)))
                                        (begin
                                          (let ((_g47411_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47410_)
                                                       (##values-length
                                                        _g47410_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47411_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47411_)))
                                          (let ((_%$%target4648646536%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g47410_ 0)))
                                                (_%$%tl4648846539%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g47410_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4648846539%_)
                                                (letrec ((_%$%loop4648946542%_
                                                          (lambda (_%$%hd4648746546%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%clause4649346549%_)
                    (if (gx#stx-pair? _%$%hd4648746546%_)
                        (let ((_%$%e4649046551%_
                               (gx#syntax-e _%$%hd4648746546%_)))
                          (let ((_%$%lp-hd4649146555%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4649046551%_)))
                                (_%$%lp-tl4649246558%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4649046551%_))))
                            (_%$%loop4648946542%_
                             _%$%lp-tl4649246558%_
                             (cons _%$%lp-hd4649146555%_
                                   _%$%clause4649346549%_))))
                        (let ((_%$%clause4649446561%_
                               (reverse _%$%clause4649346549%_)))
                          (if (gx#stx-pair/null? _%$%tl4648546533%_)
                              (let ((_g47412_
                                     (gx#syntax-split-splice
                                      _%$%tl4648546533%_
                                      '0)))
                                (begin
                                  (let ((_g47413_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g47412_)
                                               (##values-length _g47412_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g47413_ 2)))
                                        (error "Context expects 2 values"
                                               _g47413_)))
                                  (let ((_%$%target4649546564%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g47412_ 0)))
                                        (_%$%tl4649746567%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g47412_ 1))))
                                    (if (gx#stx-null? _%$%tl4649746567%_)
                                        (letrec ((_%$%loop4649846570%_
                                                  (lambda (_%$%hd4649646574%_
                                                           _%$%body4650246577%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4649646574%_)
                                                        (let ((_%$%e4649946579%_
                                                               (gx#syntax-e
                                                                _%$%hd4649646574%_)))
                                                          (let ((_%$%lp-hd4650046583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4649946579%_)))
                        (_%$%lp-tl4650146586%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4649946579%_))))
                    (_%$%loop4649846570%_
                     _%$%lp-tl4650146586%_
                     (cons _%$%lp-hd4650046583%_ _%$%body4650246577%_))))
                (let* ((_%$%body4650346589%_ (reverse _%$%body4650246577%_))
                       (_%$%g4661646633%_
                        (lambda (_%$%g4661746629%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g4661746629%_)))
                       (_%$%g4661546700%_
                        (lambda (_%$%g4661746637%_)
                          (if (gx#stx-pair/null? _%$%g4661746637%_)
                              (let ((_g47414_
                                     (gx#syntax-split-splice
                                      _%$%g4661746637%_
                                      '0)))
                                (begin
                                  (let ((_g47415_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g47414_)
                                               (##values-length _g47414_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g47415_ 2)))
                                        (error "Context expects 2 values"
                                               _g47415_)))
                                  (let ((_%$%target4661946640%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g47414_ 0)))
                                        (_%$%tl4662146643%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g47414_ 1))))
                                    (if (gx#stx-null? _%$%tl4662146643%_)
                                        (letrec ((_%$%loop4662246646%_
                                                  (lambda (_%$%hd4662046650%_
                                                           _%$%clause4662646653%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4662046650%_)
                                                        (let ((_%$%e4662346655%_
                                                               (gx#syntax-e
                                                                _%$%hd4662046650%_)))
                                                          (let ((_%$%lp-hd4662446659%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4662346655%_)))
                        (_%$%lp-tl4662546662%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4662346655%_))))
                    (_%$%loop4662246646%_
                     _%$%lp-tl4662546662%_
                     (cons _%$%lp-hd4662446659%_ _%$%clause4662646653%_))))
                (let ((_%$%clause4662746665%_
                       (reverse _%$%clause4662646653%_)))
                  (cons (gx#datum->syntax '#f 'with-syntax*)
                        (cons (foldr (lambda (_%$%g4668346688%_
                                              _%$%g4668446691%_)
                                       (cons _%$%g4668346688%_
                                             _%$%g4668446691%_))
                                     '()
                                     _%$%clause4662746665%_)
                              (foldr (lambda (_%$%g4668546694%_
                                              _%$%g4668646697%_)
                                       (cons _%$%g4668546694%_
                                             _%$%g4668646697%_))
                                     '()
                                     _%$%body4650346589%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4662246646%_
                                           _%$%target4661946640%_
                                           '()))
                                        (_%$%g4661646633%_
                                         _%$%g4661746637%_)))))
                              (_%$%g4661646633%_ _%$%g4661746637%_)))))
                  (_%$%g4661546700%_
                   (map (lambda (_%clause46704%_)
                          (let* ((_%__stx4727947280%_ _%clause46704%_)
                                 (_%$%g4671046777%_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx4727947280%_))))
                            (let ((_%__kont4728247283%_
                                   (lambda (_%$%g4671247042%_
                                            _%$%g4671347044%_)
                                     (cons _%$%g4671347044%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'syntax-local-temp)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote)
                           (cons _%$%g4671247042%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                                  (_%__kont4728447285%_
                                   (lambda (_%$%g4672646976%_
                                            _%$%g4672746978%_)
                                     (cons _%$%g4672746978%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'genident)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote)
                           (cons _%$%g4672646976%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                                  (_%__kont4728647287%_
                                   (lambda (_%$%g4674046910%_
                                            _%$%g4674146912%_)
                                     (cons _%$%g4674146912%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'syntax-local-introduce)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote)
                           (cons _%$%g4674046910%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                                  (_%__kont4728847289%_
                                   (lambda (_%$%g4675446832%_
                                            _%$%g4675546834%_
                                            _%$%g4675646835%_)
                                     (cons _%$%g4675646835%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-identifier)
                                                       (cons _%$%g4675546834%_
                                                             (foldr (lambda (_%$%g4685446857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%$%g4685546860%_)
                              (cons _%$%g4685446857%_ _%$%g4685546860%_))
                            '()
                            _%$%g4675446832%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                              (let* ((_%__match4740847409%_
                                      (lambda (_%$%e4675746784%_
                                               _%$%hd4675846788%_
                                               _%$%tl4675946791%_
                                               _%$%e4676046794%_
                                               _%$%hd4676146798%_
                                               _%$%tl4676246801%_
                                               _%__splice4729047291%_
                                               _%$%target4676346804%_
                                               _%$%tl4676546807%_)
                                        (letrec ((_%$%loop4676646810%_
                                                  (lambda (_%$%hd4676446814%_
                                                           _%$%components4677046817%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4676446814%_)
                                                        (let ((_%$%e4676746819%_
                                                               (gx#syntax-e
                                                                _%$%hd4676446814%_)))
                                                          (let ((_%$%lp-tl4676946826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4676746819%_)))
                        (_%$%lp-hd4676846823%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4676746819%_))))
                    (_%$%loop4676646810%_
                     _%$%lp-tl4676946826%_
                     (cons _%$%lp-hd4676846823%_ _%$%components4677046817%_))))
                (let ((_%$%components4677146829%_
                       (reverse _%$%components4677046817%_)))
                  (let ((_%$%g4675446832%_ _%$%components4677146829%_)
                        (_%$%g4675546834%_ _%$%hd4676146798%_)
                        (_%$%g4675646835%_ _%$%hd4675846788%_))
                    (if (gx#identifier? _%$%g4675646835%_)
                        (_%__kont4728847289%_
                         _%$%g4675446832%_
                         _%$%g4675546834%_
                         _%$%g4675646835%_)
                        (_%$%g4671046777%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4676646810%_
                                           _%$%target4676346804%_
                                           '()))))
                                     (_%__match4738847389%_
                                      (lambda (_%$%e4674246870%_
                                               _%$%hd4674346874%_
                                               _%$%tl4674446877%_
                                               _%$%e4674546880%_
                                               _%$%hd4674646884%_
                                               _%$%tl4674746887%_
                                               _%$%e4674846890%_
                                               _%$%hd4674946894%_
                                               _%$%tl4675046897%_
                                               _%$%e4675146900%_
                                               _%$%hd4675246904%_
                                               _%$%tl4675346907%_)
                                        (let ((_%$%g4674046910%_
                                               _%$%hd4675246904%_)
                                              (_%$%g4674146912%_
                                               _%$%hd4674346874%_))
                                          (if (and (gx#identifier?
                                                    _%$%g4674146912%_)
                                                   (gx#identifier?
                                                    _%$%g4674046910%_))
                                              (_%__kont4728647287%_
                                               _%$%g4674046910%_
                                               _%$%g4674146912%_)
                                              (if (gx#stx-pair/null?
                                                   _%$%tl4674746887%_)
                                                  (let ((_%__splice4729047291%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl4674746887%_
                                                          '0)))
                                                    (let ((_%$%tl4676546807%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4729047291%_
                                                              '1)))
                                                          (_%$%target4676346804%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4729047291%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4676546807%_)
                                                          (_%__match4740847409%_
                                                           _%$%e4674246870%_
                                                           _%$%hd4674346874%_
                                                           _%$%tl4674446877%_
                                                           _%$%e4674546880%_
                                                           _%$%hd4674646884%_
                                                           _%$%tl4674746887%_
                                                           _%__splice4729047291%_
                                                           _%$%target4676346804%_
                                                           _%$%tl4676546807%_)
                                                          (_%$%g4671046777%_))))
                                                  (_%$%g4671046777%_))))))
                                     (_%__match4735647357%_
                                      (lambda (_%$%e4672846936%_
                                               _%$%hd4672946940%_
                                               _%$%tl4673046943%_
                                               _%$%e4673146946%_
                                               _%$%hd4673246950%_
                                               _%$%tl4673346953%_
                                               _%$%e4673446956%_
                                               _%$%hd4673546960%_
                                               _%$%tl4673646963%_
                                               _%$%e4673746966%_
                                               _%$%hd4673846970%_
                                               _%$%tl4673946973%_)
                                        (let ((_%$%g4672646976%_
                                               _%$%hd4673846970%_)
                                              (_%$%g4672746978%_
                                               _%$%hd4672946940%_))
                                          (if (and (gx#identifier?
                                                    _%$%g4672746978%_)
                                                   (gx#identifier?
                                                    _%$%g4672646976%_))
                                              (_%__kont4728447285%_
                                               _%$%g4672646976%_
                                               _%$%g4672746978%_)
                                              (if (gx#stx-pair/null?
                                                   _%$%tl4673346953%_)
                                                  (let ((_%__splice4729047291%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl4673346953%_
                                                          '0)))
                                                    (let ((_%$%tl4676546807%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4729047291%_
                                                              '1)))
                                                          (_%$%target4676346804%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4729047291%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4676546807%_)
                                                          (_%__match4740847409%_
                                                           _%$%e4672846936%_
                                                           _%$%hd4672946940%_
                                                           _%$%tl4673046943%_
                                                           _%$%e4673146946%_
                                                           _%$%hd4673246950%_
                                                           _%$%tl4673346953%_
                                                           _%__splice4729047291%_
                                                           _%$%target4676346804%_
                                                           _%$%tl4676546807%_)
                                                          (_%$%g4671046777%_))))
                                                  (_%$%g4671046777%_))))))
                                     (_%__match4732447325%_
                                      (lambda (_%$%e4671447002%_
                                               _%$%hd4671547006%_
                                               _%$%tl4671647009%_
                                               _%$%e4671747012%_
                                               _%$%hd4671847016%_
                                               _%$%tl4671947019%_
                                               _%$%e4672047022%_
                                               _%$%hd4672147026%_
                                               _%$%tl4672247029%_
                                               _%$%e4672347032%_
                                               _%$%hd4672447036%_
                                               _%$%tl4672547039%_)
                                        (let ((_%$%g4671247042%_
                                               _%$%hd4672447036%_)
                                              (_%$%g4671347044%_
                                               _%$%hd4671547006%_))
                                          (if (and (gx#identifier?
                                                    _%$%g4671347044%_)
                                                   (gx#identifier?
                                                    _%$%g4671247042%_))
                                              (_%__kont4728247283%_
                                               _%$%g4671247042%_
                                               _%$%g4671347044%_)
                                              (if (gx#stx-pair/null?
                                                   _%$%tl4671947019%_)
                                                  (let ((_%__splice4729047291%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl4671947019%_
                                                          '0)))
                                                    (let ((_%$%tl4676546807%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4729047291%_
                                                              '1)))
                                                          (_%$%target4676346804%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4729047291%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4676546807%_)
                                                          (_%__match4740847409%_
                                                           _%$%e4671447002%_
                                                           _%$%hd4671547006%_
                                                           _%$%tl4671647009%_
                                                           _%$%e4671747012%_
                                                           _%$%hd4671847016%_
                                                           _%$%tl4671947019%_
                                                           _%__splice4729047291%_
                                                           _%$%target4676346804%_
                                                           _%$%tl4676546807%_)
                                                          (_%$%g4671046777%_))))
                                                  (_%$%g4671046777%_)))))))
                                (if (gx#stx-pair? _%__stx4727947280%_)
                                    (let ((_%$%e4671447002%_
                                           (gx#syntax-e _%__stx4727947280%_)))
                                      (let ((_%$%tl4671647009%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4671447002%_)))
                                            (_%$%hd4671547006%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4671447002%_))))
                                        (if (gx#stx-pair? _%$%tl4671647009%_)
                                            (let ((_%$%e4671747012%_
                                                   (gx#syntax-e
                                                    _%$%tl4671647009%_)))
                                              (let ((_%$%tl4671947019%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4671747012%_)))
                                                    (_%$%hd4671847016%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4671747012%_))))
                                                (if (gx#stx-pair?
                                                     _%$%hd4671847016%_)
                                                    (let ((_%$%e4672047022%_
                                                           (gx#syntax-e
                                                            _%$%hd4671847016%_)))
                                                      (let ((_%$%tl4672247029%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e4672047022%_)))
                    (_%$%hd4672147026%_
                     (let () (declare (not safe)) (##car _%$%e4672047022%_))))
                (if (gx#identifier? _%$%hd4672147026%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/more-syntax-sugar[1]#_g47416_|
                         _%$%hd4672147026%_)
                        (if (gx#stx-pair? _%$%tl4672247029%_)
                            (let ((_%$%e4672347032%_
                                   (gx#syntax-e _%$%tl4672247029%_)))
                              (let ((_%$%tl4672547039%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e4672347032%_)))
                                    (_%$%hd4672447036%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e4672347032%_))))
                                (if (gx#stx-null? _%$%tl4672547039%_)
                                    (if (gx#stx-null? _%$%tl4671947019%_)
                                        (_%__match4732447325%_
                                         _%$%e4671447002%_
                                         _%$%hd4671547006%_
                                         _%$%tl4671647009%_
                                         _%$%e4671747012%_
                                         _%$%hd4671847016%_
                                         _%$%tl4671947019%_
                                         _%$%e4672047022%_
                                         _%$%hd4672147026%_
                                         _%$%tl4672247029%_
                                         _%$%e4672347032%_
                                         _%$%hd4672447036%_
                                         _%$%tl4672547039%_)
                                        (if (gx#stx-pair/null?
                                             _%$%tl4671947019%_)
                                            (let ((_%__splice4729047291%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4671947019%_
                                                    '0)))
                                              (let ((_%$%tl4676546807%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4729047291%_
                                                        '1)))
                                                    (_%$%target4676346804%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4729047291%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4676546807%_)
                                                    (_%__match4740847409%_
                                                     _%$%e4671447002%_
                                                     _%$%hd4671547006%_
                                                     _%$%tl4671647009%_
                                                     _%$%e4671747012%_
                                                     _%$%hd4671847016%_
                                                     _%$%tl4671947019%_
                                                     _%__splice4729047291%_
                                                     _%$%target4676346804%_
                                                     _%$%tl4676546807%_)
                                                    (_%$%g4671046777%_))))
                                            (_%$%g4671046777%_)))
                                    (if (gx#stx-pair/null? _%$%tl4671947019%_)
                                        (let ((_%__splice4729047291%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl4671947019%_
                                                '0)))
                                          (let ((_%$%tl4676546807%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4729047291%_
                                                    '1)))
                                                (_%$%target4676346804%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4729047291%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl4676546807%_)
                                                (_%__match4740847409%_
                                                 _%$%e4671447002%_
                                                 _%$%hd4671547006%_
                                                 _%$%tl4671647009%_
                                                 _%$%e4671747012%_
                                                 _%$%hd4671847016%_
                                                 _%$%tl4671947019%_
                                                 _%__splice4729047291%_
                                                 _%$%target4676346804%_
                                                 _%$%tl4676546807%_)
                                                (_%$%g4671046777%_))))
                                        (_%$%g4671046777%_)))))
                            (if (gx#stx-pair/null? _%$%tl4671947019%_)
                                (let ((_%__splice4729047291%_
                                       (gx#syntax-split-splice->vector
                                        _%$%tl4671947019%_
                                        '0)))
                                  (let ((_%$%tl4676546807%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice4729047291%_
                                            '1)))
                                        (_%$%target4676346804%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice4729047291%_
                                            '0))))
                                    (if (gx#stx-null? _%$%tl4676546807%_)
                                        (_%__match4740847409%_
                                         _%$%e4671447002%_
                                         _%$%hd4671547006%_
                                         _%$%tl4671647009%_
                                         _%$%e4671747012%_
                                         _%$%hd4671847016%_
                                         _%$%tl4671947019%_
                                         _%__splice4729047291%_
                                         _%$%target4676346804%_
                                         _%$%tl4676546807%_)
                                        (_%$%g4671046777%_))))
                                (_%$%g4671046777%_)))
                        (if (gx#free-identifier=?
                             |gerbil/core/more-syntax-sugar[1]#_g47417_|
                             _%$%hd4672147026%_)
                            (if (gx#stx-pair? _%$%tl4672247029%_)
                                (let ((_%$%e4673746966%_
                                       (gx#syntax-e _%$%tl4672247029%_)))
                                  (let ((_%$%tl4673946973%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4673746966%_)))
                                        (_%$%hd4673846970%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4673746966%_))))
                                    (if (gx#stx-null? _%$%tl4673946973%_)
                                        (if (gx#stx-null? _%$%tl4671947019%_)
                                            (_%__match4735647357%_
                                             _%$%e4671447002%_
                                             _%$%hd4671547006%_
                                             _%$%tl4671647009%_
                                             _%$%e4671747012%_
                                             _%$%hd4671847016%_
                                             _%$%tl4671947019%_
                                             _%$%e4672047022%_
                                             _%$%hd4672147026%_
                                             _%$%tl4672247029%_
                                             _%$%e4673746966%_
                                             _%$%hd4673846970%_
                                             _%$%tl4673946973%_)
                                            (if (gx#stx-pair/null?
                                                 _%$%tl4671947019%_)
                                                (let ((_%__splice4729047291%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl4671947019%_
                                                        '0)))
                                                  (let ((_%$%tl4676546807%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4729047291%_
                                                            '1)))
                                                        (_%$%target4676346804%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4729047291%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4676546807%_)
                                                        (_%__match4740847409%_
                                                         _%$%e4671447002%_
                                                         _%$%hd4671547006%_
                                                         _%$%tl4671647009%_
                                                         _%$%e4671747012%_
                                                         _%$%hd4671847016%_
                                                         _%$%tl4671947019%_
                                                         _%__splice4729047291%_
                                                         _%$%target4676346804%_
                                                         _%$%tl4676546807%_)
                                                        (_%$%g4671046777%_))))
                                                (_%$%g4671046777%_)))
                                        (if (gx#stx-pair/null?
                                             _%$%tl4671947019%_)
                                            (let ((_%__splice4729047291%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4671947019%_
                                                    '0)))
                                              (let ((_%$%tl4676546807%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4729047291%_
                                                        '1)))
                                                    (_%$%target4676346804%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4729047291%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4676546807%_)
                                                    (_%__match4740847409%_
                                                     _%$%e4671447002%_
                                                     _%$%hd4671547006%_
                                                     _%$%tl4671647009%_
                                                     _%$%e4671747012%_
                                                     _%$%hd4671847016%_
                                                     _%$%tl4671947019%_
                                                     _%__splice4729047291%_
                                                     _%$%target4676346804%_
                                                     _%$%tl4676546807%_)
                                                    (_%$%g4671046777%_))))
                                            (_%$%g4671046777%_)))))
                                (if (gx#stx-pair/null? _%$%tl4671947019%_)
                                    (let ((_%__splice4729047291%_
                                           (gx#syntax-split-splice->vector
                                            _%$%tl4671947019%_
                                            '0)))
                                      (let ((_%$%tl4676546807%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4729047291%_
                                                '1)))
                                            (_%$%target4676346804%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4729047291%_
                                                '0))))
                                        (if (gx#stx-null? _%$%tl4676546807%_)
                                            (_%__match4740847409%_
                                             _%$%e4671447002%_
                                             _%$%hd4671547006%_
                                             _%$%tl4671647009%_
                                             _%$%e4671747012%_
                                             _%$%hd4671847016%_
                                             _%$%tl4671947019%_
                                             _%__splice4729047291%_
                                             _%$%target4676346804%_
                                             _%$%tl4676546807%_)
                                            (_%$%g4671046777%_))))
                                    (_%$%g4671046777%_)))
                            (if (gx#free-identifier=?
                                 |gerbil/core/more-syntax-sugar[1]#_g47418_|
                                 _%$%hd4672147026%_)
                                (if (gx#stx-pair? _%$%tl4672247029%_)
                                    (let ((_%$%e4675146900%_
                                           (gx#syntax-e _%$%tl4672247029%_)))
                                      (let ((_%$%tl4675346907%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4675146900%_)))
                                            (_%$%hd4675246904%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4675146900%_))))
                                        (if (gx#stx-null? _%$%tl4675346907%_)
                                            (if (gx#stx-null?
                                                 _%$%tl4671947019%_)
                                                (_%__match4738847389%_
                                                 _%$%e4671447002%_
                                                 _%$%hd4671547006%_
                                                 _%$%tl4671647009%_
                                                 _%$%e4671747012%_
                                                 _%$%hd4671847016%_
                                                 _%$%tl4671947019%_
                                                 _%$%e4672047022%_
                                                 _%$%hd4672147026%_
                                                 _%$%tl4672247029%_
                                                 _%$%e4675146900%_
                                                 _%$%hd4675246904%_
                                                 _%$%tl4675346907%_)
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4671947019%_)
                                                    (let ((_%__splice4729047291%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4671947019%_
                                                            '0)))
                                                      (let ((_%$%tl4676546807%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4729047291%_ '1)))
                    (_%$%target4676346804%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4729047291%_ '0))))
                (if (gx#stx-null? _%$%tl4676546807%_)
                    (_%__match4740847409%_
                     _%$%e4671447002%_
                     _%$%hd4671547006%_
                     _%$%tl4671647009%_
                     _%$%e4671747012%_
                     _%$%hd4671847016%_
                     _%$%tl4671947019%_
                     _%__splice4729047291%_
                     _%$%target4676346804%_
                     _%$%tl4676546807%_)
                    (_%$%g4671046777%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4671046777%_)))
                                            (if (gx#stx-pair/null?
                                                 _%$%tl4671947019%_)
                                                (let ((_%__splice4729047291%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl4671947019%_
                                                        '0)))
                                                  (let ((_%$%tl4676546807%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4729047291%_
                                                            '1)))
                                                        (_%$%target4676346804%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4729047291%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4676546807%_)
                                                        (_%__match4740847409%_
                                                         _%$%e4671447002%_
                                                         _%$%hd4671547006%_
                                                         _%$%tl4671647009%_
                                                         _%$%e4671747012%_
                                                         _%$%hd4671847016%_
                                                         _%$%tl4671947019%_
                                                         _%__splice4729047291%_
                                                         _%$%target4676346804%_
                                                         _%$%tl4676546807%_)
                                                        (_%$%g4671046777%_))))
                                                (_%$%g4671046777%_)))))
                                    (if (gx#stx-pair/null? _%$%tl4671947019%_)
                                        (let ((_%__splice4729047291%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl4671947019%_
                                                '0)))
                                          (let ((_%$%tl4676546807%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4729047291%_
                                                    '1)))
                                                (_%$%target4676346804%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4729047291%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl4676546807%_)
                                                (_%__match4740847409%_
                                                 _%$%e4671447002%_
                                                 _%$%hd4671547006%_
                                                 _%$%tl4671647009%_
                                                 _%$%e4671747012%_
                                                 _%$%hd4671847016%_
                                                 _%$%tl4671947019%_
                                                 _%__splice4729047291%_
                                                 _%$%target4676346804%_
                                                 _%$%tl4676546807%_)
                                                (_%$%g4671046777%_))))
                                        (_%$%g4671046777%_)))
                                (if (gx#stx-pair/null? _%$%tl4671947019%_)
                                    (let ((_%__splice4729047291%_
                                           (gx#syntax-split-splice->vector
                                            _%$%tl4671947019%_
                                            '0)))
                                      (let ((_%$%tl4676546807%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4729047291%_
                                                '1)))
                                            (_%$%target4676346804%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4729047291%_
                                                '0))))
                                        (if (gx#stx-null? _%$%tl4676546807%_)
                                            (_%__match4740847409%_
                                             _%$%e4671447002%_
                                             _%$%hd4671547006%_
                                             _%$%tl4671647009%_
                                             _%$%e4671747012%_
                                             _%$%hd4671847016%_
                                             _%$%tl4671947019%_
                                             _%__splice4729047291%_
                                             _%$%target4676346804%_
                                             _%$%tl4676546807%_)
                                            (_%$%g4671046777%_))))
                                    (_%$%g4671046777%_)))))
                    (if (gx#stx-pair/null? _%$%tl4671947019%_)
                        (let ((_%__splice4729047291%_
                               (gx#syntax-split-splice->vector
                                _%$%tl4671947019%_
                                '0)))
                          (let ((_%$%tl4676546807%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4729047291%_ '1)))
                                (_%$%target4676346804%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4729047291%_ '0))))
                            (if (gx#stx-null? _%$%tl4676546807%_)
                                (_%__match4740847409%_
                                 _%$%e4671447002%_
                                 _%$%hd4671547006%_
                                 _%$%tl4671647009%_
                                 _%$%e4671747012%_
                                 _%$%hd4671847016%_
                                 _%$%tl4671947019%_
                                 _%__splice4729047291%_
                                 _%$%target4676346804%_
                                 _%$%tl4676546807%_)
                                (_%$%g4671046777%_))))
                        (_%$%g4671046777%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl4671947019%_)
                                                        (let ((_%__splice4729047291%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl4671947019%_
                                                                '0)))
                                                          (let ((_%$%tl4676546807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4729047291%_ '1)))
                        (_%$%target4676346804%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4729047291%_ '0))))
                    (if (gx#stx-null? _%$%tl4676546807%_)
                        (_%__match4740847409%_
                         _%$%e4671447002%_
                         _%$%hd4671547006%_
                         _%$%tl4671647009%_
                         _%$%e4671747012%_
                         _%$%hd4671847016%_
                         _%$%tl4671947019%_
                         _%__splice4729047291%_
                         _%$%target4676346804%_
                         _%$%tl4676546807%_)
                        (_%$%g4671046777%_))))
                (_%$%g4671046777%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g4671046777%_))))
                                    (_%$%g4671046777%_))))))
                        (foldr (lambda (_%$%g4706447067%_ _%$%g4706547070%_)
                                 (cons _%$%g4706447067%_ _%$%g4706547070%_))
                               '()
                               _%$%clause4649446561%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4649846570%_
                                           _%$%target4649546564%_
                                           '()))
                                        (_%$%g4647646509%_
                                         _%$%g4647746513%_)))))
                              (_%$%g4647646509%_ _%$%g4647746513%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4648946542%_
                                                   _%$%target4648646536%_
                                                   '()))
                                                (_%$%g4647646509%_
                                                 _%$%g4647746513%_)))))
                                      (_%$%g4647646509%_ _%$%g4647746513%_))))
                              (_%$%g4647646509%_ _%$%g4647746513%_))))
                      (_%$%g4647646509%_ _%$%g4647746513%_)))))
          (_%$%g4647547073%_ _%stx46473%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifier|
      (lambda (_%$stx47081%_)
        (let* ((_%$%g4708547122%_
                (lambda (_%$%g4708647118%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4708647118%_)))
               (_%$%g4708447259%_
                (lambda (_%$%g4708647126%_)
                  (if (gx#stx-pair? _%$%g4708647126%_)
                      (let ((_%$%e4709047129%_
                             (gx#syntax-e _%$%g4708647126%_)))
                        (let ((_%$%hd4709147133%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4709047129%_)))
                              (_%$%tl4709247136%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4709047129%_))))
                          (if (gx#stx-pair? _%$%tl4709247136%_)
                              (let ((_%$%e4709347139%_
                                     (gx#syntax-e _%$%tl4709247136%_)))
                                (let ((_%$%hd4709447143%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4709347139%_)))
                                      (_%$%tl4709547146%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4709347139%_))))
                                  (if (gx#stx-pair? _%$%hd4709447143%_)
                                      (let ((_%$%e4709647149%_
                                             (gx#syntax-e _%$%hd4709447143%_)))
                                        (let ((_%$%hd4709747153%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4709647149%_)))
                                              (_%$%tl4709847156%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4709647149%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl4709847156%_)
                                              (let ((_g47419_
                                                     (gx#syntax-split-splice
                                                      _%$%tl4709847156%_
                                                      '0)))
                                                (begin
                                                  (let ((_g47420_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g47419_)
                                                               (##values-length
                                                                _g47419_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g47420_ 2)))
                (error "Context expects 2 values" _g47420_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target4709947159%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g47419_
                                                            0)))
                                                        (_%$%tl4710147162%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g47419_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4710147162%_)
                                                        (letrec ((_%$%loop4710247165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4710047169%_
                                   _%$%components4710647172%_)
                            (if (gx#stx-pair? _%$%hd4710047169%_)
                                (let ((_%$%e4710347174%_
                                       (gx#syntax-e _%$%hd4710047169%_)))
                                  (let ((_%$%lp-hd4710447178%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4710347174%_)))
                                        (_%$%lp-tl4710547181%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4710347174%_))))
                                    (_%$%loop4710247165%_
                                     _%$%lp-tl4710547181%_
                                     (cons _%$%lp-hd4710447178%_
                                           _%$%components4710647172%_))))
                                (let ((_%$%components4710747184%_
                                       (reverse _%$%components4710647172%_)))
                                  (if (gx#stx-pair/null? _%$%tl4709547146%_)
                                      (let ((_g47421_
                                             (gx#syntax-split-splice
                                              _%$%tl4709547146%_
                                              '0)))
                                        (begin
                                          (let ((_g47422_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47421_)
                                                       (##values-length
                                                        _g47421_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47422_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47422_)))
                                          (let ((_%$%target4710847187%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g47421_ 0)))
                                                (_%$%tl4711047190%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g47421_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4711047190%_)
                                                (letrec ((_%$%loop4711147193%_
                                                          (lambda (_%$%hd4710947197%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body4711547200%_)
                    (if (gx#stx-pair? _%$%hd4710947197%_)
                        (let ((_%$%e4711247202%_
                               (gx#syntax-e _%$%hd4710947197%_)))
                          (let ((_%$%lp-hd4711347206%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4711247202%_)))
                                (_%$%lp-tl4711447209%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4711247202%_))))
                            (_%$%loop4711147193%_
                             _%$%lp-tl4711447209%_
                             (cons _%$%lp-hd4711347206%_
                                   _%$%body4711547200%_))))
                        (let ((_%$%body4711647212%_
                               (reverse _%$%body4711547200%_)))
                          (if (gx#identifier? _%$%hd4709747153%_)
                              (cons (gx#datum->syntax '#f 'with-identifiers)
                                    (cons (cons (cons _%$%hd4709747153%_
                                                      (foldr (lambda (_%$%g4724247247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g4724347250%_)
                       (cons _%$%g4724247247%_ _%$%g4724347250%_))
                     '()
                     _%$%components4710747184%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (foldr (lambda (_%$%g4724447253%_
                                                          _%$%g4724547256%_)
                                                   (cons _%$%g4724447253%_
                                                         _%$%g4724547256%_))
                                                 '()
                                                 _%$%body4711647212%_)))
                              (_%$%g4708547122%_ _%$%g4708647126%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4711147193%_
                                                   _%$%target4710847187%_
                                                   '()))
                                                (_%$%g4708547122%_
                                                 _%$%g4708647126%_)))))
                                      (_%$%g4708547122%_
                                       _%$%g4708647126%_)))))))
                  (_%$%loop4710247165%_ _%$%target4709947159%_ '()))
                (_%$%g4708547122%_ _%$%g4708647126%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4708547122%_
                                               _%$%g4708647126%_))))
                                      (_%$%g4708547122%_ _%$%g4708647126%_))))
                              (_%$%g4708547122%_ _%$%g4708647126%_))))
                      (_%$%g4708547122%_ _%$%g4708647126%_)))))
          (_%$%g4708447259%_ _%$stx47081%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
      (lambda (_%$stx47265%_)
        (let ((_%$%g4726847275%_
               (lambda (_%$%g4726947271%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4726947271%_))))
          (_%$%g4726847275%_ _%$stx47265%_))))))
