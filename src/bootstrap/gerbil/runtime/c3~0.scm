(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1712262512)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords91151%_
               _%get-precedence-list9114591152%_
               _%struct?9114691154%_
               _%eq9114791156%_
               _%get-name9114891158%_
               _%rhead91160%_
               _%supers91161%_)
        (let* ((_%get-precedence-list91163%_
                (if (eq? _%get-precedence-list9114591152%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9114591152%_))
               (_%struct?91165%_
                (if (eq? _%struct?9114691154%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9114691154%_))
               (_%eq91167%_
                (if (eq? _%eq9114791156%_ absent-value) eq? _%eq9114791156%_))
               (_%get-name91169%_
                (if (eq? _%get-name9114891158%_ absent-value)
                    identity
                    _%get-name9114891158%_)))
          (letrec* ((_%pls91172%_
                     (map _%get-precedence-list91163%_ _%supers91161%_))
                    (_%sit91173%_ '())
                    (_%get-names91174%_
                     (lambda (_%lst91449%_)
                       (map _%get-name91169%_ _%lst91449%_)))
                    (_%err91175%_
                     (lambda _%a91447%_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp91496 (reverse _%rhead91160%_)))
                                (declare (not safe))
                                (_%get-names91174%_ __tmp91496))
                              'precedence-lists:
                              (let ()
                                (declare (not safe))
                                (##map _%get-names91174%_ _%pls91172%_))
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_%get-names91174%_ _%sit91173%_))
                              _%a91447%_)))
                    (_%same?91176%_
                     (lambda (_%lst191444%_ _%lst291445%_)
                       (if (let ((__tmp91498 (length _%lst191444%_))
                                 (__tmp91497 (length _%lst291445%_)))
                             (declare (not safe))
                             (##fx= __tmp91498 __tmp91497))
                           (let ()
                             (declare (not safe))
                             (andmap2 _%eq91167%_ _%lst191444%_ _%lst291445%_))
                           '#f)))
                    (_%merge-sit!91177%_
                     (lambda (_%sit291427%_)
                       (if (let () (declare (not safe)) (null? _%sit291427%_))
                           (let () '#!void)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _%sit91173%_))
                               (let () (set! _%sit91173%_ _%sit291427%_))
                               (let _%loop91432%_ ((_%t191434%_ _%sit91173%_)
                                                   (_%t291435%_ _%sit291427%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (_%same?91176%_
                                        _%t191434%_
                                        _%sit291427%_))
                                     (let () '#!void)
                                     (if (let ()
                                           (declare (not safe))
                                           (_%same?91176%_
                                            _%t291435%_
                                            _%sit91173%_))
                                         (let ()
                                           (set! _%sit91173%_ _%sit291427%_))
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _%t191434%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _%t291435%_)))
                                             (let ((__tmp91499
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%get-names91174%_
                                                             _%sit91173%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_%get-names91174%_ _%sit291427%_))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%err91175%_
                                                'single-inheritance-incompatibility:
                                                __tmp91499))
                                             (let ((__tmp91501
                                                    (cdr _%t191434%_))
                                                   (__tmp91500
                                                    (cdr _%t291435%_)))
                                               (declare (not safe))
                                               (_%loop91432%_
                                                __tmp91501
                                                __tmp91500))))))))))
                    (_%rpls91178%_
                     (let ((__tmp91502
                            (lambda (_%pl91422%_)
                              (let ((_g91503_
                                     (let ()
                                       (declare (not safe))
                                       (append-reverse-until
                                        _%struct?91165%_
                                        _%pl91422%_
                                        '()))))
                                (begin
                                  (let ((_g91504_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g91503_)
                                               (##vector-length _g91503_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g91504_ 2)))
                                        (error "Context expects 2 values"
                                               _g91504_)))
                                  (let ((_%tl91424%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g91503_ 0)))
                                        (_%rh91425%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g91503_ 1))))
                                    (begin
                                      (let ()
                                        (declare (not safe))
                                        (_%merge-sit!91177%_ _%tl91424%_))
                                      _%rh91425%_)))))))
                       (declare (not safe))
                       (##map __tmp91502 _%pls91172%_)))
                    (_%unsitr-rpl91179%_
                     (lambda (_%rpl91368%_)
                       (let _%u91370%_ ((_%pl-rhead91372%_ _%rpl91368%_)
                                        (_%pl-tail91373%_ '())
                                        (_%sit-rhead91374%_
                                         (reverse _%sit91173%_))
                                        (_%sit-tail91375%_ '()))
                         (let* ((_%pl-rhead9137691385%_ _%pl-rhead91372%_)
                                (_%E9137991389%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%pl-rhead9137691385%_
                                          '([])
                                          '([c . plrh]))
                                   '#!void)))
                           (let ((_%K9138391419%_ (lambda () _%pl-tail91373%_))
                                 (_%K9138091403%_
                                  (lambda (_%plrh91393%_ _%c91394%_)
                                    (if (member _%c91394%_
                                                _%sit-tail91375%_
                                                _%eq91167%_)
                                        (let ((__tmp91510
                                               (let ((__tmp91511
                                                      (reverse _%pl-rhead91372%_)))
                                                 (declare (not safe))
                                                 (_%get-names91174%_
                                                  __tmp91511)))
                                              (__tmp91509
                                               (let ()
                                                 (declare (not safe))
                                                 (_%get-names91174%_
                                                  _%pl-tail91373%_)))
                                              (__tmp91507
                                               (let ((__tmp91508
                                                      (reverse _%sit-rhead91374%_)))
                                                 (declare (not safe))
                                                 (_%get-names91174%_
                                                  __tmp91508)))
                                              (__tmp91506
                                               (let ()
                                                 (declare (not safe))
                                                 (_%get-names91174%_
                                                  _%sit-tail91375%_)))
                                              (__tmp91505
                                               (_%get-name91169%_ _%c91394%_)))
                                          (declare (not safe))
                                          (_%err91175%_
                                           'precedence-list-head:
                                           __tmp91510
                                           'precedence-list-tail:
                                           __tmp91509
                                           'single-inheritance-head:
                                           __tmp91507
                                           'single-inheritance-tail:
                                           __tmp91506
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp91505))
                                        (let ((_g91512_
                                               (let ((__tmp91514
                                                      (lambda (_%g9139591397%_)
                                                        (_%eq91167%_
                                                         _%c91394%_
                                                         _%g9139591397%_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp91514
                                                  _%sit-rhead91374%_
                                                  _%sit-tail91375%_))))
                                          (begin
                                            (let ((_g91513_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g91512_)
                                                         (##vector-length
                                                          _g91512_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g91513_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g91513_)))
                                            (let ((_%sit-rh291400%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g91512_
                                                      0)))
                                                  (_%sit-tl291401%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g91512_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _%sit-rh291400%_))
                                                  (let ((__tmp91515
                                                         (cons _%c91394%_
                                                               _%pl-tail91373%_)))
                                                    (declare (not safe))
                                                    (_%u91370%_
                                                     _%plrh91393%_
                                                     __tmp91515
                                                     '()
                                                     _%sit-tl291401%_))
                                                  (let ((__tmp91516
                                                         (cdr _%sit-rh291400%_)))
                                                    (declare (not safe))
                                                    (_%u91370%_
                                                     _%plrh91393%_
                                                     _%pl-tail91373%_
                                                     __tmp91516
                                                     _%sit-tl291401%_))))))))))
                             (let ((_%try-match9137891415%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%pl-rhead9137691385%_))
                                          (let ((_%tl9138291408%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%pl-rhead9137691385%_)))
                                                (_%hd9138191406%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%pl-rhead9137691385%_))))
                                            (let ((_%c91411%_ _%hd9138191406%_)
                                                  (_%plrh91413%_
                                                   _%tl9138291408%_))
                                              (let ()
                                                (declare (not safe))
                                                (_%K9138091403%_
                                                 _%plrh91413%_
                                                 _%c91411%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E9137991389%_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%pl-rhead9137691385%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%K9138391419%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%try-match9137891415%_)))))))))
                    (_g91517_
                     (let ((_g91518_
                            (let ((__tmp91520 (reverse _%supers91161%_)))
                              (declare (not safe))
                              (append1! _%rpls91178%_ __tmp91520))))
                       #!void
                       _g91518_))
                    (_g91521_
                     (let ((_g91522_
                            (set! _%pls91172%_
                                  (let ()
                                    (declare (not safe))
                                    (##map _%unsitr-rpl91179%_
                                           _%rpls91178%_)))))
                       #!void
                       _g91522_))
                    (_%c3-select-next91180%_
                     (lambda (_%tails91318%_)
                       (let ((_%candidate?91324%_
                              (lambda (_%c91320%_)
                                (let ((__tmp91524
                                       (lambda (_%tail91322%_)
                                         (let ((__tmp91525
                                                (member _%c91320%_
                                                        (cdr _%tail91322%_)
                                                        _%eq91167%_)))
                                           (declare (not safe))
                                           (not __tmp91525)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp91524 _%tails91318%_)))))
                         (let _%loop91326%_ ((_%ts91328%_ _%tails91318%_))
                           (let* ((_%ts9132991339%_ _%ts91328%_)
                                  (_%else9133191347%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_%err91175%_))))
                                  (_%K9133391353%_
                                   (lambda (_%rts91350%_ _%c91351%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_%candidate?91324%_ _%c91351%_))
                                         _%c91351%_
                                         (let ()
                                           (declare (not safe))
                                           (_%loop91326%_ _%rts91350%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%ts9132991339%_))
                                 (let ((_%hd9133491356%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%ts9132991339%_)))
                                       (_%tl9133591358%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%ts9132991339%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%hd9133491356%_))
                                       (let* ((_%hd9133691361%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd9133491356%_)))
                                              (_%c91364%_ _%hd9133691361%_)
                                              (_%rts91366%_ _%tl9133591358%_))
                                         (declare (not safe))
                                         (_%K9133391353%_
                                          _%rts91366%_
                                          _%c91364%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%err91175%_))))
                                 (let ()
                                   (declare (not safe))
                                   (_%err91175%_))))))))
                    (_%remove-next!91181%_
                     (lambda (_%next91263%_ _%tails91264%_)
                       (let _%loop91266%_ ((_%t91268%_ _%tails91264%_))
                         (let* ((_%t9126991280%_ _%t91268%_)
                                (_%E9127291284%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%t9126991280%_
                                          '([])
                                          '([[head . tail] . more]))
                                   '#!void)))
                           (let ((_%K9127891315%_ (lambda () _%tails91264%_))
                                 (_%K9127391292%_
                                  (lambda (_%more91288%_
                                           _%tail91289%_
                                           _%head91290%_)
                                    (if (_%eq91167%_
                                         _%head91290%_
                                         _%next91263%_)
                                        (set-car! _%t91268%_ _%tail91289%_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_%loop91266%_ _%more91288%_)))))
                             (let ((_%try-match9127191311%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%t9126991280%_))
                                          (let ((_%tl9127591297%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%t9126991280%_)))
                                                (_%hd9127491295%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%t9126991280%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd9127491295%_))
                                                (let ((_%tl9127791302%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd9127491295%_)))
                                                      (_%hd9127691300%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd9127491295%_))))
                                                  (let ((_%head91305%_
                                                         _%hd9127691300%_)
                                                        (_%tail91307%_
                                                         _%tl9127791302%_)
                                                        (_%more91309%_
                                                         _%tl9127591297%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%K9127391292%_
                                                       _%more91309%_
                                                       _%tail91307%_
                                                       _%head91305%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%E9127291284%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E9127291284%_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%t9126991280%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%K9127891315%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%try-match9127191311%_)))))))))
                    (_%precedence-list91182%_
                     (let _%c3loop91213%_ ((_%rhead91215%_ _%rhead91160%_)
                                           (_%tails91216%_ _%pls91172%_))
                       (let* ((_%tails91218%_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _%tails91216%_)))
                              (_%tails9121991229%_ _%tails91218%_)
                              (_%else9122291240%_
                               (lambda ()
                                 (let ((_%next91237%_
                                        (let ()
                                          (declare (not safe))
                                          (_%c3-select-next91180%_
                                           _%tails91218%_))))
                                   (let ((__tmp91527
                                          (cons _%next91237%_ _%rhead91215%_))
                                         (__tmp91526
                                          (let ()
                                            (declare (not safe))
                                            (_%remove-next!91181%_
                                             _%next91237%_
                                             _%tails91218%_))))
                                     (declare (not safe))
                                     (_%c3loop91213%_
                                      __tmp91527
                                      __tmp91526))))))
                         (let ((_%K9122791260%_
                                (lambda ()
                                  (append-reverse
                                   _%rhead91215%_
                                   _%sit91173%_)))
                               (_%K9122491246%_
                                (lambda (_%tail91244%_)
                                  (append-reverse
                                   _%rhead91215%_
                                   (append _%tail91244%_ _%sit91173%_)))))
                           (let ((_%try-match9122191256%_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tails9121991229%_))
                                        (let ((_%tl9122691251%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tails9121991229%_)))
                                              (_%hd9122591249%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tails9121991229%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl9122691251%_))
                                              (let ((_%tail91254%_
                                                     _%hd9122591249%_))
                                                (declare (not safe))
                                                (_%K9122491246%_
                                                 _%tail91254%_))
                                              (let ()
                                                (declare (not safe))
                                                (_%else9122291240%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else9122291240%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tails9121991229%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%K9122791260%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%try-match9122191256%_))))))))
                    (_%super-struct91183%_
                     (let* ((_%sit9118491192%_ _%sit91173%_)
                            (_%else9118691200%_ (lambda () '#f))
                            (_%K9118891205%_ (lambda (_%s91203%_) _%s91203%_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%sit9118491192%_))
                           (let* ((_%hd9118991208%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%sit9118491192%_)))
                                  (_%s91211%_ _%hd9118991208%_))
                             (declare (not safe))
                             (_%K9118891205%_ _%s91211%_))
                           (let ()
                             (declare (not safe))
                             (_%else9118691200%_))))))
            (values _%precedence-list91182%_ _%super-struct91183%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords91454%_ . _%args91455%_)
        (apply c4-linearize__%
               _%@@keywords91454%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords91454%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords91454%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords91454%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords91454%_
                  'get-name:
                  absent-value))
               _%args91455%_)))
    (define c4-linearize
      (lambda _%args9114991461%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9114991461%_)))))
