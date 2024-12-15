(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1734279326)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords95444%_
               _%get-precedence-list9543895445%_
               _%struct?9543995447%_
               _%eq9544095449%_
               _%get-name9544195451%_
               _%rhead95453%_
               _%supers95454%_)
        (let* ((_%get-precedence-list95456%_
                (if (eq? _%get-precedence-list9543895445%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9543895445%_))
               (_%struct?95458%_
                (if (eq? _%struct?9543995447%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9543995447%_))
               (_%eq95460%_
                (if (eq? _%eq9544095449%_ absent-value) eq? _%eq9544095449%_))
               (_%get-name95462%_
                (if (eq? _%get-name9544195451%_ absent-value)
                    identity
                    _%get-name9544195451%_)))
          (letrec* ((_%pls95465%_
                     (map _%get-precedence-list95456%_ _%supers95454%_))
                    (_%sis95466%_ '())
                    (_%get-names95467%_
                     (lambda (_%lst95749%_)
                       (map _%get-name95462%_ _%lst95749%_)))
                    (_%err95468%_
                     (lambda _%a95747%_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (_%get-names95467%_ (reverse _%rhead95453%_))
                              'precedence-lists:
                              (let ()
                                (declare (not safe))
                                (##map _%get-names95467%_ _%pls95465%_))
                              'single-inheritance-suffix:
                              (_%get-names95467%_ _%sis95466%_)
                              _%a95747%_)))
                    (_%eqlist?95469%_
                     (lambda (_%l195741%_ _%l295742%_)
                       (let ((_%$e95744%_ (eq? _%l195741%_ _%l295742%_)))
                         (if _%$e95744%_
                             _%$e95744%_
                             (if (let ()
                                   (declare (not safe))
                                   (andmap2 _%eq95460%_
                                            _%l195741%_
                                            _%l295742%_))
                                 (let ((__tmp95797 (length _%l195741%_))
                                       (__tmp95796 (length _%l295742%_)))
                                   (declare (not safe))
                                   (##fx= __tmp95797 __tmp95796))
                                 '#f)))))
                    (_%merge-sis!95470%_
                     (lambda (_%sis295724%_)
                       (if (null? _%sis295724%_)
                           '#!void
                           (if (null? _%sis95466%_)
                               (set! _%sis95466%_ _%sis295724%_)
                               (let _%loop95729%_ ((_%t195731%_ _%sis95466%_)
                                                   (_%t295732%_ _%sis295724%_))
                                 (if (_%eqlist?95469%_
                                      _%t195731%_
                                      _%sis295724%_)
                                     '#!void
                                     (if (_%eqlist?95469%_
                                          _%t295732%_
                                          _%sis95466%_)
                                         (set! _%sis95466%_ _%sis295724%_)
                                         (if (or (null? _%t195731%_)
                                                 (null? _%t295732%_))
                                             (_%err95468%_
                                              'struct-incompatibility:
                                              (cons (_%get-names95467%_
                                                     _%sis95466%_)
                                                    (cons (_%get-names95467%_
                                                           _%sis295724%_)
                                                          '())))
                                             (_%loop95729%_
                                              (cdr _%t195731%_)
                                              (cdr _%t295732%_))))))))))
                    (_%rpls95471%_
                     (let ((__tmp95798
                            (lambda (_%pl95719%_)
                              (let ((_g95799_
                                     (let ()
                                       (declare (not safe))
                                       (append-reverse-until
                                        _%struct?95458%_
                                        _%pl95719%_
                                        '()))))
                                (begin
                                  (let ((_g95800_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g95799_)
                                               (##values-length _g95799_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g95800_ 2)))
                                        (error "Context expects 2 values"
                                               _g95800_)))
                                  (let ((_%tl95721%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g95799_ 0)))
                                        (_%rh95722%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g95799_ 1))))
                                    (begin
                                      (_%merge-sis!95470%_ _%tl95721%_)
                                      _%rh95722%_)))))))
                       (declare (not safe))
                       (##map __tmp95798 _%pls95465%_)))
                    (_%unsisr-rpl95472%_
                     (lambda (_%rpl95665%_)
                       (let _%u95667%_ ((_%pl-rhead95669%_ _%rpl95665%_)
                                        (_%pl-tail95670%_ '())
                                        (_%sis-rhead95671%_
                                         (reverse _%sis95466%_))
                                        (_%sis-tail95672%_ '()))
                         (let* ((_%pl-rhead9567395682%_ _%pl-rhead95669%_)
                                (_%E9567695686%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%pl-rhead9567395682%_
                                          '([])
                                          '([c . plrh]))
                                   '#!void)))
                           (let ((_%K9568095716%_ (lambda () _%pl-tail95670%_))
                                 (_%K9567795700%_
                                  (lambda (_%plrh95690%_ _%c95691%_)
                                    (if (member _%c95691%_
                                                _%sis-tail95672%_
                                                _%eq95460%_)
                                        (_%err95468%_
                                         'precedence-list-head:
                                         (_%get-names95467%_
                                          (reverse _%pl-rhead95669%_))
                                         'precedence-list-tail:
                                         (_%get-names95467%_ _%pl-tail95670%_)
                                         'single-inheritance-head:
                                         (_%get-names95467%_
                                          (reverse _%sis-rhead95671%_))
                                         'single-inheritance-tail:
                                         (_%get-names95467%_ _%sis-tail95672%_)
                                         'super-out-of-order-vs-single-inheritance-tail:
                                         (_%get-name95462%_ _%c95691%_))
                                        (let ((_g95801_
                                               (let ((__tmp95803
                                                      (lambda (_%g9569295694%_)
                                                        (_%eq95460%_
                                                         _%c95691%_
                                                         _%g9569295694%_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp95803
                                                  _%sis-rhead95671%_
                                                  _%sis-tail95672%_))))
                                          (begin
                                            (let ((_g95802_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g95801_)
                                                         (##values-length
                                                          _g95801_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g95802_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g95802_)))
                                            (let ((_%sis-rh295697%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g95801_
                                                      0)))
                                                  (_%sis-tl295698%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g95801_
                                                      1))))
                                              (if (null? _%sis-rh295697%_)
                                                  (_%u95667%_
                                                   _%plrh95690%_
                                                   (cons _%c95691%_
                                                         _%pl-tail95670%_)
                                                   '()
                                                   _%sis-tl295698%_)
                                                  (_%u95667%_
                                                   _%plrh95690%_
                                                   _%pl-tail95670%_
                                                   (cdr _%sis-rh295697%_)
                                                   _%sis-tl295698%_)))))))))
                             (let ((_%try-match9567595712%_
                                    (lambda ()
                                      (if (pair? _%pl-rhead9567395682%_)
                                          (let ((_%tl9567995705%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%pl-rhead9567395682%_)))
                                                (_%hd9567895703%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%pl-rhead9567395682%_))))
                                            (let ((_%c95708%_ _%hd9567895703%_)
                                                  (_%plrh95710%_
                                                   _%tl9567995705%_))
                                              (_%K9567795700%_
                                               _%plrh95710%_
                                               _%c95708%_)))
                                          (_%E9567695686%_)))))
                               (if (null? _%pl-rhead9567395682%_)
                                   (_%K9568095716%_)
                                   (_%try-match9567595712%_))))))))
                    (_g95804_
                     (let ((_g95805_
                            (let ((__tmp95807 (reverse _%supers95454%_)))
                              (declare (not safe))
                              (append1! _%rpls95471%_ __tmp95807))))
                       #!void
                       _g95805_))
                    (_%hpls95473%_
                     (let ()
                       (declare (not safe))
                       (##map _%unsisr-rpl95472%_ _%rpls95471%_)))
                    (_%c3-select-next95474%_
                     (lambda (_%tails95615%_)
                       (let ((_%candidate?95621%_
                              (lambda (_%c95617%_)
                                (let ((__tmp95808
                                       (lambda (_%tail95619%_)
                                         (not (member _%c95617%_
                                                      (cdr _%tail95619%_)
                                                      _%eq95460%_)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp95808 _%tails95615%_)))))
                         (let _%loop95623%_ ((_%ts95625%_ _%tails95615%_))
                           (let* ((_%ts9562695636%_ _%ts95625%_)
                                  (_%else9562895644%_
                                   (lambda () (_%err95468%_)))
                                  (_%K9563095650%_
                                   (lambda (_%rts95647%_ _%c95648%_)
                                     (if (_%candidate?95621%_ _%c95648%_)
                                         _%c95648%_
                                         (_%loop95623%_ _%rts95647%_)))))
                             (if (pair? _%ts9562695636%_)
                                 (let ((_%hd9563195653%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%ts9562695636%_)))
                                       (_%tl9563295655%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%ts9562695636%_))))
                                   (if (pair? _%hd9563195653%_)
                                       (let* ((_%hd9563395658%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd9563195653%_)))
                                              (_%c95661%_ _%hd9563395658%_)
                                              (_%rts95663%_ _%tl9563295655%_))
                                         (_%K9563095650%_
                                          _%rts95663%_
                                          _%c95661%_))
                                       (_%err95468%_)))
                                 (_%err95468%_)))))))
                    (_%remove-next!95475%_
                     (lambda (_%next95560%_ _%tails95561%_)
                       (let _%loop95563%_ ((_%t95565%_ _%tails95561%_))
                         (let* ((_%t9556695577%_ _%t95565%_)
                                (_%E9556995581%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%t9556695577%_
                                          '([])
                                          '([[head . tail] . more]))
                                   '#!void)))
                           (let ((_%K9557595612%_ (lambda () _%tails95561%_))
                                 (_%K9557095589%_
                                  (lambda (_%more95585%_
                                           _%tail95586%_
                                           _%head95587%_)
                                    (if (_%eq95460%_
                                         _%head95587%_
                                         _%next95560%_)
                                        (set-car! _%t95565%_ _%tail95586%_)
                                        '#!void)
                                    (_%loop95563%_ _%more95585%_))))
                             (let ((_%try-match9556895608%_
                                    (lambda ()
                                      (if (pair? _%t9556695577%_)
                                          (let ((_%tl9557295594%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%t9556695577%_)))
                                                (_%hd9557195592%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%t9556695577%_))))
                                            (if (pair? _%hd9557195592%_)
                                                (let ((_%tl9557495599%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd9557195592%_)))
                                                      (_%hd9557395597%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd9557195592%_))))
                                                  (let ((_%head95602%_
                                                         _%hd9557395597%_)
                                                        (_%tail95604%_
                                                         _%tl9557495599%_)
                                                        (_%more95606%_
                                                         _%tl9557295594%_))
                                                    (_%K9557095589%_
                                                     _%more95606%_
                                                     _%tail95604%_
                                                     _%head95602%_)))
                                                (_%E9556995581%_)))
                                          (_%E9556995581%_)))))
                               (if (null? _%t9556695577%_)
                                   (_%K9557595612%_)
                                   (_%try-match9556895608%_))))))))
                    (_%precedence-list95476%_
                     (if (null? _%supers95454%_)
                         (reverse _%rhead95453%_)
                         (if (null? (cdr _%supers95454%_))
                             (append-reverse _%rhead95453%_ (car _%pls95465%_))
                             (let _%c3loop95510%_ ((_%rhead95512%_
                                                    _%rhead95453%_)
                                                   (_%tails95513%_
                                                    _%hpls95473%_))
                               (let* ((_%tails95515%_
                                       (let ()
                                         (declare (not safe))
                                         (remove-nulls! _%tails95513%_)))
                                      (_%tails9551695526%_ _%tails95515%_)
                                      (_%else9551995537%_
                                       (lambda ()
                                         (let ((_%next95534%_
                                                (_%c3-select-next95474%_
                                                 _%tails95515%_)))
                                           (_%c3loop95510%_
                                            (cons _%next95534%_ _%rhead95512%_)
                                            (_%remove-next!95475%_
                                             _%next95534%_
                                             _%tails95515%_))))))
                                 (let ((_%K9552495557%_
                                        (lambda ()
                                          (append-reverse
                                           _%rhead95512%_
                                           _%sis95466%_)))
                                       (_%K9552195543%_
                                        (lambda (_%tail95541%_)
                                          (append-reverse
                                           _%rhead95512%_
                                           (append _%tail95541%_
                                                   _%sis95466%_)))))
                                   (let ((_%try-match9551895553%_
                                          (lambda ()
                                            (if (pair? _%tails9551695526%_)
                                                (let ((_%tl9552395548%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tails9551695526%_)))
                                                      (_%hd9552295546%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tails9551695526%_))))
                                                  (if (null? _%tl9552395548%_)
                                                      (let ((_%tail95551%_
                                                             _%hd9552295546%_))
                                                        (_%K9552195543%_
                                                         _%tail95551%_))
                                                      (_%else9551995537%_)))
                                                (_%else9551995537%_)))))
                                     (if (null? _%tails9551695526%_)
                                         (_%K9552495557%_)
                                         (_%try-match9551895553%_)))))))))
                    (_%super-struct95477%_
                     (let* ((_%sis9547895486%_ _%sis95466%_)
                            (_%else9548095494%_ (lambda () '#f))
                            (_%K9548295499%_ (lambda (_%s95497%_) _%s95497%_)))
                       (if (pair? _%sis9547895486%_)
                           (let* ((_%hd9548395502%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%sis9547895486%_)))
                                  (_%s95505%_ _%hd9548395502%_))
                             (_%K9548295499%_ _%s95505%_))
                           (_%else9548095494%_)))))
            (values _%precedence-list95476%_ _%super-struct95477%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords95754%_ . _%args95755%_)
        (apply c4-linearize__%
               _%@@keywords95754%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords95754%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords95754%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords95754%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords95754%_
                  'get-name:
                  absent-value))
               _%args95755%_)))
    (define c4-linearize
      (lambda _%args9544295761%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9544295761%_)))))
