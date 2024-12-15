(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1734225192)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords95454%_
               _%get-precedence-list9544895455%_
               _%struct?9544995457%_
               _%eq9545095459%_
               _%get-name9545195461%_
               _%rhead95463%_
               _%supers95464%_)
        (let* ((_%get-precedence-list95466%_
                (if (eq? _%get-precedence-list9544895455%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9544895455%_))
               (_%struct?95468%_
                (if (eq? _%struct?9544995457%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9544995457%_))
               (_%eq95470%_
                (if (eq? _%eq9545095459%_ absent-value) eq? _%eq9545095459%_))
               (_%get-name95472%_
                (if (eq? _%get-name9545195461%_ absent-value)
                    identity
                    _%get-name9545195461%_)))
          (letrec* ((_%pls95475%_
                     (map _%get-precedence-list95466%_ _%supers95464%_))
                    (_%sis95476%_ '())
                    (_%get-names95477%_
                     (lambda (_%lst95759%_)
                       (map _%get-name95472%_ _%lst95759%_)))
                    (_%err95478%_
                     (lambda _%a95757%_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (_%get-names95477%_ (reverse _%rhead95463%_))
                              'precedence-lists:
                              (let ()
                                (declare (not safe))
                                (##map _%get-names95477%_ _%pls95475%_))
                              'single-inheritance-suffix:
                              (_%get-names95477%_ _%sis95476%_)
                              _%a95757%_)))
                    (_%eqlist?95479%_
                     (lambda (_%l195751%_ _%l295752%_)
                       (let ((_%$e95754%_ (eq? _%l195751%_ _%l295752%_)))
                         (if _%$e95754%_
                             _%$e95754%_
                             (if (let ()
                                   (declare (not safe))
                                   (andmap2 _%eq95470%_
                                            _%l195751%_
                                            _%l295752%_))
                                 (let ((__tmp95807 (length _%l195751%_))
                                       (__tmp95806 (length _%l295752%_)))
                                   (declare (not safe))
                                   (##fx= __tmp95807 __tmp95806))
                                 '#f)))))
                    (_%merge-sis!95480%_
                     (lambda (_%sis295734%_)
                       (if (null? _%sis295734%_)
                           '#!void
                           (if (null? _%sis95476%_)
                               (set! _%sis95476%_ _%sis295734%_)
                               (let _%loop95739%_ ((_%t195741%_ _%sis95476%_)
                                                   (_%t295742%_ _%sis295734%_))
                                 (if (_%eqlist?95479%_
                                      _%t195741%_
                                      _%sis295734%_)
                                     '#!void
                                     (if (_%eqlist?95479%_
                                          _%t295742%_
                                          _%sis95476%_)
                                         (set! _%sis95476%_ _%sis295734%_)
                                         (if (or (null? _%t195741%_)
                                                 (null? _%t295742%_))
                                             (_%err95478%_
                                              'struct-incompatibility:
                                              (cons (_%get-names95477%_
                                                     _%sis95476%_)
                                                    (cons (_%get-names95477%_
                                                           _%sis295734%_)
                                                          '())))
                                             (_%loop95739%_
                                              (cdr _%t195741%_)
                                              (cdr _%t295742%_))))))))))
                    (_%rpls95481%_
                     (let ((__tmp95808
                            (lambda (_%pl95729%_)
                              (let ((_g95809_
                                     (let ()
                                       (declare (not safe))
                                       (append-reverse-until
                                        _%struct?95468%_
                                        _%pl95729%_
                                        '()))))
                                (begin
                                  (let ((_g95810_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g95809_)
                                               (##values-length _g95809_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g95810_ 2)))
                                        (error "Context expects 2 values"
                                               _g95810_)))
                                  (let ((_%tl95731%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g95809_ 0)))
                                        (_%rh95732%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g95809_ 1))))
                                    (begin
                                      (_%merge-sis!95480%_ _%tl95731%_)
                                      _%rh95732%_)))))))
                       (declare (not safe))
                       (##map __tmp95808 _%pls95475%_)))
                    (_%unsisr-rpl95482%_
                     (lambda (_%rpl95675%_)
                       (let _%u95677%_ ((_%pl-rhead95679%_ _%rpl95675%_)
                                        (_%pl-tail95680%_ '())
                                        (_%sis-rhead95681%_
                                         (reverse _%sis95476%_))
                                        (_%sis-tail95682%_ '()))
                         (let* ((_%pl-rhead9568395692%_ _%pl-rhead95679%_)
                                (_%E9568695696%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%pl-rhead9568395692%_
                                          '([])
                                          '([c . plrh]))
                                   '#!void)))
                           (let ((_%K9569095726%_ (lambda () _%pl-tail95680%_))
                                 (_%K9568795710%_
                                  (lambda (_%plrh95700%_ _%c95701%_)
                                    (if (member _%c95701%_
                                                _%sis-tail95682%_
                                                _%eq95470%_)
                                        (_%err95478%_
                                         'precedence-list-head:
                                         (_%get-names95477%_
                                          (reverse _%pl-rhead95679%_))
                                         'precedence-list-tail:
                                         (_%get-names95477%_ _%pl-tail95680%_)
                                         'single-inheritance-head:
                                         (_%get-names95477%_
                                          (reverse _%sis-rhead95681%_))
                                         'single-inheritance-tail:
                                         (_%get-names95477%_ _%sis-tail95682%_)
                                         'super-out-of-order-vs-single-inheritance-tail:
                                         (_%get-name95472%_ _%c95701%_))
                                        (let ((_g95811_
                                               (let ((__tmp95813
                                                      (lambda (_%g9570295704%_)
                                                        (_%eq95470%_
                                                         _%c95701%_
                                                         _%g9570295704%_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp95813
                                                  _%sis-rhead95681%_
                                                  _%sis-tail95682%_))))
                                          (begin
                                            (let ((_g95812_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g95811_)
                                                         (##values-length
                                                          _g95811_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g95812_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g95812_)))
                                            (let ((_%sis-rh295707%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g95811_
                                                      0)))
                                                  (_%sis-tl295708%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g95811_
                                                      1))))
                                              (if (null? _%sis-rh295707%_)
                                                  (_%u95677%_
                                                   _%plrh95700%_
                                                   (cons _%c95701%_
                                                         _%pl-tail95680%_)
                                                   '()
                                                   _%sis-tl295708%_)
                                                  (_%u95677%_
                                                   _%plrh95700%_
                                                   _%pl-tail95680%_
                                                   (cdr _%sis-rh295707%_)
                                                   _%sis-tl295708%_)))))))))
                             (let ((_%try-match9568595722%_
                                    (lambda ()
                                      (if (pair? _%pl-rhead9568395692%_)
                                          (let ((_%tl9568995715%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%pl-rhead9568395692%_)))
                                                (_%hd9568895713%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%pl-rhead9568395692%_))))
                                            (let ((_%c95718%_ _%hd9568895713%_)
                                                  (_%plrh95720%_
                                                   _%tl9568995715%_))
                                              (_%K9568795710%_
                                               _%plrh95720%_
                                               _%c95718%_)))
                                          (_%E9568695696%_)))))
                               (if (null? _%pl-rhead9568395692%_)
                                   (_%K9569095726%_)
                                   (_%try-match9568595722%_))))))))
                    (_g95814_
                     (let ((_g95815_
                            (let ((__tmp95817 (reverse _%supers95464%_)))
                              (declare (not safe))
                              (append1! _%rpls95481%_ __tmp95817))))
                       #!void
                       _g95815_))
                    (_%hpls95483%_
                     (let ()
                       (declare (not safe))
                       (##map _%unsisr-rpl95482%_ _%rpls95481%_)))
                    (_%c3-select-next95484%_
                     (lambda (_%tails95625%_)
                       (let ((_%candidate?95631%_
                              (lambda (_%c95627%_)
                                (let ((__tmp95818
                                       (lambda (_%tail95629%_)
                                         (not (member _%c95627%_
                                                      (cdr _%tail95629%_)
                                                      _%eq95470%_)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp95818 _%tails95625%_)))))
                         (let _%loop95633%_ ((_%ts95635%_ _%tails95625%_))
                           (let* ((_%ts9563695646%_ _%ts95635%_)
                                  (_%else9563895654%_
                                   (lambda () (_%err95478%_)))
                                  (_%K9564095660%_
                                   (lambda (_%rts95657%_ _%c95658%_)
                                     (if (_%candidate?95631%_ _%c95658%_)
                                         _%c95658%_
                                         (_%loop95633%_ _%rts95657%_)))))
                             (if (pair? _%ts9563695646%_)
                                 (let ((_%hd9564195663%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%ts9563695646%_)))
                                       (_%tl9564295665%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%ts9563695646%_))))
                                   (if (pair? _%hd9564195663%_)
                                       (let* ((_%hd9564395668%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd9564195663%_)))
                                              (_%c95671%_ _%hd9564395668%_)
                                              (_%rts95673%_ _%tl9564295665%_))
                                         (_%K9564095660%_
                                          _%rts95673%_
                                          _%c95671%_))
                                       (_%err95478%_)))
                                 (_%err95478%_)))))))
                    (_%remove-next!95485%_
                     (lambda (_%next95570%_ _%tails95571%_)
                       (let _%loop95573%_ ((_%t95575%_ _%tails95571%_))
                         (let* ((_%t9557695587%_ _%t95575%_)
                                (_%E9557995591%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%t9557695587%_
                                          '([])
                                          '([[head . tail] . more]))
                                   '#!void)))
                           (let ((_%K9558595622%_ (lambda () _%tails95571%_))
                                 (_%K9558095599%_
                                  (lambda (_%more95595%_
                                           _%tail95596%_
                                           _%head95597%_)
                                    (if (_%eq95470%_
                                         _%head95597%_
                                         _%next95570%_)
                                        (set-car! _%t95575%_ _%tail95596%_)
                                        '#!void)
                                    (_%loop95573%_ _%more95595%_))))
                             (let ((_%try-match9557895618%_
                                    (lambda ()
                                      (if (pair? _%t9557695587%_)
                                          (let ((_%tl9558295604%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%t9557695587%_)))
                                                (_%hd9558195602%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%t9557695587%_))))
                                            (if (pair? _%hd9558195602%_)
                                                (let ((_%tl9558495609%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd9558195602%_)))
                                                      (_%hd9558395607%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd9558195602%_))))
                                                  (let ((_%head95612%_
                                                         _%hd9558395607%_)
                                                        (_%tail95614%_
                                                         _%tl9558495609%_)
                                                        (_%more95616%_
                                                         _%tl9558295604%_))
                                                    (_%K9558095599%_
                                                     _%more95616%_
                                                     _%tail95614%_
                                                     _%head95612%_)))
                                                (_%E9557995591%_)))
                                          (_%E9557995591%_)))))
                               (if (null? _%t9557695587%_)
                                   (_%K9558595622%_)
                                   (_%try-match9557895618%_))))))))
                    (_%precedence-list95486%_
                     (if (null? _%supers95464%_)
                         (reverse _%rhead95463%_)
                         (if (null? (cdr _%supers95464%_))
                             (append-reverse _%rhead95463%_ (car _%pls95475%_))
                             (let _%c3loop95520%_ ((_%rhead95522%_
                                                    _%rhead95463%_)
                                                   (_%tails95523%_
                                                    _%hpls95483%_))
                               (let* ((_%tails95525%_
                                       (let ()
                                         (declare (not safe))
                                         (remove-nulls! _%tails95523%_)))
                                      (_%tails9552695536%_ _%tails95525%_)
                                      (_%else9552995547%_
                                       (lambda ()
                                         (let ((_%next95544%_
                                                (_%c3-select-next95484%_
                                                 _%tails95525%_)))
                                           (_%c3loop95520%_
                                            (cons _%next95544%_ _%rhead95522%_)
                                            (_%remove-next!95485%_
                                             _%next95544%_
                                             _%tails95525%_))))))
                                 (let ((_%K9553495567%_
                                        (lambda ()
                                          (append-reverse
                                           _%rhead95522%_
                                           _%sis95476%_)))
                                       (_%K9553195553%_
                                        (lambda (_%tail95551%_)
                                          (append-reverse
                                           _%rhead95522%_
                                           (append _%tail95551%_
                                                   _%sis95476%_)))))
                                   (let ((_%try-match9552895563%_
                                          (lambda ()
                                            (if (pair? _%tails9552695536%_)
                                                (let ((_%tl9553395558%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tails9552695536%_)))
                                                      (_%hd9553295556%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tails9552695536%_))))
                                                  (if (null? _%tl9553395558%_)
                                                      (let ((_%tail95561%_
                                                             _%hd9553295556%_))
                                                        (_%K9553195553%_
                                                         _%tail95561%_))
                                                      (_%else9552995547%_)))
                                                (_%else9552995547%_)))))
                                     (if (null? _%tails9552695536%_)
                                         (_%K9553495567%_)
                                         (_%try-match9552895563%_)))))))))
                    (_%super-struct95487%_
                     (let* ((_%sis9548895496%_ _%sis95476%_)
                            (_%else9549095504%_ (lambda () '#f))
                            (_%K9549295509%_ (lambda (_%s95507%_) _%s95507%_)))
                       (if (pair? _%sis9548895496%_)
                           (let* ((_%hd9549395512%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%sis9548895496%_)))
                                  (_%s95515%_ _%hd9549395512%_))
                             (_%K9549295509%_ _%s95515%_))
                           (_%else9549095504%_)))))
            (values _%precedence-list95486%_ _%super-struct95487%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords95764%_ . _%args95765%_)
        (apply c4-linearize__%
               _%@@keywords95764%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords95764%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords95764%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords95764%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords95764%_
                  'get-name:
                  absent-value))
               _%args95765%_)))
    (define c4-linearize
      (lambda _%args9545295771%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9545295771%_)))))
