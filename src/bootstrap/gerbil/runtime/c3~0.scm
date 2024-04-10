(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1712773523)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords91488%_
               _%get-precedence-list9148291489%_
               _%struct?9148391491%_
               _%eq9148491493%_
               _%get-name9148591495%_
               _%rhead91497%_
               _%supers91498%_)
        (let* ((_%get-precedence-list91500%_
                (if (eq? _%get-precedence-list9148291489%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9148291489%_))
               (_%struct?91502%_
                (if (eq? _%struct?9148391491%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9148391491%_))
               (_%eq91504%_
                (if (eq? _%eq9148491493%_ absent-value) eq? _%eq9148491493%_))
               (_%get-name91506%_
                (if (eq? _%get-name9148591495%_ absent-value)
                    identity
                    _%get-name9148591495%_)))
          (letrec* ((_%pls91509%_
                     (map _%get-precedence-list91500%_ _%supers91498%_))
                    (_%sit91510%_ '())
                    (_%get-names91511%_
                     (lambda (_%lst91786%_)
                       (map _%get-name91506%_ _%lst91786%_)))
                    (_%err91512%_
                     (lambda _%a91784%_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (_%get-names91511%_ (reverse _%rhead91497%_))
                              'precedence-lists:
                              (let ()
                                (declare (not safe))
                                (##map _%get-names91511%_ _%pls91509%_))
                              'single-inheritance-tail:
                              (_%get-names91511%_ _%sit91510%_)
                              _%a91784%_)))
                    (_%same?91513%_
                     (lambda (_%lst191781%_ _%lst291782%_)
                       (if (let ((__tmp91834 (length _%lst191781%_))
                                 (__tmp91833 (length _%lst291782%_)))
                             (declare (not safe))
                             (##fx= __tmp91834 __tmp91833))
                           (let ()
                             (declare (not safe))
                             (andmap2 _%eq91504%_ _%lst191781%_ _%lst291782%_))
                           '#f)))
                    (_%merge-sit!91514%_
                     (lambda (_%sit291764%_)
                       (if (null? _%sit291764%_)
                           '#!void
                           (if (null? _%sit91510%_)
                               (set! _%sit91510%_ _%sit291764%_)
                               (let _%loop91769%_ ((_%t191771%_ _%sit91510%_)
                                                   (_%t291772%_ _%sit291764%_))
                                 (if (_%same?91513%_ _%t191771%_ _%sit291764%_)
                                     '#!void
                                     (if (_%same?91513%_
                                          _%t291772%_
                                          _%sit91510%_)
                                         (set! _%sit91510%_ _%sit291764%_)
                                         (if (or (null? _%t191771%_)
                                                 (null? _%t291772%_))
                                             (_%err91512%_
                                              'single-inheritance-incompatibility:
                                              (cons (_%get-names91511%_
                                                     _%sit91510%_)
                                                    (cons (_%get-names91511%_
                                                           _%sit291764%_)
                                                          '())))
                                             (_%loop91769%_
                                              (cdr _%t191771%_)
                                              (cdr _%t291772%_))))))))))
                    (_%rpls91515%_
                     (let ((__tmp91835
                            (lambda (_%pl91759%_)
                              (let ((_g91836_
                                     (let ()
                                       (declare (not safe))
                                       (append-reverse-until
                                        _%struct?91502%_
                                        _%pl91759%_
                                        '()))))
                                (begin
                                  (let ((_g91837_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g91836_)
                                               (##vector-length _g91836_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g91837_ 2)))
                                        (error "Context expects 2 values"
                                               _g91837_)))
                                  (let ((_%tl91761%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g91836_ 0)))
                                        (_%rh91762%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g91836_ 1))))
                                    (begin
                                      (_%merge-sit!91514%_ _%tl91761%_)
                                      _%rh91762%_)))))))
                       (declare (not safe))
                       (##map __tmp91835 _%pls91509%_)))
                    (_%unsitr-rpl91516%_
                     (lambda (_%rpl91705%_)
                       (let _%u91707%_ ((_%pl-rhead91709%_ _%rpl91705%_)
                                        (_%pl-tail91710%_ '())
                                        (_%sit-rhead91711%_
                                         (reverse _%sit91510%_))
                                        (_%sit-tail91712%_ '()))
                         (let* ((_%pl-rhead9171391722%_ _%pl-rhead91709%_)
                                (_%E9171691726%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%pl-rhead9171391722%_
                                          '([])
                                          '([c . plrh]))
                                   '#!void)))
                           (let ((_%K9172091756%_ (lambda () _%pl-tail91710%_))
                                 (_%K9171791740%_
                                  (lambda (_%plrh91730%_ _%c91731%_)
                                    (if (member _%c91731%_
                                                _%sit-tail91712%_
                                                _%eq91504%_)
                                        (_%err91512%_
                                         'precedence-list-head:
                                         (_%get-names91511%_
                                          (reverse _%pl-rhead91709%_))
                                         'precedence-list-tail:
                                         (_%get-names91511%_ _%pl-tail91710%_)
                                         'single-inheritance-head:
                                         (_%get-names91511%_
                                          (reverse _%sit-rhead91711%_))
                                         'single-inheritance-tail:
                                         (_%get-names91511%_ _%sit-tail91712%_)
                                         'super-out-of-order-vs-single-inheritance-tail:
                                         (_%get-name91506%_ _%c91731%_))
                                        (let ((_g91838_
                                               (let ((__tmp91840
                                                      (lambda (_%g9173291734%_)
                                                        (_%eq91504%_
                                                         _%c91731%_
                                                         _%g9173291734%_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp91840
                                                  _%sit-rhead91711%_
                                                  _%sit-tail91712%_))))
                                          (begin
                                            (let ((_g91839_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g91838_)
                                                         (##vector-length
                                                          _g91838_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g91839_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g91839_)))
                                            (let ((_%sit-rh291737%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g91838_
                                                      0)))
                                                  (_%sit-tl291738%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g91838_
                                                      1))))
                                              (if (null? _%sit-rh291737%_)
                                                  (_%u91707%_
                                                   _%plrh91730%_
                                                   (cons _%c91731%_
                                                         _%pl-tail91710%_)
                                                   '()
                                                   _%sit-tl291738%_)
                                                  (_%u91707%_
                                                   _%plrh91730%_
                                                   _%pl-tail91710%_
                                                   (cdr _%sit-rh291737%_)
                                                   _%sit-tl291738%_)))))))))
                             (let ((_%try-match9171591752%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%pl-rhead9171391722%_))
                                          (let ((_%tl9171991745%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%pl-rhead9171391722%_)))
                                                (_%hd9171891743%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%pl-rhead9171391722%_))))
                                            (let ((_%c91748%_ _%hd9171891743%_)
                                                  (_%plrh91750%_
                                                   _%tl9171991745%_))
                                              (_%K9171791740%_
                                               _%plrh91750%_
                                               _%c91748%_)))
                                          (_%E9171691726%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%pl-rhead9171391722%_))
                                   (_%K9172091756%_)
                                   (_%try-match9171591752%_))))))))
                    (_g91841_
                     (let ((_g91842_
                            (let ((__tmp91844 (reverse _%supers91498%_)))
                              (declare (not safe))
                              (append1! _%rpls91515%_ __tmp91844))))
                       #!void
                       _g91842_))
                    (_g91845_
                     (let ((_g91846_
                            (set! _%pls91509%_
                                  (let ()
                                    (declare (not safe))
                                    (##map _%unsitr-rpl91516%_
                                           _%rpls91515%_)))))
                       #!void
                       _g91846_))
                    (_%c3-select-next91517%_
                     (lambda (_%tails91655%_)
                       (let ((_%candidate?91661%_
                              (lambda (_%c91657%_)
                                (let ((__tmp91848
                                       (lambda (_%tail91659%_)
                                         (not (member _%c91657%_
                                                      (cdr _%tail91659%_)
                                                      _%eq91504%_)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp91848 _%tails91655%_)))))
                         (let _%loop91663%_ ((_%ts91665%_ _%tails91655%_))
                           (let* ((_%ts9166691676%_ _%ts91665%_)
                                  (_%else9166891684%_
                                   (lambda () (_%err91512%_)))
                                  (_%K9167091690%_
                                   (lambda (_%rts91687%_ _%c91688%_)
                                     (if (_%candidate?91661%_ _%c91688%_)
                                         _%c91688%_
                                         (_%loop91663%_ _%rts91687%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%ts9166691676%_))
                                 (let ((_%hd9167191693%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%ts9166691676%_)))
                                       (_%tl9167291695%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%ts9166691676%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%hd9167191693%_))
                                       (let* ((_%hd9167391698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd9167191693%_)))
                                              (_%c91701%_ _%hd9167391698%_)
                                              (_%rts91703%_ _%tl9167291695%_))
                                         (_%K9167091690%_
                                          _%rts91703%_
                                          _%c91701%_))
                                       (_%err91512%_)))
                                 (_%err91512%_)))))))
                    (_%remove-next!91518%_
                     (lambda (_%next91600%_ _%tails91601%_)
                       (let _%loop91603%_ ((_%t91605%_ _%tails91601%_))
                         (let* ((_%t9160691617%_ _%t91605%_)
                                (_%E9160991621%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%t9160691617%_
                                          '([])
                                          '([[head . tail] . more]))
                                   '#!void)))
                           (let ((_%K9161591652%_ (lambda () _%tails91601%_))
                                 (_%K9161091629%_
                                  (lambda (_%more91625%_
                                           _%tail91626%_
                                           _%head91627%_)
                                    (if (_%eq91504%_
                                         _%head91627%_
                                         _%next91600%_)
                                        (set-car! _%t91605%_ _%tail91626%_)
                                        '#!void)
                                    (_%loop91603%_ _%more91625%_))))
                             (let ((_%try-match9160891648%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%t9160691617%_))
                                          (let ((_%tl9161291634%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%t9160691617%_)))
                                                (_%hd9161191632%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%t9160691617%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd9161191632%_))
                                                (let ((_%tl9161491639%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd9161191632%_)))
                                                      (_%hd9161391637%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd9161191632%_))))
                                                  (let ((_%head91642%_
                                                         _%hd9161391637%_)
                                                        (_%tail91644%_
                                                         _%tl9161491639%_)
                                                        (_%more91646%_
                                                         _%tl9161291634%_))
                                                    (_%K9161091629%_
                                                     _%more91646%_
                                                     _%tail91644%_
                                                     _%head91642%_)))
                                                (_%E9160991621%_)))
                                          (_%E9160991621%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%t9160691617%_))
                                   (_%K9161591652%_)
                                   (_%try-match9160891648%_))))))))
                    (_%precedence-list91519%_
                     (let _%c3loop91550%_ ((_%rhead91552%_ _%rhead91497%_)
                                           (_%tails91553%_ _%pls91509%_))
                       (let* ((_%tails91555%_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _%tails91553%_)))
                              (_%tails9155691566%_ _%tails91555%_)
                              (_%else9155991577%_
                               (lambda ()
                                 (let ((_%next91574%_
                                        (_%c3-select-next91517%_
                                         _%tails91555%_)))
                                   (_%c3loop91550%_
                                    (cons _%next91574%_ _%rhead91552%_)
                                    (_%remove-next!91518%_
                                     _%next91574%_
                                     _%tails91555%_))))))
                         (let ((_%K9156491597%_
                                (lambda ()
                                  (append-reverse
                                   _%rhead91552%_
                                   _%sit91510%_)))
                               (_%K9156191583%_
                                (lambda (_%tail91581%_)
                                  (append-reverse
                                   _%rhead91552%_
                                   (append _%tail91581%_ _%sit91510%_)))))
                           (let ((_%try-match9155891593%_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tails9155691566%_))
                                        (let ((_%tl9156391588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tails9155691566%_)))
                                              (_%hd9156291586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tails9155691566%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl9156391588%_))
                                              (let ((_%tail91591%_
                                                     _%hd9156291586%_))
                                                (_%K9156191583%_
                                                 _%tail91591%_))
                                              (_%else9155991577%_)))
                                        (_%else9155991577%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tails9155691566%_))
                                 (_%K9156491597%_)
                                 (_%try-match9155891593%_)))))))
                    (_%super-struct91520%_
                     (let* ((_%sit9152191529%_ _%sit91510%_)
                            (_%else9152391537%_ (lambda () '#f))
                            (_%K9152591542%_ (lambda (_%s91540%_) _%s91540%_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%sit9152191529%_))
                           (let* ((_%hd9152691545%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%sit9152191529%_)))
                                  (_%s91548%_ _%hd9152691545%_))
                             (_%K9152591542%_ _%s91548%_))
                           (_%else9152391537%_)))))
            (values _%precedence-list91519%_ _%super-struct91520%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords91791%_ . _%args91792%_)
        (apply c4-linearize__%
               _%@@keywords91791%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords91791%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords91791%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords91791%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords91791%_
                  'get-name:
                  absent-value))
               _%args91792%_)))
    (define c4-linearize
      (lambda _%args9148691798%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9148691798%_)))))
