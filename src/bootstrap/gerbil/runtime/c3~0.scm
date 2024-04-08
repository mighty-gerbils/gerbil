(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1712573429)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords90784%_
               _%get-precedence-list9077890785%_
               _%struct?9077990787%_
               _%eq9078090789%_
               _%get-name9078190791%_
               _%rhead90793%_
               _%supers90794%_)
        (let* ((_%get-precedence-list90796%_
                (if (eq? _%get-precedence-list9077890785%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9077890785%_))
               (_%struct?90798%_
                (if (eq? _%struct?9077990787%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9077990787%_))
               (_%eq90800%_
                (if (eq? _%eq9078090789%_ absent-value) eq? _%eq9078090789%_))
               (_%get-name90802%_
                (if (eq? _%get-name9078190791%_ absent-value)
                    identity
                    _%get-name9078190791%_)))
          (letrec* ((_%pls90805%_
                     (map _%get-precedence-list90796%_ _%supers90794%_))
                    (_%sit90806%_ '())
                    (_%get-names90807%_
                     (lambda (_%lst91082%_)
                       (map _%get-name90802%_ _%lst91082%_)))
                    (_%err90808%_
                     (lambda _%a91080%_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (_%get-names90807%_ (reverse _%rhead90793%_))
                              'precedence-lists:
                              (let ()
                                (declare (not safe))
                                (##map _%get-names90807%_ _%pls90805%_))
                              'single-inheritance-tail:
                              (_%get-names90807%_ _%sit90806%_)
                              _%a91080%_)))
                    (_%same?90809%_
                     (lambda (_%lst191077%_ _%lst291078%_)
                       (if (let ((__tmp91130 (length _%lst191077%_))
                                 (__tmp91129 (length _%lst291078%_)))
                             (declare (not safe))
                             (##fx= __tmp91130 __tmp91129))
                           (let ()
                             (declare (not safe))
                             (andmap2 _%eq90800%_ _%lst191077%_ _%lst291078%_))
                           '#f)))
                    (_%merge-sit!90810%_
                     (lambda (_%sit291060%_)
                       (if (null? _%sit291060%_)
                           '#!void
                           (if (null? _%sit90806%_)
                               (set! _%sit90806%_ _%sit291060%_)
                               (let _%loop91065%_ ((_%t191067%_ _%sit90806%_)
                                                   (_%t291068%_ _%sit291060%_))
                                 (if (_%same?90809%_ _%t191067%_ _%sit291060%_)
                                     '#!void
                                     (if (_%same?90809%_
                                          _%t291068%_
                                          _%sit90806%_)
                                         (set! _%sit90806%_ _%sit291060%_)
                                         (if (or (null? _%t191067%_)
                                                 (null? _%t291068%_))
                                             (_%err90808%_
                                              'single-inheritance-incompatibility:
                                              (cons (_%get-names90807%_
                                                     _%sit90806%_)
                                                    (cons (_%get-names90807%_
                                                           _%sit291060%_)
                                                          '())))
                                             (_%loop91065%_
                                              (cdr _%t191067%_)
                                              (cdr _%t291068%_))))))))))
                    (_%rpls90811%_
                     (let ((__tmp91131
                            (lambda (_%pl91055%_)
                              (let ((_g91132_
                                     (let ()
                                       (declare (not safe))
                                       (append-reverse-until
                                        _%struct?90798%_
                                        _%pl91055%_
                                        '()))))
                                (begin
                                  (let ((_g91133_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g91132_)
                                               (##vector-length _g91132_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g91133_ 2)))
                                        (error "Context expects 2 values"
                                               _g91133_)))
                                  (let ((_%tl91057%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g91132_ 0)))
                                        (_%rh91058%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g91132_ 1))))
                                    (begin
                                      (_%merge-sit!90810%_ _%tl91057%_)
                                      _%rh91058%_)))))))
                       (declare (not safe))
                       (##map __tmp91131 _%pls90805%_)))
                    (_%unsitr-rpl90812%_
                     (lambda (_%rpl91001%_)
                       (let _%u91003%_ ((_%pl-rhead91005%_ _%rpl91001%_)
                                        (_%pl-tail91006%_ '())
                                        (_%sit-rhead91007%_
                                         (reverse _%sit90806%_))
                                        (_%sit-tail91008%_ '()))
                         (let* ((_%pl-rhead9100991018%_ _%pl-rhead91005%_)
                                (_%E9101291022%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%pl-rhead9100991018%_
                                          '([])
                                          '([c . plrh]))
                                   '#!void)))
                           (let ((_%K9101691052%_ (lambda () _%pl-tail91006%_))
                                 (_%K9101391036%_
                                  (lambda (_%plrh91026%_ _%c91027%_)
                                    (if (member _%c91027%_
                                                _%sit-tail91008%_
                                                _%eq90800%_)
                                        (_%err90808%_
                                         'precedence-list-head:
                                         (_%get-names90807%_
                                          (reverse _%pl-rhead91005%_))
                                         'precedence-list-tail:
                                         (_%get-names90807%_ _%pl-tail91006%_)
                                         'single-inheritance-head:
                                         (_%get-names90807%_
                                          (reverse _%sit-rhead91007%_))
                                         'single-inheritance-tail:
                                         (_%get-names90807%_ _%sit-tail91008%_)
                                         'super-out-of-order-vs-single-inheritance-tail:
                                         (_%get-name90802%_ _%c91027%_))
                                        (let ((_g91134_
                                               (let ((__tmp91136
                                                      (lambda (_%g9102891030%_)
                                                        (_%eq90800%_
                                                         _%c91027%_
                                                         _%g9102891030%_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp91136
                                                  _%sit-rhead91007%_
                                                  _%sit-tail91008%_))))
                                          (begin
                                            (let ((_g91135_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g91134_)
                                                         (##vector-length
                                                          _g91134_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g91135_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g91135_)))
                                            (let ((_%sit-rh291033%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g91134_
                                                      0)))
                                                  (_%sit-tl291034%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g91134_
                                                      1))))
                                              (if (null? _%sit-rh291033%_)
                                                  (_%u91003%_
                                                   _%plrh91026%_
                                                   (cons _%c91027%_
                                                         _%pl-tail91006%_)
                                                   '()
                                                   _%sit-tl291034%_)
                                                  (_%u91003%_
                                                   _%plrh91026%_
                                                   _%pl-tail91006%_
                                                   (cdr _%sit-rh291033%_)
                                                   _%sit-tl291034%_)))))))))
                             (let ((_%try-match9101191048%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%pl-rhead9100991018%_))
                                          (let ((_%tl9101591041%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%pl-rhead9100991018%_)))
                                                (_%hd9101491039%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%pl-rhead9100991018%_))))
                                            (let ((_%c91044%_ _%hd9101491039%_)
                                                  (_%plrh91046%_
                                                   _%tl9101591041%_))
                                              (_%K9101391036%_
                                               _%plrh91046%_
                                               _%c91044%_)))
                                          (_%E9101291022%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%pl-rhead9100991018%_))
                                   (_%K9101691052%_)
                                   (_%try-match9101191048%_))))))))
                    (_g91137_
                     (let ((_g91138_
                            (let ((__tmp91140 (reverse _%supers90794%_)))
                              (declare (not safe))
                              (append1! _%rpls90811%_ __tmp91140))))
                       #!void
                       _g91138_))
                    (_g91141_
                     (let ((_g91142_
                            (set! _%pls90805%_
                                  (let ()
                                    (declare (not safe))
                                    (##map _%unsitr-rpl90812%_
                                           _%rpls90811%_)))))
                       #!void
                       _g91142_))
                    (_%c3-select-next90813%_
                     (lambda (_%tails90951%_)
                       (let ((_%candidate?90957%_
                              (lambda (_%c90953%_)
                                (let ((__tmp91144
                                       (lambda (_%tail90955%_)
                                         (not (member _%c90953%_
                                                      (cdr _%tail90955%_)
                                                      _%eq90800%_)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp91144 _%tails90951%_)))))
                         (let _%loop90959%_ ((_%ts90961%_ _%tails90951%_))
                           (let* ((_%ts9096290972%_ _%ts90961%_)
                                  (_%else9096490980%_
                                   (lambda () (_%err90808%_)))
                                  (_%K9096690986%_
                                   (lambda (_%rts90983%_ _%c90984%_)
                                     (if (_%candidate?90957%_ _%c90984%_)
                                         _%c90984%_
                                         (_%loop90959%_ _%rts90983%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%ts9096290972%_))
                                 (let ((_%hd9096790989%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%ts9096290972%_)))
                                       (_%tl9096890991%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%ts9096290972%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%hd9096790989%_))
                                       (let* ((_%hd9096990994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd9096790989%_)))
                                              (_%c90997%_ _%hd9096990994%_)
                                              (_%rts90999%_ _%tl9096890991%_))
                                         (_%K9096690986%_
                                          _%rts90999%_
                                          _%c90997%_))
                                       (_%err90808%_)))
                                 (_%err90808%_)))))))
                    (_%remove-next!90814%_
                     (lambda (_%next90896%_ _%tails90897%_)
                       (let _%loop90899%_ ((_%t90901%_ _%tails90897%_))
                         (let* ((_%t9090290913%_ _%t90901%_)
                                (_%E9090590917%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%t9090290913%_
                                          '([])
                                          '([[head . tail] . more]))
                                   '#!void)))
                           (let ((_%K9091190948%_ (lambda () _%tails90897%_))
                                 (_%K9090690925%_
                                  (lambda (_%more90921%_
                                           _%tail90922%_
                                           _%head90923%_)
                                    (if (_%eq90800%_
                                         _%head90923%_
                                         _%next90896%_)
                                        (set-car! _%t90901%_ _%tail90922%_)
                                        '#!void)
                                    (_%loop90899%_ _%more90921%_))))
                             (let ((_%try-match9090490944%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%t9090290913%_))
                                          (let ((_%tl9090890930%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%t9090290913%_)))
                                                (_%hd9090790928%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%t9090290913%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd9090790928%_))
                                                (let ((_%tl9091090935%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd9090790928%_)))
                                                      (_%hd9090990933%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd9090790928%_))))
                                                  (let ((_%head90938%_
                                                         _%hd9090990933%_)
                                                        (_%tail90940%_
                                                         _%tl9091090935%_)
                                                        (_%more90942%_
                                                         _%tl9090890930%_))
                                                    (_%K9090690925%_
                                                     _%more90942%_
                                                     _%tail90940%_
                                                     _%head90938%_)))
                                                (_%E9090590917%_)))
                                          (_%E9090590917%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%t9090290913%_))
                                   (_%K9091190948%_)
                                   (_%try-match9090490944%_))))))))
                    (_%precedence-list90815%_
                     (let _%c3loop90846%_ ((_%rhead90848%_ _%rhead90793%_)
                                           (_%tails90849%_ _%pls90805%_))
                       (let* ((_%tails90851%_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _%tails90849%_)))
                              (_%tails9085290862%_ _%tails90851%_)
                              (_%else9085590873%_
                               (lambda ()
                                 (let ((_%next90870%_
                                        (_%c3-select-next90813%_
                                         _%tails90851%_)))
                                   (_%c3loop90846%_
                                    (cons _%next90870%_ _%rhead90848%_)
                                    (_%remove-next!90814%_
                                     _%next90870%_
                                     _%tails90851%_))))))
                         (let ((_%K9086090893%_
                                (lambda ()
                                  (append-reverse
                                   _%rhead90848%_
                                   _%sit90806%_)))
                               (_%K9085790879%_
                                (lambda (_%tail90877%_)
                                  (append-reverse
                                   _%rhead90848%_
                                   (append _%tail90877%_ _%sit90806%_)))))
                           (let ((_%try-match9085490889%_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tails9085290862%_))
                                        (let ((_%tl9085990884%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tails9085290862%_)))
                                              (_%hd9085890882%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tails9085290862%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl9085990884%_))
                                              (let ((_%tail90887%_
                                                     _%hd9085890882%_))
                                                (_%K9085790879%_
                                                 _%tail90887%_))
                                              (_%else9085590873%_)))
                                        (_%else9085590873%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tails9085290862%_))
                                 (_%K9086090893%_)
                                 (_%try-match9085490889%_)))))))
                    (_%super-struct90816%_
                     (let* ((_%sit9081790825%_ _%sit90806%_)
                            (_%else9081990833%_ (lambda () '#f))
                            (_%K9082190838%_ (lambda (_%s90836%_) _%s90836%_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%sit9081790825%_))
                           (let* ((_%hd9082290841%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%sit9081790825%_)))
                                  (_%s90844%_ _%hd9082290841%_))
                             (_%K9082190838%_ _%s90844%_))
                           (_%else9081990833%_)))))
            (values _%precedence-list90815%_ _%super-struct90816%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords91087%_ . _%args91088%_)
        (apply c4-linearize__%
               _%@@keywords91087%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords91087%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords91087%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords91087%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords91087%_
                  'get-name:
                  absent-value))
               _%args91088%_)))
    (define c4-linearize
      (lambda _%args9078291094%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9078291094%_)))))
