(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1712155160)
  (begin
    (define c4-linearize__%
      (lambda (_%_90578%_
               _%get-precedence-list9057290580%_
               _%struct?9057390582%_
               _%eq9057490584%_
               _%get-name9057590586%_
               _%rhead90588%_
               _%supers90589%_)
        (let* ((_%get-precedence-list90591%_
                (if (eq? _%get-precedence-list9057290580%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9057290580%_))
               (_%struct?90593%_
                (if (eq? _%struct?9057390582%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9057390582%_))
               (_%eq90595%_
                (if (eq? _%eq9057490584%_ absent-value) eq? _%eq9057490584%_))
               (_%get-name90597%_
                (if (eq? _%get-name9057590586%_ absent-value)
                    identity
                    _%get-name9057590586%_)))
          (letrec* ((_%pls90600%_
                     (map _%get-precedence-list90591%_ _%supers90589%_))
                    (_%sit90601%_ '())
                    (_%get-names90602%_
                     (lambda (_%lst90873%_)
                       (map _%get-name90597%_ _%lst90873%_)))
                    (_%err90603%_
                     (lambda _%a90871%_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp90920 (reverse _%rhead90588%_)))
                                (declare (not safe))
                                (_%get-names90602%_ __tmp90920))
                              'precedence-lists:
                              (let ()
                                (declare (not safe))
                                (##map _%get-names90602%_ _%pls90600%_))
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_%get-names90602%_ _%sit90601%_))
                              _%a90871%_)))
                    (_%merge-sit!90604%_
                     (lambda (_%sit290854%_)
                       (if (let () (declare (not safe)) (null? _%sit290854%_))
                           (let () '#!void)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _%sit90601%_))
                               (let () (set! _%sit90601%_ _%sit290854%_))
                               (let _%loop90859%_ ((_%t190861%_ _%sit90601%_)
                                                   (_%t290862%_ _%sit290854%_))
                                 (if (equal? _%t190861%_ _%sit290854%_)
                                     (let () '#!void)
                                     (if (equal? _%t290862%_ _%sit90601%_)
                                         (let ()
                                           (set! _%sit90601%_ _%sit290854%_))
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _%t190861%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _%t290862%_)))
                                             (let ((__tmp90921
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%get-names90602%_
                                                             _%sit90601%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_%get-names90602%_ _%sit290854%_))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%err90603%_
                                                'single-inheritance-incompatibility:
                                                __tmp90921))
                                             (let ((__tmp90923
                                                    (cdr _%t190861%_))
                                                   (__tmp90922
                                                    (cdr _%t290862%_)))
                                               (declare (not safe))
                                               (_%loop90859%_
                                                __tmp90923
                                                __tmp90922))))))))))
                    (_%rpls90605%_
                     (let ((__tmp90924
                            (lambda (_%pl90849%_)
                              (let ((_g90925_
                                     (let ()
                                       (declare (not safe))
                                       (append-reverse-until
                                        _%struct?90593%_
                                        _%pl90849%_
                                        '()))))
                                (begin
                                  (let ((_g90926_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g90925_)
                                               (##vector-length _g90925_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g90926_ 2)))
                                        (error "Context expects 2 values"
                                               _g90926_)))
                                  (let ((_%tl90851%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g90925_ 0)))
                                        (_%rh90852%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g90925_ 1))))
                                    (begin
                                      (let ()
                                        (declare (not safe))
                                        (_%merge-sit!90604%_ _%tl90851%_))
                                      _%rh90852%_)))))))
                       (declare (not safe))
                       (##map __tmp90924 _%pls90600%_)))
                    (_%unsitr-rpl90606%_
                     (lambda (_%rpl90795%_)
                       (let _%u90797%_ ((_%pl-rhead90799%_ _%rpl90795%_)
                                        (_%pl-tail90800%_ '())
                                        (_%sit-rhead90801%_
                                         (reverse _%sit90601%_))
                                        (_%sit-tail90802%_ '()))
                         (let* ((_%pl-rhead9080390812%_ _%pl-rhead90799%_)
                                (_%E9080690816%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%pl-rhead9080390812%_
                                          '([])
                                          '([c . plrh]))
                                   '#!void)))
                           (let ((_%K9081090846%_ (lambda () _%pl-tail90800%_))
                                 (_%K9080790830%_
                                  (lambda (_%plrh90820%_ _%c90821%_)
                                    (if (member _%c90821%_
                                                _%sit-tail90802%_
                                                _%eq90595%_)
                                        (let ((__tmp90932
                                               (let ((__tmp90933
                                                      (reverse _%pl-rhead90799%_)))
                                                 (declare (not safe))
                                                 (_%get-names90602%_
                                                  __tmp90933)))
                                              (__tmp90931
                                               (let ()
                                                 (declare (not safe))
                                                 (_%get-names90602%_
                                                  _%pl-tail90800%_)))
                                              (__tmp90929
                                               (let ((__tmp90930
                                                      (reverse _%sit-rhead90801%_)))
                                                 (declare (not safe))
                                                 (_%get-names90602%_
                                                  __tmp90930)))
                                              (__tmp90928
                                               (let ()
                                                 (declare (not safe))
                                                 (_%get-names90602%_
                                                  _%sit-tail90802%_)))
                                              (__tmp90927
                                               (_%get-name90597%_ _%c90821%_)))
                                          (declare (not safe))
                                          (_%err90603%_
                                           'precedence-list-head:
                                           __tmp90932
                                           'precedence-list-tail:
                                           __tmp90931
                                           'single-inheritance-head:
                                           __tmp90929
                                           'single-inheritance-tail:
                                           __tmp90928
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp90927))
                                        (let ((_g90934_
                                               (let ((__tmp90936
                                                      (lambda (_%g9082290824%_)
                                                        (_%eq90595%_
                                                         _%c90821%_
                                                         _%g9082290824%_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp90936
                                                  _%sit-rhead90801%_
                                                  _%sit-tail90802%_))))
                                          (begin
                                            (let ((_g90935_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g90934_)
                                                         (##vector-length
                                                          _g90934_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g90935_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g90935_)))
                                            (let ((_%sit-rh290827%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g90934_
                                                      0)))
                                                  (_%sit-tl290828%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g90934_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _%sit-rh290827%_))
                                                  (let ((__tmp90937
                                                         (cons _%c90821%_
                                                               _%pl-tail90800%_)))
                                                    (declare (not safe))
                                                    (_%u90797%_
                                                     _%plrh90820%_
                                                     __tmp90937
                                                     '()
                                                     _%sit-tl290828%_))
                                                  (let ((__tmp90938
                                                         (cdr _%sit-rh290827%_)))
                                                    (declare (not safe))
                                                    (_%u90797%_
                                                     _%plrh90820%_
                                                     _%pl-tail90800%_
                                                     __tmp90938
                                                     _%sit-tl290828%_))))))))))
                             (let ((_%try-match9080590842%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%pl-rhead9080390812%_))
                                          (let ((_%tl9080990835%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%pl-rhead9080390812%_)))
                                                (_%hd9080890833%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%pl-rhead9080390812%_))))
                                            (let ((_%c90838%_ _%hd9080890833%_)
                                                  (_%plrh90840%_
                                                   _%tl9080990835%_))
                                              (let ()
                                                (declare (not safe))
                                                (_%K9080790830%_
                                                 _%plrh90840%_
                                                 _%c90838%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E9080690816%_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%pl-rhead9080390812%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%K9081090846%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%try-match9080590842%_)))))))))
                    (_g90939_
                     (let ((_g90940_
                            (let ((__tmp90942 (reverse _%supers90589%_)))
                              (declare (not safe))
                              (append1! _%rpls90605%_ __tmp90942))))
                       #!void
                       _g90940_))
                    (_g90943_
                     (let ((_g90944_
                            (set! _%pls90600%_
                                  (let ()
                                    (declare (not safe))
                                    (##map _%unsitr-rpl90606%_
                                           _%rpls90605%_)))))
                       #!void
                       _g90944_))
                    (_%c3-select-next90607%_
                     (lambda (_%tails90745%_)
                       (let ((_%candidate?90751%_
                              (lambda (_%c90747%_)
                                (let ((__tmp90946
                                       (lambda (_%tail90749%_)
                                         (let ((__tmp90947
                                                (member _%c90747%_
                                                        (cdr _%tail90749%_)
                                                        _%eq90595%_)))
                                           (declare (not safe))
                                           (not __tmp90947)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp90946 _%tails90745%_)))))
                         (let _%loop90753%_ ((_%ts90755%_ _%tails90745%_))
                           (let* ((_%ts9075690766%_ _%ts90755%_)
                                  (_%else9075890774%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_%err90603%_))))
                                  (_%K9076090780%_
                                   (lambda (_%rts90777%_ _%c90778%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_%candidate?90751%_ _%c90778%_))
                                         _%c90778%_
                                         (let ()
                                           (declare (not safe))
                                           (_%loop90753%_ _%rts90777%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%ts9075690766%_))
                                 (let ((_%hd9076190783%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%ts9075690766%_)))
                                       (_%tl9076290785%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%ts9075690766%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%hd9076190783%_))
                                       (let* ((_%hd9076390788%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd9076190783%_)))
                                              (_%c90791%_ _%hd9076390788%_)
                                              (_%rts90793%_ _%tl9076290785%_))
                                         (declare (not safe))
                                         (_%K9076090780%_
                                          _%rts90793%_
                                          _%c90791%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%err90603%_))))
                                 (let ()
                                   (declare (not safe))
                                   (_%err90603%_))))))))
                    (_%remove-next!90608%_
                     (lambda (_%next90690%_ _%tails90691%_)
                       (let _%loop90693%_ ((_%t90695%_ _%tails90691%_))
                         (let* ((_%t9069690707%_ _%t90695%_)
                                (_%E9069990711%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%t9069690707%_
                                          '([])
                                          '([[head . tail] . more]))
                                   '#!void)))
                           (let ((_%K9070590742%_ (lambda () _%tails90691%_))
                                 (_%K9070090719%_
                                  (lambda (_%more90715%_
                                           _%tail90716%_
                                           _%head90717%_)
                                    (if (_%eq90595%_
                                         _%head90717%_
                                         _%next90690%_)
                                        (set-car! _%t90695%_ _%tail90716%_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_%loop90693%_ _%more90715%_)))))
                             (let ((_%try-match9069890738%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%t9069690707%_))
                                          (let ((_%tl9070290724%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%t9069690707%_)))
                                                (_%hd9070190722%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%t9069690707%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd9070190722%_))
                                                (let ((_%tl9070490729%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd9070190722%_)))
                                                      (_%hd9070390727%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd9070190722%_))))
                                                  (let ((_%head90732%_
                                                         _%hd9070390727%_)
                                                        (_%tail90734%_
                                                         _%tl9070490729%_)
                                                        (_%more90736%_
                                                         _%tl9070290724%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%K9070090719%_
                                                       _%more90736%_
                                                       _%tail90734%_
                                                       _%head90732%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%E9069990711%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E9069990711%_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%t9069690707%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%K9070590742%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%try-match9069890738%_)))))))))
                    (_%precedence-list90609%_
                     (let _%c3loop90640%_ ((_%rhead90642%_ _%rhead90588%_)
                                           (_%tails90643%_ _%pls90600%_))
                       (let* ((_%tails90645%_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _%tails90643%_)))
                              (_%tails9064690656%_ _%tails90645%_)
                              (_%else9064990667%_
                               (lambda ()
                                 (let ((_%next90664%_
                                        (let ()
                                          (declare (not safe))
                                          (_%c3-select-next90607%_
                                           _%tails90645%_))))
                                   (let ((__tmp90949
                                          (cons _%next90664%_ _%rhead90642%_))
                                         (__tmp90948
                                          (let ()
                                            (declare (not safe))
                                            (_%remove-next!90608%_
                                             _%next90664%_
                                             _%tails90645%_))))
                                     (declare (not safe))
                                     (_%c3loop90640%_
                                      __tmp90949
                                      __tmp90948))))))
                         (let ((_%K9065490687%_
                                (lambda ()
                                  (append-reverse
                                   _%rhead90642%_
                                   _%sit90601%_)))
                               (_%K9065190673%_
                                (lambda (_%tail90671%_)
                                  (append-reverse
                                   _%rhead90642%_
                                   (append _%tail90671%_ _%sit90601%_)))))
                           (let ((_%try-match9064890683%_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tails9064690656%_))
                                        (let ((_%tl9065390678%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tails9064690656%_)))
                                              (_%hd9065290676%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tails9064690656%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl9065390678%_))
                                              (let ((_%tail90681%_
                                                     _%hd9065290676%_))
                                                (declare (not safe))
                                                (_%K9065190673%_
                                                 _%tail90681%_))
                                              (let ()
                                                (declare (not safe))
                                                (_%else9064990667%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else9064990667%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tails9064690656%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%K9065490687%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%try-match9064890683%_))))))))
                    (_%super-struct90610%_
                     (let* ((_%sit9061190619%_ _%sit90601%_)
                            (_%else9061390627%_ (lambda () '#f))
                            (_%K9061590632%_ (lambda (_%s90630%_) _%s90630%_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%sit9061190619%_))
                           (let* ((_%hd9061690635%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%sit9061190619%_)))
                                  (_%s90638%_ _%hd9061690635%_))
                             (declare (not safe))
                             (_%K9061590632%_ _%s90638%_))
                           (let ()
                             (declare (not safe))
                             (_%else9061390627%_))))))
            (values _%precedence-list90609%_ _%super-struct90610%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords90878%_ . _%args90879%_)
        (apply c4-linearize__%
               _%@@keywords90878%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords90878%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords90878%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords90878%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords90878%_
                  'get-name:
                  absent-value))
               _%args90879%_)))
    (define c4-linearize
      (lambda _%args9057690885%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9057690885%_)))))
