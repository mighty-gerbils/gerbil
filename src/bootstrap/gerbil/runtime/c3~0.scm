(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1742237311)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords95491%_
               _%get-precedence-list9548595492%_
               _%struct?9548695494%_
               _%eq9548795496%_
               _%get-name9548895498%_
               _%rhead95500%_
               _%supers95501%_)
        (let* ((_%get-precedence-list95503%_
                (if (eq? _%get-precedence-list9548595492%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9548595492%_))
               (_%struct?95505%_
                (if (eq? _%struct?9548695494%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9548695494%_))
               (_%eq95507%_
                (if (eq? _%eq9548795496%_ absent-value) eq? _%eq9548795496%_))
               (_%get-name95509%_
                (if (eq? _%get-name9548895498%_ absent-value)
                    identity
                    _%get-name9548895498%_)))
          (letrec* ((_%pls95512%_
                     (map _%get-precedence-list95503%_ _%supers95501%_))
                    (_%sis95513%_ '())
                    (_%get-names95514%_
                     (lambda (_%lst95796%_)
                       (map _%get-name95509%_ _%lst95796%_)))
                    (_%err95515%_
                     (lambda _%a95794%_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (_%get-names95514%_ (reverse _%rhead95500%_))
                              'precedence-lists:
                              (let ()
                                (declare (not safe))
                                (##map _%get-names95514%_ _%pls95512%_))
                              'single-inheritance-suffix:
                              (_%get-names95514%_ _%sis95513%_)
                              _%a95794%_)))
                    (_%eqlist?95516%_
                     (lambda (_%l195788%_ _%l295789%_)
                       (let ((_%$e95791%_ (eq? _%l195788%_ _%l295789%_)))
                         (if _%$e95791%_
                             _%$e95791%_
                             (if (let ()
                                   (declare (not safe))
                                   (andmap2 _%eq95507%_
                                            _%l195788%_
                                            _%l295789%_))
                                 (let ((__tmp95844 (length _%l195788%_))
                                       (__tmp95843 (length _%l295789%_)))
                                   (declare (not safe))
                                   (##fx= __tmp95844 __tmp95843))
                                 '#f)))))
                    (_%merge-sis!95517%_
                     (lambda (_%sis295771%_)
                       (if (null? _%sis295771%_)
                           '#!void
                           (if (null? _%sis95513%_)
                               (set! _%sis95513%_ _%sis295771%_)
                               (let _%loop95776%_ ((_%t195778%_ _%sis95513%_)
                                                   (_%t295779%_ _%sis295771%_))
                                 (if (_%eqlist?95516%_
                                      _%t195778%_
                                      _%sis295771%_)
                                     '#!void
                                     (if (_%eqlist?95516%_
                                          _%t295779%_
                                          _%sis95513%_)
                                         (set! _%sis95513%_ _%sis295771%_)
                                         (if (or (null? _%t195778%_)
                                                 (null? _%t295779%_))
                                             (_%err95515%_
                                              'struct-incompatibility:
                                              (cons (_%get-names95514%_
                                                     _%sis95513%_)
                                                    (cons (_%get-names95514%_
                                                           _%sis295771%_)
                                                          '())))
                                             (_%loop95776%_
                                              (cdr _%t195778%_)
                                              (cdr _%t295779%_))))))))))
                    (_%rpls95518%_
                     (let ((__tmp95845
                            (lambda (_%pl95766%_)
                              (let ((_g95846_
                                     (let ()
                                       (declare (not safe))
                                       (append-reverse-until
                                        _%struct?95505%_
                                        _%pl95766%_
                                        '()))))
                                (begin
                                  (let ((_g95847_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g95846_)
                                               (##values-length _g95846_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g95847_ 2)))
                                        (error "Context expects 2 values"
                                               _g95847_)))
                                  (let ((_%tl95768%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g95846_ 0)))
                                        (_%rh95769%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g95846_ 1))))
                                    (begin
                                      (_%merge-sis!95517%_ _%tl95768%_)
                                      _%rh95769%_)))))))
                       (declare (not safe))
                       (##map __tmp95845 _%pls95512%_)))
                    (_%unsisr-rpl95519%_
                     (lambda (_%rpl95712%_)
                       (let _%u95714%_ ((_%pl-rhead95716%_ _%rpl95712%_)
                                        (_%pl-tail95717%_ '())
                                        (_%sis-rhead95718%_
                                         (reverse _%sis95513%_))
                                        (_%sis-tail95719%_ '()))
                         (let* ((_%pl-rhead9572095729%_ _%pl-rhead95716%_)
                                (_%E9572395733%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%pl-rhead9572095729%_
                                          '([])
                                          '([c . plrh]))
                                   '#!void)))
                           (let ((_%K9572795763%_ (lambda () _%pl-tail95717%_))
                                 (_%K9572495747%_
                                  (lambda (_%plrh95737%_ _%c95738%_)
                                    (if (member _%c95738%_
                                                _%sis-tail95719%_
                                                _%eq95507%_)
                                        (_%err95515%_
                                         'precedence-list-head:
                                         (_%get-names95514%_
                                          (reverse _%pl-rhead95716%_))
                                         'precedence-list-tail:
                                         (_%get-names95514%_ _%pl-tail95717%_)
                                         'single-inheritance-head:
                                         (_%get-names95514%_
                                          (reverse _%sis-rhead95718%_))
                                         'single-inheritance-tail:
                                         (_%get-names95514%_ _%sis-tail95719%_)
                                         'super-out-of-order-vs-single-inheritance-tail:
                                         (_%get-name95509%_ _%c95738%_))
                                        (let ((_g95848_
                                               (let ((__tmp95850
                                                      (lambda (_%g9573995741%_)
                                                        (_%eq95507%_
                                                         _%c95738%_
                                                         _%g9573995741%_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp95850
                                                  _%sis-rhead95718%_
                                                  _%sis-tail95719%_))))
                                          (begin
                                            (let ((_g95849_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g95848_)
                                                         (##values-length
                                                          _g95848_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g95849_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g95849_)))
                                            (let ((_%sis-rh295744%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g95848_
                                                      0)))
                                                  (_%sis-tl295745%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g95848_
                                                      1))))
                                              (if (null? _%sis-rh295744%_)
                                                  (_%u95714%_
                                                   _%plrh95737%_
                                                   (cons _%c95738%_
                                                         _%pl-tail95717%_)
                                                   '()
                                                   _%sis-tl295745%_)
                                                  (_%u95714%_
                                                   _%plrh95737%_
                                                   _%pl-tail95717%_
                                                   (cdr _%sis-rh295744%_)
                                                   _%sis-tl295745%_)))))))))
                             (let ((_%try-match9572295759%_
                                    (lambda ()
                                      (if (pair? _%pl-rhead9572095729%_)
                                          (let ((_%tl9572695752%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%pl-rhead9572095729%_)))
                                                (_%hd9572595750%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%pl-rhead9572095729%_))))
                                            (let ((_%c95755%_ _%hd9572595750%_)
                                                  (_%plrh95757%_
                                                   _%tl9572695752%_))
                                              (_%K9572495747%_
                                               _%plrh95757%_
                                               _%c95755%_)))
                                          (_%E9572395733%_)))))
                               (if (null? _%pl-rhead9572095729%_)
                                   (_%K9572795763%_)
                                   (_%try-match9572295759%_))))))))
                    (_g95851_
                     (let ((_g95852_
                            (let ((__tmp95854 (reverse _%supers95501%_)))
                              (declare (not safe))
                              (append1! _%rpls95518%_ __tmp95854))))
                       #!void
                       _g95852_))
                    (_%hpls95520%_
                     (let ()
                       (declare (not safe))
                       (##map _%unsisr-rpl95519%_ _%rpls95518%_)))
                    (_%c3-select-next95521%_
                     (lambda (_%tails95662%_)
                       (let ((_%candidate?95668%_
                              (lambda (_%c95664%_)
                                (let ((__tmp95855
                                       (lambda (_%tail95666%_)
                                         (not (member _%c95664%_
                                                      (cdr _%tail95666%_)
                                                      _%eq95507%_)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp95855 _%tails95662%_)))))
                         (let _%loop95670%_ ((_%ts95672%_ _%tails95662%_))
                           (let* ((_%ts9567395683%_ _%ts95672%_)
                                  (_%else9567595691%_
                                   (lambda () (_%err95515%_)))
                                  (_%K9567795697%_
                                   (lambda (_%rts95694%_ _%c95695%_)
                                     (if (_%candidate?95668%_ _%c95695%_)
                                         _%c95695%_
                                         (_%loop95670%_ _%rts95694%_)))))
                             (if (pair? _%ts9567395683%_)
                                 (let ((_%hd9567895700%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%ts9567395683%_)))
                                       (_%tl9567995702%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%ts9567395683%_))))
                                   (if (pair? _%hd9567895700%_)
                                       (let* ((_%hd9568095705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd9567895700%_)))
                                              (_%c95708%_ _%hd9568095705%_)
                                              (_%rts95710%_ _%tl9567995702%_))
                                         (_%K9567795697%_
                                          _%rts95710%_
                                          _%c95708%_))
                                       (_%err95515%_)))
                                 (_%err95515%_)))))))
                    (_%remove-next!95522%_
                     (lambda (_%next95607%_ _%tails95608%_)
                       (let _%loop95610%_ ((_%t95612%_ _%tails95608%_))
                         (let* ((_%t9561395624%_ _%t95612%_)
                                (_%E9561695628%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%t9561395624%_
                                          '([])
                                          '([[head . tail] . more]))
                                   '#!void)))
                           (let ((_%K9562295659%_ (lambda () _%tails95608%_))
                                 (_%K9561795636%_
                                  (lambda (_%more95632%_
                                           _%tail95633%_
                                           _%head95634%_)
                                    (if (_%eq95507%_
                                         _%head95634%_
                                         _%next95607%_)
                                        (set-car! _%t95612%_ _%tail95633%_)
                                        '#!void)
                                    (_%loop95610%_ _%more95632%_))))
                             (let ((_%try-match9561595655%_
                                    (lambda ()
                                      (if (pair? _%t9561395624%_)
                                          (let ((_%tl9561995641%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%t9561395624%_)))
                                                (_%hd9561895639%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%t9561395624%_))))
                                            (if (pair? _%hd9561895639%_)
                                                (let ((_%tl9562195646%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd9561895639%_)))
                                                      (_%hd9562095644%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd9561895639%_))))
                                                  (let ((_%head95649%_
                                                         _%hd9562095644%_)
                                                        (_%tail95651%_
                                                         _%tl9562195646%_)
                                                        (_%more95653%_
                                                         _%tl9561995641%_))
                                                    (_%K9561795636%_
                                                     _%more95653%_
                                                     _%tail95651%_
                                                     _%head95649%_)))
                                                (_%E9561695628%_)))
                                          (_%E9561695628%_)))))
                               (if (null? _%t9561395624%_)
                                   (_%K9562295659%_)
                                   (_%try-match9561595655%_))))))))
                    (_%precedence-list95523%_
                     (if (null? _%supers95501%_)
                         (reverse _%rhead95500%_)
                         (if (null? (cdr _%supers95501%_))
                             (append-reverse _%rhead95500%_ (car _%pls95512%_))
                             (let _%c3loop95557%_ ((_%rhead95559%_
                                                    _%rhead95500%_)
                                                   (_%tails95560%_
                                                    _%hpls95520%_))
                               (let* ((_%tails95562%_
                                       (let ()
                                         (declare (not safe))
                                         (remove-nulls! _%tails95560%_)))
                                      (_%tails9556395573%_ _%tails95562%_)
                                      (_%else9556695584%_
                                       (lambda ()
                                         (let ((_%next95581%_
                                                (_%c3-select-next95521%_
                                                 _%tails95562%_)))
                                           (_%c3loop95557%_
                                            (cons _%next95581%_ _%rhead95559%_)
                                            (_%remove-next!95522%_
                                             _%next95581%_
                                             _%tails95562%_))))))
                                 (let ((_%K9557195604%_
                                        (lambda ()
                                          (append-reverse
                                           _%rhead95559%_
                                           _%sis95513%_)))
                                       (_%K9556895590%_
                                        (lambda (_%tail95588%_)
                                          (append-reverse
                                           _%rhead95559%_
                                           (append _%tail95588%_
                                                   _%sis95513%_)))))
                                   (let ((_%try-match9556595600%_
                                          (lambda ()
                                            (if (pair? _%tails9556395573%_)
                                                (let ((_%tl9557095595%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tails9556395573%_)))
                                                      (_%hd9556995593%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tails9556395573%_))))
                                                  (if (null? _%tl9557095595%_)
                                                      (let ((_%tail95598%_
                                                             _%hd9556995593%_))
                                                        (_%K9556895590%_
                                                         _%tail95598%_))
                                                      (_%else9556695584%_)))
                                                (_%else9556695584%_)))))
                                     (if (null? _%tails9556395573%_)
                                         (_%K9557195604%_)
                                         (_%try-match9556595600%_)))))))))
                    (_%super-struct95524%_
                     (let* ((_%sis9552595533%_ _%sis95513%_)
                            (_%else9552795541%_ (lambda () '#f))
                            (_%K9552995546%_ (lambda (_%s95544%_) _%s95544%_)))
                       (if (pair? _%sis9552595533%_)
                           (let* ((_%hd9553095549%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%sis9552595533%_)))
                                  (_%s95552%_ _%hd9553095549%_))
                             (_%K9552995546%_ _%s95552%_))
                           (_%else9552795541%_)))))
            (values _%precedence-list95523%_ _%super-struct95524%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords95801%_ . _%args95802%_)
        (apply c4-linearize__%
               _%@@keywords95801%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords95801%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords95801%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords95801%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords95801%_
                  'get-name:
                  absent-value))
               _%args95802%_)))
    (define c4-linearize
      (lambda _%args9548995808%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9548995808%_)))))
