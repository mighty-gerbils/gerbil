(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1713001406)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords92929%_
               _%get-precedence-list9292392930%_
               _%struct?9292492932%_
               _%eq9292592934%_
               _%get-name9292692936%_
               _%rhead92938%_
               _%supers92939%_)
        (let* ((_%get-precedence-list92941%_
                (if (eq? _%get-precedence-list9292392930%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9292392930%_))
               (_%struct?92943%_
                (if (eq? _%struct?9292492932%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9292492932%_))
               (_%eq92945%_
                (if (eq? _%eq9292592934%_ absent-value) eq? _%eq9292592934%_))
               (_%get-name92947%_
                (if (eq? _%get-name9292692936%_ absent-value)
                    identity
                    _%get-name9292692936%_)))
          (letrec* ((_%pls92950%_
                     (map _%get-precedence-list92941%_ _%supers92939%_))
                    (_%sit92951%_ '())
                    (_%get-names92952%_
                     (lambda (_%lst93227%_)
                       (map _%get-name92947%_ _%lst93227%_)))
                    (_%err92953%_
                     (lambda _%a93225%_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (_%get-names92952%_ (reverse _%rhead92938%_))
                              'precedence-lists:
                              (let ()
                                (declare (not safe))
                                (##map _%get-names92952%_ _%pls92950%_))
                              'single-inheritance-tail:
                              (_%get-names92952%_ _%sit92951%_)
                              _%a93225%_)))
                    (_%same?92954%_
                     (lambda (_%lst193222%_ _%lst293223%_)
                       (if (let ((__tmp93275 (length _%lst193222%_))
                                 (__tmp93274 (length _%lst293223%_)))
                             (declare (not safe))
                             (##fx= __tmp93275 __tmp93274))
                           (let ()
                             (declare (not safe))
                             (andmap2 _%eq92945%_ _%lst193222%_ _%lst293223%_))
                           '#f)))
                    (_%merge-sit!92955%_
                     (lambda (_%sit293205%_)
                       (if (null? _%sit293205%_)
                           '#!void
                           (if (null? _%sit92951%_)
                               (set! _%sit92951%_ _%sit293205%_)
                               (let _%loop93210%_ ((_%t193212%_ _%sit92951%_)
                                                   (_%t293213%_ _%sit293205%_))
                                 (if (_%same?92954%_ _%t193212%_ _%sit293205%_)
                                     '#!void
                                     (if (_%same?92954%_
                                          _%t293213%_
                                          _%sit92951%_)
                                         (set! _%sit92951%_ _%sit293205%_)
                                         (if (or (null? _%t193212%_)
                                                 (null? _%t293213%_))
                                             (_%err92953%_
                                              'single-inheritance-incompatibility:
                                              (cons (_%get-names92952%_
                                                     _%sit92951%_)
                                                    (cons (_%get-names92952%_
                                                           _%sit293205%_)
                                                          '())))
                                             (_%loop93210%_
                                              (cdr _%t193212%_)
                                              (cdr _%t293213%_))))))))))
                    (_%rpls92956%_
                     (let ((__tmp93276
                            (lambda (_%pl93200%_)
                              (let ((_g93277_
                                     (let ()
                                       (declare (not safe))
                                       (append-reverse-until
                                        _%struct?92943%_
                                        _%pl93200%_
                                        '()))))
                                (begin
                                  (let ((_g93278_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g93277_)
                                               (##vector-length _g93277_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g93278_ 2)))
                                        (error "Context expects 2 values"
                                               _g93278_)))
                                  (let ((_%tl93202%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g93277_ 0)))
                                        (_%rh93203%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g93277_ 1))))
                                    (begin
                                      (_%merge-sit!92955%_ _%tl93202%_)
                                      _%rh93203%_)))))))
                       (declare (not safe))
                       (##map __tmp93276 _%pls92950%_)))
                    (_%unsitr-rpl92957%_
                     (lambda (_%rpl93146%_)
                       (let _%u93148%_ ((_%pl-rhead93150%_ _%rpl93146%_)
                                        (_%pl-tail93151%_ '())
                                        (_%sit-rhead93152%_
                                         (reverse _%sit92951%_))
                                        (_%sit-tail93153%_ '()))
                         (let* ((_%pl-rhead9315493163%_ _%pl-rhead93150%_)
                                (_%E9315793167%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%pl-rhead9315493163%_
                                          '([])
                                          '([c . plrh]))
                                   '#!void)))
                           (let ((_%K9316193197%_ (lambda () _%pl-tail93151%_))
                                 (_%K9315893181%_
                                  (lambda (_%plrh93171%_ _%c93172%_)
                                    (if (member _%c93172%_
                                                _%sit-tail93153%_
                                                _%eq92945%_)
                                        (_%err92953%_
                                         'precedence-list-head:
                                         (_%get-names92952%_
                                          (reverse _%pl-rhead93150%_))
                                         'precedence-list-tail:
                                         (_%get-names92952%_ _%pl-tail93151%_)
                                         'single-inheritance-head:
                                         (_%get-names92952%_
                                          (reverse _%sit-rhead93152%_))
                                         'single-inheritance-tail:
                                         (_%get-names92952%_ _%sit-tail93153%_)
                                         'super-out-of-order-vs-single-inheritance-tail:
                                         (_%get-name92947%_ _%c93172%_))
                                        (let ((_g93279_
                                               (let ((__tmp93281
                                                      (lambda (_%g9317393175%_)
                                                        (_%eq92945%_
                                                         _%c93172%_
                                                         _%g9317393175%_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp93281
                                                  _%sit-rhead93152%_
                                                  _%sit-tail93153%_))))
                                          (begin
                                            (let ((_g93280_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g93279_)
                                                         (##vector-length
                                                          _g93279_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g93280_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g93280_)))
                                            (let ((_%sit-rh293178%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g93279_
                                                      0)))
                                                  (_%sit-tl293179%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g93279_
                                                      1))))
                                              (if (null? _%sit-rh293178%_)
                                                  (_%u93148%_
                                                   _%plrh93171%_
                                                   (cons _%c93172%_
                                                         _%pl-tail93151%_)
                                                   '()
                                                   _%sit-tl293179%_)
                                                  (_%u93148%_
                                                   _%plrh93171%_
                                                   _%pl-tail93151%_
                                                   (cdr _%sit-rh293178%_)
                                                   _%sit-tl293179%_)))))))))
                             (let ((_%try-match9315693193%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%pl-rhead9315493163%_))
                                          (let ((_%tl9316093186%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%pl-rhead9315493163%_)))
                                                (_%hd9315993184%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%pl-rhead9315493163%_))))
                                            (let ((_%c93189%_ _%hd9315993184%_)
                                                  (_%plrh93191%_
                                                   _%tl9316093186%_))
                                              (_%K9315893181%_
                                               _%plrh93191%_
                                               _%c93189%_)))
                                          (_%E9315793167%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%pl-rhead9315493163%_))
                                   (_%K9316193197%_)
                                   (_%try-match9315693193%_))))))))
                    (_g93282_
                     (let ((_g93283_
                            (let ((__tmp93285 (reverse _%supers92939%_)))
                              (declare (not safe))
                              (append1! _%rpls92956%_ __tmp93285))))
                       #!void
                       _g93283_))
                    (_g93286_
                     (let ((_g93287_
                            (set! _%pls92950%_
                                  (let ()
                                    (declare (not safe))
                                    (##map _%unsitr-rpl92957%_
                                           _%rpls92956%_)))))
                       #!void
                       _g93287_))
                    (_%c3-select-next92958%_
                     (lambda (_%tails93096%_)
                       (let ((_%candidate?93102%_
                              (lambda (_%c93098%_)
                                (let ((__tmp93289
                                       (lambda (_%tail93100%_)
                                         (not (member _%c93098%_
                                                      (cdr _%tail93100%_)
                                                      _%eq92945%_)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp93289 _%tails93096%_)))))
                         (let _%loop93104%_ ((_%ts93106%_ _%tails93096%_))
                           (let* ((_%ts9310793117%_ _%ts93106%_)
                                  (_%else9310993125%_
                                   (lambda () (_%err92953%_)))
                                  (_%K9311193131%_
                                   (lambda (_%rts93128%_ _%c93129%_)
                                     (if (_%candidate?93102%_ _%c93129%_)
                                         _%c93129%_
                                         (_%loop93104%_ _%rts93128%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%ts9310793117%_))
                                 (let ((_%hd9311293134%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%ts9310793117%_)))
                                       (_%tl9311393136%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%ts9310793117%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%hd9311293134%_))
                                       (let* ((_%hd9311493139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd9311293134%_)))
                                              (_%c93142%_ _%hd9311493139%_)
                                              (_%rts93144%_ _%tl9311393136%_))
                                         (_%K9311193131%_
                                          _%rts93144%_
                                          _%c93142%_))
                                       (_%err92953%_)))
                                 (_%err92953%_)))))))
                    (_%remove-next!92959%_
                     (lambda (_%next93041%_ _%tails93042%_)
                       (let _%loop93044%_ ((_%t93046%_ _%tails93042%_))
                         (let* ((_%t9304793058%_ _%t93046%_)
                                (_%E9305093062%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%t9304793058%_
                                          '([])
                                          '([[head . tail] . more]))
                                   '#!void)))
                           (let ((_%K9305693093%_ (lambda () _%tails93042%_))
                                 (_%K9305193070%_
                                  (lambda (_%more93066%_
                                           _%tail93067%_
                                           _%head93068%_)
                                    (if (_%eq92945%_
                                         _%head93068%_
                                         _%next93041%_)
                                        (set-car! _%t93046%_ _%tail93067%_)
                                        '#!void)
                                    (_%loop93044%_ _%more93066%_))))
                             (let ((_%try-match9304993089%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%t9304793058%_))
                                          (let ((_%tl9305393075%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%t9304793058%_)))
                                                (_%hd9305293073%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%t9304793058%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd9305293073%_))
                                                (let ((_%tl9305593080%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd9305293073%_)))
                                                      (_%hd9305493078%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd9305293073%_))))
                                                  (let ((_%head93083%_
                                                         _%hd9305493078%_)
                                                        (_%tail93085%_
                                                         _%tl9305593080%_)
                                                        (_%more93087%_
                                                         _%tl9305393075%_))
                                                    (_%K9305193070%_
                                                     _%more93087%_
                                                     _%tail93085%_
                                                     _%head93083%_)))
                                                (_%E9305093062%_)))
                                          (_%E9305093062%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%t9304793058%_))
                                   (_%K9305693093%_)
                                   (_%try-match9304993089%_))))))))
                    (_%precedence-list92960%_
                     (let _%c3loop92991%_ ((_%rhead92993%_ _%rhead92938%_)
                                           (_%tails92994%_ _%pls92950%_))
                       (let* ((_%tails92996%_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _%tails92994%_)))
                              (_%tails9299793007%_ _%tails92996%_)
                              (_%else9300093018%_
                               (lambda ()
                                 (let ((_%next93015%_
                                        (_%c3-select-next92958%_
                                         _%tails92996%_)))
                                   (_%c3loop92991%_
                                    (cons _%next93015%_ _%rhead92993%_)
                                    (_%remove-next!92959%_
                                     _%next93015%_
                                     _%tails92996%_))))))
                         (let ((_%K9300593038%_
                                (lambda ()
                                  (append-reverse
                                   _%rhead92993%_
                                   _%sit92951%_)))
                               (_%K9300293024%_
                                (lambda (_%tail93022%_)
                                  (append-reverse
                                   _%rhead92993%_
                                   (append _%tail93022%_ _%sit92951%_)))))
                           (let ((_%try-match9299993034%_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tails9299793007%_))
                                        (let ((_%tl9300493029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tails9299793007%_)))
                                              (_%hd9300393027%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tails9299793007%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl9300493029%_))
                                              (let ((_%tail93032%_
                                                     _%hd9300393027%_))
                                                (_%K9300293024%_
                                                 _%tail93032%_))
                                              (_%else9300093018%_)))
                                        (_%else9300093018%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tails9299793007%_))
                                 (_%K9300593038%_)
                                 (_%try-match9299993034%_)))))))
                    (_%super-struct92961%_
                     (let* ((_%sit9296292970%_ _%sit92951%_)
                            (_%else9296492978%_ (lambda () '#f))
                            (_%K9296692983%_ (lambda (_%s92981%_) _%s92981%_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%sit9296292970%_))
                           (let* ((_%hd9296792986%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%sit9296292970%_)))
                                  (_%s92989%_ _%hd9296792986%_))
                             (_%K9296692983%_ _%s92989%_))
                           (_%else9296492978%_)))))
            (values _%precedence-list92960%_ _%super-struct92961%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords93232%_ . _%args93233%_)
        (apply c4-linearize__%
               _%@@keywords93232%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords93232%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords93232%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords93232%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords93232%_
                  'get-name:
                  absent-value))
               _%args93233%_)))
    (define c4-linearize
      (lambda _%args9292793239%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9292793239%_)))))
