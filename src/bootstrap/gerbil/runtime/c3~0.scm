(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1712526088)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords91089%_
               _%get-precedence-list9108391090%_
               _%struct?9108491092%_
               _%eq9108591094%_
               _%get-name9108691096%_
               _%rhead91098%_
               _%supers91099%_)
        (let* ((_%get-precedence-list91101%_
                (if (eq? _%get-precedence-list9108391090%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9108391090%_))
               (_%struct?91103%_
                (if (eq? _%struct?9108491092%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9108491092%_))
               (_%eq91105%_
                (if (eq? _%eq9108591094%_ absent-value) eq? _%eq9108591094%_))
               (_%get-name91107%_
                (if (eq? _%get-name9108691096%_ absent-value)
                    identity
                    _%get-name9108691096%_)))
          (letrec* ((_%pls91110%_
                     (map _%get-precedence-list91101%_ _%supers91099%_))
                    (_%sit91111%_ '())
                    (_%get-names91112%_
                     (lambda (_%lst91387%_)
                       (map _%get-name91107%_ _%lst91387%_)))
                    (_%err91113%_
                     (lambda _%a91385%_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp91434 (reverse _%rhead91098%_)))
                                (declare (not safe))
                                (_%get-names91112%_ __tmp91434))
                              'precedence-lists:
                              (let ()
                                (declare (not safe))
                                (##map _%get-names91112%_ _%pls91110%_))
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_%get-names91112%_ _%sit91111%_))
                              _%a91385%_)))
                    (_%same?91114%_
                     (lambda (_%lst191382%_ _%lst291383%_)
                       (if (let ((__tmp91436 (length _%lst191382%_))
                                 (__tmp91435 (length _%lst291383%_)))
                             (declare (not safe))
                             (##fx= __tmp91436 __tmp91435))
                           (let ()
                             (declare (not safe))
                             (andmap2 _%eq91105%_ _%lst191382%_ _%lst291383%_))
                           '#f)))
                    (_%merge-sit!91115%_
                     (lambda (_%sit291365%_)
                       (if (let () (declare (not safe)) (null? _%sit291365%_))
                           (let () '#!void)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _%sit91111%_))
                               (let () (set! _%sit91111%_ _%sit291365%_))
                               (let _%loop91370%_ ((_%t191372%_ _%sit91111%_)
                                                   (_%t291373%_ _%sit291365%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (_%same?91114%_
                                        _%t191372%_
                                        _%sit291365%_))
                                     (let () '#!void)
                                     (if (let ()
                                           (declare (not safe))
                                           (_%same?91114%_
                                            _%t291373%_
                                            _%sit91111%_))
                                         (let ()
                                           (set! _%sit91111%_ _%sit291365%_))
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _%t191372%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _%t291373%_)))
                                             (let ((__tmp91437
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%get-names91112%_
                                                             _%sit91111%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_%get-names91112%_ _%sit291365%_))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%err91113%_
                                                'single-inheritance-incompatibility:
                                                __tmp91437))
                                             (let ((__tmp91439
                                                    (cdr _%t191372%_))
                                                   (__tmp91438
                                                    (cdr _%t291373%_)))
                                               (declare (not safe))
                                               (_%loop91370%_
                                                __tmp91439
                                                __tmp91438))))))))))
                    (_%rpls91116%_
                     (let ((__tmp91440
                            (lambda (_%pl91360%_)
                              (let ((_g91441_
                                     (let ()
                                       (declare (not safe))
                                       (append-reverse-until
                                        _%struct?91103%_
                                        _%pl91360%_
                                        '()))))
                                (begin
                                  (let ((_g91442_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g91441_)
                                               (##vector-length _g91441_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g91442_ 2)))
                                        (error "Context expects 2 values"
                                               _g91442_)))
                                  (let ((_%tl91362%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g91441_ 0)))
                                        (_%rh91363%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g91441_ 1))))
                                    (begin
                                      (let ()
                                        (declare (not safe))
                                        (_%merge-sit!91115%_ _%tl91362%_))
                                      _%rh91363%_)))))))
                       (declare (not safe))
                       (##map __tmp91440 _%pls91110%_)))
                    (_%unsitr-rpl91117%_
                     (lambda (_%rpl91306%_)
                       (let _%u91308%_ ((_%pl-rhead91310%_ _%rpl91306%_)
                                        (_%pl-tail91311%_ '())
                                        (_%sit-rhead91312%_
                                         (reverse _%sit91111%_))
                                        (_%sit-tail91313%_ '()))
                         (let* ((_%pl-rhead9131491323%_ _%pl-rhead91310%_)
                                (_%E9131791327%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%pl-rhead9131491323%_
                                          '([])
                                          '([c . plrh]))
                                   '#!void)))
                           (let ((_%K9132191357%_ (lambda () _%pl-tail91311%_))
                                 (_%K9131891341%_
                                  (lambda (_%plrh91331%_ _%c91332%_)
                                    (if (member _%c91332%_
                                                _%sit-tail91313%_
                                                _%eq91105%_)
                                        (let ((__tmp91448
                                               (let ((__tmp91449
                                                      (reverse _%pl-rhead91310%_)))
                                                 (declare (not safe))
                                                 (_%get-names91112%_
                                                  __tmp91449)))
                                              (__tmp91447
                                               (let ()
                                                 (declare (not safe))
                                                 (_%get-names91112%_
                                                  _%pl-tail91311%_)))
                                              (__tmp91445
                                               (let ((__tmp91446
                                                      (reverse _%sit-rhead91312%_)))
                                                 (declare (not safe))
                                                 (_%get-names91112%_
                                                  __tmp91446)))
                                              (__tmp91444
                                               (let ()
                                                 (declare (not safe))
                                                 (_%get-names91112%_
                                                  _%sit-tail91313%_)))
                                              (__tmp91443
                                               (_%get-name91107%_ _%c91332%_)))
                                          (declare (not safe))
                                          (_%err91113%_
                                           'precedence-list-head:
                                           __tmp91448
                                           'precedence-list-tail:
                                           __tmp91447
                                           'single-inheritance-head:
                                           __tmp91445
                                           'single-inheritance-tail:
                                           __tmp91444
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp91443))
                                        (let ((_g91450_
                                               (let ((__tmp91452
                                                      (lambda (_%g9133391335%_)
                                                        (_%eq91105%_
                                                         _%c91332%_
                                                         _%g9133391335%_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp91452
                                                  _%sit-rhead91312%_
                                                  _%sit-tail91313%_))))
                                          (begin
                                            (let ((_g91451_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g91450_)
                                                         (##vector-length
                                                          _g91450_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g91451_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g91451_)))
                                            (let ((_%sit-rh291338%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g91450_
                                                      0)))
                                                  (_%sit-tl291339%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g91450_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _%sit-rh291338%_))
                                                  (let ((__tmp91453
                                                         (cons _%c91332%_
                                                               _%pl-tail91311%_)))
                                                    (declare (not safe))
                                                    (_%u91308%_
                                                     _%plrh91331%_
                                                     __tmp91453
                                                     '()
                                                     _%sit-tl291339%_))
                                                  (let ((__tmp91454
                                                         (cdr _%sit-rh291338%_)))
                                                    (declare (not safe))
                                                    (_%u91308%_
                                                     _%plrh91331%_
                                                     _%pl-tail91311%_
                                                     __tmp91454
                                                     _%sit-tl291339%_))))))))))
                             (let ((_%try-match9131691353%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%pl-rhead9131491323%_))
                                          (let ((_%tl9132091346%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%pl-rhead9131491323%_)))
                                                (_%hd9131991344%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%pl-rhead9131491323%_))))
                                            (let ((_%c91349%_ _%hd9131991344%_)
                                                  (_%plrh91351%_
                                                   _%tl9132091346%_))
                                              (let ()
                                                (declare (not safe))
                                                (_%K9131891341%_
                                                 _%plrh91351%_
                                                 _%c91349%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E9131791327%_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%pl-rhead9131491323%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%K9132191357%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%try-match9131691353%_)))))))))
                    (_g91455_
                     (let ((_g91456_
                            (let ((__tmp91458 (reverse _%supers91099%_)))
                              (declare (not safe))
                              (append1! _%rpls91116%_ __tmp91458))))
                       #!void
                       _g91456_))
                    (_g91459_
                     (let ((_g91460_
                            (set! _%pls91110%_
                                  (let ()
                                    (declare (not safe))
                                    (##map _%unsitr-rpl91117%_
                                           _%rpls91116%_)))))
                       #!void
                       _g91460_))
                    (_%c3-select-next91118%_
                     (lambda (_%tails91256%_)
                       (let ((_%candidate?91262%_
                              (lambda (_%c91258%_)
                                (let ((__tmp91462
                                       (lambda (_%tail91260%_)
                                         (let ((__tmp91463
                                                (member _%c91258%_
                                                        (cdr _%tail91260%_)
                                                        _%eq91105%_)))
                                           (declare (not safe))
                                           (not __tmp91463)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp91462 _%tails91256%_)))))
                         (let _%loop91264%_ ((_%ts91266%_ _%tails91256%_))
                           (let* ((_%ts9126791277%_ _%ts91266%_)
                                  (_%else9126991285%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_%err91113%_))))
                                  (_%K9127191291%_
                                   (lambda (_%rts91288%_ _%c91289%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_%candidate?91262%_ _%c91289%_))
                                         _%c91289%_
                                         (let ()
                                           (declare (not safe))
                                           (_%loop91264%_ _%rts91288%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%ts9126791277%_))
                                 (let ((_%hd9127291294%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%ts9126791277%_)))
                                       (_%tl9127391296%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%ts9126791277%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%hd9127291294%_))
                                       (let* ((_%hd9127491299%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd9127291294%_)))
                                              (_%c91302%_ _%hd9127491299%_)
                                              (_%rts91304%_ _%tl9127391296%_))
                                         (declare (not safe))
                                         (_%K9127191291%_
                                          _%rts91304%_
                                          _%c91302%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%err91113%_))))
                                 (let ()
                                   (declare (not safe))
                                   (_%err91113%_))))))))
                    (_%remove-next!91119%_
                     (lambda (_%next91201%_ _%tails91202%_)
                       (let _%loop91204%_ ((_%t91206%_ _%tails91202%_))
                         (let* ((_%t9120791218%_ _%t91206%_)
                                (_%E9121091222%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%t9120791218%_
                                          '([])
                                          '([[head . tail] . more]))
                                   '#!void)))
                           (let ((_%K9121691253%_ (lambda () _%tails91202%_))
                                 (_%K9121191230%_
                                  (lambda (_%more91226%_
                                           _%tail91227%_
                                           _%head91228%_)
                                    (if (_%eq91105%_
                                         _%head91228%_
                                         _%next91201%_)
                                        (set-car! _%t91206%_ _%tail91227%_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_%loop91204%_ _%more91226%_)))))
                             (let ((_%try-match9120991249%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%t9120791218%_))
                                          (let ((_%tl9121391235%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%t9120791218%_)))
                                                (_%hd9121291233%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%t9120791218%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd9121291233%_))
                                                (let ((_%tl9121591240%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd9121291233%_)))
                                                      (_%hd9121491238%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd9121291233%_))))
                                                  (let ((_%head91243%_
                                                         _%hd9121491238%_)
                                                        (_%tail91245%_
                                                         _%tl9121591240%_)
                                                        (_%more91247%_
                                                         _%tl9121391235%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%K9121191230%_
                                                       _%more91247%_
                                                       _%tail91245%_
                                                       _%head91243%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%E9121091222%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E9121091222%_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%t9120791218%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%K9121691253%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%try-match9120991249%_)))))))))
                    (_%precedence-list91120%_
                     (let _%c3loop91151%_ ((_%rhead91153%_ _%rhead91098%_)
                                           (_%tails91154%_ _%pls91110%_))
                       (let* ((_%tails91156%_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _%tails91154%_)))
                              (_%tails9115791167%_ _%tails91156%_)
                              (_%else9116091178%_
                               (lambda ()
                                 (let ((_%next91175%_
                                        (let ()
                                          (declare (not safe))
                                          (_%c3-select-next91118%_
                                           _%tails91156%_))))
                                   (let ((__tmp91465
                                          (cons _%next91175%_ _%rhead91153%_))
                                         (__tmp91464
                                          (let ()
                                            (declare (not safe))
                                            (_%remove-next!91119%_
                                             _%next91175%_
                                             _%tails91156%_))))
                                     (declare (not safe))
                                     (_%c3loop91151%_
                                      __tmp91465
                                      __tmp91464))))))
                         (let ((_%K9116591198%_
                                (lambda ()
                                  (append-reverse
                                   _%rhead91153%_
                                   _%sit91111%_)))
                               (_%K9116291184%_
                                (lambda (_%tail91182%_)
                                  (append-reverse
                                   _%rhead91153%_
                                   (append _%tail91182%_ _%sit91111%_)))))
                           (let ((_%try-match9115991194%_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tails9115791167%_))
                                        (let ((_%tl9116491189%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tails9115791167%_)))
                                              (_%hd9116391187%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tails9115791167%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl9116491189%_))
                                              (let ((_%tail91192%_
                                                     _%hd9116391187%_))
                                                (declare (not safe))
                                                (_%K9116291184%_
                                                 _%tail91192%_))
                                              (let ()
                                                (declare (not safe))
                                                (_%else9116091178%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else9116091178%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tails9115791167%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%K9116591198%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%try-match9115991194%_))))))))
                    (_%super-struct91121%_
                     (let* ((_%sit9112291130%_ _%sit91111%_)
                            (_%else9112491138%_ (lambda () '#f))
                            (_%K9112691143%_ (lambda (_%s91141%_) _%s91141%_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%sit9112291130%_))
                           (let* ((_%hd9112791146%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%sit9112291130%_)))
                                  (_%s91149%_ _%hd9112791146%_))
                             (declare (not safe))
                             (_%K9112691143%_ _%s91149%_))
                           (let ()
                             (declare (not safe))
                             (_%else9112491138%_))))))
            (values _%precedence-list91120%_ _%super-struct91121%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords91392%_ . _%args91393%_)
        (apply c4-linearize__%
               _%@@keywords91392%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords91392%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords91392%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords91392%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords91392%_
                  'get-name:
                  absent-value))
               _%args91393%_)))
    (define c4-linearize
      (lambda _%args9108791399%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9108791399%_)))))
