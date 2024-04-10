(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1712784664)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords91930%_
               _%get-precedence-list9192491931%_
               _%struct?9192591933%_
               _%eq9192691935%_
               _%get-name9192791937%_
               _%rhead91939%_
               _%supers91940%_)
        (let* ((_%get-precedence-list91942%_
                (if (eq? _%get-precedence-list9192491931%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9192491931%_))
               (_%struct?91944%_
                (if (eq? _%struct?9192591933%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9192591933%_))
               (_%eq91946%_
                (if (eq? _%eq9192691935%_ absent-value) eq? _%eq9192691935%_))
               (_%get-name91948%_
                (if (eq? _%get-name9192791937%_ absent-value)
                    identity
                    _%get-name9192791937%_)))
          (letrec* ((_%pls91951%_
                     (map _%get-precedence-list91942%_ _%supers91940%_))
                    (_%sit91952%_ '())
                    (_%get-names91953%_
                     (lambda (_%lst92228%_)
                       (map _%get-name91948%_ _%lst92228%_)))
                    (_%err91954%_
                     (lambda _%a92226%_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (_%get-names91953%_ (reverse _%rhead91939%_))
                              'precedence-lists:
                              (let ()
                                (declare (not safe))
                                (##map _%get-names91953%_ _%pls91951%_))
                              'single-inheritance-tail:
                              (_%get-names91953%_ _%sit91952%_)
                              _%a92226%_)))
                    (_%same?91955%_
                     (lambda (_%lst192223%_ _%lst292224%_)
                       (if (let ((__tmp92276 (length _%lst192223%_))
                                 (__tmp92275 (length _%lst292224%_)))
                             (declare (not safe))
                             (##fx= __tmp92276 __tmp92275))
                           (let ()
                             (declare (not safe))
                             (andmap2 _%eq91946%_ _%lst192223%_ _%lst292224%_))
                           '#f)))
                    (_%merge-sit!91956%_
                     (lambda (_%sit292206%_)
                       (if (null? _%sit292206%_)
                           '#!void
                           (if (null? _%sit91952%_)
                               (set! _%sit91952%_ _%sit292206%_)
                               (let _%loop92211%_ ((_%t192213%_ _%sit91952%_)
                                                   (_%t292214%_ _%sit292206%_))
                                 (if (_%same?91955%_ _%t192213%_ _%sit292206%_)
                                     '#!void
                                     (if (_%same?91955%_
                                          _%t292214%_
                                          _%sit91952%_)
                                         (set! _%sit91952%_ _%sit292206%_)
                                         (if (or (null? _%t192213%_)
                                                 (null? _%t292214%_))
                                             (_%err91954%_
                                              'single-inheritance-incompatibility:
                                              (cons (_%get-names91953%_
                                                     _%sit91952%_)
                                                    (cons (_%get-names91953%_
                                                           _%sit292206%_)
                                                          '())))
                                             (_%loop92211%_
                                              (cdr _%t192213%_)
                                              (cdr _%t292214%_))))))))))
                    (_%rpls91957%_
                     (let ((__tmp92277
                            (lambda (_%pl92201%_)
                              (let ((_g92278_
                                     (let ()
                                       (declare (not safe))
                                       (append-reverse-until
                                        _%struct?91944%_
                                        _%pl92201%_
                                        '()))))
                                (begin
                                  (let ((_g92279_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g92278_)
                                               (##vector-length _g92278_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g92279_ 2)))
                                        (error "Context expects 2 values"
                                               _g92279_)))
                                  (let ((_%tl92203%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g92278_ 0)))
                                        (_%rh92204%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g92278_ 1))))
                                    (begin
                                      (_%merge-sit!91956%_ _%tl92203%_)
                                      _%rh92204%_)))))))
                       (declare (not safe))
                       (##map __tmp92277 _%pls91951%_)))
                    (_%unsitr-rpl91958%_
                     (lambda (_%rpl92147%_)
                       (let _%u92149%_ ((_%pl-rhead92151%_ _%rpl92147%_)
                                        (_%pl-tail92152%_ '())
                                        (_%sit-rhead92153%_
                                         (reverse _%sit91952%_))
                                        (_%sit-tail92154%_ '()))
                         (let* ((_%pl-rhead9215592164%_ _%pl-rhead92151%_)
                                (_%E9215892168%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%pl-rhead9215592164%_
                                          '([])
                                          '([c . plrh]))
                                   '#!void)))
                           (let ((_%K9216292198%_ (lambda () _%pl-tail92152%_))
                                 (_%K9215992182%_
                                  (lambda (_%plrh92172%_ _%c92173%_)
                                    (if (member _%c92173%_
                                                _%sit-tail92154%_
                                                _%eq91946%_)
                                        (_%err91954%_
                                         'precedence-list-head:
                                         (_%get-names91953%_
                                          (reverse _%pl-rhead92151%_))
                                         'precedence-list-tail:
                                         (_%get-names91953%_ _%pl-tail92152%_)
                                         'single-inheritance-head:
                                         (_%get-names91953%_
                                          (reverse _%sit-rhead92153%_))
                                         'single-inheritance-tail:
                                         (_%get-names91953%_ _%sit-tail92154%_)
                                         'super-out-of-order-vs-single-inheritance-tail:
                                         (_%get-name91948%_ _%c92173%_))
                                        (let ((_g92280_
                                               (let ((__tmp92282
                                                      (lambda (_%g9217492176%_)
                                                        (_%eq91946%_
                                                         _%c92173%_
                                                         _%g9217492176%_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp92282
                                                  _%sit-rhead92153%_
                                                  _%sit-tail92154%_))))
                                          (begin
                                            (let ((_g92281_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g92280_)
                                                         (##vector-length
                                                          _g92280_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g92281_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g92281_)))
                                            (let ((_%sit-rh292179%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g92280_
                                                      0)))
                                                  (_%sit-tl292180%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g92280_
                                                      1))))
                                              (if (null? _%sit-rh292179%_)
                                                  (_%u92149%_
                                                   _%plrh92172%_
                                                   (cons _%c92173%_
                                                         _%pl-tail92152%_)
                                                   '()
                                                   _%sit-tl292180%_)
                                                  (_%u92149%_
                                                   _%plrh92172%_
                                                   _%pl-tail92152%_
                                                   (cdr _%sit-rh292179%_)
                                                   _%sit-tl292180%_)))))))))
                             (let ((_%try-match9215792194%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%pl-rhead9215592164%_))
                                          (let ((_%tl9216192187%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%pl-rhead9215592164%_)))
                                                (_%hd9216092185%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%pl-rhead9215592164%_))))
                                            (let ((_%c92190%_ _%hd9216092185%_)
                                                  (_%plrh92192%_
                                                   _%tl9216192187%_))
                                              (_%K9215992182%_
                                               _%plrh92192%_
                                               _%c92190%_)))
                                          (_%E9215892168%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%pl-rhead9215592164%_))
                                   (_%K9216292198%_)
                                   (_%try-match9215792194%_))))))))
                    (_g92283_
                     (let ((_g92284_
                            (let ((__tmp92286 (reverse _%supers91940%_)))
                              (declare (not safe))
                              (append1! _%rpls91957%_ __tmp92286))))
                       #!void
                       _g92284_))
                    (_g92287_
                     (let ((_g92288_
                            (set! _%pls91951%_
                                  (let ()
                                    (declare (not safe))
                                    (##map _%unsitr-rpl91958%_
                                           _%rpls91957%_)))))
                       #!void
                       _g92288_))
                    (_%c3-select-next91959%_
                     (lambda (_%tails92097%_)
                       (let ((_%candidate?92103%_
                              (lambda (_%c92099%_)
                                (let ((__tmp92290
                                       (lambda (_%tail92101%_)
                                         (not (member _%c92099%_
                                                      (cdr _%tail92101%_)
                                                      _%eq91946%_)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp92290 _%tails92097%_)))))
                         (let _%loop92105%_ ((_%ts92107%_ _%tails92097%_))
                           (let* ((_%ts9210892118%_ _%ts92107%_)
                                  (_%else9211092126%_
                                   (lambda () (_%err91954%_)))
                                  (_%K9211292132%_
                                   (lambda (_%rts92129%_ _%c92130%_)
                                     (if (_%candidate?92103%_ _%c92130%_)
                                         _%c92130%_
                                         (_%loop92105%_ _%rts92129%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%ts9210892118%_))
                                 (let ((_%hd9211392135%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%ts9210892118%_)))
                                       (_%tl9211492137%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%ts9210892118%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%hd9211392135%_))
                                       (let* ((_%hd9211592140%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd9211392135%_)))
                                              (_%c92143%_ _%hd9211592140%_)
                                              (_%rts92145%_ _%tl9211492137%_))
                                         (_%K9211292132%_
                                          _%rts92145%_
                                          _%c92143%_))
                                       (_%err91954%_)))
                                 (_%err91954%_)))))))
                    (_%remove-next!91960%_
                     (lambda (_%next92042%_ _%tails92043%_)
                       (let _%loop92045%_ ((_%t92047%_ _%tails92043%_))
                         (let* ((_%t9204892059%_ _%t92047%_)
                                (_%E9205192063%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%t9204892059%_
                                          '([])
                                          '([[head . tail] . more]))
                                   '#!void)))
                           (let ((_%K9205792094%_ (lambda () _%tails92043%_))
                                 (_%K9205292071%_
                                  (lambda (_%more92067%_
                                           _%tail92068%_
                                           _%head92069%_)
                                    (if (_%eq91946%_
                                         _%head92069%_
                                         _%next92042%_)
                                        (set-car! _%t92047%_ _%tail92068%_)
                                        '#!void)
                                    (_%loop92045%_ _%more92067%_))))
                             (let ((_%try-match9205092090%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%t9204892059%_))
                                          (let ((_%tl9205492076%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%t9204892059%_)))
                                                (_%hd9205392074%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%t9204892059%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd9205392074%_))
                                                (let ((_%tl9205692081%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd9205392074%_)))
                                                      (_%hd9205592079%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd9205392074%_))))
                                                  (let ((_%head92084%_
                                                         _%hd9205592079%_)
                                                        (_%tail92086%_
                                                         _%tl9205692081%_)
                                                        (_%more92088%_
                                                         _%tl9205492076%_))
                                                    (_%K9205292071%_
                                                     _%more92088%_
                                                     _%tail92086%_
                                                     _%head92084%_)))
                                                (_%E9205192063%_)))
                                          (_%E9205192063%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%t9204892059%_))
                                   (_%K9205792094%_)
                                   (_%try-match9205092090%_))))))))
                    (_%precedence-list91961%_
                     (let _%c3loop91992%_ ((_%rhead91994%_ _%rhead91939%_)
                                           (_%tails91995%_ _%pls91951%_))
                       (let* ((_%tails91997%_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _%tails91995%_)))
                              (_%tails9199892008%_ _%tails91997%_)
                              (_%else9200192019%_
                               (lambda ()
                                 (let ((_%next92016%_
                                        (_%c3-select-next91959%_
                                         _%tails91997%_)))
                                   (_%c3loop91992%_
                                    (cons _%next92016%_ _%rhead91994%_)
                                    (_%remove-next!91960%_
                                     _%next92016%_
                                     _%tails91997%_))))))
                         (let ((_%K9200692039%_
                                (lambda ()
                                  (append-reverse
                                   _%rhead91994%_
                                   _%sit91952%_)))
                               (_%K9200392025%_
                                (lambda (_%tail92023%_)
                                  (append-reverse
                                   _%rhead91994%_
                                   (append _%tail92023%_ _%sit91952%_)))))
                           (let ((_%try-match9200092035%_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tails9199892008%_))
                                        (let ((_%tl9200592030%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tails9199892008%_)))
                                              (_%hd9200492028%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tails9199892008%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl9200592030%_))
                                              (let ((_%tail92033%_
                                                     _%hd9200492028%_))
                                                (_%K9200392025%_
                                                 _%tail92033%_))
                                              (_%else9200192019%_)))
                                        (_%else9200192019%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tails9199892008%_))
                                 (_%K9200692039%_)
                                 (_%try-match9200092035%_)))))))
                    (_%super-struct91962%_
                     (let* ((_%sit9196391971%_ _%sit91952%_)
                            (_%else9196591979%_ (lambda () '#f))
                            (_%K9196791984%_ (lambda (_%s91982%_) _%s91982%_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%sit9196391971%_))
                           (let* ((_%hd9196891987%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%sit9196391971%_)))
                                  (_%s91990%_ _%hd9196891987%_))
                             (_%K9196791984%_ _%s91990%_))
                           (_%else9196591979%_)))))
            (values _%precedence-list91961%_ _%super-struct91962%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords92233%_ . _%args92234%_)
        (apply c4-linearize__%
               _%@@keywords92233%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords92233%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords92233%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords92233%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords92233%_
                  'get-name:
                  absent-value))
               _%args92234%_)))
    (define c4-linearize
      (lambda _%args9192892240%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9192892240%_)))))
