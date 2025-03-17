(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1742222162)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords95472%_
               _%get-precedence-list9546695473%_
               _%struct?9546795475%_
               _%eq9546895477%_
               _%get-name9546995479%_
               _%rhead95481%_
               _%supers95482%_)
        (let* ((_%get-precedence-list95484%_
                (if (eq? _%get-precedence-list9546695473%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9546695473%_))
               (_%struct?95486%_
                (if (eq? _%struct?9546795475%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9546795475%_))
               (_%eq95488%_
                (if (eq? _%eq9546895477%_ absent-value) eq? _%eq9546895477%_))
               (_%get-name95490%_
                (if (eq? _%get-name9546995479%_ absent-value)
                    identity
                    _%get-name9546995479%_)))
          (letrec* ((_%pls95493%_
                     (map _%get-precedence-list95484%_ _%supers95482%_))
                    (_%sis95494%_ '())
                    (_%get-names95495%_
                     (lambda (_%lst95777%_)
                       (map _%get-name95490%_ _%lst95777%_)))
                    (_%err95496%_
                     (lambda _%a95775%_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (_%get-names95495%_ (reverse _%rhead95481%_))
                              'precedence-lists:
                              (let ()
                                (declare (not safe))
                                (##map _%get-names95495%_ _%pls95493%_))
                              'single-inheritance-suffix:
                              (_%get-names95495%_ _%sis95494%_)
                              _%a95775%_)))
                    (_%eqlist?95497%_
                     (lambda (_%l195769%_ _%l295770%_)
                       (let ((_%$e95772%_ (eq? _%l195769%_ _%l295770%_)))
                         (if _%$e95772%_
                             _%$e95772%_
                             (if (let ()
                                   (declare (not safe))
                                   (andmap2 _%eq95488%_
                                            _%l195769%_
                                            _%l295770%_))
                                 (let ((__tmp95825 (length _%l195769%_))
                                       (__tmp95824 (length _%l295770%_)))
                                   (declare (not safe))
                                   (##fx= __tmp95825 __tmp95824))
                                 '#f)))))
                    (_%merge-sis!95498%_
                     (lambda (_%sis295752%_)
                       (if (null? _%sis295752%_)
                           '#!void
                           (if (null? _%sis95494%_)
                               (set! _%sis95494%_ _%sis295752%_)
                               (let _%loop95757%_ ((_%t195759%_ _%sis95494%_)
                                                   (_%t295760%_ _%sis295752%_))
                                 (if (_%eqlist?95497%_
                                      _%t195759%_
                                      _%sis295752%_)
                                     '#!void
                                     (if (_%eqlist?95497%_
                                          _%t295760%_
                                          _%sis95494%_)
                                         (set! _%sis95494%_ _%sis295752%_)
                                         (if (or (null? _%t195759%_)
                                                 (null? _%t295760%_))
                                             (_%err95496%_
                                              'struct-incompatibility:
                                              (cons (_%get-names95495%_
                                                     _%sis95494%_)
                                                    (cons (_%get-names95495%_
                                                           _%sis295752%_)
                                                          '())))
                                             (_%loop95757%_
                                              (cdr _%t195759%_)
                                              (cdr _%t295760%_))))))))))
                    (_%rpls95499%_
                     (let ((__tmp95826
                            (lambda (_%pl95747%_)
                              (let ((_g95827_
                                     (let ()
                                       (declare (not safe))
                                       (append-reverse-until
                                        _%struct?95486%_
                                        _%pl95747%_
                                        '()))))
                                (begin
                                  (let ((_g95828_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g95827_)
                                               (##values-length _g95827_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g95828_ 2)))
                                        (error "Context expects 2 values"
                                               _g95828_)))
                                  (let ((_%tl95749%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g95827_ 0)))
                                        (_%rh95750%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g95827_ 1))))
                                    (begin
                                      (_%merge-sis!95498%_ _%tl95749%_)
                                      _%rh95750%_)))))))
                       (declare (not safe))
                       (##map __tmp95826 _%pls95493%_)))
                    (_%unsisr-rpl95500%_
                     (lambda (_%rpl95693%_)
                       (let _%u95695%_ ((_%pl-rhead95697%_ _%rpl95693%_)
                                        (_%pl-tail95698%_ '())
                                        (_%sis-rhead95699%_
                                         (reverse _%sis95494%_))
                                        (_%sis-tail95700%_ '()))
                         (let* ((_%pl-rhead9570195710%_ _%pl-rhead95697%_)
                                (_%E9570495714%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%pl-rhead9570195710%_
                                          '([])
                                          '([c . plrh]))
                                   '#!void)))
                           (let ((_%K9570895744%_ (lambda () _%pl-tail95698%_))
                                 (_%K9570595728%_
                                  (lambda (_%plrh95718%_ _%c95719%_)
                                    (if (member _%c95719%_
                                                _%sis-tail95700%_
                                                _%eq95488%_)
                                        (_%err95496%_
                                         'precedence-list-head:
                                         (_%get-names95495%_
                                          (reverse _%pl-rhead95697%_))
                                         'precedence-list-tail:
                                         (_%get-names95495%_ _%pl-tail95698%_)
                                         'single-inheritance-head:
                                         (_%get-names95495%_
                                          (reverse _%sis-rhead95699%_))
                                         'single-inheritance-tail:
                                         (_%get-names95495%_ _%sis-tail95700%_)
                                         'super-out-of-order-vs-single-inheritance-tail:
                                         (_%get-name95490%_ _%c95719%_))
                                        (let ((_g95829_
                                               (let ((__tmp95831
                                                      (lambda (_%g9572095722%_)
                                                        (_%eq95488%_
                                                         _%c95719%_
                                                         _%g9572095722%_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp95831
                                                  _%sis-rhead95699%_
                                                  _%sis-tail95700%_))))
                                          (begin
                                            (let ((_g95830_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g95829_)
                                                         (##values-length
                                                          _g95829_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g95830_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g95830_)))
                                            (let ((_%sis-rh295725%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g95829_
                                                      0)))
                                                  (_%sis-tl295726%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g95829_
                                                      1))))
                                              (if (null? _%sis-rh295725%_)
                                                  (_%u95695%_
                                                   _%plrh95718%_
                                                   (cons _%c95719%_
                                                         _%pl-tail95698%_)
                                                   '()
                                                   _%sis-tl295726%_)
                                                  (_%u95695%_
                                                   _%plrh95718%_
                                                   _%pl-tail95698%_
                                                   (cdr _%sis-rh295725%_)
                                                   _%sis-tl295726%_)))))))))
                             (let ((_%try-match9570395740%_
                                    (lambda ()
                                      (if (pair? _%pl-rhead9570195710%_)
                                          (let ((_%tl9570795733%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%pl-rhead9570195710%_)))
                                                (_%hd9570695731%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%pl-rhead9570195710%_))))
                                            (let ((_%c95736%_ _%hd9570695731%_)
                                                  (_%plrh95738%_
                                                   _%tl9570795733%_))
                                              (_%K9570595728%_
                                               _%plrh95738%_
                                               _%c95736%_)))
                                          (_%E9570495714%_)))))
                               (if (null? _%pl-rhead9570195710%_)
                                   (_%K9570895744%_)
                                   (_%try-match9570395740%_))))))))
                    (_g95832_
                     (let ((_g95833_
                            (let ((__tmp95835 (reverse _%supers95482%_)))
                              (declare (not safe))
                              (append1! _%rpls95499%_ __tmp95835))))
                       #!void
                       _g95833_))
                    (_%hpls95501%_
                     (let ()
                       (declare (not safe))
                       (##map _%unsisr-rpl95500%_ _%rpls95499%_)))
                    (_%c3-select-next95502%_
                     (lambda (_%tails95643%_)
                       (let ((_%candidate?95649%_
                              (lambda (_%c95645%_)
                                (let ((__tmp95836
                                       (lambda (_%tail95647%_)
                                         (not (member _%c95645%_
                                                      (cdr _%tail95647%_)
                                                      _%eq95488%_)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp95836 _%tails95643%_)))))
                         (let _%loop95651%_ ((_%ts95653%_ _%tails95643%_))
                           (let* ((_%ts9565495664%_ _%ts95653%_)
                                  (_%else9565695672%_
                                   (lambda () (_%err95496%_)))
                                  (_%K9565895678%_
                                   (lambda (_%rts95675%_ _%c95676%_)
                                     (if (_%candidate?95649%_ _%c95676%_)
                                         _%c95676%_
                                         (_%loop95651%_ _%rts95675%_)))))
                             (if (pair? _%ts9565495664%_)
                                 (let ((_%hd9565995681%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%ts9565495664%_)))
                                       (_%tl9566095683%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%ts9565495664%_))))
                                   (if (pair? _%hd9565995681%_)
                                       (let* ((_%hd9566195686%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd9565995681%_)))
                                              (_%c95689%_ _%hd9566195686%_)
                                              (_%rts95691%_ _%tl9566095683%_))
                                         (_%K9565895678%_
                                          _%rts95691%_
                                          _%c95689%_))
                                       (_%err95496%_)))
                                 (_%err95496%_)))))))
                    (_%remove-next!95503%_
                     (lambda (_%next95588%_ _%tails95589%_)
                       (let _%loop95591%_ ((_%t95593%_ _%tails95589%_))
                         (let* ((_%t9559495605%_ _%t95593%_)
                                (_%E9559795609%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%t9559495605%_
                                          '([])
                                          '([[head . tail] . more]))
                                   '#!void)))
                           (let ((_%K9560395640%_ (lambda () _%tails95589%_))
                                 (_%K9559895617%_
                                  (lambda (_%more95613%_
                                           _%tail95614%_
                                           _%head95615%_)
                                    (if (_%eq95488%_
                                         _%head95615%_
                                         _%next95588%_)
                                        (set-car! _%t95593%_ _%tail95614%_)
                                        '#!void)
                                    (_%loop95591%_ _%more95613%_))))
                             (let ((_%try-match9559695636%_
                                    (lambda ()
                                      (if (pair? _%t9559495605%_)
                                          (let ((_%tl9560095622%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%t9559495605%_)))
                                                (_%hd9559995620%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%t9559495605%_))))
                                            (if (pair? _%hd9559995620%_)
                                                (let ((_%tl9560295627%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd9559995620%_)))
                                                      (_%hd9560195625%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd9559995620%_))))
                                                  (let ((_%head95630%_
                                                         _%hd9560195625%_)
                                                        (_%tail95632%_
                                                         _%tl9560295627%_)
                                                        (_%more95634%_
                                                         _%tl9560095622%_))
                                                    (_%K9559895617%_
                                                     _%more95634%_
                                                     _%tail95632%_
                                                     _%head95630%_)))
                                                (_%E9559795609%_)))
                                          (_%E9559795609%_)))))
                               (if (null? _%t9559495605%_)
                                   (_%K9560395640%_)
                                   (_%try-match9559695636%_))))))))
                    (_%precedence-list95504%_
                     (if (null? _%supers95482%_)
                         (reverse _%rhead95481%_)
                         (if (null? (cdr _%supers95482%_))
                             (append-reverse _%rhead95481%_ (car _%pls95493%_))
                             (let _%c3loop95538%_ ((_%rhead95540%_
                                                    _%rhead95481%_)
                                                   (_%tails95541%_
                                                    _%hpls95501%_))
                               (let* ((_%tails95543%_
                                       (let ()
                                         (declare (not safe))
                                         (remove-nulls! _%tails95541%_)))
                                      (_%tails9554495554%_ _%tails95543%_)
                                      (_%else9554795565%_
                                       (lambda ()
                                         (let ((_%next95562%_
                                                (_%c3-select-next95502%_
                                                 _%tails95543%_)))
                                           (_%c3loop95538%_
                                            (cons _%next95562%_ _%rhead95540%_)
                                            (_%remove-next!95503%_
                                             _%next95562%_
                                             _%tails95543%_))))))
                                 (let ((_%K9555295585%_
                                        (lambda ()
                                          (append-reverse
                                           _%rhead95540%_
                                           _%sis95494%_)))
                                       (_%K9554995571%_
                                        (lambda (_%tail95569%_)
                                          (append-reverse
                                           _%rhead95540%_
                                           (append _%tail95569%_
                                                   _%sis95494%_)))))
                                   (let ((_%try-match9554695581%_
                                          (lambda ()
                                            (if (pair? _%tails9554495554%_)
                                                (let ((_%tl9555195576%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tails9554495554%_)))
                                                      (_%hd9555095574%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tails9554495554%_))))
                                                  (if (null? _%tl9555195576%_)
                                                      (let ((_%tail95579%_
                                                             _%hd9555095574%_))
                                                        (_%K9554995571%_
                                                         _%tail95579%_))
                                                      (_%else9554795565%_)))
                                                (_%else9554795565%_)))))
                                     (if (null? _%tails9554495554%_)
                                         (_%K9555295585%_)
                                         (_%try-match9554695581%_)))))))))
                    (_%super-struct95505%_
                     (let* ((_%sis9550695514%_ _%sis95494%_)
                            (_%else9550895522%_ (lambda () '#f))
                            (_%K9551095527%_ (lambda (_%s95525%_) _%s95525%_)))
                       (if (pair? _%sis9550695514%_)
                           (let* ((_%hd9551195530%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%sis9550695514%_)))
                                  (_%s95533%_ _%hd9551195530%_))
                             (_%K9551095527%_ _%s95533%_))
                           (_%else9550895522%_)))))
            (values _%precedence-list95504%_ _%super-struct95505%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords95782%_ . _%args95783%_)
        (apply c4-linearize__%
               _%@@keywords95782%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords95782%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords95782%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords95782%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords95782%_
                  'get-name:
                  absent-value))
               _%args95783%_)))
    (define c4-linearize
      (lambda _%args9547095789%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9547095789%_)))))
