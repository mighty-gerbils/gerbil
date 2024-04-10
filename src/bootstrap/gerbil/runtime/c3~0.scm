(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1712757953)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords91246%_
               _%get-precedence-list9124091247%_
               _%struct?9124191249%_
               _%eq9124291251%_
               _%get-name9124391253%_
               _%rhead91255%_
               _%supers91256%_)
        (let* ((_%get-precedence-list91258%_
                (if (eq? _%get-precedence-list9124091247%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9124091247%_))
               (_%struct?91260%_
                (if (eq? _%struct?9124191249%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9124191249%_))
               (_%eq91262%_
                (if (eq? _%eq9124291251%_ absent-value) eq? _%eq9124291251%_))
               (_%get-name91264%_
                (if (eq? _%get-name9124391253%_ absent-value)
                    identity
                    _%get-name9124391253%_)))
          (letrec* ((_%pls91267%_
                     (map _%get-precedence-list91258%_ _%supers91256%_))
                    (_%sit91268%_ '())
                    (_%get-names91269%_
                     (lambda (_%lst91544%_)
                       (map _%get-name91264%_ _%lst91544%_)))
                    (_%err91270%_
                     (lambda _%a91542%_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (_%get-names91269%_ (reverse _%rhead91255%_))
                              'precedence-lists:
                              (let ()
                                (declare (not safe))
                                (##map _%get-names91269%_ _%pls91267%_))
                              'single-inheritance-tail:
                              (_%get-names91269%_ _%sit91268%_)
                              _%a91542%_)))
                    (_%same?91271%_
                     (lambda (_%lst191539%_ _%lst291540%_)
                       (if (let ((__tmp91592 (length _%lst191539%_))
                                 (__tmp91591 (length _%lst291540%_)))
                             (declare (not safe))
                             (##fx= __tmp91592 __tmp91591))
                           (let ()
                             (declare (not safe))
                             (andmap2 _%eq91262%_ _%lst191539%_ _%lst291540%_))
                           '#f)))
                    (_%merge-sit!91272%_
                     (lambda (_%sit291522%_)
                       (if (null? _%sit291522%_)
                           '#!void
                           (if (null? _%sit91268%_)
                               (set! _%sit91268%_ _%sit291522%_)
                               (let _%loop91527%_ ((_%t191529%_ _%sit91268%_)
                                                   (_%t291530%_ _%sit291522%_))
                                 (if (_%same?91271%_ _%t191529%_ _%sit291522%_)
                                     '#!void
                                     (if (_%same?91271%_
                                          _%t291530%_
                                          _%sit91268%_)
                                         (set! _%sit91268%_ _%sit291522%_)
                                         (if (or (null? _%t191529%_)
                                                 (null? _%t291530%_))
                                             (_%err91270%_
                                              'single-inheritance-incompatibility:
                                              (cons (_%get-names91269%_
                                                     _%sit91268%_)
                                                    (cons (_%get-names91269%_
                                                           _%sit291522%_)
                                                          '())))
                                             (_%loop91527%_
                                              (cdr _%t191529%_)
                                              (cdr _%t291530%_))))))))))
                    (_%rpls91273%_
                     (let ((__tmp91593
                            (lambda (_%pl91517%_)
                              (let ((_g91594_
                                     (let ()
                                       (declare (not safe))
                                       (append-reverse-until
                                        _%struct?91260%_
                                        _%pl91517%_
                                        '()))))
                                (begin
                                  (let ((_g91595_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g91594_)
                                               (##vector-length _g91594_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g91595_ 2)))
                                        (error "Context expects 2 values"
                                               _g91595_)))
                                  (let ((_%tl91519%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g91594_ 0)))
                                        (_%rh91520%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g91594_ 1))))
                                    (begin
                                      (_%merge-sit!91272%_ _%tl91519%_)
                                      _%rh91520%_)))))))
                       (declare (not safe))
                       (##map __tmp91593 _%pls91267%_)))
                    (_%unsitr-rpl91274%_
                     (lambda (_%rpl91463%_)
                       (let _%u91465%_ ((_%pl-rhead91467%_ _%rpl91463%_)
                                        (_%pl-tail91468%_ '())
                                        (_%sit-rhead91469%_
                                         (reverse _%sit91268%_))
                                        (_%sit-tail91470%_ '()))
                         (let* ((_%pl-rhead9147191480%_ _%pl-rhead91467%_)
                                (_%E9147491484%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%pl-rhead9147191480%_
                                          '([])
                                          '([c . plrh]))
                                   '#!void)))
                           (let ((_%K9147891514%_ (lambda () _%pl-tail91468%_))
                                 (_%K9147591498%_
                                  (lambda (_%plrh91488%_ _%c91489%_)
                                    (if (member _%c91489%_
                                                _%sit-tail91470%_
                                                _%eq91262%_)
                                        (_%err91270%_
                                         'precedence-list-head:
                                         (_%get-names91269%_
                                          (reverse _%pl-rhead91467%_))
                                         'precedence-list-tail:
                                         (_%get-names91269%_ _%pl-tail91468%_)
                                         'single-inheritance-head:
                                         (_%get-names91269%_
                                          (reverse _%sit-rhead91469%_))
                                         'single-inheritance-tail:
                                         (_%get-names91269%_ _%sit-tail91470%_)
                                         'super-out-of-order-vs-single-inheritance-tail:
                                         (_%get-name91264%_ _%c91489%_))
                                        (let ((_g91596_
                                               (let ((__tmp91598
                                                      (lambda (_%g9149091492%_)
                                                        (_%eq91262%_
                                                         _%c91489%_
                                                         _%g9149091492%_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp91598
                                                  _%sit-rhead91469%_
                                                  _%sit-tail91470%_))))
                                          (begin
                                            (let ((_g91597_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g91596_)
                                                         (##vector-length
                                                          _g91596_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g91597_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g91597_)))
                                            (let ((_%sit-rh291495%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g91596_
                                                      0)))
                                                  (_%sit-tl291496%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g91596_
                                                      1))))
                                              (if (null? _%sit-rh291495%_)
                                                  (_%u91465%_
                                                   _%plrh91488%_
                                                   (cons _%c91489%_
                                                         _%pl-tail91468%_)
                                                   '()
                                                   _%sit-tl291496%_)
                                                  (_%u91465%_
                                                   _%plrh91488%_
                                                   _%pl-tail91468%_
                                                   (cdr _%sit-rh291495%_)
                                                   _%sit-tl291496%_)))))))))
                             (let ((_%try-match9147391510%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%pl-rhead9147191480%_))
                                          (let ((_%tl9147791503%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%pl-rhead9147191480%_)))
                                                (_%hd9147691501%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%pl-rhead9147191480%_))))
                                            (let ((_%c91506%_ _%hd9147691501%_)
                                                  (_%plrh91508%_
                                                   _%tl9147791503%_))
                                              (_%K9147591498%_
                                               _%plrh91508%_
                                               _%c91506%_)))
                                          (_%E9147491484%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%pl-rhead9147191480%_))
                                   (_%K9147891514%_)
                                   (_%try-match9147391510%_))))))))
                    (_g91599_
                     (let ((_g91600_
                            (let ((__tmp91602 (reverse _%supers91256%_)))
                              (declare (not safe))
                              (append1! _%rpls91273%_ __tmp91602))))
                       #!void
                       _g91600_))
                    (_g91603_
                     (let ((_g91604_
                            (set! _%pls91267%_
                                  (let ()
                                    (declare (not safe))
                                    (##map _%unsitr-rpl91274%_
                                           _%rpls91273%_)))))
                       #!void
                       _g91604_))
                    (_%c3-select-next91275%_
                     (lambda (_%tails91413%_)
                       (let ((_%candidate?91419%_
                              (lambda (_%c91415%_)
                                (let ((__tmp91606
                                       (lambda (_%tail91417%_)
                                         (not (member _%c91415%_
                                                      (cdr _%tail91417%_)
                                                      _%eq91262%_)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp91606 _%tails91413%_)))))
                         (let _%loop91421%_ ((_%ts91423%_ _%tails91413%_))
                           (let* ((_%ts9142491434%_ _%ts91423%_)
                                  (_%else9142691442%_
                                   (lambda () (_%err91270%_)))
                                  (_%K9142891448%_
                                   (lambda (_%rts91445%_ _%c91446%_)
                                     (if (_%candidate?91419%_ _%c91446%_)
                                         _%c91446%_
                                         (_%loop91421%_ _%rts91445%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%ts9142491434%_))
                                 (let ((_%hd9142991451%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%ts9142491434%_)))
                                       (_%tl9143091453%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%ts9142491434%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%hd9142991451%_))
                                       (let* ((_%hd9143191456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd9142991451%_)))
                                              (_%c91459%_ _%hd9143191456%_)
                                              (_%rts91461%_ _%tl9143091453%_))
                                         (_%K9142891448%_
                                          _%rts91461%_
                                          _%c91459%_))
                                       (_%err91270%_)))
                                 (_%err91270%_)))))))
                    (_%remove-next!91276%_
                     (lambda (_%next91358%_ _%tails91359%_)
                       (let _%loop91361%_ ((_%t91363%_ _%tails91359%_))
                         (let* ((_%t9136491375%_ _%t91363%_)
                                (_%E9136791379%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%t9136491375%_
                                          '([])
                                          '([[head . tail] . more]))
                                   '#!void)))
                           (let ((_%K9137391410%_ (lambda () _%tails91359%_))
                                 (_%K9136891387%_
                                  (lambda (_%more91383%_
                                           _%tail91384%_
                                           _%head91385%_)
                                    (if (_%eq91262%_
                                         _%head91385%_
                                         _%next91358%_)
                                        (set-car! _%t91363%_ _%tail91384%_)
                                        '#!void)
                                    (_%loop91361%_ _%more91383%_))))
                             (let ((_%try-match9136691406%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%t9136491375%_))
                                          (let ((_%tl9137091392%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%t9136491375%_)))
                                                (_%hd9136991390%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%t9136491375%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd9136991390%_))
                                                (let ((_%tl9137291397%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd9136991390%_)))
                                                      (_%hd9137191395%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd9136991390%_))))
                                                  (let ((_%head91400%_
                                                         _%hd9137191395%_)
                                                        (_%tail91402%_
                                                         _%tl9137291397%_)
                                                        (_%more91404%_
                                                         _%tl9137091392%_))
                                                    (_%K9136891387%_
                                                     _%more91404%_
                                                     _%tail91402%_
                                                     _%head91400%_)))
                                                (_%E9136791379%_)))
                                          (_%E9136791379%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%t9136491375%_))
                                   (_%K9137391410%_)
                                   (_%try-match9136691406%_))))))))
                    (_%precedence-list91277%_
                     (let _%c3loop91308%_ ((_%rhead91310%_ _%rhead91255%_)
                                           (_%tails91311%_ _%pls91267%_))
                       (let* ((_%tails91313%_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _%tails91311%_)))
                              (_%tails9131491324%_ _%tails91313%_)
                              (_%else9131791335%_
                               (lambda ()
                                 (let ((_%next91332%_
                                        (_%c3-select-next91275%_
                                         _%tails91313%_)))
                                   (_%c3loop91308%_
                                    (cons _%next91332%_ _%rhead91310%_)
                                    (_%remove-next!91276%_
                                     _%next91332%_
                                     _%tails91313%_))))))
                         (let ((_%K9132291355%_
                                (lambda ()
                                  (append-reverse
                                   _%rhead91310%_
                                   _%sit91268%_)))
                               (_%K9131991341%_
                                (lambda (_%tail91339%_)
                                  (append-reverse
                                   _%rhead91310%_
                                   (append _%tail91339%_ _%sit91268%_)))))
                           (let ((_%try-match9131691351%_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tails9131491324%_))
                                        (let ((_%tl9132191346%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tails9131491324%_)))
                                              (_%hd9132091344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tails9131491324%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl9132191346%_))
                                              (let ((_%tail91349%_
                                                     _%hd9132091344%_))
                                                (_%K9131991341%_
                                                 _%tail91349%_))
                                              (_%else9131791335%_)))
                                        (_%else9131791335%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tails9131491324%_))
                                 (_%K9132291355%_)
                                 (_%try-match9131691351%_)))))))
                    (_%super-struct91278%_
                     (let* ((_%sit9127991287%_ _%sit91268%_)
                            (_%else9128191295%_ (lambda () '#f))
                            (_%K9128391300%_ (lambda (_%s91298%_) _%s91298%_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%sit9127991287%_))
                           (let* ((_%hd9128491303%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%sit9127991287%_)))
                                  (_%s91306%_ _%hd9128491303%_))
                             (_%K9128391300%_ _%s91306%_))
                           (_%else9128191295%_)))))
            (values _%precedence-list91277%_ _%super-struct91278%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords91549%_ . _%args91550%_)
        (apply c4-linearize__%
               _%@@keywords91549%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords91549%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords91549%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords91549%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords91549%_
                  'get-name:
                  absent-value))
               _%args91550%_)))
    (define c4-linearize
      (lambda _%args9124491556%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9124491556%_)))))
