(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1712093475)
  (begin
    (define c4-linearize__%
      (lambda (_%_90527%_
               _%get-precedence-list9052190529%_
               _%struct?9052290531%_
               _%eq9052390533%_
               _%get-name9052490535%_
               _%rhead90537%_
               _%supers90538%_)
        (let* ((_%get-precedence-list90540%_
                (if (eq? _%get-precedence-list9052190529%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9052190529%_))
               (_%struct?90542%_
                (if (eq? _%struct?9052290531%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9052290531%_))
               (_%eq90544%_
                (if (eq? _%eq9052390533%_ absent-value) eq? _%eq9052390533%_))
               (_%get-name90546%_
                (if (eq? _%get-name9052490535%_ absent-value)
                    identity
                    _%get-name9052490535%_)))
          (letrec* ((_%pls90549%_
                     (map _%get-precedence-list90540%_ _%supers90538%_))
                    (_%sit90550%_ '())
                    (_%get-names90551%_
                     (lambda (_%lst90822%_)
                       (map _%get-name90546%_ _%lst90822%_)))
                    (_%err90552%_
                     (lambda _%a90820%_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp90869 (reverse _%rhead90537%_)))
                                (declare (not safe))
                                (_%get-names90551%_ __tmp90869))
                              'precedence-lists:
                              (let ()
                                (declare (not safe))
                                (##map _%get-names90551%_ _%pls90549%_))
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_%get-names90551%_ _%sit90550%_))
                              _%a90820%_)))
                    (_%merge-sit!90553%_
                     (lambda (_%sit290803%_)
                       (if (let () (declare (not safe)) (null? _%sit290803%_))
                           (let () '#!void)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _%sit90550%_))
                               (let () (set! _%sit90550%_ _%sit290803%_))
                               (let ()
                                 (let _%loop90808%_ ((_%t190810%_ _%sit90550%_)
                                                     (_%t290811%_
                                                      _%sit290803%_))
                                   (if (equal? _%t190810%_ _%sit290803%_)
                                       (let () '#!void)
                                       (if (equal? _%t290811%_ _%sit90550%_)
                                           (let ()
                                             (set! _%sit90550%_ _%sit290803%_))
                                           (if (or (let ()
                                                     (declare (not safe))
                                                     (null? _%t190810%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (null? _%t290811%_)))
                                               (let ()
                                                 (let ((__tmp90870
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_%get-names90551%_ _%sit90550%_))
                      (cons (let ()
                              (declare (not safe))
                              (_%get-names90551%_ _%sit290803%_))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%err90552%_
                                                    'single-inheritance-incompatibility:
                                                    __tmp90870)))
                                               (let ()
                                                 (let ((__tmp90872
                                                        (cdr _%t190810%_))
                                                       (__tmp90871
                                                        (cdr _%t290811%_)))
                                                   (declare (not safe))
                                                   (_%loop90808%_
                                                    __tmp90872
                                                    __tmp90871))))))))))))
                    (_%rpls90554%_
                     (let ((__tmp90873
                            (lambda (_%pl90798%_)
                              (let ((_g90874_
                                     (let ()
                                       (declare (not safe))
                                       (append-reverse-until
                                        _%struct?90542%_
                                        _%pl90798%_
                                        '()))))
                                (begin
                                  (let ((_g90875_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g90874_)
                                               (##vector-length _g90874_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g90875_ 2)))
                                        (error "Context expects 2 values"
                                               _g90875_)))
                                  (let ((_%tl90800%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g90874_ 0)))
                                        (_%rh90801%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g90874_ 1))))
                                    (begin
                                      (let ()
                                        (declare (not safe))
                                        (_%merge-sit!90553%_ _%tl90800%_))
                                      _%rh90801%_)))))))
                       (declare (not safe))
                       (##map __tmp90873 _%pls90549%_)))
                    (_%unsitr-rpl90555%_
                     (lambda (_%rpl90744%_)
                       (let _%u90746%_ ((_%pl-rhead90748%_ _%rpl90744%_)
                                        (_%pl-tail90749%_ '())
                                        (_%sit-rhead90750%_
                                         (reverse _%sit90550%_))
                                        (_%sit-tail90751%_ '()))
                         (let* ((_%pl-rhead9075290761%_ _%pl-rhead90748%_)
                                (_%E9075590765%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%pl-rhead9075290761%_
                                          '([])
                                          '([c . plrh]))
                                   '#!void)))
                           (let ((_%K9075990795%_ (lambda () _%pl-tail90749%_))
                                 (_%K9075690779%_
                                  (lambda (_%plrh90769%_ _%c90770%_)
                                    (if (member _%c90770%_
                                                _%sit-tail90751%_
                                                _%eq90544%_)
                                        (let ((__tmp90881
                                               (let ((__tmp90882
                                                      (reverse _%pl-rhead90748%_)))
                                                 (declare (not safe))
                                                 (_%get-names90551%_
                                                  __tmp90882)))
                                              (__tmp90880
                                               (let ()
                                                 (declare (not safe))
                                                 (_%get-names90551%_
                                                  _%pl-tail90749%_)))
                                              (__tmp90878
                                               (let ((__tmp90879
                                                      (reverse _%sit-rhead90750%_)))
                                                 (declare (not safe))
                                                 (_%get-names90551%_
                                                  __tmp90879)))
                                              (__tmp90877
                                               (let ()
                                                 (declare (not safe))
                                                 (_%get-names90551%_
                                                  _%sit-tail90751%_)))
                                              (__tmp90876
                                               (_%get-name90546%_ _%c90770%_)))
                                          (declare (not safe))
                                          (_%err90552%_
                                           'precedence-list-head:
                                           __tmp90881
                                           'precedence-list-tail:
                                           __tmp90880
                                           'single-inheritance-head:
                                           __tmp90878
                                           'single-inheritance-tail:
                                           __tmp90877
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp90876))
                                        (let ((_g90883_
                                               (let ((__tmp90885
                                                      (lambda (_%g9077190773%_)
                                                        (_%eq90544%_
                                                         _%c90770%_
                                                         _%g9077190773%_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp90885
                                                  _%sit-rhead90750%_
                                                  _%sit-tail90751%_))))
                                          (begin
                                            (let ((_g90884_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g90883_)
                                                         (##vector-length
                                                          _g90883_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g90884_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g90884_)))
                                            (let ((_%sit-rh290776%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g90883_
                                                      0)))
                                                  (_%sit-tl290777%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g90883_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _%sit-rh290776%_))
                                                  (let ((__tmp90886
                                                         (cons _%c90770%_
                                                               _%pl-tail90749%_)))
                                                    (declare (not safe))
                                                    (_%u90746%_
                                                     _%plrh90769%_
                                                     __tmp90886
                                                     '()
                                                     _%sit-tl290777%_))
                                                  (let ((__tmp90887
                                                         (cdr _%sit-rh290776%_)))
                                                    (declare (not safe))
                                                    (_%u90746%_
                                                     _%plrh90769%_
                                                     _%pl-tail90749%_
                                                     __tmp90887
                                                     _%sit-tl290777%_))))))))))
                             (let ((_%try-match9075490791%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%pl-rhead9075290761%_))
                                          (let ((_%tl9075890784%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%pl-rhead9075290761%_)))
                                                (_%hd9075790782%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%pl-rhead9075290761%_))))
                                            (let ((_%c90787%_ _%hd9075790782%_)
                                                  (_%plrh90789%_
                                                   _%tl9075890784%_))
                                              (let ()
                                                (declare (not safe))
                                                (_%K9075690779%_
                                                 _%plrh90789%_
                                                 _%c90787%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E9075590765%_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%pl-rhead9075290761%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%K9075990795%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%try-match9075490791%_)))))))))
                    (_g90888_
                     (let ((_g90889_
                            (let ((__tmp90891 (reverse _%supers90538%_)))
                              (declare (not safe))
                              (append1! _%rpls90554%_ __tmp90891))))
                       #!void
                       _g90889_))
                    (_g90892_
                     (let ((_g90893_
                            (set! _%pls90549%_
                                  (let ()
                                    (declare (not safe))
                                    (##map _%unsitr-rpl90555%_
                                           _%rpls90554%_)))))
                       #!void
                       _g90893_))
                    (_%c3-select-next90556%_
                     (lambda (_%tails90694%_)
                       (let ((_%candidate?90700%_
                              (lambda (_%c90696%_)
                                (let ((__tmp90895
                                       (lambda (_%tail90698%_)
                                         (let ((__tmp90896
                                                (member _%c90696%_
                                                        (cdr _%tail90698%_)
                                                        _%eq90544%_)))
                                           (declare (not safe))
                                           (not __tmp90896)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp90895 _%tails90694%_)))))
                         (let _%loop90702%_ ((_%ts90704%_ _%tails90694%_))
                           (let* ((_%ts9070590715%_ _%ts90704%_)
                                  (_%else9070790723%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_%err90552%_))))
                                  (_%K9070990729%_
                                   (lambda (_%rts90726%_ _%c90727%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_%candidate?90700%_ _%c90727%_))
                                         _%c90727%_
                                         (let ()
                                           (declare (not safe))
                                           (_%loop90702%_ _%rts90726%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%ts9070590715%_))
                                 (let ((_%hd9071090732%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%ts9070590715%_)))
                                       (_%tl9071190734%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%ts9070590715%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%hd9071090732%_))
                                       (let* ((_%hd9071290737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd9071090732%_)))
                                              (_%c90740%_ _%hd9071290737%_)
                                              (_%rts90742%_ _%tl9071190734%_))
                                         (declare (not safe))
                                         (_%K9070990729%_
                                          _%rts90742%_
                                          _%c90740%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%err90552%_))))
                                 (let ()
                                   (declare (not safe))
                                   (_%err90552%_))))))))
                    (_%remove-next!90557%_
                     (lambda (_%next90639%_ _%tails90640%_)
                       (let _%loop90642%_ ((_%t90644%_ _%tails90640%_))
                         (let* ((_%t9064590656%_ _%t90644%_)
                                (_%E9064890660%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%t9064590656%_
                                          '([])
                                          '([[head . tail] . more]))
                                   '#!void)))
                           (let ((_%K9065490691%_ (lambda () _%tails90640%_))
                                 (_%K9064990668%_
                                  (lambda (_%more90664%_
                                           _%tail90665%_
                                           _%head90666%_)
                                    (if (_%eq90544%_
                                         _%head90666%_
                                         _%next90639%_)
                                        (set-car! _%t90644%_ _%tail90665%_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_%loop90642%_ _%more90664%_)))))
                             (let ((_%try-match9064790687%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%t9064590656%_))
                                          (let ((_%tl9065190673%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%t9064590656%_)))
                                                (_%hd9065090671%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%t9064590656%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd9065090671%_))
                                                (let ((_%tl9065390678%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd9065090671%_)))
                                                      (_%hd9065290676%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd9065090671%_))))
                                                  (let ((_%head90681%_
                                                         _%hd9065290676%_)
                                                        (_%tail90683%_
                                                         _%tl9065390678%_)
                                                        (_%more90685%_
                                                         _%tl9065190673%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%K9064990668%_
                                                       _%more90685%_
                                                       _%tail90683%_
                                                       _%head90681%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%E9064890660%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E9064890660%_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%t9064590656%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%K9065490691%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%try-match9064790687%_)))))))))
                    (_%precedence-list90558%_
                     (let _%c3loop90589%_ ((_%rhead90591%_ _%rhead90537%_)
                                           (_%tails90592%_ _%pls90549%_))
                       (let* ((_%tails90594%_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _%tails90592%_)))
                              (_%tails9059590605%_ _%tails90594%_)
                              (_%else9059890616%_
                               (lambda ()
                                 (let ((_%next90613%_
                                        (let ()
                                          (declare (not safe))
                                          (_%c3-select-next90556%_
                                           _%tails90594%_))))
                                   (let ((__tmp90898
                                          (cons _%next90613%_ _%rhead90591%_))
                                         (__tmp90897
                                          (let ()
                                            (declare (not safe))
                                            (_%remove-next!90557%_
                                             _%next90613%_
                                             _%tails90594%_))))
                                     (declare (not safe))
                                     (_%c3loop90589%_
                                      __tmp90898
                                      __tmp90897))))))
                         (let ((_%K9060390636%_
                                (lambda ()
                                  (append-reverse
                                   _%rhead90591%_
                                   _%sit90550%_)))
                               (_%K9060090622%_
                                (lambda (_%tail90620%_)
                                  (append-reverse
                                   _%rhead90591%_
                                   (append _%tail90620%_ _%sit90550%_)))))
                           (let ((_%try-match9059790632%_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tails9059590605%_))
                                        (let ((_%tl9060290627%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tails9059590605%_)))
                                              (_%hd9060190625%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tails9059590605%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl9060290627%_))
                                              (let ((_%tail90630%_
                                                     _%hd9060190625%_))
                                                (declare (not safe))
                                                (_%K9060090622%_
                                                 _%tail90630%_))
                                              (let ()
                                                (declare (not safe))
                                                (_%else9059890616%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else9059890616%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tails9059590605%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%K9060390636%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%try-match9059790632%_))))))))
                    (_%super-struct90559%_
                     (let* ((_%sit9056090568%_ _%sit90550%_)
                            (_%else9056290576%_ (lambda () '#f))
                            (_%K9056490581%_ (lambda (_%s90579%_) _%s90579%_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%sit9056090568%_))
                           (let* ((_%hd9056590584%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%sit9056090568%_)))
                                  (_%s90587%_ _%hd9056590584%_))
                             (declare (not safe))
                             (_%K9056490581%_ _%s90587%_))
                           (let ()
                             (declare (not safe))
                             (_%else9056290576%_))))))
            (values _%precedence-list90558%_ _%super-struct90559%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords90827%_ . _%args90828%_)
        (apply c4-linearize__%
               _%@@keywords90827%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords90827%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords90827%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords90827%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords90827%_
                  'get-name:
                  absent-value))
               _%args90828%_)))
    (define c4-linearize
      (lambda _%args9052590834%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9052590834%_)))))
