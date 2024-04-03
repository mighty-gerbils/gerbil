(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1712124233)
  (begin
    (define c4-linearize__%
      (lambda (_%_90596%_
               _%get-precedence-list9059090598%_
               _%struct?9059190600%_
               _%eq9059290602%_
               _%get-name9059390604%_
               _%rhead90606%_
               _%supers90607%_)
        (let* ((_%get-precedence-list90609%_
                (if (eq? _%get-precedence-list9059090598%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9059090598%_))
               (_%struct?90611%_
                (if (eq? _%struct?9059190600%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9059190600%_))
               (_%eq90613%_
                (if (eq? _%eq9059290602%_ absent-value) eq? _%eq9059290602%_))
               (_%get-name90615%_
                (if (eq? _%get-name9059390604%_ absent-value)
                    identity
                    _%get-name9059390604%_)))
          (letrec* ((_%pls90618%_
                     (map _%get-precedence-list90609%_ _%supers90607%_))
                    (_%sit90619%_ '())
                    (_%get-names90620%_
                     (lambda (_%lst90891%_)
                       (map _%get-name90615%_ _%lst90891%_)))
                    (_%err90621%_
                     (lambda _%a90889%_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp90938 (reverse _%rhead90606%_)))
                                (declare (not safe))
                                (_%get-names90620%_ __tmp90938))
                              'precedence-lists:
                              (let ()
                                (declare (not safe))
                                (##map _%get-names90620%_ _%pls90618%_))
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_%get-names90620%_ _%sit90619%_))
                              _%a90889%_)))
                    (_%merge-sit!90622%_
                     (lambda (_%sit290872%_)
                       (if (let () (declare (not safe)) (null? _%sit290872%_))
                           (let () '#!void)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _%sit90619%_))
                               (let () (set! _%sit90619%_ _%sit290872%_))
                               (let ()
                                 (let _%loop90877%_ ((_%t190879%_ _%sit90619%_)
                                                     (_%t290880%_
                                                      _%sit290872%_))
                                   (if (equal? _%t190879%_ _%sit290872%_)
                                       (let () '#!void)
                                       (if (equal? _%t290880%_ _%sit90619%_)
                                           (let ()
                                             (set! _%sit90619%_ _%sit290872%_))
                                           (if (or (let ()
                                                     (declare (not safe))
                                                     (null? _%t190879%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (null? _%t290880%_)))
                                               (let ()
                                                 (let ((__tmp90939
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_%get-names90620%_ _%sit90619%_))
                      (cons (let ()
                              (declare (not safe))
                              (_%get-names90620%_ _%sit290872%_))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%err90621%_
                                                    'single-inheritance-incompatibility:
                                                    __tmp90939)))
                                               (let ()
                                                 (let ((__tmp90941
                                                        (cdr _%t190879%_))
                                                       (__tmp90940
                                                        (cdr _%t290880%_)))
                                                   (declare (not safe))
                                                   (_%loop90877%_
                                                    __tmp90941
                                                    __tmp90940))))))))))))
                    (_%rpls90623%_
                     (let ((__tmp90942
                            (lambda (_%pl90867%_)
                              (let ((_g90943_
                                     (let ()
                                       (declare (not safe))
                                       (append-reverse-until
                                        _%struct?90611%_
                                        _%pl90867%_
                                        '()))))
                                (begin
                                  (let ((_g90944_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g90943_)
                                               (##vector-length _g90943_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g90944_ 2)))
                                        (error "Context expects 2 values"
                                               _g90944_)))
                                  (let ((_%tl90869%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g90943_ 0)))
                                        (_%rh90870%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g90943_ 1))))
                                    (begin
                                      (let ()
                                        (declare (not safe))
                                        (_%merge-sit!90622%_ _%tl90869%_))
                                      _%rh90870%_)))))))
                       (declare (not safe))
                       (##map __tmp90942 _%pls90618%_)))
                    (_%unsitr-rpl90624%_
                     (lambda (_%rpl90813%_)
                       (let _%u90815%_ ((_%pl-rhead90817%_ _%rpl90813%_)
                                        (_%pl-tail90818%_ '())
                                        (_%sit-rhead90819%_
                                         (reverse _%sit90619%_))
                                        (_%sit-tail90820%_ '()))
                         (let* ((_%pl-rhead9082190830%_ _%pl-rhead90817%_)
                                (_%E9082490834%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%pl-rhead9082190830%_
                                          '([])
                                          '([c . plrh]))
                                   '#!void)))
                           (let ((_%K9082890864%_ (lambda () _%pl-tail90818%_))
                                 (_%K9082590848%_
                                  (lambda (_%plrh90838%_ _%c90839%_)
                                    (if (member _%c90839%_
                                                _%sit-tail90820%_
                                                _%eq90613%_)
                                        (let ((__tmp90950
                                               (let ((__tmp90951
                                                      (reverse _%pl-rhead90817%_)))
                                                 (declare (not safe))
                                                 (_%get-names90620%_
                                                  __tmp90951)))
                                              (__tmp90949
                                               (let ()
                                                 (declare (not safe))
                                                 (_%get-names90620%_
                                                  _%pl-tail90818%_)))
                                              (__tmp90947
                                               (let ((__tmp90948
                                                      (reverse _%sit-rhead90819%_)))
                                                 (declare (not safe))
                                                 (_%get-names90620%_
                                                  __tmp90948)))
                                              (__tmp90946
                                               (let ()
                                                 (declare (not safe))
                                                 (_%get-names90620%_
                                                  _%sit-tail90820%_)))
                                              (__tmp90945
                                               (_%get-name90615%_ _%c90839%_)))
                                          (declare (not safe))
                                          (_%err90621%_
                                           'precedence-list-head:
                                           __tmp90950
                                           'precedence-list-tail:
                                           __tmp90949
                                           'single-inheritance-head:
                                           __tmp90947
                                           'single-inheritance-tail:
                                           __tmp90946
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp90945))
                                        (let ((_g90952_
                                               (let ((__tmp90954
                                                      (lambda (_%g9084090842%_)
                                                        (_%eq90613%_
                                                         _%c90839%_
                                                         _%g9084090842%_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp90954
                                                  _%sit-rhead90819%_
                                                  _%sit-tail90820%_))))
                                          (begin
                                            (let ((_g90953_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g90952_)
                                                         (##vector-length
                                                          _g90952_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g90953_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g90953_)))
                                            (let ((_%sit-rh290845%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g90952_
                                                      0)))
                                                  (_%sit-tl290846%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g90952_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _%sit-rh290845%_))
                                                  (let ((__tmp90955
                                                         (cons _%c90839%_
                                                               _%pl-tail90818%_)))
                                                    (declare (not safe))
                                                    (_%u90815%_
                                                     _%plrh90838%_
                                                     __tmp90955
                                                     '()
                                                     _%sit-tl290846%_))
                                                  (let ((__tmp90956
                                                         (cdr _%sit-rh290845%_)))
                                                    (declare (not safe))
                                                    (_%u90815%_
                                                     _%plrh90838%_
                                                     _%pl-tail90818%_
                                                     __tmp90956
                                                     _%sit-tl290846%_))))))))))
                             (let ((_%try-match9082390860%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%pl-rhead9082190830%_))
                                          (let ((_%tl9082790853%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%pl-rhead9082190830%_)))
                                                (_%hd9082690851%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%pl-rhead9082190830%_))))
                                            (let ((_%c90856%_ _%hd9082690851%_)
                                                  (_%plrh90858%_
                                                   _%tl9082790853%_))
                                              (let ()
                                                (declare (not safe))
                                                (_%K9082590848%_
                                                 _%plrh90858%_
                                                 _%c90856%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E9082490834%_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%pl-rhead9082190830%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%K9082890864%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%try-match9082390860%_)))))))))
                    (_g90957_
                     (let ((_g90958_
                            (let ((__tmp90960 (reverse _%supers90607%_)))
                              (declare (not safe))
                              (append1! _%rpls90623%_ __tmp90960))))
                       #!void
                       _g90958_))
                    (_g90961_
                     (let ((_g90962_
                            (set! _%pls90618%_
                                  (let ()
                                    (declare (not safe))
                                    (##map _%unsitr-rpl90624%_
                                           _%rpls90623%_)))))
                       #!void
                       _g90962_))
                    (_%c3-select-next90625%_
                     (lambda (_%tails90763%_)
                       (let ((_%candidate?90769%_
                              (lambda (_%c90765%_)
                                (let ((__tmp90964
                                       (lambda (_%tail90767%_)
                                         (let ((__tmp90965
                                                (member _%c90765%_
                                                        (cdr _%tail90767%_)
                                                        _%eq90613%_)))
                                           (declare (not safe))
                                           (not __tmp90965)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp90964 _%tails90763%_)))))
                         (let _%loop90771%_ ((_%ts90773%_ _%tails90763%_))
                           (let* ((_%ts9077490784%_ _%ts90773%_)
                                  (_%else9077690792%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_%err90621%_))))
                                  (_%K9077890798%_
                                   (lambda (_%rts90795%_ _%c90796%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_%candidate?90769%_ _%c90796%_))
                                         _%c90796%_
                                         (let ()
                                           (declare (not safe))
                                           (_%loop90771%_ _%rts90795%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%ts9077490784%_))
                                 (let ((_%hd9077990801%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%ts9077490784%_)))
                                       (_%tl9078090803%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%ts9077490784%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%hd9077990801%_))
                                       (let* ((_%hd9078190806%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd9077990801%_)))
                                              (_%c90809%_ _%hd9078190806%_)
                                              (_%rts90811%_ _%tl9078090803%_))
                                         (declare (not safe))
                                         (_%K9077890798%_
                                          _%rts90811%_
                                          _%c90809%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%err90621%_))))
                                 (let ()
                                   (declare (not safe))
                                   (_%err90621%_))))))))
                    (_%remove-next!90626%_
                     (lambda (_%next90708%_ _%tails90709%_)
                       (let _%loop90711%_ ((_%t90713%_ _%tails90709%_))
                         (let* ((_%t9071490725%_ _%t90713%_)
                                (_%E9071790729%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%t9071490725%_
                                          '([])
                                          '([[head . tail] . more]))
                                   '#!void)))
                           (let ((_%K9072390760%_ (lambda () _%tails90709%_))
                                 (_%K9071890737%_
                                  (lambda (_%more90733%_
                                           _%tail90734%_
                                           _%head90735%_)
                                    (if (_%eq90613%_
                                         _%head90735%_
                                         _%next90708%_)
                                        (set-car! _%t90713%_ _%tail90734%_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_%loop90711%_ _%more90733%_)))))
                             (let ((_%try-match9071690756%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%t9071490725%_))
                                          (let ((_%tl9072090742%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%t9071490725%_)))
                                                (_%hd9071990740%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%t9071490725%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd9071990740%_))
                                                (let ((_%tl9072290747%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd9071990740%_)))
                                                      (_%hd9072190745%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd9071990740%_))))
                                                  (let ((_%head90750%_
                                                         _%hd9072190745%_)
                                                        (_%tail90752%_
                                                         _%tl9072290747%_)
                                                        (_%more90754%_
                                                         _%tl9072090742%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%K9071890737%_
                                                       _%more90754%_
                                                       _%tail90752%_
                                                       _%head90750%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%E9071790729%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E9071790729%_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%t9071490725%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%K9072390760%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%try-match9071690756%_)))))))))
                    (_%precedence-list90627%_
                     (let _%c3loop90658%_ ((_%rhead90660%_ _%rhead90606%_)
                                           (_%tails90661%_ _%pls90618%_))
                       (let* ((_%tails90663%_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _%tails90661%_)))
                              (_%tails9066490674%_ _%tails90663%_)
                              (_%else9066790685%_
                               (lambda ()
                                 (let ((_%next90682%_
                                        (let ()
                                          (declare (not safe))
                                          (_%c3-select-next90625%_
                                           _%tails90663%_))))
                                   (let ((__tmp90967
                                          (cons _%next90682%_ _%rhead90660%_))
                                         (__tmp90966
                                          (let ()
                                            (declare (not safe))
                                            (_%remove-next!90626%_
                                             _%next90682%_
                                             _%tails90663%_))))
                                     (declare (not safe))
                                     (_%c3loop90658%_
                                      __tmp90967
                                      __tmp90966))))))
                         (let ((_%K9067290705%_
                                (lambda ()
                                  (append-reverse
                                   _%rhead90660%_
                                   _%sit90619%_)))
                               (_%K9066990691%_
                                (lambda (_%tail90689%_)
                                  (append-reverse
                                   _%rhead90660%_
                                   (append _%tail90689%_ _%sit90619%_)))))
                           (let ((_%try-match9066690701%_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tails9066490674%_))
                                        (let ((_%tl9067190696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tails9066490674%_)))
                                              (_%hd9067090694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tails9066490674%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl9067190696%_))
                                              (let ((_%tail90699%_
                                                     _%hd9067090694%_))
                                                (declare (not safe))
                                                (_%K9066990691%_
                                                 _%tail90699%_))
                                              (let ()
                                                (declare (not safe))
                                                (_%else9066790685%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else9066790685%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tails9066490674%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%K9067290705%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%try-match9066690701%_))))))))
                    (_%super-struct90628%_
                     (let* ((_%sit9062990637%_ _%sit90619%_)
                            (_%else9063190645%_ (lambda () '#f))
                            (_%K9063390650%_ (lambda (_%s90648%_) _%s90648%_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%sit9062990637%_))
                           (let* ((_%hd9063490653%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%sit9062990637%_)))
                                  (_%s90656%_ _%hd9063490653%_))
                             (declare (not safe))
                             (_%K9063390650%_ _%s90656%_))
                           (let ()
                             (declare (not safe))
                             (_%else9063190645%_))))))
            (values _%precedence-list90627%_ _%super-struct90628%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords90896%_ . _%args90897%_)
        (apply c4-linearize__%
               _%@@keywords90896%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords90896%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords90896%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords90896%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords90896%_
                  'get-name:
                  absent-value))
               _%args90897%_)))
    (define c4-linearize
      (lambda _%args9059490903%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9059490903%_)))))
