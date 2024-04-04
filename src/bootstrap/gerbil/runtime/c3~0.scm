(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1712246554)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords91174%_
               _%get-precedence-list9116891175%_
               _%struct?9116991177%_
               _%eq9117091179%_
               _%get-name9117191181%_
               _%rhead91183%_
               _%supers91184%_)
        (let* ((_%get-precedence-list91186%_
                (if (eq? _%get-precedence-list9116891175%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9116891175%_))
               (_%struct?91188%_
                (if (eq? _%struct?9116991177%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9116991177%_))
               (_%eq91190%_
                (if (eq? _%eq9117091179%_ absent-value) eq? _%eq9117091179%_))
               (_%get-name91192%_
                (if (eq? _%get-name9117191181%_ absent-value)
                    identity
                    _%get-name9117191181%_)))
          (letrec* ((_%pls91195%_
                     (map _%get-precedence-list91186%_ _%supers91184%_))
                    (_%sit91196%_ '())
                    (_%get-names91197%_
                     (lambda (_%lst91468%_)
                       (map _%get-name91192%_ _%lst91468%_)))
                    (_%err91198%_
                     (lambda _%a91466%_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp91515 (reverse _%rhead91183%_)))
                                (declare (not safe))
                                (_%get-names91197%_ __tmp91515))
                              'precedence-lists:
                              (let ()
                                (declare (not safe))
                                (##map _%get-names91197%_ _%pls91195%_))
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_%get-names91197%_ _%sit91196%_))
                              _%a91466%_)))
                    (_%merge-sit!91199%_
                     (lambda (_%sit291449%_)
                       (if (let () (declare (not safe)) (null? _%sit291449%_))
                           (let () '#!void)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _%sit91196%_))
                               (let () (set! _%sit91196%_ _%sit291449%_))
                               (let _%loop91454%_ ((_%t191456%_ _%sit91196%_)
                                                   (_%t291457%_ _%sit291449%_))
                                 (if (equal? _%t191456%_ _%sit291449%_)
                                     (let () '#!void)
                                     (if (equal? _%t291457%_ _%sit91196%_)
                                         (let ()
                                           (set! _%sit91196%_ _%sit291449%_))
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _%t191456%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _%t291457%_)))
                                             (let ((__tmp91516
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%get-names91197%_
                                                             _%sit91196%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_%get-names91197%_ _%sit291449%_))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%err91198%_
                                                'single-inheritance-incompatibility:
                                                __tmp91516))
                                             (let ((__tmp91518
                                                    (cdr _%t191456%_))
                                                   (__tmp91517
                                                    (cdr _%t291457%_)))
                                               (declare (not safe))
                                               (_%loop91454%_
                                                __tmp91518
                                                __tmp91517))))))))))
                    (_%rpls91200%_
                     (let ((__tmp91519
                            (lambda (_%pl91444%_)
                              (let ((_g91520_
                                     (let ()
                                       (declare (not safe))
                                       (append-reverse-until
                                        _%struct?91188%_
                                        _%pl91444%_
                                        '()))))
                                (begin
                                  (let ((_g91521_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g91520_)
                                               (##vector-length _g91520_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g91521_ 2)))
                                        (error "Context expects 2 values"
                                               _g91521_)))
                                  (let ((_%tl91446%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g91520_ 0)))
                                        (_%rh91447%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g91520_ 1))))
                                    (begin
                                      (let ()
                                        (declare (not safe))
                                        (_%merge-sit!91199%_ _%tl91446%_))
                                      _%rh91447%_)))))))
                       (declare (not safe))
                       (##map __tmp91519 _%pls91195%_)))
                    (_%unsitr-rpl91201%_
                     (lambda (_%rpl91390%_)
                       (let _%u91392%_ ((_%pl-rhead91394%_ _%rpl91390%_)
                                        (_%pl-tail91395%_ '())
                                        (_%sit-rhead91396%_
                                         (reverse _%sit91196%_))
                                        (_%sit-tail91397%_ '()))
                         (let* ((_%pl-rhead9139891407%_ _%pl-rhead91394%_)
                                (_%E9140191411%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%pl-rhead9139891407%_
                                          '([])
                                          '([c . plrh]))
                                   '#!void)))
                           (let ((_%K9140591441%_ (lambda () _%pl-tail91395%_))
                                 (_%K9140291425%_
                                  (lambda (_%plrh91415%_ _%c91416%_)
                                    (if (member _%c91416%_
                                                _%sit-tail91397%_
                                                _%eq91190%_)
                                        (let ((__tmp91527
                                               (let ((__tmp91528
                                                      (reverse _%pl-rhead91394%_)))
                                                 (declare (not safe))
                                                 (_%get-names91197%_
                                                  __tmp91528)))
                                              (__tmp91526
                                               (let ()
                                                 (declare (not safe))
                                                 (_%get-names91197%_
                                                  _%pl-tail91395%_)))
                                              (__tmp91524
                                               (let ((__tmp91525
                                                      (reverse _%sit-rhead91396%_)))
                                                 (declare (not safe))
                                                 (_%get-names91197%_
                                                  __tmp91525)))
                                              (__tmp91523
                                               (let ()
                                                 (declare (not safe))
                                                 (_%get-names91197%_
                                                  _%sit-tail91397%_)))
                                              (__tmp91522
                                               (_%get-name91192%_ _%c91416%_)))
                                          (declare (not safe))
                                          (_%err91198%_
                                           'precedence-list-head:
                                           __tmp91527
                                           'precedence-list-tail:
                                           __tmp91526
                                           'single-inheritance-head:
                                           __tmp91524
                                           'single-inheritance-tail:
                                           __tmp91523
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp91522))
                                        (let ((_g91529_
                                               (let ((__tmp91531
                                                      (lambda (_%g9141791419%_)
                                                        (_%eq91190%_
                                                         _%c91416%_
                                                         _%g9141791419%_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp91531
                                                  _%sit-rhead91396%_
                                                  _%sit-tail91397%_))))
                                          (begin
                                            (let ((_g91530_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g91529_)
                                                         (##vector-length
                                                          _g91529_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g91530_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g91530_)))
                                            (let ((_%sit-rh291422%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g91529_
                                                      0)))
                                                  (_%sit-tl291423%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g91529_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _%sit-rh291422%_))
                                                  (let ((__tmp91532
                                                         (cons _%c91416%_
                                                               _%pl-tail91395%_)))
                                                    (declare (not safe))
                                                    (_%u91392%_
                                                     _%plrh91415%_
                                                     __tmp91532
                                                     '()
                                                     _%sit-tl291423%_))
                                                  (let ((__tmp91533
                                                         (cdr _%sit-rh291422%_)))
                                                    (declare (not safe))
                                                    (_%u91392%_
                                                     _%plrh91415%_
                                                     _%pl-tail91395%_
                                                     __tmp91533
                                                     _%sit-tl291423%_))))))))))
                             (let ((_%try-match9140091437%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%pl-rhead9139891407%_))
                                          (let ((_%tl9140491430%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%pl-rhead9139891407%_)))
                                                (_%hd9140391428%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%pl-rhead9139891407%_))))
                                            (let ((_%c91433%_ _%hd9140391428%_)
                                                  (_%plrh91435%_
                                                   _%tl9140491430%_))
                                              (let ()
                                                (declare (not safe))
                                                (_%K9140291425%_
                                                 _%plrh91435%_
                                                 _%c91433%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E9140191411%_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%pl-rhead9139891407%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%K9140591441%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%try-match9140091437%_)))))))))
                    (_g91534_
                     (let ((_g91535_
                            (let ((__tmp91537 (reverse _%supers91184%_)))
                              (declare (not safe))
                              (append1! _%rpls91200%_ __tmp91537))))
                       #!void
                       _g91535_))
                    (_g91538_
                     (let ((_g91539_
                            (set! _%pls91195%_
                                  (let ()
                                    (declare (not safe))
                                    (##map _%unsitr-rpl91201%_
                                           _%rpls91200%_)))))
                       #!void
                       _g91539_))
                    (_%c3-select-next91202%_
                     (lambda (_%tails91340%_)
                       (let ((_%candidate?91346%_
                              (lambda (_%c91342%_)
                                (let ((__tmp91541
                                       (lambda (_%tail91344%_)
                                         (let ((__tmp91542
                                                (member _%c91342%_
                                                        (cdr _%tail91344%_)
                                                        _%eq91190%_)))
                                           (declare (not safe))
                                           (not __tmp91542)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp91541 _%tails91340%_)))))
                         (let _%loop91348%_ ((_%ts91350%_ _%tails91340%_))
                           (let* ((_%ts9135191361%_ _%ts91350%_)
                                  (_%else9135391369%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_%err91198%_))))
                                  (_%K9135591375%_
                                   (lambda (_%rts91372%_ _%c91373%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_%candidate?91346%_ _%c91373%_))
                                         _%c91373%_
                                         (let ()
                                           (declare (not safe))
                                           (_%loop91348%_ _%rts91372%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%ts9135191361%_))
                                 (let ((_%hd9135691378%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%ts9135191361%_)))
                                       (_%tl9135791380%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%ts9135191361%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%hd9135691378%_))
                                       (let* ((_%hd9135891383%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd9135691378%_)))
                                              (_%c91386%_ _%hd9135891383%_)
                                              (_%rts91388%_ _%tl9135791380%_))
                                         (declare (not safe))
                                         (_%K9135591375%_
                                          _%rts91388%_
                                          _%c91386%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%err91198%_))))
                                 (let ()
                                   (declare (not safe))
                                   (_%err91198%_))))))))
                    (_%remove-next!91203%_
                     (lambda (_%next91285%_ _%tails91286%_)
                       (let _%loop91288%_ ((_%t91290%_ _%tails91286%_))
                         (let* ((_%t9129191302%_ _%t91290%_)
                                (_%E9129491306%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%t9129191302%_
                                          '([])
                                          '([[head . tail] . more]))
                                   '#!void)))
                           (let ((_%K9130091337%_ (lambda () _%tails91286%_))
                                 (_%K9129591314%_
                                  (lambda (_%more91310%_
                                           _%tail91311%_
                                           _%head91312%_)
                                    (if (_%eq91190%_
                                         _%head91312%_
                                         _%next91285%_)
                                        (set-car! _%t91290%_ _%tail91311%_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_%loop91288%_ _%more91310%_)))))
                             (let ((_%try-match9129391333%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%t9129191302%_))
                                          (let ((_%tl9129791319%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%t9129191302%_)))
                                                (_%hd9129691317%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%t9129191302%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd9129691317%_))
                                                (let ((_%tl9129991324%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd9129691317%_)))
                                                      (_%hd9129891322%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd9129691317%_))))
                                                  (let ((_%head91327%_
                                                         _%hd9129891322%_)
                                                        (_%tail91329%_
                                                         _%tl9129991324%_)
                                                        (_%more91331%_
                                                         _%tl9129791319%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%K9129591314%_
                                                       _%more91331%_
                                                       _%tail91329%_
                                                       _%head91327%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%E9129491306%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E9129491306%_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%t9129191302%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%K9130091337%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%try-match9129391333%_)))))))))
                    (_%precedence-list91204%_
                     (let _%c3loop91235%_ ((_%rhead91237%_ _%rhead91183%_)
                                           (_%tails91238%_ _%pls91195%_))
                       (let* ((_%tails91240%_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _%tails91238%_)))
                              (_%tails9124191251%_ _%tails91240%_)
                              (_%else9124491262%_
                               (lambda ()
                                 (let ((_%next91259%_
                                        (let ()
                                          (declare (not safe))
                                          (_%c3-select-next91202%_
                                           _%tails91240%_))))
                                   (let ((__tmp91544
                                          (cons _%next91259%_ _%rhead91237%_))
                                         (__tmp91543
                                          (let ()
                                            (declare (not safe))
                                            (_%remove-next!91203%_
                                             _%next91259%_
                                             _%tails91240%_))))
                                     (declare (not safe))
                                     (_%c3loop91235%_
                                      __tmp91544
                                      __tmp91543))))))
                         (let ((_%K9124991282%_
                                (lambda ()
                                  (append-reverse
                                   _%rhead91237%_
                                   _%sit91196%_)))
                               (_%K9124691268%_
                                (lambda (_%tail91266%_)
                                  (append-reverse
                                   _%rhead91237%_
                                   (append _%tail91266%_ _%sit91196%_)))))
                           (let ((_%try-match9124391278%_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tails9124191251%_))
                                        (let ((_%tl9124891273%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tails9124191251%_)))
                                              (_%hd9124791271%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tails9124191251%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl9124891273%_))
                                              (let ((_%tail91276%_
                                                     _%hd9124791271%_))
                                                (declare (not safe))
                                                (_%K9124691268%_
                                                 _%tail91276%_))
                                              (let ()
                                                (declare (not safe))
                                                (_%else9124491262%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else9124491262%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tails9124191251%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%K9124991282%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%try-match9124391278%_))))))))
                    (_%super-struct91205%_
                     (let* ((_%sit9120691214%_ _%sit91196%_)
                            (_%else9120891222%_ (lambda () '#f))
                            (_%K9121091227%_ (lambda (_%s91225%_) _%s91225%_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%sit9120691214%_))
                           (let* ((_%hd9121191230%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%sit9120691214%_)))
                                  (_%s91233%_ _%hd9121191230%_))
                             (declare (not safe))
                             (_%K9121091227%_ _%s91233%_))
                           (let ()
                             (declare (not safe))
                             (_%else9120891222%_))))))
            (values _%precedence-list91204%_ _%super-struct91205%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords91473%_ . _%args91474%_)
        (apply c4-linearize__%
               _%@@keywords91473%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords91473%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords91473%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords91473%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords91473%_
                  'get-name:
                  absent-value))
               _%args91474%_)))
    (define c4-linearize
      (lambda _%args9117291480%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9117291480%_)))))
