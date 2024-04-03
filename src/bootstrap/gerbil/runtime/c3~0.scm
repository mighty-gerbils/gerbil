(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1712121897)
  (begin
    (define c4-linearize__%
      (lambda (_%_90561%_
               _%get-precedence-list9055590563%_
               _%struct?9055690565%_
               _%eq9055790567%_
               _%get-name9055890569%_
               _%rhead90571%_
               _%supers90572%_)
        (let* ((_%get-precedence-list90574%_
                (if (eq? _%get-precedence-list9055590563%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9055590563%_))
               (_%struct?90576%_
                (if (eq? _%struct?9055690565%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9055690565%_))
               (_%eq90578%_
                (if (eq? _%eq9055790567%_ absent-value) eq? _%eq9055790567%_))
               (_%get-name90580%_
                (if (eq? _%get-name9055890569%_ absent-value)
                    identity
                    _%get-name9055890569%_)))
          (letrec* ((_%pls90583%_
                     (map _%get-precedence-list90574%_ _%supers90572%_))
                    (_%sit90584%_ '())
                    (_%get-names90585%_
                     (lambda (_%lst90856%_)
                       (map _%get-name90580%_ _%lst90856%_)))
                    (_%err90586%_
                     (lambda _%a90854%_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp90903 (reverse _%rhead90571%_)))
                                (declare (not safe))
                                (_%get-names90585%_ __tmp90903))
                              'precedence-lists:
                              (let ()
                                (declare (not safe))
                                (##map _%get-names90585%_ _%pls90583%_))
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_%get-names90585%_ _%sit90584%_))
                              _%a90854%_)))
                    (_%merge-sit!90587%_
                     (lambda (_%sit290837%_)
                       (if (let () (declare (not safe)) (null? _%sit290837%_))
                           (let () '#!void)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _%sit90584%_))
                               (let () (set! _%sit90584%_ _%sit290837%_))
                               (let ()
                                 (let _%loop90842%_ ((_%t190844%_ _%sit90584%_)
                                                     (_%t290845%_
                                                      _%sit290837%_))
                                   (if (equal? _%t190844%_ _%sit290837%_)
                                       (let () '#!void)
                                       (if (equal? _%t290845%_ _%sit90584%_)
                                           (let ()
                                             (set! _%sit90584%_ _%sit290837%_))
                                           (if (or (let ()
                                                     (declare (not safe))
                                                     (null? _%t190844%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (null? _%t290845%_)))
                                               (let ()
                                                 (let ((__tmp90904
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_%get-names90585%_ _%sit90584%_))
                      (cons (let ()
                              (declare (not safe))
                              (_%get-names90585%_ _%sit290837%_))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%err90586%_
                                                    'single-inheritance-incompatibility:
                                                    __tmp90904)))
                                               (let ()
                                                 (let ((__tmp90906
                                                        (cdr _%t190844%_))
                                                       (__tmp90905
                                                        (cdr _%t290845%_)))
                                                   (declare (not safe))
                                                   (_%loop90842%_
                                                    __tmp90906
                                                    __tmp90905))))))))))))
                    (_%rpls90588%_
                     (let ((__tmp90907
                            (lambda (_%pl90832%_)
                              (let ((_g90908_
                                     (let ()
                                       (declare (not safe))
                                       (append-reverse-until
                                        _%struct?90576%_
                                        _%pl90832%_
                                        '()))))
                                (begin
                                  (let ((_g90909_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g90908_)
                                               (##vector-length _g90908_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g90909_ 2)))
                                        (error "Context expects 2 values"
                                               _g90909_)))
                                  (let ((_%tl90834%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g90908_ 0)))
                                        (_%rh90835%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g90908_ 1))))
                                    (begin
                                      (let ()
                                        (declare (not safe))
                                        (_%merge-sit!90587%_ _%tl90834%_))
                                      _%rh90835%_)))))))
                       (declare (not safe))
                       (##map __tmp90907 _%pls90583%_)))
                    (_%unsitr-rpl90589%_
                     (lambda (_%rpl90778%_)
                       (let _%u90780%_ ((_%pl-rhead90782%_ _%rpl90778%_)
                                        (_%pl-tail90783%_ '())
                                        (_%sit-rhead90784%_
                                         (reverse _%sit90584%_))
                                        (_%sit-tail90785%_ '()))
                         (let* ((_%pl-rhead9078690795%_ _%pl-rhead90782%_)
                                (_%E9078990799%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%pl-rhead9078690795%_
                                          '([])
                                          '([c . plrh]))
                                   '#!void)))
                           (let ((_%K9079390829%_ (lambda () _%pl-tail90783%_))
                                 (_%K9079090813%_
                                  (lambda (_%plrh90803%_ _%c90804%_)
                                    (if (member _%c90804%_
                                                _%sit-tail90785%_
                                                _%eq90578%_)
                                        (let ((__tmp90915
                                               (let ((__tmp90916
                                                      (reverse _%pl-rhead90782%_)))
                                                 (declare (not safe))
                                                 (_%get-names90585%_
                                                  __tmp90916)))
                                              (__tmp90914
                                               (let ()
                                                 (declare (not safe))
                                                 (_%get-names90585%_
                                                  _%pl-tail90783%_)))
                                              (__tmp90912
                                               (let ((__tmp90913
                                                      (reverse _%sit-rhead90784%_)))
                                                 (declare (not safe))
                                                 (_%get-names90585%_
                                                  __tmp90913)))
                                              (__tmp90911
                                               (let ()
                                                 (declare (not safe))
                                                 (_%get-names90585%_
                                                  _%sit-tail90785%_)))
                                              (__tmp90910
                                               (_%get-name90580%_ _%c90804%_)))
                                          (declare (not safe))
                                          (_%err90586%_
                                           'precedence-list-head:
                                           __tmp90915
                                           'precedence-list-tail:
                                           __tmp90914
                                           'single-inheritance-head:
                                           __tmp90912
                                           'single-inheritance-tail:
                                           __tmp90911
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp90910))
                                        (let ((_g90917_
                                               (let ((__tmp90919
                                                      (lambda (_%g9080590807%_)
                                                        (_%eq90578%_
                                                         _%c90804%_
                                                         _%g9080590807%_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp90919
                                                  _%sit-rhead90784%_
                                                  _%sit-tail90785%_))))
                                          (begin
                                            (let ((_g90918_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g90917_)
                                                         (##vector-length
                                                          _g90917_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g90918_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g90918_)))
                                            (let ((_%sit-rh290810%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g90917_
                                                      0)))
                                                  (_%sit-tl290811%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g90917_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _%sit-rh290810%_))
                                                  (let ((__tmp90920
                                                         (cons _%c90804%_
                                                               _%pl-tail90783%_)))
                                                    (declare (not safe))
                                                    (_%u90780%_
                                                     _%plrh90803%_
                                                     __tmp90920
                                                     '()
                                                     _%sit-tl290811%_))
                                                  (let ((__tmp90921
                                                         (cdr _%sit-rh290810%_)))
                                                    (declare (not safe))
                                                    (_%u90780%_
                                                     _%plrh90803%_
                                                     _%pl-tail90783%_
                                                     __tmp90921
                                                     _%sit-tl290811%_))))))))))
                             (let ((_%try-match9078890825%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%pl-rhead9078690795%_))
                                          (let ((_%tl9079290818%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%pl-rhead9078690795%_)))
                                                (_%hd9079190816%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%pl-rhead9078690795%_))))
                                            (let ((_%c90821%_ _%hd9079190816%_)
                                                  (_%plrh90823%_
                                                   _%tl9079290818%_))
                                              (let ()
                                                (declare (not safe))
                                                (_%K9079090813%_
                                                 _%plrh90823%_
                                                 _%c90821%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E9078990799%_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%pl-rhead9078690795%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%K9079390829%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%try-match9078890825%_)))))))))
                    (_g90922_
                     (let ((_g90923_
                            (let ((__tmp90925 (reverse _%supers90572%_)))
                              (declare (not safe))
                              (append1! _%rpls90588%_ __tmp90925))))
                       #!void
                       _g90923_))
                    (_g90926_
                     (let ((_g90927_
                            (set! _%pls90583%_
                                  (let ()
                                    (declare (not safe))
                                    (##map _%unsitr-rpl90589%_
                                           _%rpls90588%_)))))
                       #!void
                       _g90927_))
                    (_%c3-select-next90590%_
                     (lambda (_%tails90728%_)
                       (let ((_%candidate?90734%_
                              (lambda (_%c90730%_)
                                (let ((__tmp90929
                                       (lambda (_%tail90732%_)
                                         (let ((__tmp90930
                                                (member _%c90730%_
                                                        (cdr _%tail90732%_)
                                                        _%eq90578%_)))
                                           (declare (not safe))
                                           (not __tmp90930)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp90929 _%tails90728%_)))))
                         (let _%loop90736%_ ((_%ts90738%_ _%tails90728%_))
                           (let* ((_%ts9073990749%_ _%ts90738%_)
                                  (_%else9074190757%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_%err90586%_))))
                                  (_%K9074390763%_
                                   (lambda (_%rts90760%_ _%c90761%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_%candidate?90734%_ _%c90761%_))
                                         _%c90761%_
                                         (let ()
                                           (declare (not safe))
                                           (_%loop90736%_ _%rts90760%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%ts9073990749%_))
                                 (let ((_%hd9074490766%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%ts9073990749%_)))
                                       (_%tl9074590768%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%ts9073990749%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%hd9074490766%_))
                                       (let* ((_%hd9074690771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd9074490766%_)))
                                              (_%c90774%_ _%hd9074690771%_)
                                              (_%rts90776%_ _%tl9074590768%_))
                                         (declare (not safe))
                                         (_%K9074390763%_
                                          _%rts90776%_
                                          _%c90774%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%err90586%_))))
                                 (let ()
                                   (declare (not safe))
                                   (_%err90586%_))))))))
                    (_%remove-next!90591%_
                     (lambda (_%next90673%_ _%tails90674%_)
                       (let _%loop90676%_ ((_%t90678%_ _%tails90674%_))
                         (let* ((_%t9067990690%_ _%t90678%_)
                                (_%E9068290694%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%t9067990690%_
                                          '([])
                                          '([[head . tail] . more]))
                                   '#!void)))
                           (let ((_%K9068890725%_ (lambda () _%tails90674%_))
                                 (_%K9068390702%_
                                  (lambda (_%more90698%_
                                           _%tail90699%_
                                           _%head90700%_)
                                    (if (_%eq90578%_
                                         _%head90700%_
                                         _%next90673%_)
                                        (set-car! _%t90678%_ _%tail90699%_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_%loop90676%_ _%more90698%_)))))
                             (let ((_%try-match9068190721%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%t9067990690%_))
                                          (let ((_%tl9068590707%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%t9067990690%_)))
                                                (_%hd9068490705%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%t9067990690%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd9068490705%_))
                                                (let ((_%tl9068790712%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd9068490705%_)))
                                                      (_%hd9068690710%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd9068490705%_))))
                                                  (let ((_%head90715%_
                                                         _%hd9068690710%_)
                                                        (_%tail90717%_
                                                         _%tl9068790712%_)
                                                        (_%more90719%_
                                                         _%tl9068590707%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%K9068390702%_
                                                       _%more90719%_
                                                       _%tail90717%_
                                                       _%head90715%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%E9068290694%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E9068290694%_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%t9067990690%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%K9068890725%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%try-match9068190721%_)))))))))
                    (_%precedence-list90592%_
                     (let _%c3loop90623%_ ((_%rhead90625%_ _%rhead90571%_)
                                           (_%tails90626%_ _%pls90583%_))
                       (let* ((_%tails90628%_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _%tails90626%_)))
                              (_%tails9062990639%_ _%tails90628%_)
                              (_%else9063290650%_
                               (lambda ()
                                 (let ((_%next90647%_
                                        (let ()
                                          (declare (not safe))
                                          (_%c3-select-next90590%_
                                           _%tails90628%_))))
                                   (let ((__tmp90932
                                          (cons _%next90647%_ _%rhead90625%_))
                                         (__tmp90931
                                          (let ()
                                            (declare (not safe))
                                            (_%remove-next!90591%_
                                             _%next90647%_
                                             _%tails90628%_))))
                                     (declare (not safe))
                                     (_%c3loop90623%_
                                      __tmp90932
                                      __tmp90931))))))
                         (let ((_%K9063790670%_
                                (lambda ()
                                  (append-reverse
                                   _%rhead90625%_
                                   _%sit90584%_)))
                               (_%K9063490656%_
                                (lambda (_%tail90654%_)
                                  (append-reverse
                                   _%rhead90625%_
                                   (append _%tail90654%_ _%sit90584%_)))))
                           (let ((_%try-match9063190666%_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tails9062990639%_))
                                        (let ((_%tl9063690661%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tails9062990639%_)))
                                              (_%hd9063590659%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tails9062990639%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl9063690661%_))
                                              (let ((_%tail90664%_
                                                     _%hd9063590659%_))
                                                (declare (not safe))
                                                (_%K9063490656%_
                                                 _%tail90664%_))
                                              (let ()
                                                (declare (not safe))
                                                (_%else9063290650%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else9063290650%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tails9062990639%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%K9063790670%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%try-match9063190666%_))))))))
                    (_%super-struct90593%_
                     (let* ((_%sit9059490602%_ _%sit90584%_)
                            (_%else9059690610%_ (lambda () '#f))
                            (_%K9059890615%_ (lambda (_%s90613%_) _%s90613%_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%sit9059490602%_))
                           (let* ((_%hd9059990618%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%sit9059490602%_)))
                                  (_%s90621%_ _%hd9059990618%_))
                             (declare (not safe))
                             (_%K9059890615%_ _%s90621%_))
                           (let ()
                             (declare (not safe))
                             (_%else9059690610%_))))))
            (values _%precedence-list90592%_ _%super-struct90593%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords90861%_ . _%args90862%_)
        (apply c4-linearize__%
               _%@@keywords90861%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords90861%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords90861%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords90861%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords90861%_
                  'get-name:
                  absent-value))
               _%args90862%_)))
    (define c4-linearize
      (lambda _%args9055990868%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9055990868%_)))))
