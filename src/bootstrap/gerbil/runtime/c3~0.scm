(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1712251110)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords91143%_
               _%get-precedence-list9113791144%_
               _%struct?9113891146%_
               _%eq9113991148%_
               _%get-name9114091150%_
               _%rhead91152%_
               _%supers91153%_)
        (let* ((_%get-precedence-list91155%_
                (if (eq? _%get-precedence-list9113791144%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9113791144%_))
               (_%struct?91157%_
                (if (eq? _%struct?9113891146%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9113891146%_))
               (_%eq91159%_
                (if (eq? _%eq9113991148%_ absent-value) eq? _%eq9113991148%_))
               (_%get-name91161%_
                (if (eq? _%get-name9114091150%_ absent-value)
                    identity
                    _%get-name9114091150%_)))
          (letrec* ((_%pls91164%_
                     (map _%get-precedence-list91155%_ _%supers91153%_))
                    (_%sit91165%_ '())
                    (_%get-names91166%_
                     (lambda (_%lst91441%_)
                       (map _%get-name91161%_ _%lst91441%_)))
                    (_%err91167%_
                     (lambda _%a91439%_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp91488 (reverse _%rhead91152%_)))
                                (declare (not safe))
                                (_%get-names91166%_ __tmp91488))
                              'precedence-lists:
                              (let ()
                                (declare (not safe))
                                (##map _%get-names91166%_ _%pls91164%_))
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_%get-names91166%_ _%sit91165%_))
                              _%a91439%_)))
                    (_%same?91168%_
                     (lambda (_%lst191436%_ _%lst291437%_)
                       (if (let ((__tmp91490 (length _%lst191436%_))
                                 (__tmp91489 (length _%lst291437%_)))
                             (declare (not safe))
                             (##fx= __tmp91490 __tmp91489))
                           (let ()
                             (declare (not safe))
                             (andmap2 _%eq91159%_ _%lst191436%_ _%lst291437%_))
                           '#f)))
                    (_%merge-sit!91169%_
                     (lambda (_%sit291419%_)
                       (if (let () (declare (not safe)) (null? _%sit291419%_))
                           (let () '#!void)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _%sit91165%_))
                               (let () (set! _%sit91165%_ _%sit291419%_))
                               (let _%loop91424%_ ((_%t191426%_ _%sit91165%_)
                                                   (_%t291427%_ _%sit291419%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (_%same?91168%_
                                        _%t191426%_
                                        _%sit291419%_))
                                     (let () '#!void)
                                     (if (let ()
                                           (declare (not safe))
                                           (_%same?91168%_
                                            _%t291427%_
                                            _%sit91165%_))
                                         (let ()
                                           (set! _%sit91165%_ _%sit291419%_))
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _%t191426%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _%t291427%_)))
                                             (let ((__tmp91491
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%get-names91166%_
                                                             _%sit91165%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_%get-names91166%_ _%sit291419%_))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%err91167%_
                                                'single-inheritance-incompatibility:
                                                __tmp91491))
                                             (let ((__tmp91493
                                                    (cdr _%t191426%_))
                                                   (__tmp91492
                                                    (cdr _%t291427%_)))
                                               (declare (not safe))
                                               (_%loop91424%_
                                                __tmp91493
                                                __tmp91492))))))))))
                    (_%rpls91170%_
                     (let ((__tmp91494
                            (lambda (_%pl91414%_)
                              (let ((_g91495_
                                     (let ()
                                       (declare (not safe))
                                       (append-reverse-until
                                        _%struct?91157%_
                                        _%pl91414%_
                                        '()))))
                                (begin
                                  (let ((_g91496_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g91495_)
                                               (##vector-length _g91495_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g91496_ 2)))
                                        (error "Context expects 2 values"
                                               _g91496_)))
                                  (let ((_%tl91416%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g91495_ 0)))
                                        (_%rh91417%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g91495_ 1))))
                                    (begin
                                      (let ()
                                        (declare (not safe))
                                        (_%merge-sit!91169%_ _%tl91416%_))
                                      _%rh91417%_)))))))
                       (declare (not safe))
                       (##map __tmp91494 _%pls91164%_)))
                    (_%unsitr-rpl91171%_
                     (lambda (_%rpl91360%_)
                       (let _%u91362%_ ((_%pl-rhead91364%_ _%rpl91360%_)
                                        (_%pl-tail91365%_ '())
                                        (_%sit-rhead91366%_
                                         (reverse _%sit91165%_))
                                        (_%sit-tail91367%_ '()))
                         (let* ((_%pl-rhead9136891377%_ _%pl-rhead91364%_)
                                (_%E9137191381%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%pl-rhead9136891377%_
                                          '([])
                                          '([c . plrh]))
                                   '#!void)))
                           (let ((_%K9137591411%_ (lambda () _%pl-tail91365%_))
                                 (_%K9137291395%_
                                  (lambda (_%plrh91385%_ _%c91386%_)
                                    (if (member _%c91386%_
                                                _%sit-tail91367%_
                                                _%eq91159%_)
                                        (let ((__tmp91502
                                               (let ((__tmp91503
                                                      (reverse _%pl-rhead91364%_)))
                                                 (declare (not safe))
                                                 (_%get-names91166%_
                                                  __tmp91503)))
                                              (__tmp91501
                                               (let ()
                                                 (declare (not safe))
                                                 (_%get-names91166%_
                                                  _%pl-tail91365%_)))
                                              (__tmp91499
                                               (let ((__tmp91500
                                                      (reverse _%sit-rhead91366%_)))
                                                 (declare (not safe))
                                                 (_%get-names91166%_
                                                  __tmp91500)))
                                              (__tmp91498
                                               (let ()
                                                 (declare (not safe))
                                                 (_%get-names91166%_
                                                  _%sit-tail91367%_)))
                                              (__tmp91497
                                               (_%get-name91161%_ _%c91386%_)))
                                          (declare (not safe))
                                          (_%err91167%_
                                           'precedence-list-head:
                                           __tmp91502
                                           'precedence-list-tail:
                                           __tmp91501
                                           'single-inheritance-head:
                                           __tmp91499
                                           'single-inheritance-tail:
                                           __tmp91498
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp91497))
                                        (let ((_g91504_
                                               (let ((__tmp91506
                                                      (lambda (_%g9138791389%_)
                                                        (_%eq91159%_
                                                         _%c91386%_
                                                         _%g9138791389%_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp91506
                                                  _%sit-rhead91366%_
                                                  _%sit-tail91367%_))))
                                          (begin
                                            (let ((_g91505_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g91504_)
                                                         (##vector-length
                                                          _g91504_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g91505_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g91505_)))
                                            (let ((_%sit-rh291392%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g91504_
                                                      0)))
                                                  (_%sit-tl291393%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g91504_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _%sit-rh291392%_))
                                                  (let ((__tmp91507
                                                         (cons _%c91386%_
                                                               _%pl-tail91365%_)))
                                                    (declare (not safe))
                                                    (_%u91362%_
                                                     _%plrh91385%_
                                                     __tmp91507
                                                     '()
                                                     _%sit-tl291393%_))
                                                  (let ((__tmp91508
                                                         (cdr _%sit-rh291392%_)))
                                                    (declare (not safe))
                                                    (_%u91362%_
                                                     _%plrh91385%_
                                                     _%pl-tail91365%_
                                                     __tmp91508
                                                     _%sit-tl291393%_))))))))))
                             (let ((_%try-match9137091407%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%pl-rhead9136891377%_))
                                          (let ((_%tl9137491400%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%pl-rhead9136891377%_)))
                                                (_%hd9137391398%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%pl-rhead9136891377%_))))
                                            (let ((_%c91403%_ _%hd9137391398%_)
                                                  (_%plrh91405%_
                                                   _%tl9137491400%_))
                                              (let ()
                                                (declare (not safe))
                                                (_%K9137291395%_
                                                 _%plrh91405%_
                                                 _%c91403%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E9137191381%_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%pl-rhead9136891377%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%K9137591411%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%try-match9137091407%_)))))))))
                    (_g91509_
                     (let ((_g91510_
                            (let ((__tmp91512 (reverse _%supers91153%_)))
                              (declare (not safe))
                              (append1! _%rpls91170%_ __tmp91512))))
                       #!void
                       _g91510_))
                    (_g91513_
                     (let ((_g91514_
                            (set! _%pls91164%_
                                  (let ()
                                    (declare (not safe))
                                    (##map _%unsitr-rpl91171%_
                                           _%rpls91170%_)))))
                       #!void
                       _g91514_))
                    (_%c3-select-next91172%_
                     (lambda (_%tails91310%_)
                       (let ((_%candidate?91316%_
                              (lambda (_%c91312%_)
                                (let ((__tmp91516
                                       (lambda (_%tail91314%_)
                                         (let ((__tmp91517
                                                (member _%c91312%_
                                                        (cdr _%tail91314%_)
                                                        _%eq91159%_)))
                                           (declare (not safe))
                                           (not __tmp91517)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp91516 _%tails91310%_)))))
                         (let _%loop91318%_ ((_%ts91320%_ _%tails91310%_))
                           (let* ((_%ts9132191331%_ _%ts91320%_)
                                  (_%else9132391339%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_%err91167%_))))
                                  (_%K9132591345%_
                                   (lambda (_%rts91342%_ _%c91343%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_%candidate?91316%_ _%c91343%_))
                                         _%c91343%_
                                         (let ()
                                           (declare (not safe))
                                           (_%loop91318%_ _%rts91342%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%ts9132191331%_))
                                 (let ((_%hd9132691348%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%ts9132191331%_)))
                                       (_%tl9132791350%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%ts9132191331%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%hd9132691348%_))
                                       (let* ((_%hd9132891353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd9132691348%_)))
                                              (_%c91356%_ _%hd9132891353%_)
                                              (_%rts91358%_ _%tl9132791350%_))
                                         (declare (not safe))
                                         (_%K9132591345%_
                                          _%rts91358%_
                                          _%c91356%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%err91167%_))))
                                 (let ()
                                   (declare (not safe))
                                   (_%err91167%_))))))))
                    (_%remove-next!91173%_
                     (lambda (_%next91255%_ _%tails91256%_)
                       (let _%loop91258%_ ((_%t91260%_ _%tails91256%_))
                         (let* ((_%t9126191272%_ _%t91260%_)
                                (_%E9126491276%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%t9126191272%_
                                          '([])
                                          '([[head . tail] . more]))
                                   '#!void)))
                           (let ((_%K9127091307%_ (lambda () _%tails91256%_))
                                 (_%K9126591284%_
                                  (lambda (_%more91280%_
                                           _%tail91281%_
                                           _%head91282%_)
                                    (if (_%eq91159%_
                                         _%head91282%_
                                         _%next91255%_)
                                        (set-car! _%t91260%_ _%tail91281%_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_%loop91258%_ _%more91280%_)))))
                             (let ((_%try-match9126391303%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%t9126191272%_))
                                          (let ((_%tl9126791289%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%t9126191272%_)))
                                                (_%hd9126691287%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%t9126191272%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd9126691287%_))
                                                (let ((_%tl9126991294%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd9126691287%_)))
                                                      (_%hd9126891292%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd9126691287%_))))
                                                  (let ((_%head91297%_
                                                         _%hd9126891292%_)
                                                        (_%tail91299%_
                                                         _%tl9126991294%_)
                                                        (_%more91301%_
                                                         _%tl9126791289%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%K9126591284%_
                                                       _%more91301%_
                                                       _%tail91299%_
                                                       _%head91297%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%E9126491276%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E9126491276%_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%t9126191272%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%K9127091307%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%try-match9126391303%_)))))))))
                    (_%precedence-list91174%_
                     (let _%c3loop91205%_ ((_%rhead91207%_ _%rhead91152%_)
                                           (_%tails91208%_ _%pls91164%_))
                       (let* ((_%tails91210%_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _%tails91208%_)))
                              (_%tails9121191221%_ _%tails91210%_)
                              (_%else9121491232%_
                               (lambda ()
                                 (let ((_%next91229%_
                                        (let ()
                                          (declare (not safe))
                                          (_%c3-select-next91172%_
                                           _%tails91210%_))))
                                   (let ((__tmp91519
                                          (cons _%next91229%_ _%rhead91207%_))
                                         (__tmp91518
                                          (let ()
                                            (declare (not safe))
                                            (_%remove-next!91173%_
                                             _%next91229%_
                                             _%tails91210%_))))
                                     (declare (not safe))
                                     (_%c3loop91205%_
                                      __tmp91519
                                      __tmp91518))))))
                         (let ((_%K9121991252%_
                                (lambda ()
                                  (append-reverse
                                   _%rhead91207%_
                                   _%sit91165%_)))
                               (_%K9121691238%_
                                (lambda (_%tail91236%_)
                                  (append-reverse
                                   _%rhead91207%_
                                   (append _%tail91236%_ _%sit91165%_)))))
                           (let ((_%try-match9121391248%_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tails9121191221%_))
                                        (let ((_%tl9121891243%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tails9121191221%_)))
                                              (_%hd9121791241%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tails9121191221%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl9121891243%_))
                                              (let ((_%tail91246%_
                                                     _%hd9121791241%_))
                                                (declare (not safe))
                                                (_%K9121691238%_
                                                 _%tail91246%_))
                                              (let ()
                                                (declare (not safe))
                                                (_%else9121491232%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else9121491232%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tails9121191221%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%K9121991252%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%try-match9121391248%_))))))))
                    (_%super-struct91175%_
                     (let* ((_%sit9117691184%_ _%sit91165%_)
                            (_%else9117891192%_ (lambda () '#f))
                            (_%K9118091197%_ (lambda (_%s91195%_) _%s91195%_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%sit9117691184%_))
                           (let* ((_%hd9118191200%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%sit9117691184%_)))
                                  (_%s91203%_ _%hd9118191200%_))
                             (declare (not safe))
                             (_%K9118091197%_ _%s91203%_))
                           (let ()
                             (declare (not safe))
                             (_%else9117891192%_))))))
            (values _%precedence-list91174%_ _%super-struct91175%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords91446%_ . _%args91447%_)
        (apply c4-linearize__%
               _%@@keywords91446%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords91446%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords91446%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords91446%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords91446%_
                  'get-name:
                  absent-value))
               _%args91447%_)))
    (define c4-linearize
      (lambda _%args9114191453%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9114191453%_)))))
