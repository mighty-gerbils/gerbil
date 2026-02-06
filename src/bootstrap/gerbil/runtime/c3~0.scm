(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1770342294)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords109340%_
               _%get-precedence-list109334109341%_
               _%struct?109335109342%_
               _%eq109336109343%_
               _%get-name109337109344%_
               _%rhead109345%_
               _%supers109346%_)
        (let* ((_%get-precedence-list109348%_
                (if (eq? _%get-precedence-list109334109341%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list109334109341%_))
               (_%struct?109350%_
                (if (eq? _%struct?109335109342%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?109335109342%_))
               (_%eq109352%_
                (if (eq? _%eq109336109343%_ absent-value)
                    eq?
                    _%eq109336109343%_))
               (_%get-name109354%_
                (if (eq? _%get-name109337109344%_ absent-value)
                    identity
                    _%get-name109337109344%_)))
          (if (null? _%supers109346%_)
              (values (reverse _%rhead109345%_) '#f)
              (if (null? (cdr _%supers109346%_))
                  (let ((_%pl109359%_
                         (_%get-precedence-list109348%_
                          (car _%supers109346%_))))
                    (values (append-reverse _%rhead109345%_ _%pl109359%_)
                            (let ()
                              (declare (not safe))
                              (find _%struct?109350%_ _%pl109359%_))))
                  (let ((_%pls109362%_
                         (map _%get-precedence-list109348%_ _%supers109346%_))
                        (_%sis109363%_ '()))
                    (letrec* ((_%get-names109365%_
                               (lambda (_%lst109642%_)
                                 (map _%get-name109354%_ _%lst109642%_)))
                              (_%err109366%_
                               (lambda _%a109640%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names109365%_
                                         (reverse _%rhead109345%_))
                                        'precedence-lists:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names109365%_
                                                 _%pls109362%_))
                                        'single-inheritance-suffix:
                                        (_%get-names109365%_ _%sis109363%_)
                                        _%a109640%_)))
                              (_%eqlist?109367%_
                               (lambda (_%l1109634%_ _%l2109635%_)
                                 (let ((_%$e109637%_
                                        (eq? _%l1109634%_ _%l2109635%_)))
                                   (if _%$e109637%_
                                       _%$e109637%_
                                       (if (let ()
                                             (declare (not safe))
                                             (andmap2 _%eq109352%_
                                                      _%l1109634%_
                                                      _%l2109635%_))
                                           (let ((__tmp109690
                                                  (length _%l1109634%_))
                                                 (__tmp109689
                                                  (length _%l2109635%_)))
                                             (declare (not safe))
                                             (##fx= __tmp109690 __tmp109689))
                                           '#f)))))
                              (_%merge-sis!109368%_
                               (lambda (_%sis2109619%_)
                                 (if (null? _%sis2109619%_)
                                     '#!void
                                     (if (null? _%sis109363%_)
                                         (set! _%sis109363%_ _%sis2109619%_)
                                         (let _%loop109624%_ ((_%t1109626%_
                                                               _%sis109363%_)
                                                              (_%t2109627%_
                                                               _%sis2109619%_))
                                           (if (_%eqlist?109367%_
                                                _%t1109626%_
                                                _%sis2109619%_)
                                               '#!void
                                               (if (_%eqlist?109367%_
                                                    _%t2109627%_
                                                    _%sis109363%_)
                                                   (set! _%sis109363%_
                                                         _%sis2109619%_)
                                                   (if (null? _%t1109626%_)
                                                       (if (member (car _%sis109363%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%t2109627%_
                           _%eq109352%_)
                   (set! _%sis109363%_ _%sis2109619%_)
                   (_%err109366%_
                    'struct-incompatibility:
                    (cons (_%get-names109365%_ _%sis109363%_)
                          (cons (_%get-names109365%_ _%sis2109619%_) '()))))
               (if (null? _%t2109627%_)
                   (if (member (car _%sis2109619%_) _%t1109626%_ _%eq109352%_)
                       '#!void
                       (_%err109366%_
                        'struct-incompatibility:
                        (cons (_%get-names109365%_ _%sis109363%_)
                              (cons (_%get-names109365%_ _%sis2109619%_)
                                    '()))))
                   (_%loop109624%_
                    (cdr _%t1109626%_)
                    (cdr _%t2109627%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%rpls109369%_
                               (let ((__tmp109691
                                      (lambda (_%pl109614%_)
                                        (let ((_g109692_
                                               (let ()
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  _%struct?109350%_
                                                  _%pl109614%_
                                                  '()))))
                                          (begin
                                            (let ((_g109693_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g109692_)
                                                         (##values-length
                                                          _g109692_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g109693_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g109693_)))
                                            (let ((_%tl109616%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g109692_
                                                      0)))
                                                  (_%rh109617%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g109692_
                                                      1))))
                                              (begin
                                                (_%merge-sis!109368%_
                                                 _%tl109616%_)
                                                _%rh109617%_)))))))
                                 (declare (not safe))
                                 (##map __tmp109691 _%pls109362%_)))
                              (_%unsisr-rpl109370%_
                               (lambda (_%rpl109560%_)
                                 (let _%u109562%_ ((_%pl-rhead109564%_
                                                    _%rpl109560%_)
                                                   (_%pl-tail109565%_ '())
                                                   (_%sis-rhead109566%_
                                                    (reverse _%sis109363%_))
                                                   (_%sis-tail109567%_ '()))
                                   (let* ((_%pl-rhead109568109577%_
                                           _%pl-rhead109564%_)
                                          (_%E109571109581%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%pl-rhead109568109577%_
                                                    '([])
                                                    '([c . plrh]))
                                             '#!void)))
                                     (let ((_%K109575109611%_
                                            (lambda () _%pl-tail109565%_))
                                           (_%K109572109595%_
                                            (lambda (_%plrh109585%_
                                                     _%c109586%_)
                                              (if (member _%c109586%_
                                                          _%sis-tail109567%_
                                                          _%eq109352%_)
                                                  (_%err109366%_
                                                   'precedence-list-head:
                                                   (_%get-names109365%_
                                                    (reverse _%pl-rhead109564%_))
                                                   'precedence-list-tail:
                                                   (_%get-names109365%_
                                                    _%pl-tail109565%_)
                                                   'single-inheritance-head:
                                                   (_%get-names109365%_
                                                    (reverse _%sis-rhead109566%_))
                                                   'single-inheritance-tail:
                                                   (_%get-names109365%_
                                                    _%sis-tail109567%_)
                                                   'super-out-of-order-vs-single-inheritance-tail:
                                                   (_%get-name109354%_
                                                    _%c109586%_))
                                                  (let ((_g109694_
                                                         (let ((__tmp109696
                                                                (lambda (_%g109587109589%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%eq109352%_ _%c109586%_ _%g109587109589%_))))
                   (declare (not safe))
                   (__append-reverse-until
                    __tmp109696
                    _%sis-rhead109566%_
                    _%sis-tail109567%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g109695_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g109694_)
                           (##values-length _g109694_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g109695_ 2)))
                    (error "Context expects 2 values" _g109695_)))
              (let ((_%sis-rh2109592%_
                     (let () (declare (not safe)) (##values-ref _g109694_ 0)))
                    (_%sis-tl2109593%_
                     (let () (declare (not safe)) (##values-ref _g109694_ 1))))
                (if (null? _%sis-rh2109592%_)
                    (_%u109562%_
                     _%plrh109585%_
                     (cons _%c109586%_ _%pl-tail109565%_)
                     '()
                     _%sis-tl2109593%_)
                    (_%u109562%_
                     _%plrh109585%_
                     _%pl-tail109565%_
                     (cdr _%sis-rh2109592%_)
                     _%sis-tl2109593%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%try-match109570109607%_
                                              (lambda ()
                                                (if (pair? _%pl-rhead109568109577%_)
                                                    (let ((_%tl109574109600%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%pl-rhead109568109577%_)))
                                                          (_%hd109573109598%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%pl-rhead109568109577%_))))
                                                      (let ((_%c109603%_
                                                             _%hd109573109598%_)
                                                            (_%plrh109605%_
                                                             _%tl109574109600%_))
                                                        (_%K109572109595%_
                                                         _%plrh109605%_
                                                         _%c109603%_)))
                                                    (_%E109571109581%_)))))
                                         (if (null? _%pl-rhead109568109577%_)
                                             (_%K109575109611%_)
                                             (_%try-match109570109607%_))))))))
                              (_g109697_
                               (let ((_g109698_
                                      (let ((__tmp109700
                                             (reverse _%supers109346%_)))
                                        (declare (not safe))
                                        (append1!
                                         _%rpls109369%_
                                         __tmp109700))))
                                 #!void
                                 _g109698_))
                              (_%hpls109371%_
                               (let ()
                                 (declare (not safe))
                                 (##map _%unsisr-rpl109370%_ _%rpls109369%_)))
                              (_%c3-select-next109372%_
                               (lambda (_%tails109510%_)
                                 (let ((_%candidate?109516%_
                                        (lambda (_%c109512%_)
                                          (let ((__tmp109701
                                                 (lambda (_%tail109514%_)
                                                   (not (member _%c109512%_
                                                                (cdr _%tail109514%_)
                                                                _%eq109352%_)))))
                                            (declare (not safe))
                                            (__andmap1
                                             __tmp109701
                                             _%tails109510%_)))))
                                   (let _%loop109518%_ ((_%ts109520%_
                                                         _%tails109510%_))
                                     (let* ((_%ts109521109531%_ _%ts109520%_)
                                            (_%else109523109539%_
                                             (lambda () (_%err109366%_)))
                                            (_%K109525109545%_
                                             (lambda (_%rts109542%_
                                                      _%c109543%_)
                                               (if (_%candidate?109516%_
                                                    _%c109543%_)
                                                   _%c109543%_
                                                   (_%loop109518%_
                                                    _%rts109542%_)))))
                                       (if (pair? _%ts109521109531%_)
                                           (let ((_%hd109526109548%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%ts109521109531%_)))
                                                 (_%tl109527109550%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%ts109521109531%_))))
                                             (if (pair? _%hd109526109548%_)
                                                 (let* ((_%hd109528109553%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%hd109526109548%_)))
                                                        (_%c109556%_
                                                         _%hd109528109553%_)
                                                        (_%rts109558%_
                                                         _%tl109527109550%_))
                                                   (_%K109525109545%_
                                                    _%rts109558%_
                                                    _%c109556%_))
                                                 (_%err109366%_)))
                                           (_%err109366%_)))))))
                              (_%remove-next!109373%_
                               (lambda (_%next109455%_ _%tails109456%_)
                                 (let _%loop109458%_ ((_%t109460%_
                                                       _%tails109456%_))
                                   (let* ((_%t109461109472%_ _%t109460%_)
                                          (_%E109464109476%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%t109461109472%_
                                                    '([])
                                                    '([[head . tail] . more]))
                                             '#!void)))
                                     (let ((_%K109470109507%_
                                            (lambda () _%tails109456%_))
                                           (_%K109465109484%_
                                            (lambda (_%more109480%_
                                                     _%tail109481%_
                                                     _%head109482%_)
                                              (if (_%eq109352%_
                                                   _%head109482%_
                                                   _%next109455%_)
                                                  (set-car!
                                                   _%t109460%_
                                                   _%tail109481%_)
                                                  '#!void)
                                              (_%loop109458%_
                                               _%more109480%_))))
                                       (let ((_%try-match109463109503%_
                                              (lambda ()
                                                (if (pair? _%t109461109472%_)
                                                    (let ((_%tl109467109489%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%t109461109472%_)))
                                                          (_%hd109466109487%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%t109461109472%_))))
                                                      (if (pair? _%hd109466109487%_)
                                                          (let ((_%tl109469109494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd109466109487%_)))
                        (_%hd109468109492%_
                         (let ()
                           (declare (not safe))
                           (##car _%hd109466109487%_))))
                    (let ((_%head109497%_ _%hd109468109492%_)
                          (_%tail109499%_ _%tl109469109494%_)
                          (_%more109501%_ _%tl109467109489%_))
                      (_%K109465109484%_
                       _%more109501%_
                       _%tail109499%_
                       _%head109497%_)))
                  (_%E109464109476%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E109464109476%_)))))
                                         (if (null? _%t109461109472%_)
                                             (_%K109470109507%_)
                                             (_%try-match109463109503%_))))))))
                              (_%precedence-list109374%_
                               (let _%c3loop109405%_ ((_%rhead109407%_
                                                       _%rhead109345%_)
                                                      (_%tails109408%_
                                                       _%hpls109371%_))
                                 (let* ((_%tails109410%_
                                         (let ()
                                           (declare (not safe))
                                           (remove-nulls! _%tails109408%_)))
                                        (_%tails109411109421%_ _%tails109410%_)
                                        (_%else109414109432%_
                                         (lambda ()
                                           (let ((_%next109429%_
                                                  (_%c3-select-next109372%_
                                                   _%tails109410%_)))
                                             (_%c3loop109405%_
                                              (cons _%next109429%_
                                                    _%rhead109407%_)
                                              (_%remove-next!109373%_
                                               _%next109429%_
                                               _%tails109410%_))))))
                                   (let ((_%K109419109452%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead109407%_
                                             _%sis109363%_)))
                                         (_%K109416109438%_
                                          (lambda (_%tail109436%_)
                                            (append-reverse
                                             _%rhead109407%_
                                             (append _%tail109436%_
                                                     _%sis109363%_)))))
                                     (let ((_%try-match109413109448%_
                                            (lambda ()
                                              (if (pair? _%tails109411109421%_)
                                                  (let ((_%tl109418109443%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tails109411109421%_)))
                                                        (_%hd109417109441%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tails109411109421%_))))
                                                    (if (null? _%tl109418109443%_)
                                                        (let ((_%tail109446%_
                                                               _%hd109417109441%_))
                                                          (_%K109416109438%_
                                                           _%tail109446%_))
                                                        (_%else109414109432%_)))
                                                  (_%else109414109432%_)))))
                                       (if (null? _%tails109411109421%_)
                                           (_%K109419109452%_)
                                           (_%try-match109413109448%_)))))))
                              (_%super-struct109375%_
                               (let* ((_%sis109376109384%_ _%sis109363%_)
                                      (_%else109378109392%_ (lambda () '#f))
                                      (_%K109380109397%_
                                       (lambda (_%s109395%_) _%s109395%_)))
                                 (if (pair? _%sis109376109384%_)
                                     (let* ((_%hd109381109400%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%sis109376109384%_)))
                                            (_%s109403%_ _%hd109381109400%_))
                                       (_%K109380109397%_ _%s109403%_))
                                     (_%else109378109392%_)))))
                      (values _%precedence-list109374%_
                              _%super-struct109375%_))))))))
    (define c4-linearize__@
      (lambda (_%@@keywords109647%_ . _%args109648%_)
        (apply c4-linearize__%
               _%@@keywords109647%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords109647%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords109647%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords109647%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords109647%_
                  'get-name:
                  absent-value))
               _%args109648%_)))
    (define c4-linearize
      (lambda _%args109338109654%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args109338109654%_)))))
