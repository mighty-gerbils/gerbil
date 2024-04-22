(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1713631264)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords94445%_
               _%get-precedence-list9443994446%_
               _%struct?9444094448%_
               _%eq9444194450%_
               _%get-name9444294452%_
               _%rhead94454%_
               _%supers94455%_)
        (let* ((_%get-precedence-list94457%_
                (if (eq? _%get-precedence-list9443994446%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9443994446%_))
               (_%struct?94459%_
                (if (eq? _%struct?9444094448%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9444094448%_))
               (_%eq94461%_
                (if (eq? _%eq9444194450%_ absent-value) eq? _%eq9444194450%_))
               (_%get-name94463%_
                (if (eq? _%get-name9444294452%_ absent-value)
                    identity
                    _%get-name9444294452%_)))
          (letrec* ((_%pls94466%_
                     (map _%get-precedence-list94457%_ _%supers94455%_))
                    (_%sit94467%_ '())
                    (_%get-names94468%_
                     (lambda (_%lst94743%_)
                       (map _%get-name94463%_ _%lst94743%_)))
                    (_%err94469%_
                     (lambda _%a94741%_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (_%get-names94468%_ (reverse _%rhead94454%_))
                              'precedence-lists:
                              (let ()
                                (declare (not safe))
                                (##map _%get-names94468%_ _%pls94466%_))
                              'single-inheritance-tail:
                              (_%get-names94468%_ _%sit94467%_)
                              _%a94741%_)))
                    (_%same?94470%_
                     (lambda (_%lst194738%_ _%lst294739%_)
                       (if (let ((__tmp94791 (length _%lst194738%_))
                                 (__tmp94790 (length _%lst294739%_)))
                             (declare (not safe))
                             (##fx= __tmp94791 __tmp94790))
                           (let ()
                             (declare (not safe))
                             (andmap2 _%eq94461%_ _%lst194738%_ _%lst294739%_))
                           '#f)))
                    (_%merge-sit!94471%_
                     (lambda (_%sit294721%_)
                       (if (null? _%sit294721%_)
                           '#!void
                           (if (null? _%sit94467%_)
                               (set! _%sit94467%_ _%sit294721%_)
                               (let _%loop94726%_ ((_%t194728%_ _%sit94467%_)
                                                   (_%t294729%_ _%sit294721%_))
                                 (if (_%same?94470%_ _%t194728%_ _%sit294721%_)
                                     '#!void
                                     (if (_%same?94470%_
                                          _%t294729%_
                                          _%sit94467%_)
                                         (set! _%sit94467%_ _%sit294721%_)
                                         (if (or (null? _%t194728%_)
                                                 (null? _%t294729%_))
                                             (_%err94469%_
                                              'single-inheritance-incompatibility:
                                              (cons (_%get-names94468%_
                                                     _%sit94467%_)
                                                    (cons (_%get-names94468%_
                                                           _%sit294721%_)
                                                          '())))
                                             (_%loop94726%_
                                              (cdr _%t194728%_)
                                              (cdr _%t294729%_))))))))))
                    (_%rpls94472%_
                     (let ((__tmp94792
                            (lambda (_%pl94716%_)
                              (let ((_g94793_
                                     (let ()
                                       (declare (not safe))
                                       (append-reverse-until
                                        _%struct?94459%_
                                        _%pl94716%_
                                        '()))))
                                (begin
                                  (let ((_g94794_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g94793_)
                                               (##vector-length _g94793_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g94794_ 2)))
                                        (error "Context expects 2 values"
                                               _g94794_)))
                                  (let ((_%tl94718%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g94793_ 0)))
                                        (_%rh94719%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g94793_ 1))))
                                    (begin
                                      (_%merge-sit!94471%_ _%tl94718%_)
                                      _%rh94719%_)))))))
                       (declare (not safe))
                       (##map __tmp94792 _%pls94466%_)))
                    (_%unsitr-rpl94473%_
                     (lambda (_%rpl94662%_)
                       (let _%u94664%_ ((_%pl-rhead94666%_ _%rpl94662%_)
                                        (_%pl-tail94667%_ '())
                                        (_%sit-rhead94668%_
                                         (reverse _%sit94467%_))
                                        (_%sit-tail94669%_ '()))
                         (let* ((_%pl-rhead9467094679%_ _%pl-rhead94666%_)
                                (_%E9467394683%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%pl-rhead9467094679%_
                                          '([])
                                          '([c . plrh]))
                                   '#!void)))
                           (let ((_%K9467794713%_ (lambda () _%pl-tail94667%_))
                                 (_%K9467494697%_
                                  (lambda (_%plrh94687%_ _%c94688%_)
                                    (if (member _%c94688%_
                                                _%sit-tail94669%_
                                                _%eq94461%_)
                                        (_%err94469%_
                                         'precedence-list-head:
                                         (_%get-names94468%_
                                          (reverse _%pl-rhead94666%_))
                                         'precedence-list-tail:
                                         (_%get-names94468%_ _%pl-tail94667%_)
                                         'single-inheritance-head:
                                         (_%get-names94468%_
                                          (reverse _%sit-rhead94668%_))
                                         'single-inheritance-tail:
                                         (_%get-names94468%_ _%sit-tail94669%_)
                                         'super-out-of-order-vs-single-inheritance-tail:
                                         (_%get-name94463%_ _%c94688%_))
                                        (let ((_g94795_
                                               (let ((__tmp94797
                                                      (lambda (_%g9468994691%_)
                                                        (_%eq94461%_
                                                         _%c94688%_
                                                         _%g9468994691%_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp94797
                                                  _%sit-rhead94668%_
                                                  _%sit-tail94669%_))))
                                          (begin
                                            (let ((_g94796_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g94795_)
                                                         (##vector-length
                                                          _g94795_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g94796_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g94796_)))
                                            (let ((_%sit-rh294694%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g94795_
                                                      0)))
                                                  (_%sit-tl294695%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g94795_
                                                      1))))
                                              (if (null? _%sit-rh294694%_)
                                                  (_%u94664%_
                                                   _%plrh94687%_
                                                   (cons _%c94688%_
                                                         _%pl-tail94667%_)
                                                   '()
                                                   _%sit-tl294695%_)
                                                  (_%u94664%_
                                                   _%plrh94687%_
                                                   _%pl-tail94667%_
                                                   (cdr _%sit-rh294694%_)
                                                   _%sit-tl294695%_)))))))))
                             (let ((_%try-match9467294709%_
                                    (lambda ()
                                      (if (pair? _%pl-rhead9467094679%_)
                                          (let ((_%tl9467694702%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%pl-rhead9467094679%_)))
                                                (_%hd9467594700%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%pl-rhead9467094679%_))))
                                            (let ((_%c94705%_ _%hd9467594700%_)
                                                  (_%plrh94707%_
                                                   _%tl9467694702%_))
                                              (_%K9467494697%_
                                               _%plrh94707%_
                                               _%c94705%_)))
                                          (_%E9467394683%_)))))
                               (if (null? _%pl-rhead9467094679%_)
                                   (_%K9467794713%_)
                                   (_%try-match9467294709%_))))))))
                    (_g94798_
                     (let ((_g94799_
                            (let ((__tmp94801 (reverse _%supers94455%_)))
                              (declare (not safe))
                              (append1! _%rpls94472%_ __tmp94801))))
                       #!void
                       _g94799_))
                    (_g94802_
                     (let ((_g94803_
                            (set! _%pls94466%_
                                  (let ()
                                    (declare (not safe))
                                    (##map _%unsitr-rpl94473%_
                                           _%rpls94472%_)))))
                       #!void
                       _g94803_))
                    (_%c3-select-next94474%_
                     (lambda (_%tails94612%_)
                       (let ((_%candidate?94618%_
                              (lambda (_%c94614%_)
                                (let ((__tmp94805
                                       (lambda (_%tail94616%_)
                                         (not (member _%c94614%_
                                                      (cdr _%tail94616%_)
                                                      _%eq94461%_)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp94805 _%tails94612%_)))))
                         (let _%loop94620%_ ((_%ts94622%_ _%tails94612%_))
                           (let* ((_%ts9462394633%_ _%ts94622%_)
                                  (_%else9462594641%_
                                   (lambda () (_%err94469%_)))
                                  (_%K9462794647%_
                                   (lambda (_%rts94644%_ _%c94645%_)
                                     (if (_%candidate?94618%_ _%c94645%_)
                                         _%c94645%_
                                         (_%loop94620%_ _%rts94644%_)))))
                             (if (pair? _%ts9462394633%_)
                                 (let ((_%hd9462894650%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%ts9462394633%_)))
                                       (_%tl9462994652%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%ts9462394633%_))))
                                   (if (pair? _%hd9462894650%_)
                                       (let* ((_%hd9463094655%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd9462894650%_)))
                                              (_%c94658%_ _%hd9463094655%_)
                                              (_%rts94660%_ _%tl9462994652%_))
                                         (_%K9462794647%_
                                          _%rts94660%_
                                          _%c94658%_))
                                       (_%err94469%_)))
                                 (_%err94469%_)))))))
                    (_%remove-next!94475%_
                     (lambda (_%next94557%_ _%tails94558%_)
                       (let _%loop94560%_ ((_%t94562%_ _%tails94558%_))
                         (let* ((_%t9456394574%_ _%t94562%_)
                                (_%E9456694578%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%t9456394574%_
                                          '([])
                                          '([[head . tail] . more]))
                                   '#!void)))
                           (let ((_%K9457294609%_ (lambda () _%tails94558%_))
                                 (_%K9456794586%_
                                  (lambda (_%more94582%_
                                           _%tail94583%_
                                           _%head94584%_)
                                    (if (_%eq94461%_
                                         _%head94584%_
                                         _%next94557%_)
                                        (set-car! _%t94562%_ _%tail94583%_)
                                        '#!void)
                                    (_%loop94560%_ _%more94582%_))))
                             (let ((_%try-match9456594605%_
                                    (lambda ()
                                      (if (pair? _%t9456394574%_)
                                          (let ((_%tl9456994591%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%t9456394574%_)))
                                                (_%hd9456894589%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%t9456394574%_))))
                                            (if (pair? _%hd9456894589%_)
                                                (let ((_%tl9457194596%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd9456894589%_)))
                                                      (_%hd9457094594%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd9456894589%_))))
                                                  (let ((_%head94599%_
                                                         _%hd9457094594%_)
                                                        (_%tail94601%_
                                                         _%tl9457194596%_)
                                                        (_%more94603%_
                                                         _%tl9456994591%_))
                                                    (_%K9456794586%_
                                                     _%more94603%_
                                                     _%tail94601%_
                                                     _%head94599%_)))
                                                (_%E9456694578%_)))
                                          (_%E9456694578%_)))))
                               (if (null? _%t9456394574%_)
                                   (_%K9457294609%_)
                                   (_%try-match9456594605%_))))))))
                    (_%precedence-list94476%_
                     (let _%c3loop94507%_ ((_%rhead94509%_ _%rhead94454%_)
                                           (_%tails94510%_ _%pls94466%_))
                       (let* ((_%tails94512%_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _%tails94510%_)))
                              (_%tails9451394523%_ _%tails94512%_)
                              (_%else9451694534%_
                               (lambda ()
                                 (let ((_%next94531%_
                                        (_%c3-select-next94474%_
                                         _%tails94512%_)))
                                   (_%c3loop94507%_
                                    (cons _%next94531%_ _%rhead94509%_)
                                    (_%remove-next!94475%_
                                     _%next94531%_
                                     _%tails94512%_))))))
                         (let ((_%K9452194554%_
                                (lambda ()
                                  (append-reverse
                                   _%rhead94509%_
                                   _%sit94467%_)))
                               (_%K9451894540%_
                                (lambda (_%tail94538%_)
                                  (append-reverse
                                   _%rhead94509%_
                                   (append _%tail94538%_ _%sit94467%_)))))
                           (let ((_%try-match9451594550%_
                                  (lambda ()
                                    (if (pair? _%tails9451394523%_)
                                        (let ((_%tl9452094545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tails9451394523%_)))
                                              (_%hd9451994543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tails9451394523%_))))
                                          (if (null? _%tl9452094545%_)
                                              (let ((_%tail94548%_
                                                     _%hd9451994543%_))
                                                (_%K9451894540%_
                                                 _%tail94548%_))
                                              (_%else9451694534%_)))
                                        (_%else9451694534%_)))))
                             (if (null? _%tails9451394523%_)
                                 (_%K9452194554%_)
                                 (_%try-match9451594550%_)))))))
                    (_%super-struct94477%_
                     (let* ((_%sit9447894486%_ _%sit94467%_)
                            (_%else9448094494%_ (lambda () '#f))
                            (_%K9448294499%_ (lambda (_%s94497%_) _%s94497%_)))
                       (if (pair? _%sit9447894486%_)
                           (let* ((_%hd9448394502%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%sit9447894486%_)))
                                  (_%s94505%_ _%hd9448394502%_))
                             (_%K9448294499%_ _%s94505%_))
                           (_%else9448094494%_)))))
            (values _%precedence-list94476%_ _%super-struct94477%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords94748%_ . _%args94749%_)
        (apply c4-linearize__%
               _%@@keywords94748%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords94748%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords94748%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords94748%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords94748%_
                  'get-name:
                  absent-value))
               _%args94749%_)))
    (define c4-linearize
      (lambda _%args9444394755%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9444394755%_)))))
