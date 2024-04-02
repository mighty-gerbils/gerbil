(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1712084994)
  (begin
    (define c4-linearize__%
      (lambda (_%_90447%_
               _%get-precedence-list9044190449%_
               _%struct?9044290451%_
               _%eq9044390453%_
               _%get-name9044490455%_
               _%rhead90457%_
               _%supers90458%_)
        (let* ((_%get-precedence-list90460%_
                (if (eq? _%get-precedence-list9044190449%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9044190449%_))
               (_%struct?90462%_
                (if (eq? _%struct?9044290451%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9044290451%_))
               (_%eq90464%_
                (if (eq? _%eq9044390453%_ absent-value) eq? _%eq9044390453%_))
               (_%get-name90466%_
                (if (eq? _%get-name9044490455%_ absent-value)
                    identity
                    _%get-name9044490455%_)))
          (letrec* ((_%pls90469%_
                     (map _%get-precedence-list90460%_ _%supers90458%_))
                    (_%sit90470%_ '())
                    (_%get-names90471%_
                     (lambda (_%lst90742%_)
                       (map _%get-name90466%_ _%lst90742%_)))
                    (_%err90472%_
                     (lambda _%a90740%_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp90789 (reverse _%rhead90457%_)))
                                (declare (not safe))
                                (_%get-names90471%_ __tmp90789))
                              'precedence-lists:
                              (let ()
                                (declare (not safe))
                                (##map _%get-names90471%_ _%pls90469%_))
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_%get-names90471%_ _%sit90470%_))
                              _%a90740%_)))
                    (_%merge-sit!90473%_
                     (lambda (_%sit290723%_)
                       (if (let () (declare (not safe)) (null? _%sit290723%_))
                           (let () '#!void)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _%sit90470%_))
                               (let () (set! _%sit90470%_ _%sit290723%_))
                               (let ()
                                 (let _%loop90728%_ ((_%t190730%_ _%sit90470%_)
                                                     (_%t290731%_
                                                      _%sit290723%_))
                                   (if (equal? _%t190730%_ _%sit290723%_)
                                       (let () '#!void)
                                       (if (equal? _%t290731%_ _%sit90470%_)
                                           (let ()
                                             (set! _%sit90470%_ _%sit290723%_))
                                           (if (or (let ()
                                                     (declare (not safe))
                                                     (null? _%t190730%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (null? _%t290731%_)))
                                               (let ()
                                                 (let ((__tmp90790
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_%get-names90471%_ _%sit90470%_))
                      (cons (let ()
                              (declare (not safe))
                              (_%get-names90471%_ _%sit290723%_))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%err90472%_
                                                    'single-inheritance-incompatibility:
                                                    __tmp90790)))
                                               (let ()
                                                 (let ((__tmp90792
                                                        (cdr _%t190730%_))
                                                       (__tmp90791
                                                        (cdr _%t290731%_)))
                                                   (declare (not safe))
                                                   (_%loop90728%_
                                                    __tmp90792
                                                    __tmp90791))))))))))))
                    (_%rpls90474%_
                     (let ((__tmp90793
                            (lambda (_%pl90718%_)
                              (let ((_g90794_
                                     (let ()
                                       (declare (not safe))
                                       (append-reverse-until
                                        _%struct?90462%_
                                        _%pl90718%_
                                        '()))))
                                (begin
                                  (let ((_g90795_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g90794_)
                                               (##vector-length _g90794_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g90795_ 2)))
                                        (error "Context expects 2 values"
                                               _g90795_)))
                                  (let ((_%tl90720%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g90794_ 0)))
                                        (_%rh90721%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g90794_ 1))))
                                    (begin
                                      (let ()
                                        (declare (not safe))
                                        (_%merge-sit!90473%_ _%tl90720%_))
                                      _%rh90721%_)))))))
                       (declare (not safe))
                       (##map __tmp90793 _%pls90469%_)))
                    (_%unsitr-rpl90475%_
                     (lambda (_%rpl90664%_)
                       (let _%u90666%_ ((_%pl-rhead90668%_ _%rpl90664%_)
                                        (_%pl-tail90669%_ '())
                                        (_%sit-rhead90670%_
                                         (reverse _%sit90470%_))
                                        (_%sit-tail90671%_ '()))
                         (let* ((_%pl-rhead9067290681%_ _%pl-rhead90668%_)
                                (_%E9067590685%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%pl-rhead9067290681%_
                                          '([])
                                          '([c . plrh]))
                                   '#!void)))
                           (let ((_%K9067990715%_ (lambda () _%pl-tail90669%_))
                                 (_%K9067690699%_
                                  (lambda (_%plrh90689%_ _%c90690%_)
                                    (if (member _%c90690%_
                                                _%sit-tail90671%_
                                                _%eq90464%_)
                                        (let ((__tmp90801
                                               (let ((__tmp90802
                                                      (reverse _%pl-rhead90668%_)))
                                                 (declare (not safe))
                                                 (_%get-names90471%_
                                                  __tmp90802)))
                                              (__tmp90800
                                               (let ()
                                                 (declare (not safe))
                                                 (_%get-names90471%_
                                                  _%pl-tail90669%_)))
                                              (__tmp90798
                                               (let ((__tmp90799
                                                      (reverse _%sit-rhead90670%_)))
                                                 (declare (not safe))
                                                 (_%get-names90471%_
                                                  __tmp90799)))
                                              (__tmp90797
                                               (let ()
                                                 (declare (not safe))
                                                 (_%get-names90471%_
                                                  _%sit-tail90671%_)))
                                              (__tmp90796
                                               (_%get-name90466%_ _%c90690%_)))
                                          (declare (not safe))
                                          (_%err90472%_
                                           'precedence-list-head:
                                           __tmp90801
                                           'precedence-list-tail:
                                           __tmp90800
                                           'single-inheritance-head:
                                           __tmp90798
                                           'single-inheritance-tail:
                                           __tmp90797
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp90796))
                                        (let ((_g90803_
                                               (let ((__tmp90805
                                                      (lambda (_%g9069190693%_)
                                                        (_%eq90464%_
                                                         _%c90690%_
                                                         _%g9069190693%_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp90805
                                                  _%sit-rhead90670%_
                                                  _%sit-tail90671%_))))
                                          (begin
                                            (let ((_g90804_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g90803_)
                                                         (##vector-length
                                                          _g90803_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g90804_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g90804_)))
                                            (let ((_%sit-rh290696%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g90803_
                                                      0)))
                                                  (_%sit-tl290697%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g90803_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _%sit-rh290696%_))
                                                  (let ((__tmp90806
                                                         (cons _%c90690%_
                                                               _%pl-tail90669%_)))
                                                    (declare (not safe))
                                                    (_%u90666%_
                                                     _%plrh90689%_
                                                     __tmp90806
                                                     '()
                                                     _%sit-tl290697%_))
                                                  (let ((__tmp90807
                                                         (cdr _%sit-rh290696%_)))
                                                    (declare (not safe))
                                                    (_%u90666%_
                                                     _%plrh90689%_
                                                     _%pl-tail90669%_
                                                     __tmp90807
                                                     _%sit-tl290697%_))))))))))
                             (let ((_%try-match9067490711%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%pl-rhead9067290681%_))
                                          (let ((_%tl9067890704%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%pl-rhead9067290681%_)))
                                                (_%hd9067790702%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%pl-rhead9067290681%_))))
                                            (let ((_%c90707%_ _%hd9067790702%_)
                                                  (_%plrh90709%_
                                                   _%tl9067890704%_))
                                              (let ()
                                                (declare (not safe))
                                                (_%K9067690699%_
                                                 _%plrh90709%_
                                                 _%c90707%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E9067590685%_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%pl-rhead9067290681%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%K9067990715%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%try-match9067490711%_)))))))))
                    (_g90808_
                     (let ((_g90809_
                            (let ((__tmp90811 (reverse _%supers90458%_)))
                              (declare (not safe))
                              (append1! _%rpls90474%_ __tmp90811))))
                       #!void
                       _g90809_))
                    (_g90812_
                     (let ((_g90813_
                            (set! _%pls90469%_
                                  (let ()
                                    (declare (not safe))
                                    (##map _%unsitr-rpl90475%_
                                           _%rpls90474%_)))))
                       #!void
                       _g90813_))
                    (_%c3-select-next90476%_
                     (lambda (_%tails90614%_)
                       (let ((_%candidate?90620%_
                              (lambda (_%c90616%_)
                                (let ((__tmp90815
                                       (lambda (_%tail90618%_)
                                         (let ((__tmp90816
                                                (member _%c90616%_
                                                        (cdr _%tail90618%_)
                                                        _%eq90464%_)))
                                           (declare (not safe))
                                           (not __tmp90816)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp90815 _%tails90614%_)))))
                         (let _%loop90622%_ ((_%ts90624%_ _%tails90614%_))
                           (let* ((_%ts9062590635%_ _%ts90624%_)
                                  (_%else9062790643%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_%err90472%_))))
                                  (_%K9062990649%_
                                   (lambda (_%rts90646%_ _%c90647%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_%candidate?90620%_ _%c90647%_))
                                         _%c90647%_
                                         (let ()
                                           (declare (not safe))
                                           (_%loop90622%_ _%rts90646%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%ts9062590635%_))
                                 (let ((_%hd9063090652%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%ts9062590635%_)))
                                       (_%tl9063190654%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%ts9062590635%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%hd9063090652%_))
                                       (let* ((_%hd9063290657%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd9063090652%_)))
                                              (_%c90660%_ _%hd9063290657%_)
                                              (_%rts90662%_ _%tl9063190654%_))
                                         (declare (not safe))
                                         (_%K9062990649%_
                                          _%rts90662%_
                                          _%c90660%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%err90472%_))))
                                 (let ()
                                   (declare (not safe))
                                   (_%err90472%_))))))))
                    (_%remove-next!90477%_
                     (lambda (_%next90559%_ _%tails90560%_)
                       (let _%loop90562%_ ((_%t90564%_ _%tails90560%_))
                         (let* ((_%t9056590576%_ _%t90564%_)
                                (_%E9056890580%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%t9056590576%_
                                          '([])
                                          '([[head . tail] . more]))
                                   '#!void)))
                           (let ((_%K9057490611%_ (lambda () _%tails90560%_))
                                 (_%K9056990588%_
                                  (lambda (_%more90584%_
                                           _%tail90585%_
                                           _%head90586%_)
                                    (if (_%eq90464%_
                                         _%head90586%_
                                         _%next90559%_)
                                        (set-car! _%t90564%_ _%tail90585%_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_%loop90562%_ _%more90584%_)))))
                             (let ((_%try-match9056790607%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%t9056590576%_))
                                          (let ((_%tl9057190593%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%t9056590576%_)))
                                                (_%hd9057090591%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%t9056590576%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd9057090591%_))
                                                (let ((_%tl9057390598%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd9057090591%_)))
                                                      (_%hd9057290596%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd9057090591%_))))
                                                  (let ((_%head90601%_
                                                         _%hd9057290596%_)
                                                        (_%tail90603%_
                                                         _%tl9057390598%_)
                                                        (_%more90605%_
                                                         _%tl9057190593%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%K9056990588%_
                                                       _%more90605%_
                                                       _%tail90603%_
                                                       _%head90601%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%E9056890580%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E9056890580%_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%t9056590576%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%K9057490611%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%try-match9056790607%_)))))))))
                    (_%precedence-list90478%_
                     (let _%c3loop90509%_ ((_%rhead90511%_ _%rhead90457%_)
                                           (_%tails90512%_ _%pls90469%_))
                       (let* ((_%tails90514%_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _%tails90512%_)))
                              (_%tails9051590525%_ _%tails90514%_)
                              (_%else9051890536%_
                               (lambda ()
                                 (let ((_%next90533%_
                                        (let ()
                                          (declare (not safe))
                                          (_%c3-select-next90476%_
                                           _%tails90514%_))))
                                   (let ((__tmp90818
                                          (cons _%next90533%_ _%rhead90511%_))
                                         (__tmp90817
                                          (let ()
                                            (declare (not safe))
                                            (_%remove-next!90477%_
                                             _%next90533%_
                                             _%tails90514%_))))
                                     (declare (not safe))
                                     (_%c3loop90509%_
                                      __tmp90818
                                      __tmp90817))))))
                         (let ((_%K9052390556%_
                                (lambda ()
                                  (append-reverse
                                   _%rhead90511%_
                                   _%sit90470%_)))
                               (_%K9052090542%_
                                (lambda (_%tail90540%_)
                                  (append-reverse
                                   _%rhead90511%_
                                   (append _%tail90540%_ _%sit90470%_)))))
                           (let ((_%try-match9051790552%_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tails9051590525%_))
                                        (let ((_%tl9052290547%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tails9051590525%_)))
                                              (_%hd9052190545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tails9051590525%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl9052290547%_))
                                              (let ((_%tail90550%_
                                                     _%hd9052190545%_))
                                                (declare (not safe))
                                                (_%K9052090542%_
                                                 _%tail90550%_))
                                              (let ()
                                                (declare (not safe))
                                                (_%else9051890536%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else9051890536%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tails9051590525%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%K9052390556%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%try-match9051790552%_))))))))
                    (_%super-struct90479%_
                     (let* ((_%sit9048090488%_ _%sit90470%_)
                            (_%else9048290496%_ (lambda () '#f))
                            (_%K9048490501%_ (lambda (_%s90499%_) _%s90499%_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%sit9048090488%_))
                           (let* ((_%hd9048590504%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%sit9048090488%_)))
                                  (_%s90507%_ _%hd9048590504%_))
                             (declare (not safe))
                             (_%K9048490501%_ _%s90507%_))
                           (let ()
                             (declare (not safe))
                             (_%else9048290496%_))))))
            (values _%precedence-list90478%_ _%super-struct90479%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords90747%_ . _%args90748%_)
        (apply c4-linearize__%
               _%@@keywords90747%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords90747%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords90747%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords90747%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords90747%_
                  'get-name:
                  absent-value))
               _%args90748%_)))
    (define c4-linearize
      (lambda _%args9044590754%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9044590754%_)))))
