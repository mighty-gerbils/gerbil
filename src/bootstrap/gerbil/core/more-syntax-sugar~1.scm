(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[1]#_g47413_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-syntax-sugar[1]#_g47414_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-syntax-sugar[1]#_g47415_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
      (lambda (_%$stx46421%_)
        (let* ((_%$%g4642546436%_
                (lambda (_%$%g4642646432%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4642646432%_)))
               (_%$%g4642446466%_
                (lambda (_%$%g4642646440%_)
                  (if (gx#stx-pair? _%$%g4642646440%_)
                      (let ((_%$%e4642846443%_
                             (gx#syntax-e _%$%g4642646440%_)))
                        (let ((_%$%hd4642946447%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4642846443%_)))
                              (_%$%tl4643046450%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4642846443%_))))
                          (cons (gx#datum->syntax '#f 'make-setq-macro)
                                (cons 'macro:
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'syntax-rules)
                                                  _%$%tl4643046450%_)
                                            '())))))
                      (_%$%g4642546436%_ _%$%g4642646440%_)))))
          (_%$%g4642446466%_ _%$stx46421%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifiers|
      (lambda (_%stx46470%_)
        (let* ((_%$%g4647346506%_
                (lambda (_%$%g4647446502%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4647446502%_)))
               (_%$%g4647247070%_
                (lambda (_%$%g4647446510%_)
                  (if (gx#stx-pair? _%$%g4647446510%_)
                      (let ((_%$%e4647746513%_
                             (gx#syntax-e _%$%g4647446510%_)))
                        (let ((_%$%hd4647846517%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4647746513%_)))
                              (_%$%tl4647946520%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4647746513%_))))
                          (if (gx#stx-pair? _%$%tl4647946520%_)
                              (let ((_%$%e4648046523%_
                                     (gx#syntax-e _%$%tl4647946520%_)))
                                (let ((_%$%hd4648146527%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4648046523%_)))
                                      (_%$%tl4648246530%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4648046523%_))))
                                  (if (gx#stx-pair/null? _%$%hd4648146527%_)
                                      (let ((_g47407_
                                             (gx#syntax-split-splice
                                              _%$%hd4648146527%_
                                              '0)))
                                        (begin
                                          (let ((_g47408_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47407_)
                                                       (##values-length
                                                        _g47407_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47408_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47408_)))
                                          (let ((_%$%target4648346533%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g47407_ 0)))
                                                (_%$%tl4648546536%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g47407_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4648546536%_)
                                                (letrec ((_%$%loop4648646539%_
                                                          (lambda (_%$%hd4648446543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%clause4649046546%_)
                    (if (gx#stx-pair? _%$%hd4648446543%_)
                        (let ((_%$%e4648746548%_
                               (gx#syntax-e _%$%hd4648446543%_)))
                          (let ((_%$%lp-hd4648846552%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4648746548%_)))
                                (_%$%lp-tl4648946555%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4648746548%_))))
                            (_%$%loop4648646539%_
                             _%$%lp-tl4648946555%_
                             (cons _%$%lp-hd4648846552%_
                                   _%$%clause4649046546%_))))
                        (let ((_%$%clause4649146558%_
                               (reverse _%$%clause4649046546%_)))
                          (if (gx#stx-pair/null? _%$%tl4648246530%_)
                              (let ((_g47409_
                                     (gx#syntax-split-splice
                                      _%$%tl4648246530%_
                                      '0)))
                                (begin
                                  (let ((_g47410_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g47409_)
                                               (##values-length _g47409_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g47410_ 2)))
                                        (error "Context expects 2 values"
                                               _g47410_)))
                                  (let ((_%$%target4649246561%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g47409_ 0)))
                                        (_%$%tl4649446564%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g47409_ 1))))
                                    (if (gx#stx-null? _%$%tl4649446564%_)
                                        (letrec ((_%$%loop4649546567%_
                                                  (lambda (_%$%hd4649346571%_
                                                           _%$%body4649946574%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4649346571%_)
                                                        (let ((_%$%e4649646576%_
                                                               (gx#syntax-e
                                                                _%$%hd4649346571%_)))
                                                          (let ((_%$%lp-hd4649746580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4649646576%_)))
                        (_%$%lp-tl4649846583%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4649646576%_))))
                    (_%$%loop4649546567%_
                     _%$%lp-tl4649846583%_
                     (cons _%$%lp-hd4649746580%_ _%$%body4649946574%_))))
                (let* ((_%$%body4650046586%_ (reverse _%$%body4649946574%_))
                       (_%$%g4661346630%_
                        (lambda (_%$%g4661446626%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g4661446626%_)))
                       (_%$%g4661246697%_
                        (lambda (_%$%g4661446634%_)
                          (if (gx#stx-pair/null? _%$%g4661446634%_)
                              (let ((_g47411_
                                     (gx#syntax-split-splice
                                      _%$%g4661446634%_
                                      '0)))
                                (begin
                                  (let ((_g47412_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g47411_)
                                               (##values-length _g47411_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g47412_ 2)))
                                        (error "Context expects 2 values"
                                               _g47412_)))
                                  (let ((_%$%target4661646637%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g47411_ 0)))
                                        (_%$%tl4661846640%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g47411_ 1))))
                                    (if (gx#stx-null? _%$%tl4661846640%_)
                                        (letrec ((_%$%loop4661946643%_
                                                  (lambda (_%$%hd4661746647%_
                                                           _%$%clause4662346650%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4661746647%_)
                                                        (let ((_%$%e4662046652%_
                                                               (gx#syntax-e
                                                                _%$%hd4661746647%_)))
                                                          (let ((_%$%lp-hd4662146656%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4662046652%_)))
                        (_%$%lp-tl4662246659%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4662046652%_))))
                    (_%$%loop4661946643%_
                     _%$%lp-tl4662246659%_
                     (cons _%$%lp-hd4662146656%_ _%$%clause4662346650%_))))
                (let ((_%$%clause4662446662%_
                       (reverse _%$%clause4662346650%_)))
                  (cons (gx#datum->syntax '#f 'with-syntax*)
                        (cons (foldr (lambda (_%$%g4668046685%_
                                              _%$%g4668146688%_)
                                       (cons _%$%g4668046685%_
                                             _%$%g4668146688%_))
                                     '()
                                     _%$%clause4662446662%_)
                              (foldr (lambda (_%$%g4668246691%_
                                              _%$%g4668346694%_)
                                       (cons _%$%g4668246691%_
                                             _%$%g4668346694%_))
                                     '()
                                     _%$%body4650046586%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4661946643%_
                                           _%$%target4661646637%_
                                           '()))
                                        (_%$%g4661346630%_
                                         _%$%g4661446634%_)))))
                              (_%$%g4661346630%_ _%$%g4661446634%_)))))
                  (_%$%g4661246697%_
                   (map (lambda (_%clause46701%_)
                          (let* ((_%__stx4727647277%_ _%clause46701%_)
                                 (_%$%g4670746774%_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx4727647277%_))))
                            (let ((_%__kont4727947280%_
                                   (lambda (_%$%g4670947039%_
                                            _%$%g4671047041%_)
                                     (cons _%$%g4671047041%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'syntax-local-temp)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote)
                           (cons _%$%g4670947039%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                                  (_%__kont4728147282%_
                                   (lambda (_%$%g4672346973%_
                                            _%$%g4672446975%_)
                                     (cons _%$%g4672446975%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'genident)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote)
                           (cons _%$%g4672346973%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                                  (_%__kont4728347284%_
                                   (lambda (_%$%g4673746907%_
                                            _%$%g4673846909%_)
                                     (cons _%$%g4673846909%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'syntax-local-introduce)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote)
                           (cons _%$%g4673746907%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                                  (_%__kont4728547286%_
                                   (lambda (_%$%g4675146829%_
                                            _%$%g4675246831%_
                                            _%$%g4675346832%_)
                                     (cons _%$%g4675346832%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-identifier)
                                                       (cons _%$%g4675246831%_
                                                             (foldr (lambda (_%$%g4685146854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%$%g4685246857%_)
                              (cons _%$%g4685146854%_ _%$%g4685246857%_))
                            '()
                            _%$%g4675146829%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                              (let* ((_%__match4740547406%_
                                      (lambda (_%$%e4675446781%_
                                               _%$%hd4675546785%_
                                               _%$%tl4675646788%_
                                               _%$%e4675746791%_
                                               _%$%hd4675846795%_
                                               _%$%tl4675946798%_
                                               _%__splice4728747288%_
                                               _%$%target4676046801%_
                                               _%$%tl4676246804%_)
                                        (letrec ((_%$%loop4676346807%_
                                                  (lambda (_%$%hd4676146811%_
                                                           _%$%components4676746814%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4676146811%_)
                                                        (let ((_%$%e4676446816%_
                                                               (gx#syntax-e
                                                                _%$%hd4676146811%_)))
                                                          (let ((_%$%lp-tl4676646823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4676446816%_)))
                        (_%$%lp-hd4676546820%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4676446816%_))))
                    (_%$%loop4676346807%_
                     _%$%lp-tl4676646823%_
                     (cons _%$%lp-hd4676546820%_ _%$%components4676746814%_))))
                (let ((_%$%components4676846826%_
                       (reverse _%$%components4676746814%_)))
                  (let ((_%$%g4675146829%_ _%$%components4676846826%_)
                        (_%$%g4675246831%_ _%$%hd4675846795%_)
                        (_%$%g4675346832%_ _%$%hd4675546785%_))
                    (if (gx#identifier? _%$%g4675346832%_)
                        (_%__kont4728547286%_
                         _%$%g4675146829%_
                         _%$%g4675246831%_
                         _%$%g4675346832%_)
                        (_%$%g4670746774%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4676346807%_
                                           _%$%target4676046801%_
                                           '()))))
                                     (_%__match4738547386%_
                                      (lambda (_%$%e4673946867%_
                                               _%$%hd4674046871%_
                                               _%$%tl4674146874%_
                                               _%$%e4674246877%_
                                               _%$%hd4674346881%_
                                               _%$%tl4674446884%_
                                               _%$%e4674546887%_
                                               _%$%hd4674646891%_
                                               _%$%tl4674746894%_
                                               _%$%e4674846897%_
                                               _%$%hd4674946901%_
                                               _%$%tl4675046904%_)
                                        (let ((_%$%g4673746907%_
                                               _%$%hd4674946901%_)
                                              (_%$%g4673846909%_
                                               _%$%hd4674046871%_))
                                          (if (and (gx#identifier?
                                                    _%$%g4673846909%_)
                                                   (gx#identifier?
                                                    _%$%g4673746907%_))
                                              (_%__kont4728347284%_
                                               _%$%g4673746907%_
                                               _%$%g4673846909%_)
                                              (if (gx#stx-pair/null?
                                                   _%$%tl4674446884%_)
                                                  (let ((_%__splice4728747288%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl4674446884%_
                                                          '0)))
                                                    (let ((_%$%tl4676246804%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4728747288%_
                                                              '1)))
                                                          (_%$%target4676046801%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4728747288%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4676246804%_)
                                                          (_%__match4740547406%_
                                                           _%$%e4673946867%_
                                                           _%$%hd4674046871%_
                                                           _%$%tl4674146874%_
                                                           _%$%e4674246877%_
                                                           _%$%hd4674346881%_
                                                           _%$%tl4674446884%_
                                                           _%__splice4728747288%_
                                                           _%$%target4676046801%_
                                                           _%$%tl4676246804%_)
                                                          (_%$%g4670746774%_))))
                                                  (_%$%g4670746774%_))))))
                                     (_%__match4735347354%_
                                      (lambda (_%$%e4672546933%_
                                               _%$%hd4672646937%_
                                               _%$%tl4672746940%_
                                               _%$%e4672846943%_
                                               _%$%hd4672946947%_
                                               _%$%tl4673046950%_
                                               _%$%e4673146953%_
                                               _%$%hd4673246957%_
                                               _%$%tl4673346960%_
                                               _%$%e4673446963%_
                                               _%$%hd4673546967%_
                                               _%$%tl4673646970%_)
                                        (let ((_%$%g4672346973%_
                                               _%$%hd4673546967%_)
                                              (_%$%g4672446975%_
                                               _%$%hd4672646937%_))
                                          (if (and (gx#identifier?
                                                    _%$%g4672446975%_)
                                                   (gx#identifier?
                                                    _%$%g4672346973%_))
                                              (_%__kont4728147282%_
                                               _%$%g4672346973%_
                                               _%$%g4672446975%_)
                                              (if (gx#stx-pair/null?
                                                   _%$%tl4673046950%_)
                                                  (let ((_%__splice4728747288%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl4673046950%_
                                                          '0)))
                                                    (let ((_%$%tl4676246804%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4728747288%_
                                                              '1)))
                                                          (_%$%target4676046801%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4728747288%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4676246804%_)
                                                          (_%__match4740547406%_
                                                           _%$%e4672546933%_
                                                           _%$%hd4672646937%_
                                                           _%$%tl4672746940%_
                                                           _%$%e4672846943%_
                                                           _%$%hd4672946947%_
                                                           _%$%tl4673046950%_
                                                           _%__splice4728747288%_
                                                           _%$%target4676046801%_
                                                           _%$%tl4676246804%_)
                                                          (_%$%g4670746774%_))))
                                                  (_%$%g4670746774%_))))))
                                     (_%__match4732147322%_
                                      (lambda (_%$%e4671146999%_
                                               _%$%hd4671247003%_
                                               _%$%tl4671347006%_
                                               _%$%e4671447009%_
                                               _%$%hd4671547013%_
                                               _%$%tl4671647016%_
                                               _%$%e4671747019%_
                                               _%$%hd4671847023%_
                                               _%$%tl4671947026%_
                                               _%$%e4672047029%_
                                               _%$%hd4672147033%_
                                               _%$%tl4672247036%_)
                                        (let ((_%$%g4670947039%_
                                               _%$%hd4672147033%_)
                                              (_%$%g4671047041%_
                                               _%$%hd4671247003%_))
                                          (if (and (gx#identifier?
                                                    _%$%g4671047041%_)
                                                   (gx#identifier?
                                                    _%$%g4670947039%_))
                                              (_%__kont4727947280%_
                                               _%$%g4670947039%_
                                               _%$%g4671047041%_)
                                              (if (gx#stx-pair/null?
                                                   _%$%tl4671647016%_)
                                                  (let ((_%__splice4728747288%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl4671647016%_
                                                          '0)))
                                                    (let ((_%$%tl4676246804%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4728747288%_
                                                              '1)))
                                                          (_%$%target4676046801%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4728747288%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4676246804%_)
                                                          (_%__match4740547406%_
                                                           _%$%e4671146999%_
                                                           _%$%hd4671247003%_
                                                           _%$%tl4671347006%_
                                                           _%$%e4671447009%_
                                                           _%$%hd4671547013%_
                                                           _%$%tl4671647016%_
                                                           _%__splice4728747288%_
                                                           _%$%target4676046801%_
                                                           _%$%tl4676246804%_)
                                                          (_%$%g4670746774%_))))
                                                  (_%$%g4670746774%_)))))))
                                (if (gx#stx-pair? _%__stx4727647277%_)
                                    (let ((_%$%e4671146999%_
                                           (gx#syntax-e _%__stx4727647277%_)))
                                      (let ((_%$%tl4671347006%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4671146999%_)))
                                            (_%$%hd4671247003%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4671146999%_))))
                                        (if (gx#stx-pair? _%$%tl4671347006%_)
                                            (let ((_%$%e4671447009%_
                                                   (gx#syntax-e
                                                    _%$%tl4671347006%_)))
                                              (let ((_%$%tl4671647016%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4671447009%_)))
                                                    (_%$%hd4671547013%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4671447009%_))))
                                                (if (gx#stx-pair?
                                                     _%$%hd4671547013%_)
                                                    (let ((_%$%e4671747019%_
                                                           (gx#syntax-e
                                                            _%$%hd4671547013%_)))
                                                      (let ((_%$%tl4671947026%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e4671747019%_)))
                    (_%$%hd4671847023%_
                     (let () (declare (not safe)) (##car _%$%e4671747019%_))))
                (if (gx#identifier? _%$%hd4671847023%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/more-syntax-sugar[1]#_g47413_|
                         _%$%hd4671847023%_)
                        (if (gx#stx-pair? _%$%tl4671947026%_)
                            (let ((_%$%e4672047029%_
                                   (gx#syntax-e _%$%tl4671947026%_)))
                              (let ((_%$%tl4672247036%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e4672047029%_)))
                                    (_%$%hd4672147033%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e4672047029%_))))
                                (if (gx#stx-null? _%$%tl4672247036%_)
                                    (if (gx#stx-null? _%$%tl4671647016%_)
                                        (_%__match4732147322%_
                                         _%$%e4671146999%_
                                         _%$%hd4671247003%_
                                         _%$%tl4671347006%_
                                         _%$%e4671447009%_
                                         _%$%hd4671547013%_
                                         _%$%tl4671647016%_
                                         _%$%e4671747019%_
                                         _%$%hd4671847023%_
                                         _%$%tl4671947026%_
                                         _%$%e4672047029%_
                                         _%$%hd4672147033%_
                                         _%$%tl4672247036%_)
                                        (if (gx#stx-pair/null?
                                             _%$%tl4671647016%_)
                                            (let ((_%__splice4728747288%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4671647016%_
                                                    '0)))
                                              (let ((_%$%tl4676246804%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4728747288%_
                                                        '1)))
                                                    (_%$%target4676046801%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4728747288%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4676246804%_)
                                                    (_%__match4740547406%_
                                                     _%$%e4671146999%_
                                                     _%$%hd4671247003%_
                                                     _%$%tl4671347006%_
                                                     _%$%e4671447009%_
                                                     _%$%hd4671547013%_
                                                     _%$%tl4671647016%_
                                                     _%__splice4728747288%_
                                                     _%$%target4676046801%_
                                                     _%$%tl4676246804%_)
                                                    (_%$%g4670746774%_))))
                                            (_%$%g4670746774%_)))
                                    (if (gx#stx-pair/null? _%$%tl4671647016%_)
                                        (let ((_%__splice4728747288%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl4671647016%_
                                                '0)))
                                          (let ((_%$%tl4676246804%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4728747288%_
                                                    '1)))
                                                (_%$%target4676046801%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4728747288%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl4676246804%_)
                                                (_%__match4740547406%_
                                                 _%$%e4671146999%_
                                                 _%$%hd4671247003%_
                                                 _%$%tl4671347006%_
                                                 _%$%e4671447009%_
                                                 _%$%hd4671547013%_
                                                 _%$%tl4671647016%_
                                                 _%__splice4728747288%_
                                                 _%$%target4676046801%_
                                                 _%$%tl4676246804%_)
                                                (_%$%g4670746774%_))))
                                        (_%$%g4670746774%_)))))
                            (if (gx#stx-pair/null? _%$%tl4671647016%_)
                                (let ((_%__splice4728747288%_
                                       (gx#syntax-split-splice->vector
                                        _%$%tl4671647016%_
                                        '0)))
                                  (let ((_%$%tl4676246804%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice4728747288%_
                                            '1)))
                                        (_%$%target4676046801%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice4728747288%_
                                            '0))))
                                    (if (gx#stx-null? _%$%tl4676246804%_)
                                        (_%__match4740547406%_
                                         _%$%e4671146999%_
                                         _%$%hd4671247003%_
                                         _%$%tl4671347006%_
                                         _%$%e4671447009%_
                                         _%$%hd4671547013%_
                                         _%$%tl4671647016%_
                                         _%__splice4728747288%_
                                         _%$%target4676046801%_
                                         _%$%tl4676246804%_)
                                        (_%$%g4670746774%_))))
                                (_%$%g4670746774%_)))
                        (if (gx#free-identifier=?
                             |gerbil/core/more-syntax-sugar[1]#_g47414_|
                             _%$%hd4671847023%_)
                            (if (gx#stx-pair? _%$%tl4671947026%_)
                                (let ((_%$%e4673446963%_
                                       (gx#syntax-e _%$%tl4671947026%_)))
                                  (let ((_%$%tl4673646970%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4673446963%_)))
                                        (_%$%hd4673546967%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4673446963%_))))
                                    (if (gx#stx-null? _%$%tl4673646970%_)
                                        (if (gx#stx-null? _%$%tl4671647016%_)
                                            (_%__match4735347354%_
                                             _%$%e4671146999%_
                                             _%$%hd4671247003%_
                                             _%$%tl4671347006%_
                                             _%$%e4671447009%_
                                             _%$%hd4671547013%_
                                             _%$%tl4671647016%_
                                             _%$%e4671747019%_
                                             _%$%hd4671847023%_
                                             _%$%tl4671947026%_
                                             _%$%e4673446963%_
                                             _%$%hd4673546967%_
                                             _%$%tl4673646970%_)
                                            (if (gx#stx-pair/null?
                                                 _%$%tl4671647016%_)
                                                (let ((_%__splice4728747288%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl4671647016%_
                                                        '0)))
                                                  (let ((_%$%tl4676246804%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4728747288%_
                                                            '1)))
                                                        (_%$%target4676046801%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4728747288%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4676246804%_)
                                                        (_%__match4740547406%_
                                                         _%$%e4671146999%_
                                                         _%$%hd4671247003%_
                                                         _%$%tl4671347006%_
                                                         _%$%e4671447009%_
                                                         _%$%hd4671547013%_
                                                         _%$%tl4671647016%_
                                                         _%__splice4728747288%_
                                                         _%$%target4676046801%_
                                                         _%$%tl4676246804%_)
                                                        (_%$%g4670746774%_))))
                                                (_%$%g4670746774%_)))
                                        (if (gx#stx-pair/null?
                                             _%$%tl4671647016%_)
                                            (let ((_%__splice4728747288%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4671647016%_
                                                    '0)))
                                              (let ((_%$%tl4676246804%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4728747288%_
                                                        '1)))
                                                    (_%$%target4676046801%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4728747288%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4676246804%_)
                                                    (_%__match4740547406%_
                                                     _%$%e4671146999%_
                                                     _%$%hd4671247003%_
                                                     _%$%tl4671347006%_
                                                     _%$%e4671447009%_
                                                     _%$%hd4671547013%_
                                                     _%$%tl4671647016%_
                                                     _%__splice4728747288%_
                                                     _%$%target4676046801%_
                                                     _%$%tl4676246804%_)
                                                    (_%$%g4670746774%_))))
                                            (_%$%g4670746774%_)))))
                                (if (gx#stx-pair/null? _%$%tl4671647016%_)
                                    (let ((_%__splice4728747288%_
                                           (gx#syntax-split-splice->vector
                                            _%$%tl4671647016%_
                                            '0)))
                                      (let ((_%$%tl4676246804%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4728747288%_
                                                '1)))
                                            (_%$%target4676046801%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4728747288%_
                                                '0))))
                                        (if (gx#stx-null? _%$%tl4676246804%_)
                                            (_%__match4740547406%_
                                             _%$%e4671146999%_
                                             _%$%hd4671247003%_
                                             _%$%tl4671347006%_
                                             _%$%e4671447009%_
                                             _%$%hd4671547013%_
                                             _%$%tl4671647016%_
                                             _%__splice4728747288%_
                                             _%$%target4676046801%_
                                             _%$%tl4676246804%_)
                                            (_%$%g4670746774%_))))
                                    (_%$%g4670746774%_)))
                            (if (gx#free-identifier=?
                                 |gerbil/core/more-syntax-sugar[1]#_g47415_|
                                 _%$%hd4671847023%_)
                                (if (gx#stx-pair? _%$%tl4671947026%_)
                                    (let ((_%$%e4674846897%_
                                           (gx#syntax-e _%$%tl4671947026%_)))
                                      (let ((_%$%tl4675046904%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4674846897%_)))
                                            (_%$%hd4674946901%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4674846897%_))))
                                        (if (gx#stx-null? _%$%tl4675046904%_)
                                            (if (gx#stx-null?
                                                 _%$%tl4671647016%_)
                                                (_%__match4738547386%_
                                                 _%$%e4671146999%_
                                                 _%$%hd4671247003%_
                                                 _%$%tl4671347006%_
                                                 _%$%e4671447009%_
                                                 _%$%hd4671547013%_
                                                 _%$%tl4671647016%_
                                                 _%$%e4671747019%_
                                                 _%$%hd4671847023%_
                                                 _%$%tl4671947026%_
                                                 _%$%e4674846897%_
                                                 _%$%hd4674946901%_
                                                 _%$%tl4675046904%_)
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4671647016%_)
                                                    (let ((_%__splice4728747288%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4671647016%_
                                                            '0)))
                                                      (let ((_%$%tl4676246804%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4728747288%_ '1)))
                    (_%$%target4676046801%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4728747288%_ '0))))
                (if (gx#stx-null? _%$%tl4676246804%_)
                    (_%__match4740547406%_
                     _%$%e4671146999%_
                     _%$%hd4671247003%_
                     _%$%tl4671347006%_
                     _%$%e4671447009%_
                     _%$%hd4671547013%_
                     _%$%tl4671647016%_
                     _%__splice4728747288%_
                     _%$%target4676046801%_
                     _%$%tl4676246804%_)
                    (_%$%g4670746774%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4670746774%_)))
                                            (if (gx#stx-pair/null?
                                                 _%$%tl4671647016%_)
                                                (let ((_%__splice4728747288%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl4671647016%_
                                                        '0)))
                                                  (let ((_%$%tl4676246804%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4728747288%_
                                                            '1)))
                                                        (_%$%target4676046801%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4728747288%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4676246804%_)
                                                        (_%__match4740547406%_
                                                         _%$%e4671146999%_
                                                         _%$%hd4671247003%_
                                                         _%$%tl4671347006%_
                                                         _%$%e4671447009%_
                                                         _%$%hd4671547013%_
                                                         _%$%tl4671647016%_
                                                         _%__splice4728747288%_
                                                         _%$%target4676046801%_
                                                         _%$%tl4676246804%_)
                                                        (_%$%g4670746774%_))))
                                                (_%$%g4670746774%_)))))
                                    (if (gx#stx-pair/null? _%$%tl4671647016%_)
                                        (let ((_%__splice4728747288%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl4671647016%_
                                                '0)))
                                          (let ((_%$%tl4676246804%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4728747288%_
                                                    '1)))
                                                (_%$%target4676046801%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4728747288%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl4676246804%_)
                                                (_%__match4740547406%_
                                                 _%$%e4671146999%_
                                                 _%$%hd4671247003%_
                                                 _%$%tl4671347006%_
                                                 _%$%e4671447009%_
                                                 _%$%hd4671547013%_
                                                 _%$%tl4671647016%_
                                                 _%__splice4728747288%_
                                                 _%$%target4676046801%_
                                                 _%$%tl4676246804%_)
                                                (_%$%g4670746774%_))))
                                        (_%$%g4670746774%_)))
                                (if (gx#stx-pair/null? _%$%tl4671647016%_)
                                    (let ((_%__splice4728747288%_
                                           (gx#syntax-split-splice->vector
                                            _%$%tl4671647016%_
                                            '0)))
                                      (let ((_%$%tl4676246804%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4728747288%_
                                                '1)))
                                            (_%$%target4676046801%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4728747288%_
                                                '0))))
                                        (if (gx#stx-null? _%$%tl4676246804%_)
                                            (_%__match4740547406%_
                                             _%$%e4671146999%_
                                             _%$%hd4671247003%_
                                             _%$%tl4671347006%_
                                             _%$%e4671447009%_
                                             _%$%hd4671547013%_
                                             _%$%tl4671647016%_
                                             _%__splice4728747288%_
                                             _%$%target4676046801%_
                                             _%$%tl4676246804%_)
                                            (_%$%g4670746774%_))))
                                    (_%$%g4670746774%_)))))
                    (if (gx#stx-pair/null? _%$%tl4671647016%_)
                        (let ((_%__splice4728747288%_
                               (gx#syntax-split-splice->vector
                                _%$%tl4671647016%_
                                '0)))
                          (let ((_%$%tl4676246804%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4728747288%_ '1)))
                                (_%$%target4676046801%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4728747288%_ '0))))
                            (if (gx#stx-null? _%$%tl4676246804%_)
                                (_%__match4740547406%_
                                 _%$%e4671146999%_
                                 _%$%hd4671247003%_
                                 _%$%tl4671347006%_
                                 _%$%e4671447009%_
                                 _%$%hd4671547013%_
                                 _%$%tl4671647016%_
                                 _%__splice4728747288%_
                                 _%$%target4676046801%_
                                 _%$%tl4676246804%_)
                                (_%$%g4670746774%_))))
                        (_%$%g4670746774%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl4671647016%_)
                                                        (let ((_%__splice4728747288%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl4671647016%_
                                                                '0)))
                                                          (let ((_%$%tl4676246804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4728747288%_ '1)))
                        (_%$%target4676046801%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4728747288%_ '0))))
                    (if (gx#stx-null? _%$%tl4676246804%_)
                        (_%__match4740547406%_
                         _%$%e4671146999%_
                         _%$%hd4671247003%_
                         _%$%tl4671347006%_
                         _%$%e4671447009%_
                         _%$%hd4671547013%_
                         _%$%tl4671647016%_
                         _%__splice4728747288%_
                         _%$%target4676046801%_
                         _%$%tl4676246804%_)
                        (_%$%g4670746774%_))))
                (_%$%g4670746774%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g4670746774%_))))
                                    (_%$%g4670746774%_))))))
                        (foldr (lambda (_%$%g4706147064%_ _%$%g4706247067%_)
                                 (cons _%$%g4706147064%_ _%$%g4706247067%_))
                               '()
                               _%$%clause4649146558%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4649546567%_
                                           _%$%target4649246561%_
                                           '()))
                                        (_%$%g4647346506%_
                                         _%$%g4647446510%_)))))
                              (_%$%g4647346506%_ _%$%g4647446510%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4648646539%_
                                                   _%$%target4648346533%_
                                                   '()))
                                                (_%$%g4647346506%_
                                                 _%$%g4647446510%_)))))
                                      (_%$%g4647346506%_ _%$%g4647446510%_))))
                              (_%$%g4647346506%_ _%$%g4647446510%_))))
                      (_%$%g4647346506%_ _%$%g4647446510%_)))))
          (_%$%g4647247070%_ _%stx46470%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifier|
      (lambda (_%$stx47078%_)
        (let* ((_%$%g4708247119%_
                (lambda (_%$%g4708347115%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4708347115%_)))
               (_%$%g4708147256%_
                (lambda (_%$%g4708347123%_)
                  (if (gx#stx-pair? _%$%g4708347123%_)
                      (let ((_%$%e4708747126%_
                             (gx#syntax-e _%$%g4708347123%_)))
                        (let ((_%$%hd4708847130%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4708747126%_)))
                              (_%$%tl4708947133%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4708747126%_))))
                          (if (gx#stx-pair? _%$%tl4708947133%_)
                              (let ((_%$%e4709047136%_
                                     (gx#syntax-e _%$%tl4708947133%_)))
                                (let ((_%$%hd4709147140%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4709047136%_)))
                                      (_%$%tl4709247143%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4709047136%_))))
                                  (if (gx#stx-pair? _%$%hd4709147140%_)
                                      (let ((_%$%e4709347146%_
                                             (gx#syntax-e _%$%hd4709147140%_)))
                                        (let ((_%$%hd4709447150%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4709347146%_)))
                                              (_%$%tl4709547153%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4709347146%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl4709547153%_)
                                              (let ((_g47416_
                                                     (gx#syntax-split-splice
                                                      _%$%tl4709547153%_
                                                      '0)))
                                                (begin
                                                  (let ((_g47417_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g47416_)
                                                               (##values-length
                                                                _g47416_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g47417_ 2)))
                (error "Context expects 2 values" _g47417_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target4709647156%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g47416_
                                                            0)))
                                                        (_%$%tl4709847159%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g47416_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4709847159%_)
                                                        (letrec ((_%$%loop4709947162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4709747166%_
                                   _%$%components4710347169%_)
                            (if (gx#stx-pair? _%$%hd4709747166%_)
                                (let ((_%$%e4710047171%_
                                       (gx#syntax-e _%$%hd4709747166%_)))
                                  (let ((_%$%lp-hd4710147175%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4710047171%_)))
                                        (_%$%lp-tl4710247178%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4710047171%_))))
                                    (_%$%loop4709947162%_
                                     _%$%lp-tl4710247178%_
                                     (cons _%$%lp-hd4710147175%_
                                           _%$%components4710347169%_))))
                                (let ((_%$%components4710447181%_
                                       (reverse _%$%components4710347169%_)))
                                  (if (gx#stx-pair/null? _%$%tl4709247143%_)
                                      (let ((_g47418_
                                             (gx#syntax-split-splice
                                              _%$%tl4709247143%_
                                              '0)))
                                        (begin
                                          (let ((_g47419_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47418_)
                                                       (##values-length
                                                        _g47418_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47419_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47419_)))
                                          (let ((_%$%target4710547184%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g47418_ 0)))
                                                (_%$%tl4710747187%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g47418_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4710747187%_)
                                                (letrec ((_%$%loop4710847190%_
                                                          (lambda (_%$%hd4710647194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body4711247197%_)
                    (if (gx#stx-pair? _%$%hd4710647194%_)
                        (let ((_%$%e4710947199%_
                               (gx#syntax-e _%$%hd4710647194%_)))
                          (let ((_%$%lp-hd4711047203%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4710947199%_)))
                                (_%$%lp-tl4711147206%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4710947199%_))))
                            (_%$%loop4710847190%_
                             _%$%lp-tl4711147206%_
                             (cons _%$%lp-hd4711047203%_
                                   _%$%body4711247197%_))))
                        (let ((_%$%body4711347209%_
                               (reverse _%$%body4711247197%_)))
                          (if (gx#identifier? _%$%hd4709447150%_)
                              (cons (gx#datum->syntax '#f 'with-identifiers)
                                    (cons (cons (cons _%$%hd4709447150%_
                                                      (foldr (lambda (_%$%g4723947244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g4724047247%_)
                       (cons _%$%g4723947244%_ _%$%g4724047247%_))
                     '()
                     _%$%components4710447181%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (foldr (lambda (_%$%g4724147250%_
                                                          _%$%g4724247253%_)
                                                   (cons _%$%g4724147250%_
                                                         _%$%g4724247253%_))
                                                 '()
                                                 _%$%body4711347209%_)))
                              (_%$%g4708247119%_ _%$%g4708347123%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4710847190%_
                                                   _%$%target4710547184%_
                                                   '()))
                                                (_%$%g4708247119%_
                                                 _%$%g4708347123%_)))))
                                      (_%$%g4708247119%_
                                       _%$%g4708347123%_)))))))
                  (_%$%loop4709947162%_ _%$%target4709647156%_ '()))
                (_%$%g4708247119%_ _%$%g4708347123%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4708247119%_
                                               _%$%g4708347123%_))))
                                      (_%$%g4708247119%_ _%$%g4708347123%_))))
                              (_%$%g4708247119%_ _%$%g4708347123%_))))
                      (_%$%g4708247119%_ _%$%g4708347123%_)))))
          (_%$%g4708147256%_ _%$stx47078%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
      (lambda (_%$stx47262%_)
        (let ((_%$%g4726547272%_
               (lambda (_%$%g4726647268%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4726647268%_))))
          (_%$%g4726547272%_ _%$stx47262%_))))))
