(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1734278443)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords95450%_
               _%get-precedence-list9544495451%_
               _%struct?9544595453%_
               _%eq9544695455%_
               _%get-name9544795457%_
               _%rhead95459%_
               _%supers95460%_)
        (let* ((_%get-precedence-list95462%_
                (if (eq? _%get-precedence-list9544495451%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9544495451%_))
               (_%struct?95464%_
                (if (eq? _%struct?9544595453%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9544595453%_))
               (_%eq95466%_
                (if (eq? _%eq9544695455%_ absent-value) eq? _%eq9544695455%_))
               (_%get-name95468%_
                (if (eq? _%get-name9544795457%_ absent-value)
                    identity
                    _%get-name9544795457%_)))
          (letrec* ((_%pls95471%_
                     (map _%get-precedence-list95462%_ _%supers95460%_))
                    (_%sis95472%_ '())
                    (_%get-names95473%_
                     (lambda (_%lst95755%_)
                       (map _%get-name95468%_ _%lst95755%_)))
                    (_%err95474%_
                     (lambda _%a95753%_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (_%get-names95473%_ (reverse _%rhead95459%_))
                              'precedence-lists:
                              (let ()
                                (declare (not safe))
                                (##map _%get-names95473%_ _%pls95471%_))
                              'single-inheritance-suffix:
                              (_%get-names95473%_ _%sis95472%_)
                              _%a95753%_)))
                    (_%eqlist?95475%_
                     (lambda (_%l195747%_ _%l295748%_)
                       (let ((_%$e95750%_ (eq? _%l195747%_ _%l295748%_)))
                         (if _%$e95750%_
                             _%$e95750%_
                             (if (let ()
                                   (declare (not safe))
                                   (andmap2 _%eq95466%_
                                            _%l195747%_
                                            _%l295748%_))
                                 (let ((__tmp95803 (length _%l195747%_))
                                       (__tmp95802 (length _%l295748%_)))
                                   (declare (not safe))
                                   (##fx= __tmp95803 __tmp95802))
                                 '#f)))))
                    (_%merge-sis!95476%_
                     (lambda (_%sis295730%_)
                       (if (null? _%sis295730%_)
                           '#!void
                           (if (null? _%sis95472%_)
                               (set! _%sis95472%_ _%sis295730%_)
                               (let _%loop95735%_ ((_%t195737%_ _%sis95472%_)
                                                   (_%t295738%_ _%sis295730%_))
                                 (if (_%eqlist?95475%_
                                      _%t195737%_
                                      _%sis295730%_)
                                     '#!void
                                     (if (_%eqlist?95475%_
                                          _%t295738%_
                                          _%sis95472%_)
                                         (set! _%sis95472%_ _%sis295730%_)
                                         (if (or (null? _%t195737%_)
                                                 (null? _%t295738%_))
                                             (_%err95474%_
                                              'struct-incompatibility:
                                              (cons (_%get-names95473%_
                                                     _%sis95472%_)
                                                    (cons (_%get-names95473%_
                                                           _%sis295730%_)
                                                          '())))
                                             (_%loop95735%_
                                              (cdr _%t195737%_)
                                              (cdr _%t295738%_))))))))))
                    (_%rpls95477%_
                     (let ((__tmp95804
                            (lambda (_%pl95725%_)
                              (let ((_g95805_
                                     (let ()
                                       (declare (not safe))
                                       (append-reverse-until
                                        _%struct?95464%_
                                        _%pl95725%_
                                        '()))))
                                (begin
                                  (let ((_g95806_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g95805_)
                                               (##values-length _g95805_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g95806_ 2)))
                                        (error "Context expects 2 values"
                                               _g95806_)))
                                  (let ((_%tl95727%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g95805_ 0)))
                                        (_%rh95728%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g95805_ 1))))
                                    (begin
                                      (_%merge-sis!95476%_ _%tl95727%_)
                                      _%rh95728%_)))))))
                       (declare (not safe))
                       (##map __tmp95804 _%pls95471%_)))
                    (_%unsisr-rpl95478%_
                     (lambda (_%rpl95671%_)
                       (let _%u95673%_ ((_%pl-rhead95675%_ _%rpl95671%_)
                                        (_%pl-tail95676%_ '())
                                        (_%sis-rhead95677%_
                                         (reverse _%sis95472%_))
                                        (_%sis-tail95678%_ '()))
                         (let* ((_%pl-rhead9567995688%_ _%pl-rhead95675%_)
                                (_%E9568295692%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%pl-rhead9567995688%_
                                          '([])
                                          '([c . plrh]))
                                   '#!void)))
                           (let ((_%K9568695722%_ (lambda () _%pl-tail95676%_))
                                 (_%K9568395706%_
                                  (lambda (_%plrh95696%_ _%c95697%_)
                                    (if (member _%c95697%_
                                                _%sis-tail95678%_
                                                _%eq95466%_)
                                        (_%err95474%_
                                         'precedence-list-head:
                                         (_%get-names95473%_
                                          (reverse _%pl-rhead95675%_))
                                         'precedence-list-tail:
                                         (_%get-names95473%_ _%pl-tail95676%_)
                                         'single-inheritance-head:
                                         (_%get-names95473%_
                                          (reverse _%sis-rhead95677%_))
                                         'single-inheritance-tail:
                                         (_%get-names95473%_ _%sis-tail95678%_)
                                         'super-out-of-order-vs-single-inheritance-tail:
                                         (_%get-name95468%_ _%c95697%_))
                                        (let ((_g95807_
                                               (let ((__tmp95809
                                                      (lambda (_%g9569895700%_)
                                                        (_%eq95466%_
                                                         _%c95697%_
                                                         _%g9569895700%_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp95809
                                                  _%sis-rhead95677%_
                                                  _%sis-tail95678%_))))
                                          (begin
                                            (let ((_g95808_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g95807_)
                                                         (##values-length
                                                          _g95807_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g95808_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g95808_)))
                                            (let ((_%sis-rh295703%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g95807_
                                                      0)))
                                                  (_%sis-tl295704%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g95807_
                                                      1))))
                                              (if (null? _%sis-rh295703%_)
                                                  (_%u95673%_
                                                   _%plrh95696%_
                                                   (cons _%c95697%_
                                                         _%pl-tail95676%_)
                                                   '()
                                                   _%sis-tl295704%_)
                                                  (_%u95673%_
                                                   _%plrh95696%_
                                                   _%pl-tail95676%_
                                                   (cdr _%sis-rh295703%_)
                                                   _%sis-tl295704%_)))))))))
                             (let ((_%try-match9568195718%_
                                    (lambda ()
                                      (if (pair? _%pl-rhead9567995688%_)
                                          (let ((_%tl9568595711%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%pl-rhead9567995688%_)))
                                                (_%hd9568495709%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%pl-rhead9567995688%_))))
                                            (let ((_%c95714%_ _%hd9568495709%_)
                                                  (_%plrh95716%_
                                                   _%tl9568595711%_))
                                              (_%K9568395706%_
                                               _%plrh95716%_
                                               _%c95714%_)))
                                          (_%E9568295692%_)))))
                               (if (null? _%pl-rhead9567995688%_)
                                   (_%K9568695722%_)
                                   (_%try-match9568195718%_))))))))
                    (_g95810_
                     (let ((_g95811_
                            (let ((__tmp95813 (reverse _%supers95460%_)))
                              (declare (not safe))
                              (append1! _%rpls95477%_ __tmp95813))))
                       #!void
                       _g95811_))
                    (_%hpls95479%_
                     (let ()
                       (declare (not safe))
                       (##map _%unsisr-rpl95478%_ _%rpls95477%_)))
                    (_%c3-select-next95480%_
                     (lambda (_%tails95621%_)
                       (let ((_%candidate?95627%_
                              (lambda (_%c95623%_)
                                (let ((__tmp95814
                                       (lambda (_%tail95625%_)
                                         (not (member _%c95623%_
                                                      (cdr _%tail95625%_)
                                                      _%eq95466%_)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp95814 _%tails95621%_)))))
                         (let _%loop95629%_ ((_%ts95631%_ _%tails95621%_))
                           (let* ((_%ts9563295642%_ _%ts95631%_)
                                  (_%else9563495650%_
                                   (lambda () (_%err95474%_)))
                                  (_%K9563695656%_
                                   (lambda (_%rts95653%_ _%c95654%_)
                                     (if (_%candidate?95627%_ _%c95654%_)
                                         _%c95654%_
                                         (_%loop95629%_ _%rts95653%_)))))
                             (if (pair? _%ts9563295642%_)
                                 (let ((_%hd9563795659%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%ts9563295642%_)))
                                       (_%tl9563895661%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%ts9563295642%_))))
                                   (if (pair? _%hd9563795659%_)
                                       (let* ((_%hd9563995664%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd9563795659%_)))
                                              (_%c95667%_ _%hd9563995664%_)
                                              (_%rts95669%_ _%tl9563895661%_))
                                         (_%K9563695656%_
                                          _%rts95669%_
                                          _%c95667%_))
                                       (_%err95474%_)))
                                 (_%err95474%_)))))))
                    (_%remove-next!95481%_
                     (lambda (_%next95566%_ _%tails95567%_)
                       (let _%loop95569%_ ((_%t95571%_ _%tails95567%_))
                         (let* ((_%t9557295583%_ _%t95571%_)
                                (_%E9557595587%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%t9557295583%_
                                          '([])
                                          '([[head . tail] . more]))
                                   '#!void)))
                           (let ((_%K9558195618%_ (lambda () _%tails95567%_))
                                 (_%K9557695595%_
                                  (lambda (_%more95591%_
                                           _%tail95592%_
                                           _%head95593%_)
                                    (if (_%eq95466%_
                                         _%head95593%_
                                         _%next95566%_)
                                        (set-car! _%t95571%_ _%tail95592%_)
                                        '#!void)
                                    (_%loop95569%_ _%more95591%_))))
                             (let ((_%try-match9557495614%_
                                    (lambda ()
                                      (if (pair? _%t9557295583%_)
                                          (let ((_%tl9557895600%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%t9557295583%_)))
                                                (_%hd9557795598%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%t9557295583%_))))
                                            (if (pair? _%hd9557795598%_)
                                                (let ((_%tl9558095605%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd9557795598%_)))
                                                      (_%hd9557995603%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd9557795598%_))))
                                                  (let ((_%head95608%_
                                                         _%hd9557995603%_)
                                                        (_%tail95610%_
                                                         _%tl9558095605%_)
                                                        (_%more95612%_
                                                         _%tl9557895600%_))
                                                    (_%K9557695595%_
                                                     _%more95612%_
                                                     _%tail95610%_
                                                     _%head95608%_)))
                                                (_%E9557595587%_)))
                                          (_%E9557595587%_)))))
                               (if (null? _%t9557295583%_)
                                   (_%K9558195618%_)
                                   (_%try-match9557495614%_))))))))
                    (_%precedence-list95482%_
                     (if (null? _%supers95460%_)
                         (reverse _%rhead95459%_)
                         (if (null? (cdr _%supers95460%_))
                             (append-reverse _%rhead95459%_ (car _%pls95471%_))
                             (let _%c3loop95516%_ ((_%rhead95518%_
                                                    _%rhead95459%_)
                                                   (_%tails95519%_
                                                    _%hpls95479%_))
                               (let* ((_%tails95521%_
                                       (let ()
                                         (declare (not safe))
                                         (remove-nulls! _%tails95519%_)))
                                      (_%tails9552295532%_ _%tails95521%_)
                                      (_%else9552595543%_
                                       (lambda ()
                                         (let ((_%next95540%_
                                                (_%c3-select-next95480%_
                                                 _%tails95521%_)))
                                           (_%c3loop95516%_
                                            (cons _%next95540%_ _%rhead95518%_)
                                            (_%remove-next!95481%_
                                             _%next95540%_
                                             _%tails95521%_))))))
                                 (let ((_%K9553095563%_
                                        (lambda ()
                                          (append-reverse
                                           _%rhead95518%_
                                           _%sis95472%_)))
                                       (_%K9552795549%_
                                        (lambda (_%tail95547%_)
                                          (append-reverse
                                           _%rhead95518%_
                                           (append _%tail95547%_
                                                   _%sis95472%_)))))
                                   (let ((_%try-match9552495559%_
                                          (lambda ()
                                            (if (pair? _%tails9552295532%_)
                                                (let ((_%tl9552995554%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tails9552295532%_)))
                                                      (_%hd9552895552%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tails9552295532%_))))
                                                  (if (null? _%tl9552995554%_)
                                                      (let ((_%tail95557%_
                                                             _%hd9552895552%_))
                                                        (_%K9552795549%_
                                                         _%tail95557%_))
                                                      (_%else9552595543%_)))
                                                (_%else9552595543%_)))))
                                     (if (null? _%tails9552295532%_)
                                         (_%K9553095563%_)
                                         (_%try-match9552495559%_)))))))))
                    (_%super-struct95483%_
                     (let* ((_%sis9548495492%_ _%sis95472%_)
                            (_%else9548695500%_ (lambda () '#f))
                            (_%K9548895505%_ (lambda (_%s95503%_) _%s95503%_)))
                       (if (pair? _%sis9548495492%_)
                           (let* ((_%hd9548995508%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%sis9548495492%_)))
                                  (_%s95511%_ _%hd9548995508%_))
                             (_%K9548895505%_ _%s95511%_))
                           (_%else9548695500%_)))))
            (values _%precedence-list95482%_ _%super-struct95483%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords95760%_ . _%args95761%_)
        (apply c4-linearize__%
               _%@@keywords95760%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords95760%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords95760%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords95760%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords95760%_
                  'get-name:
                  absent-value))
               _%args95761%_)))
    (define c4-linearize
      (lambda _%args9544895767%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9544895767%_)))))
