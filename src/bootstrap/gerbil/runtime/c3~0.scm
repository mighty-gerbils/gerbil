(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1734357960)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords95543%_
               _%get-precedence-list9553795544%_
               _%struct?9553895546%_
               _%eq9553995548%_
               _%get-name9554095550%_
               _%rhead95552%_
               _%supers95553%_)
        (let* ((_%get-precedence-list95555%_
                (if (eq? _%get-precedence-list9553795544%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9553795544%_))
               (_%struct?95557%_
                (if (eq? _%struct?9553895546%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9553895546%_))
               (_%eq95559%_
                (if (eq? _%eq9553995548%_ absent-value) eq? _%eq9553995548%_))
               (_%get-name95561%_
                (if (eq? _%get-name9554095550%_ absent-value)
                    identity
                    _%get-name9554095550%_)))
          (letrec* ((_%pls95564%_
                     (map _%get-precedence-list95555%_ _%supers95553%_))
                    (_%sis95565%_ '())
                    (_%get-names95566%_
                     (lambda (_%lst95848%_)
                       (map _%get-name95561%_ _%lst95848%_)))
                    (_%err95567%_
                     (lambda _%a95846%_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (_%get-names95566%_ (reverse _%rhead95552%_))
                              'precedence-lists:
                              (let ()
                                (declare (not safe))
                                (##map _%get-names95566%_ _%pls95564%_))
                              'single-inheritance-suffix:
                              (_%get-names95566%_ _%sis95565%_)
                              _%a95846%_)))
                    (_%eqlist?95568%_
                     (lambda (_%l195840%_ _%l295841%_)
                       (let ((_%$e95843%_ (eq? _%l195840%_ _%l295841%_)))
                         (if _%$e95843%_
                             _%$e95843%_
                             (if (let ()
                                   (declare (not safe))
                                   (andmap2 _%eq95559%_
                                            _%l195840%_
                                            _%l295841%_))
                                 (let ((__tmp95896 (length _%l195840%_))
                                       (__tmp95895 (length _%l295841%_)))
                                   (declare (not safe))
                                   (##fx= __tmp95896 __tmp95895))
                                 '#f)))))
                    (_%merge-sis!95569%_
                     (lambda (_%sis295823%_)
                       (if (null? _%sis295823%_)
                           '#!void
                           (if (null? _%sis95565%_)
                               (set! _%sis95565%_ _%sis295823%_)
                               (let _%loop95828%_ ((_%t195830%_ _%sis95565%_)
                                                   (_%t295831%_ _%sis295823%_))
                                 (if (_%eqlist?95568%_
                                      _%t195830%_
                                      _%sis295823%_)
                                     '#!void
                                     (if (_%eqlist?95568%_
                                          _%t295831%_
                                          _%sis95565%_)
                                         (set! _%sis95565%_ _%sis295823%_)
                                         (if (or (null? _%t195830%_)
                                                 (null? _%t295831%_))
                                             (_%err95567%_
                                              'struct-incompatibility:
                                              (cons (_%get-names95566%_
                                                     _%sis95565%_)
                                                    (cons (_%get-names95566%_
                                                           _%sis295823%_)
                                                          '())))
                                             (_%loop95828%_
                                              (cdr _%t195830%_)
                                              (cdr _%t295831%_))))))))))
                    (_%rpls95570%_
                     (let ((__tmp95897
                            (lambda (_%pl95818%_)
                              (let ((_g95898_
                                     (let ()
                                       (declare (not safe))
                                       (append-reverse-until
                                        _%struct?95557%_
                                        _%pl95818%_
                                        '()))))
                                (begin
                                  (let ((_g95899_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g95898_)
                                               (##values-length _g95898_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g95899_ 2)))
                                        (error "Context expects 2 values"
                                               _g95899_)))
                                  (let ((_%tl95820%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g95898_ 0)))
                                        (_%rh95821%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g95898_ 1))))
                                    (begin
                                      (_%merge-sis!95569%_ _%tl95820%_)
                                      _%rh95821%_)))))))
                       (declare (not safe))
                       (##map __tmp95897 _%pls95564%_)))
                    (_%unsisr-rpl95571%_
                     (lambda (_%rpl95764%_)
                       (let _%u95766%_ ((_%pl-rhead95768%_ _%rpl95764%_)
                                        (_%pl-tail95769%_ '())
                                        (_%sis-rhead95770%_
                                         (reverse _%sis95565%_))
                                        (_%sis-tail95771%_ '()))
                         (let* ((_%pl-rhead9577295781%_ _%pl-rhead95768%_)
                                (_%E9577595785%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%pl-rhead9577295781%_
                                          '([])
                                          '([c . plrh]))
                                   '#!void)))
                           (let ((_%K9577995815%_ (lambda () _%pl-tail95769%_))
                                 (_%K9577695799%_
                                  (lambda (_%plrh95789%_ _%c95790%_)
                                    (if (member _%c95790%_
                                                _%sis-tail95771%_
                                                _%eq95559%_)
                                        (_%err95567%_
                                         'precedence-list-head:
                                         (_%get-names95566%_
                                          (reverse _%pl-rhead95768%_))
                                         'precedence-list-tail:
                                         (_%get-names95566%_ _%pl-tail95769%_)
                                         'single-inheritance-head:
                                         (_%get-names95566%_
                                          (reverse _%sis-rhead95770%_))
                                         'single-inheritance-tail:
                                         (_%get-names95566%_ _%sis-tail95771%_)
                                         'super-out-of-order-vs-single-inheritance-tail:
                                         (_%get-name95561%_ _%c95790%_))
                                        (let ((_g95900_
                                               (let ((__tmp95902
                                                      (lambda (_%g9579195793%_)
                                                        (_%eq95559%_
                                                         _%c95790%_
                                                         _%g9579195793%_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp95902
                                                  _%sis-rhead95770%_
                                                  _%sis-tail95771%_))))
                                          (begin
                                            (let ((_g95901_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g95900_)
                                                         (##values-length
                                                          _g95900_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g95901_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g95901_)))
                                            (let ((_%sis-rh295796%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g95900_
                                                      0)))
                                                  (_%sis-tl295797%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g95900_
                                                      1))))
                                              (if (null? _%sis-rh295796%_)
                                                  (_%u95766%_
                                                   _%plrh95789%_
                                                   (cons _%c95790%_
                                                         _%pl-tail95769%_)
                                                   '()
                                                   _%sis-tl295797%_)
                                                  (_%u95766%_
                                                   _%plrh95789%_
                                                   _%pl-tail95769%_
                                                   (cdr _%sis-rh295796%_)
                                                   _%sis-tl295797%_)))))))))
                             (let ((_%try-match9577495811%_
                                    (lambda ()
                                      (if (pair? _%pl-rhead9577295781%_)
                                          (let ((_%tl9577895804%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%pl-rhead9577295781%_)))
                                                (_%hd9577795802%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%pl-rhead9577295781%_))))
                                            (let ((_%c95807%_ _%hd9577795802%_)
                                                  (_%plrh95809%_
                                                   _%tl9577895804%_))
                                              (_%K9577695799%_
                                               _%plrh95809%_
                                               _%c95807%_)))
                                          (_%E9577595785%_)))))
                               (if (null? _%pl-rhead9577295781%_)
                                   (_%K9577995815%_)
                                   (_%try-match9577495811%_))))))))
                    (_g95903_
                     (let ((_g95904_
                            (let ((__tmp95906 (reverse _%supers95553%_)))
                              (declare (not safe))
                              (append1! _%rpls95570%_ __tmp95906))))
                       #!void
                       _g95904_))
                    (_%hpls95572%_
                     (let ()
                       (declare (not safe))
                       (##map _%unsisr-rpl95571%_ _%rpls95570%_)))
                    (_%c3-select-next95573%_
                     (lambda (_%tails95714%_)
                       (let ((_%candidate?95720%_
                              (lambda (_%c95716%_)
                                (let ((__tmp95907
                                       (lambda (_%tail95718%_)
                                         (not (member _%c95716%_
                                                      (cdr _%tail95718%_)
                                                      _%eq95559%_)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp95907 _%tails95714%_)))))
                         (let _%loop95722%_ ((_%ts95724%_ _%tails95714%_))
                           (let* ((_%ts9572595735%_ _%ts95724%_)
                                  (_%else9572795743%_
                                   (lambda () (_%err95567%_)))
                                  (_%K9572995749%_
                                   (lambda (_%rts95746%_ _%c95747%_)
                                     (if (_%candidate?95720%_ _%c95747%_)
                                         _%c95747%_
                                         (_%loop95722%_ _%rts95746%_)))))
                             (if (pair? _%ts9572595735%_)
                                 (let ((_%hd9573095752%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%ts9572595735%_)))
                                       (_%tl9573195754%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%ts9572595735%_))))
                                   (if (pair? _%hd9573095752%_)
                                       (let* ((_%hd9573295757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd9573095752%_)))
                                              (_%c95760%_ _%hd9573295757%_)
                                              (_%rts95762%_ _%tl9573195754%_))
                                         (_%K9572995749%_
                                          _%rts95762%_
                                          _%c95760%_))
                                       (_%err95567%_)))
                                 (_%err95567%_)))))))
                    (_%remove-next!95574%_
                     (lambda (_%next95659%_ _%tails95660%_)
                       (let _%loop95662%_ ((_%t95664%_ _%tails95660%_))
                         (let* ((_%t9566595676%_ _%t95664%_)
                                (_%E9566895680%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%t9566595676%_
                                          '([])
                                          '([[head . tail] . more]))
                                   '#!void)))
                           (let ((_%K9567495711%_ (lambda () _%tails95660%_))
                                 (_%K9566995688%_
                                  (lambda (_%more95684%_
                                           _%tail95685%_
                                           _%head95686%_)
                                    (if (_%eq95559%_
                                         _%head95686%_
                                         _%next95659%_)
                                        (set-car! _%t95664%_ _%tail95685%_)
                                        '#!void)
                                    (_%loop95662%_ _%more95684%_))))
                             (let ((_%try-match9566795707%_
                                    (lambda ()
                                      (if (pair? _%t9566595676%_)
                                          (let ((_%tl9567195693%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%t9566595676%_)))
                                                (_%hd9567095691%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%t9566595676%_))))
                                            (if (pair? _%hd9567095691%_)
                                                (let ((_%tl9567395698%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd9567095691%_)))
                                                      (_%hd9567295696%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd9567095691%_))))
                                                  (let ((_%head95701%_
                                                         _%hd9567295696%_)
                                                        (_%tail95703%_
                                                         _%tl9567395698%_)
                                                        (_%more95705%_
                                                         _%tl9567195693%_))
                                                    (_%K9566995688%_
                                                     _%more95705%_
                                                     _%tail95703%_
                                                     _%head95701%_)))
                                                (_%E9566895680%_)))
                                          (_%E9566895680%_)))))
                               (if (null? _%t9566595676%_)
                                   (_%K9567495711%_)
                                   (_%try-match9566795707%_))))))))
                    (_%precedence-list95575%_
                     (if (null? _%supers95553%_)
                         (reverse _%rhead95552%_)
                         (if (null? (cdr _%supers95553%_))
                             (append-reverse _%rhead95552%_ (car _%pls95564%_))
                             (let _%c3loop95609%_ ((_%rhead95611%_
                                                    _%rhead95552%_)
                                                   (_%tails95612%_
                                                    _%hpls95572%_))
                               (let* ((_%tails95614%_
                                       (let ()
                                         (declare (not safe))
                                         (remove-nulls! _%tails95612%_)))
                                      (_%tails9561595625%_ _%tails95614%_)
                                      (_%else9561895636%_
                                       (lambda ()
                                         (let ((_%next95633%_
                                                (_%c3-select-next95573%_
                                                 _%tails95614%_)))
                                           (_%c3loop95609%_
                                            (cons _%next95633%_ _%rhead95611%_)
                                            (_%remove-next!95574%_
                                             _%next95633%_
                                             _%tails95614%_))))))
                                 (let ((_%K9562395656%_
                                        (lambda ()
                                          (append-reverse
                                           _%rhead95611%_
                                           _%sis95565%_)))
                                       (_%K9562095642%_
                                        (lambda (_%tail95640%_)
                                          (append-reverse
                                           _%rhead95611%_
                                           (append _%tail95640%_
                                                   _%sis95565%_)))))
                                   (let ((_%try-match9561795652%_
                                          (lambda ()
                                            (if (pair? _%tails9561595625%_)
                                                (let ((_%tl9562295647%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tails9561595625%_)))
                                                      (_%hd9562195645%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tails9561595625%_))))
                                                  (if (null? _%tl9562295647%_)
                                                      (let ((_%tail95650%_
                                                             _%hd9562195645%_))
                                                        (_%K9562095642%_
                                                         _%tail95650%_))
                                                      (_%else9561895636%_)))
                                                (_%else9561895636%_)))))
                                     (if (null? _%tails9561595625%_)
                                         (_%K9562395656%_)
                                         (_%try-match9561795652%_)))))))))
                    (_%super-struct95576%_
                     (let* ((_%sis9557795585%_ _%sis95565%_)
                            (_%else9557995593%_ (lambda () '#f))
                            (_%K9558195598%_ (lambda (_%s95596%_) _%s95596%_)))
                       (if (pair? _%sis9557795585%_)
                           (let* ((_%hd9558295601%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%sis9557795585%_)))
                                  (_%s95604%_ _%hd9558295601%_))
                             (_%K9558195598%_ _%s95604%_))
                           (_%else9557995593%_)))))
            (values _%precedence-list95575%_ _%super-struct95576%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords95853%_ . _%args95854%_)
        (apply c4-linearize__%
               _%@@keywords95853%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords95853%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords95853%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords95853%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords95853%_
                  'get-name:
                  absent-value))
               _%args95854%_)))
    (define c4-linearize
      (lambda _%args9554195860%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9554195860%_)))))
