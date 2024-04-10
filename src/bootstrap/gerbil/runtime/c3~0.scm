(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1712786277)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords92648%_
               _%get-precedence-list9264292649%_
               _%struct?9264392651%_
               _%eq9264492653%_
               _%get-name9264592655%_
               _%rhead92657%_
               _%supers92658%_)
        (let* ((_%get-precedence-list92660%_
                (if (eq? _%get-precedence-list9264292649%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9264292649%_))
               (_%struct?92662%_
                (if (eq? _%struct?9264392651%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9264392651%_))
               (_%eq92664%_
                (if (eq? _%eq9264492653%_ absent-value) eq? _%eq9264492653%_))
               (_%get-name92666%_
                (if (eq? _%get-name9264592655%_ absent-value)
                    identity
                    _%get-name9264592655%_)))
          (letrec* ((_%pls92669%_
                     (map _%get-precedence-list92660%_ _%supers92658%_))
                    (_%sit92670%_ '())
                    (_%get-names92671%_
                     (lambda (_%lst92946%_)
                       (map _%get-name92666%_ _%lst92946%_)))
                    (_%err92672%_
                     (lambda _%a92944%_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (_%get-names92671%_ (reverse _%rhead92657%_))
                              'precedence-lists:
                              (let ()
                                (declare (not safe))
                                (##map _%get-names92671%_ _%pls92669%_))
                              'single-inheritance-tail:
                              (_%get-names92671%_ _%sit92670%_)
                              _%a92944%_)))
                    (_%same?92673%_
                     (lambda (_%lst192941%_ _%lst292942%_)
                       (if (let ((__tmp92994 (length _%lst192941%_))
                                 (__tmp92993 (length _%lst292942%_)))
                             (declare (not safe))
                             (##fx= __tmp92994 __tmp92993))
                           (let ()
                             (declare (not safe))
                             (andmap2 _%eq92664%_ _%lst192941%_ _%lst292942%_))
                           '#f)))
                    (_%merge-sit!92674%_
                     (lambda (_%sit292924%_)
                       (if (null? _%sit292924%_)
                           '#!void
                           (if (null? _%sit92670%_)
                               (set! _%sit92670%_ _%sit292924%_)
                               (let _%loop92929%_ ((_%t192931%_ _%sit92670%_)
                                                   (_%t292932%_ _%sit292924%_))
                                 (if (_%same?92673%_ _%t192931%_ _%sit292924%_)
                                     '#!void
                                     (if (_%same?92673%_
                                          _%t292932%_
                                          _%sit92670%_)
                                         (set! _%sit92670%_ _%sit292924%_)
                                         (if (or (null? _%t192931%_)
                                                 (null? _%t292932%_))
                                             (_%err92672%_
                                              'single-inheritance-incompatibility:
                                              (cons (_%get-names92671%_
                                                     _%sit92670%_)
                                                    (cons (_%get-names92671%_
                                                           _%sit292924%_)
                                                          '())))
                                             (_%loop92929%_
                                              (cdr _%t192931%_)
                                              (cdr _%t292932%_))))))))))
                    (_%rpls92675%_
                     (let ((__tmp92995
                            (lambda (_%pl92919%_)
                              (let ((_g92996_
                                     (let ()
                                       (declare (not safe))
                                       (append-reverse-until
                                        _%struct?92662%_
                                        _%pl92919%_
                                        '()))))
                                (begin
                                  (let ((_g92997_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g92996_)
                                               (##vector-length _g92996_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g92997_ 2)))
                                        (error "Context expects 2 values"
                                               _g92997_)))
                                  (let ((_%tl92921%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g92996_ 0)))
                                        (_%rh92922%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g92996_ 1))))
                                    (begin
                                      (_%merge-sit!92674%_ _%tl92921%_)
                                      _%rh92922%_)))))))
                       (declare (not safe))
                       (##map __tmp92995 _%pls92669%_)))
                    (_%unsitr-rpl92676%_
                     (lambda (_%rpl92865%_)
                       (let _%u92867%_ ((_%pl-rhead92869%_ _%rpl92865%_)
                                        (_%pl-tail92870%_ '())
                                        (_%sit-rhead92871%_
                                         (reverse _%sit92670%_))
                                        (_%sit-tail92872%_ '()))
                         (let* ((_%pl-rhead9287392882%_ _%pl-rhead92869%_)
                                (_%E9287692886%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%pl-rhead9287392882%_
                                          '([])
                                          '([c . plrh]))
                                   '#!void)))
                           (let ((_%K9288092916%_ (lambda () _%pl-tail92870%_))
                                 (_%K9287792900%_
                                  (lambda (_%plrh92890%_ _%c92891%_)
                                    (if (member _%c92891%_
                                                _%sit-tail92872%_
                                                _%eq92664%_)
                                        (_%err92672%_
                                         'precedence-list-head:
                                         (_%get-names92671%_
                                          (reverse _%pl-rhead92869%_))
                                         'precedence-list-tail:
                                         (_%get-names92671%_ _%pl-tail92870%_)
                                         'single-inheritance-head:
                                         (_%get-names92671%_
                                          (reverse _%sit-rhead92871%_))
                                         'single-inheritance-tail:
                                         (_%get-names92671%_ _%sit-tail92872%_)
                                         'super-out-of-order-vs-single-inheritance-tail:
                                         (_%get-name92666%_ _%c92891%_))
                                        (let ((_g92998_
                                               (let ((__tmp93000
                                                      (lambda (_%g9289292894%_)
                                                        (_%eq92664%_
                                                         _%c92891%_
                                                         _%g9289292894%_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp93000
                                                  _%sit-rhead92871%_
                                                  _%sit-tail92872%_))))
                                          (begin
                                            (let ((_g92999_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g92998_)
                                                         (##vector-length
                                                          _g92998_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g92999_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g92999_)))
                                            (let ((_%sit-rh292897%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g92998_
                                                      0)))
                                                  (_%sit-tl292898%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g92998_
                                                      1))))
                                              (if (null? _%sit-rh292897%_)
                                                  (_%u92867%_
                                                   _%plrh92890%_
                                                   (cons _%c92891%_
                                                         _%pl-tail92870%_)
                                                   '()
                                                   _%sit-tl292898%_)
                                                  (_%u92867%_
                                                   _%plrh92890%_
                                                   _%pl-tail92870%_
                                                   (cdr _%sit-rh292897%_)
                                                   _%sit-tl292898%_)))))))))
                             (let ((_%try-match9287592912%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%pl-rhead9287392882%_))
                                          (let ((_%tl9287992905%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%pl-rhead9287392882%_)))
                                                (_%hd9287892903%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%pl-rhead9287392882%_))))
                                            (let ((_%c92908%_ _%hd9287892903%_)
                                                  (_%plrh92910%_
                                                   _%tl9287992905%_))
                                              (_%K9287792900%_
                                               _%plrh92910%_
                                               _%c92908%_)))
                                          (_%E9287692886%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%pl-rhead9287392882%_))
                                   (_%K9288092916%_)
                                   (_%try-match9287592912%_))))))))
                    (_g93001_
                     (let ((_g93002_
                            (let ((__tmp93004 (reverse _%supers92658%_)))
                              (declare (not safe))
                              (append1! _%rpls92675%_ __tmp93004))))
                       #!void
                       _g93002_))
                    (_g93005_
                     (let ((_g93006_
                            (set! _%pls92669%_
                                  (let ()
                                    (declare (not safe))
                                    (##map _%unsitr-rpl92676%_
                                           _%rpls92675%_)))))
                       #!void
                       _g93006_))
                    (_%c3-select-next92677%_
                     (lambda (_%tails92815%_)
                       (let ((_%candidate?92821%_
                              (lambda (_%c92817%_)
                                (let ((__tmp93008
                                       (lambda (_%tail92819%_)
                                         (not (member _%c92817%_
                                                      (cdr _%tail92819%_)
                                                      _%eq92664%_)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp93008 _%tails92815%_)))))
                         (let _%loop92823%_ ((_%ts92825%_ _%tails92815%_))
                           (let* ((_%ts9282692836%_ _%ts92825%_)
                                  (_%else9282892844%_
                                   (lambda () (_%err92672%_)))
                                  (_%K9283092850%_
                                   (lambda (_%rts92847%_ _%c92848%_)
                                     (if (_%candidate?92821%_ _%c92848%_)
                                         _%c92848%_
                                         (_%loop92823%_ _%rts92847%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%ts9282692836%_))
                                 (let ((_%hd9283192853%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%ts9282692836%_)))
                                       (_%tl9283292855%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%ts9282692836%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%hd9283192853%_))
                                       (let* ((_%hd9283392858%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd9283192853%_)))
                                              (_%c92861%_ _%hd9283392858%_)
                                              (_%rts92863%_ _%tl9283292855%_))
                                         (_%K9283092850%_
                                          _%rts92863%_
                                          _%c92861%_))
                                       (_%err92672%_)))
                                 (_%err92672%_)))))))
                    (_%remove-next!92678%_
                     (lambda (_%next92760%_ _%tails92761%_)
                       (let _%loop92763%_ ((_%t92765%_ _%tails92761%_))
                         (let* ((_%t9276692777%_ _%t92765%_)
                                (_%E9276992781%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%t9276692777%_
                                          '([])
                                          '([[head . tail] . more]))
                                   '#!void)))
                           (let ((_%K9277592812%_ (lambda () _%tails92761%_))
                                 (_%K9277092789%_
                                  (lambda (_%more92785%_
                                           _%tail92786%_
                                           _%head92787%_)
                                    (if (_%eq92664%_
                                         _%head92787%_
                                         _%next92760%_)
                                        (set-car! _%t92765%_ _%tail92786%_)
                                        '#!void)
                                    (_%loop92763%_ _%more92785%_))))
                             (let ((_%try-match9276892808%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%t9276692777%_))
                                          (let ((_%tl9277292794%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%t9276692777%_)))
                                                (_%hd9277192792%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%t9276692777%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd9277192792%_))
                                                (let ((_%tl9277492799%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd9277192792%_)))
                                                      (_%hd9277392797%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd9277192792%_))))
                                                  (let ((_%head92802%_
                                                         _%hd9277392797%_)
                                                        (_%tail92804%_
                                                         _%tl9277492799%_)
                                                        (_%more92806%_
                                                         _%tl9277292794%_))
                                                    (_%K9277092789%_
                                                     _%more92806%_
                                                     _%tail92804%_
                                                     _%head92802%_)))
                                                (_%E9276992781%_)))
                                          (_%E9276992781%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%t9276692777%_))
                                   (_%K9277592812%_)
                                   (_%try-match9276892808%_))))))))
                    (_%precedence-list92679%_
                     (let _%c3loop92710%_ ((_%rhead92712%_ _%rhead92657%_)
                                           (_%tails92713%_ _%pls92669%_))
                       (let* ((_%tails92715%_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _%tails92713%_)))
                              (_%tails9271692726%_ _%tails92715%_)
                              (_%else9271992737%_
                               (lambda ()
                                 (let ((_%next92734%_
                                        (_%c3-select-next92677%_
                                         _%tails92715%_)))
                                   (_%c3loop92710%_
                                    (cons _%next92734%_ _%rhead92712%_)
                                    (_%remove-next!92678%_
                                     _%next92734%_
                                     _%tails92715%_))))))
                         (let ((_%K9272492757%_
                                (lambda ()
                                  (append-reverse
                                   _%rhead92712%_
                                   _%sit92670%_)))
                               (_%K9272192743%_
                                (lambda (_%tail92741%_)
                                  (append-reverse
                                   _%rhead92712%_
                                   (append _%tail92741%_ _%sit92670%_)))))
                           (let ((_%try-match9271892753%_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tails9271692726%_))
                                        (let ((_%tl9272392748%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tails9271692726%_)))
                                              (_%hd9272292746%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tails9271692726%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl9272392748%_))
                                              (let ((_%tail92751%_
                                                     _%hd9272292746%_))
                                                (_%K9272192743%_
                                                 _%tail92751%_))
                                              (_%else9271992737%_)))
                                        (_%else9271992737%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tails9271692726%_))
                                 (_%K9272492757%_)
                                 (_%try-match9271892753%_)))))))
                    (_%super-struct92680%_
                     (let* ((_%sit9268192689%_ _%sit92670%_)
                            (_%else9268392697%_ (lambda () '#f))
                            (_%K9268592702%_ (lambda (_%s92700%_) _%s92700%_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%sit9268192689%_))
                           (let* ((_%hd9268692705%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%sit9268192689%_)))
                                  (_%s92708%_ _%hd9268692705%_))
                             (_%K9268592702%_ _%s92708%_))
                           (_%else9268392697%_)))))
            (values _%precedence-list92679%_ _%super-struct92680%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords92951%_ . _%args92952%_)
        (apply c4-linearize__%
               _%@@keywords92951%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords92951%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords92951%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords92951%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords92951%_
                  'get-name:
                  absent-value))
               _%args92952%_)))
    (define c4-linearize
      (lambda _%args9264692958%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9264692958%_)))))
