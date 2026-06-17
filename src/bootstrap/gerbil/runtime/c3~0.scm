(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1781697556)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords123652%_
               _%$%get-precedence-list123646123653%_
               _%$%struct?123647123654%_
               _%$%eq123648123655%_
               _%$%get-name123649123656%_
               _%rhead123657%_
               _%supers123658%_)
        (let* ((_%get-precedence-list123660%_
                (if (eq? _%$%get-precedence-list123646123653%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%$%get-precedence-list123646123653%_))
               (_%struct?123664%_
                (if (eq? _%$%struct?123647123654%_ absent-value)
                    (lambda (_%_123662%_) '#f)
                    _%$%struct?123647123654%_))
               (_%eq123666%_
                (if (eq? _%$%eq123648123655%_ absent-value)
                    eq?
                    _%$%eq123648123655%_))
               (_%get-name123668%_
                (if (eq? _%$%get-name123649123656%_ absent-value)
                    identity
                    _%$%get-name123649123656%_)))
          (c4-linearize*__%
           '#f
           _%get-precedence-list123660%_
           _%struct?123664%_
           absent-value
           _%eq123666%_
           _%get-name123668%_
           (reverse _%rhead123657%_)
           (list _%supers123658%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords123674%_ . _%args123675%_)
        (apply c4-linearize__%
               _%@@keywords123674%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords123674%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords123674%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords123674%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords123674%_
                  'get-name:
                  absent-value))
               _%args123675%_)))
    (define c4-linearize
      (lambda _%$%args123650123681%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%$%args123650123681%_)))
    (define c4-linearize*__%
      (lambda (_%@@keywords122906%_
               _%$%get-precedence-list122899122907%_
               _%$%suffix?122900122908%_
               _%$%super-suffix122901122909%_
               _%$%eq122902122910%_
               _%$%get-name122903122911%_
               _%head122912%_
               _%parents122913%_)
        (let* ((_%get-precedence-list122915%_
                (if (eq? _%$%get-precedence-list122899122907%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%$%get-precedence-list122899122907%_))
               (_%suffix?122917%_
                (if (eq? _%$%suffix?122900122908%_ absent-value)
                    (error '"Missing required keyword argument" 'suffix:)
                    _%$%suffix?122900122908%_))
               (_%super-suffix122944%_
                (if (eq? _%$%super-suffix122901122909%_ absent-value)
                    (lambda (_%x122919%_)
                      (let* ((_%pred122921%_ _%suffix?122917%_)
                             (_%lst122924%_
                              (cdr (_%get-precedence-list122915%_
                                    _%x122919%_))))
                        (if (procedure? _%pred122921%_)
                            (let ((_%pred122929%_ _%pred122921%_))
                              (declare (not safe))
                              (__find _%pred122929%_ _%lst122924%_))
                            (begin
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               'gerbil/runtime/c3
                               'contract:
                               'procedure?
                               'value:
                               _%pred122921%_)
                              '#!void))))
                    _%$%super-suffix122901122909%_))
               (_%eq122946%_
                (if (eq? _%$%eq122902122910%_ absent-value)
                    eq?
                    _%$%eq122902122910%_))
               (_%get-name122948%_
                (if (eq? _%$%get-name122903122911%_ absent-value)
                    identity
                    _%$%get-name122903122911%_)))
          (set! _%parents122913%_
                (let ()
                  (declare (not safe))
                  (remove-nulls! _%parents122913%_)))
          (if (null? _%parents122913%_)
              (values _%head122912%_ '#f)
              (if (and (null? (cdr _%parents122913%_))
                       (null? (cdar _%parents122913%_)))
                  (let* ((_%parent122953%_ (caar _%parents122913%_))
                         (_%pl122955%_
                          (_%get-precedence-list122915%_ _%parent122953%_)))
                    (values (append _%head122912%_ _%pl122955%_)
                            (if (_%suffix?122917%_ _%parent122953%_)
                                _%parent122953%_
                                (_%super-suffix122944%_ _%parent122953%_))))
                  (let ((_%rcandidates122959%_ '())
                        (_%suffix122960%_ '#f)
                        (_%suffix-tail122961%_ '()))
                    (letrec* ((_g123757_
                               (let ((_g123758_
                                      (if (eq? _%eq122946%_ eq?)
                                          (values (lambda ()
                                                    (make-table 'test: eq?))
                                                  table-ref
                                                  table-set!
                                                  table-set!
                                                  table->list)
                                          (if (eq? _%eq122946%_ eqv?)
                                              (values (lambda ()
                                                        (make-table
                                                         'test:
                                                         eqv?))
                                                      table-ref
                                                      table-set!
                                                      table-set!
                                                      table->list)
                                              (if (eq? _%eq122946%_ equal?)
                                                  (values (lambda ()
                                                            (make-table
                                                             'test:
                                                             equal?))
                                                          table-ref
                                                          table-set!
                                                          table-set!
                                                          table->list)
                                                  (values (lambda ()
                                                            (letrec* ((_%this123564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '#f '())))
                      (let ()
                        (declare (not safe))
                        (##set-car! _%this123564%_ _%this123564%_))
                      _%this123564%_))
                  (lambda (_%tab123566%_ _%key123567%_ _%default123568%_)
                    (let ((_%$e123570%_
                           (assoc _%key123567%_
                                  (cdr _%tab123566%_)
                                  _%eq122946%_)))
                      (if _%$e123570%_ (cdr _%$e123570%_) _%default123568%_)))
                  (lambda (_%tab123574%_ _%key123575%_ _%value123576%_)
                    (let ((_%$e123578%_
                           (assoc _%key123575%_
                                  (cdr _%tab123574%_)
                                  _%eq122946%_)))
                      (if _%$e123578%_
                          (set-cdr! _%$e123578%_ _%value123576%_)
                          (let ((_%tail123584%_
                                 (cons (cons _%key123575%_ _%value123576%_)
                                       '())))
                            (set-cdr! (car _%tab123574%_) _%tail123584%_)
                            (set-car! _%tab123574%_ _%tail123584%_)))))
                  (lambda (_%tab123586%_ _%key123587%_)
                    (let _%lp123589%_ ((_%prev123591%_ _%tab123586%_)
                                       (_%rest123592%_ (cdr _%tab123586%_)))
                      (let* ((_%$%rest123593123602%_ _%rest123592%_)
                             (_%$%E123596123606%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%rest123593123602%_
                                       '([])
                                       '([entry . tail]))
                                '#!void)))
                        (let ((_%$%K123600123629%_ (lambda () '#!void))
                              (_%$%K123597123613%_
                               (lambda (_%tail123610%_ _%entry123611%_)
                                 (if (_%eq122946%_
                                      _%key123587%_
                                      (car _%entry123611%_))
                                     (begin
                                       (set-cdr! _%prev123591%_ _%tail123610%_)
                                       (if (null? _%tail123610%_)
                                           (set-car!
                                            _%tab123586%_
                                            _%prev123591%_)
                                           '#!void))
                                     (_%lp123589%_
                                      _%rest123592%_
                                      _%tail123610%_)))))
                          (let ((_%$%try-match123595123625%_
                                 (lambda ()
                                   (if (pair? _%$%rest123593123602%_)
                                       (let ((_%$%tl123599123618%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%rest123593123602%_)))
                                             (_%$%hd123598123616%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%rest123593123602%_))))
                                         (let ((_%entry123621%_
                                                _%$%hd123598123616%_)
                                               (_%tail123623%_
                                                _%$%tl123599123618%_))
                                           (_%$%K123597123613%_
                                            _%tail123623%_
                                            _%entry123621%_)))
                                       (_%$%E123596123606%_)))))
                            (if (null? _%$%rest123593123602%_)
                                '#!void
                                (_%$%try-match123595123625%_)))))))
                  cdr))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 #!void
                                 _g123758_))
                              (_%make-tab122963%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g123757_ 0)))
                              (_%tab-ref122964%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g123757_ 1)))
                              (_%tab-set!122965%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g123757_ 2)))
                              (_%tab-remove!122966%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g123757_ 3)))
                              (_%tab->list122967%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g123757_ 4)))
                              (_%get-names122968%_
                               (lambda (_%lst123554%_)
                                 (map _%get-name122948%_ _%lst123554%_)))
                              (_%err122969%_
                               (lambda _%a123552%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names122968%_ _%head122912%_)
                                        'parents:
                                        (map _%get-names122968%_
                                             _%parents122913%_)
                                        'precedence-lists:
                                        (let ((__tmp123759
                                               (map _%get-precedence-list122915%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl__0
                                                       append
                                                       '()
                                                       _%parents122913%_)))))
                                          (declare (not safe))
                                          (##map _%get-names122968%_
                                                 __tmp123759))
                                        'common-suffix-tail:
                                        (_%get-names122968%_
                                         _%suffix-tail122961%_)
                                        'rcandidates:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names122968%_
                                                 _%rcandidates122959%_))
                                        _%a123552%_)))
                              (_%super-suffix?122970%_
                               (lambda (_%s1123539%_ _%s2123540%_)
                                 (let ((_%$e123542%_ (not _%s2123540%_)))
                                   (if _%$e123542%_
                                       _%$e123542%_
                                       (let _%loop123545%_ ((_%s123547%_
                                                             _%s1123539%_))
                                         (if _%s123547%_
                                             (let ((_%$e123549%_
                                                    (_%eq122946%_
                                                     _%s123547%_
                                                     _%s2123540%_)))
                                               (if _%$e123549%_
                                                   _%$e123549%_
                                                   (_%loop123545%_
                                                    (_%super-suffix122944%_
                                                     _%s123547%_))))
                                             '#f))))))
                              (_%merge-suffix122971%_
                               (lambda (_%s1123523%_ _%s2123524%_)
                                 (if (not _%s2123524%_)
                                     _%s1123523%_
                                     (if (not _%s1123523%_)
                                         _%s2123524%_
                                         (let _%loop123529%_ ((_%t1123531%_
                                                               _%s1123523%_)
                                                              (_%t2123532%_
                                                               _%s2123524%_))
                                           (if (not _%t1123531%_)
                                               (if (_%super-suffix?122970%_
                                                    _%t2123532%_
                                                    _%s1123523%_)
                                                   _%s2123524%_
                                                   (_%err122969%_
                                                    'suffix-incompatibility:
                                                    (cons (_%get-name122948%_
                                                           _%s1123523%_)
                                                          (cons (_%get-name122948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%s2123524%_)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (not _%t2123532%_)
                                                   (if (_%super-suffix?122970%_
                                                        _%t1123531%_
                                                        _%s2123524%_)
                                                       _%s1123523%_
                                                       (_%err122969%_
                                                        'suffix-incompatibility:
                                                        (cons (_%get-name122948%_
                                                               _%s1123523%_)
                                                              (cons (_%get-name122948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%s2123524%_)
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (_%eq122946%_
                                                        _%t1123531%_
                                                        _%s2123524%_)
                                                       _%s1123523%_
                                                       (if (_%eq122946%_
                                                            _%t2123532%_
                                                            _%s1123523%_)
                                                           _%s2123524%_
                                                           (_%loop123529%_
                                                            (_%super-suffix122944%_
                                                             _%t1123531%_)
                                                            (_%super-suffix122944%_
                                                             _%t2123532%_)))))))))))
                              (_%ancestor-counts122972%_ (_%make-tab122963%_))
                              (_%get-ancestor-count122973%_
                               (lambda (_%c123521%_)
                                 (_%tab-ref122964%_
                                  _%ancestor-counts122972%_
                                  _%c123521%_
                                  '0)))
                              (_%increment-ancestor-count122974%_
                               (lambda (_%c123503%_)
                                 (_%tab-set!122965%_
                                  _%ancestor-counts122972%_
                                  _%c123503%_
                                  (let ((_%x123505%_
                                         (_%get-ancestor-count122973%_
                                          _%c123503%_)))
                                    (if (number? _%x123505%_)
                                        (let ((_%x123510%_ _%x123505%_))
                                          (declare (not safe))
                                          (__1+ _%x123510%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/c3
                                           'contract:
                                           'number?
                                           'value:
                                           _%x123505%_)
                                          '#!void))))))
                              (_%decrement-ancestor-count122975%_
                               (lambda (_%c123483%_)
                                 (let ((_%count123501%_
                                        (let ((_%x123485%_
                                               (_%get-ancestor-count122973%_
                                                _%c123483%_)))
                                          (if (number? _%x123485%_)
                                              (let ((_%x123490%_ _%x123485%_))
                                                (declare (not safe))
                                                (__1- _%x123490%_))
                                              (begin
                                                (raise-contract-violation-error
                                                 '"contract violation"
                                                 'context:
                                                 'gerbil/runtime/c3
                                                 'contract:
                                                 'number?
                                                 'value:
                                                 _%x123485%_)
                                                '#!void)))))
                                   (if (= '0 _%count123501%_)
                                       (_%tab-remove!122966%_
                                        _%ancestor-counts122972%_
                                        _%c123483%_)
                                       (_%tab-set!122965%_
                                        _%ancestor-counts122972%_
                                        _%c123483%_
                                        _%count123501%_)))))
                              (_g123760_
                               (let ((_g123761_
                                      (for-each
                                       (lambda (_%parent-list122977%_)
                                         (for-each
                                          (lambda (_%parent122979%_)
                                            (if (zero? (_%get-ancestor-count122973%_
                                                        _%parent122979%_))
                                                (let _%loop122981%_ ((_%al122983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_%get-precedence-list122915%_ _%parent122979%_))
                             (_%r122984%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (letrec ((_%done122986%_
                                                            (lambda ()
                                                              (if (null? _%r122984%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (set! _%rcandidates122959%_
                                (cons _%r122984%_ _%rcandidates122959%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%al122987122996%_
                                                            _%al122983%_)
                                                           (_%$%E122990123000%_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%al122987122996%_
                             '([])
                             '([a . ar]))
                      '#!void)))
              (let ((_%$%K122994123067%_ (lambda () (_%done122986%_)))
                    (_%$%K122991123051%_
                     (lambda (_%ar123004%_ _%a123005%_)
                       (if (_%suffix?122917%_ _%a123005%_)
                           (let ((_%ms123007%_
                                  (_%merge-suffix122971%_
                                   _%a123005%_
                                   _%suffix122960%_)))
                             (if (and _%suffix122960%_
                                      (_%eq122946%_
                                       _%ms123007%_
                                       _%suffix122960%_))
                                 '#!void
                                 (begin
                                   (let _%loop2123009%_ ((_%tl123011%_
                                                          _%al122983%_))
                                     (let* ((_%$%tl123012123021%_ _%tl123011%_)
                                            (_%$%E123015123025%_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _%$%tl123012123021%_
                                                      '([])
                                                      '([t . tr]))
                                               '#!void)))
                                       (let ((_%$%K123019123048%_
                                              (lambda () '#!void))
                                             (_%$%K123016123032%_
                                              (lambda (_%tr123029%_
                                                       _%t123030%_)
                                                (if (and _%suffix122960%_
                                                         (_%eq122946%_
                                                          _%t123030%_
                                                          _%suffix122960%_))
                                                    '#!void
                                                    (begin
                                                      (_%increment-ancestor-count122974%_
                                                       _%t123030%_)
                                                      (_%loop2123009%_
                                                       _%tr123029%_))))))
                                         (let ((_%$%try-match123014123044%_
                                                (lambda ()
                                                  (if (pair? _%$%tl123012123021%_)
                                                      (let ((_%$%tl123018123037%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%tl123012123021%_)))
                    (_%$%hd123017123035%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%tl123012123021%_))))
                (let ((_%t123040%_ _%$%hd123017123035%_)
                      (_%tr123042%_ _%$%tl123018123037%_))
                  (_%$%K123016123032%_ _%tr123042%_ _%t123040%_)))
              (_%$%E123015123025%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (null? _%$%tl123012123021%_)
                                               '#!void
                                               (_%$%try-match123014123044%_))))))
                                   (set! _%suffix122960%_ _%a123005%_)
                                   (set! _%suffix-tail122961%_ _%al122983%_)))
                             (_%done122986%_))
                           (begin
                             (_%increment-ancestor-count122974%_ _%a123005%_)
                             (_%loop122981%_
                              _%ar123004%_
                              (cons _%a123005%_ _%r122984%_)))))))
                (let ((_%$%try-match122989123063%_
                       (lambda ()
                         (if (pair? _%$%al122987122996%_)
                             (let ((_%$%tl122993123056%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%al122987122996%_)))
                                   (_%$%hd122992123054%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%al122987122996%_))))
                               (let ((_%a123059%_ _%$%hd122992123054%_)
                                     (_%ar123061%_ _%$%tl122993123056%_))
                                 (_%$%K122991123051%_
                                  _%ar123061%_
                                  _%a123059%_)))
                             (_%$%E122990123000%_)))))
                  (if (null? _%$%al122987122996%_)
                      (_%done122986%_)
                      (_%$%try-match122989123063%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '#!void))
                                          _%parent-list122977%_))
                                       _%parents122913%_)))
                                 #!void
                                 _g123761_))
                              (_%suffix-tail-index123070%_
                               (_%make-tab122963%_))
                              (_g123763_
                               (let ((_g123764_
                                      (let _%loop123072%_ ((_%i123074%_
                                                            (length _%suffix-tail122961%_))
                                                           (_%t123075%_
                                                            _%suffix-tail122961%_))
                                        (let* ((_%$%t123076123085%_
                                                _%t123075%_)
                                               (_%$%E123079123089%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%$%t123076123085%_
                                                         '([])
                                                         '([a . r]))
                                                  '#!void)))
                                          (let ((_%$%K123083123140%_
                                                 (lambda () '#!void))
                                                (_%$%K123080123124%_
                                                 (lambda (_%r123093%_
                                                          _%a123094%_)
                                                   (_%tab-set!122965%_
                                                    _%suffix-tail-index123070%_
                                                    _%a123094%_
                                                    _%i123074%_)
                                                   (_%loop123072%_
                                                    (let ((_%x123096%_
                                                           _%i123074%_))
                                                      (if (number? _%x123096%_)
                                                          (let ((_%x123101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%x123096%_))
                    (declare (not safe))
                    (__1- _%x123101%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/c3
                     'contract:
                     'number?
                     'value:
                     _%x123096%_)
                    '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r123093%_))))
                                            (let ((_%$%try-match123078123136%_
                                                   (lambda ()
                                                     (if (pair? _%$%t123076123085%_)
                                                         (let ((_%$%tl123082123129%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%$%t123076123085%_)))
                       (_%$%hd123081123127%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%t123076123085%_))))
                   (let ((_%a123132%_ _%$%hd123081123127%_)
                         (_%r123134%_ _%$%tl123082123129%_))
                     (_%$%K123080123124%_ _%r123134%_ _%a123132%_)))
                 (_%$%E123079123089%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%$%t123076123085%_)
                                                  '#!void
                                                  (_%$%try-match123078123136%_))))))))
                                 #!void
                                 _g123764_))
                              (_%r-local-order123142%_
                               (let ((__tmp123766
                                      (lambda (_%parent-list123481%_)
                                        (if (null? (cdr _%parent-list123481%_))
                                            '#f
                                            (reverse _%parent-list123481%_)))))
                                 (declare (not safe))
                                 (filter-map__0
                                  __tmp123766
                                  _%parents122913%_)))
                              (_g123767_
                               (let ((_g123768_
                                      (let ((__tmp123770
                                             (lambda (_%cl123144%_)
                                               (for-each
                                                _%increment-ancestor-count122974%_
                                                _%cl123144%_))))
                                        (declare (not safe))
                                        (##for-each
                                         __tmp123770
                                         _%r-local-order123142%_))))
                                 #!void
                                 _g123768_))
                              (_g123771_
                               (let ((_g123772_
                                      (set! _%rcandidates122959%_
                                            (let ()
                                              (declare (not safe))
                                              (##append
                                               _%r-local-order123142%_
                                               _%rcandidates122959%_)))))
                                 #!void
                                 _g123772_))
                              (_%remove-suffix-tail-and-reverse123145%_
                               (lambda (_%rcl123355%_)
                                 (let _%u123357%_ ((_%cl-rhead123359%_
                                                    _%rcl123355%_)
                                                   (_%suffix-pos123360%_ '-1))
                                   (let* ((_%$%cl-rhead123361123370%_
                                           _%cl-rhead123359%_)
                                          (_%$%E123364123374%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%$%cl-rhead123361123370%_
                                                    '([])
                                                    '([c . clrh]))
                                             '#!void)))
                                     (let ((_%$%K123368123478%_
                                            (lambda () '()))
                                           (_%$%K123365123462%_
                                            (lambda (_%clrh123378%_
                                                     _%c123379%_)
                                              (let ((_%p123381%_
                                                     (_%tab-ref122964%_
                                                      _%suffix-tail-index123070%_
                                                      _%c123379%_
                                                      '#f)))
                                                (letrec ((_%err2123383%_
                                                          (lambda _%a123428%_
                                                            (apply _%err122969%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'reverse-candidate-list:
                           (_%get-names122968%_ _%rcl123355%_)
                           'suffix-tail-index:
                           (map (lambda (_%$%e123429123431%_)
                                  (let* ((_%$%$%e123429123433123440%_
                                          _%$%e123429123431%_)
                                         (_%$%E123435123444%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%$%$%e123429123433123440%_
                                                   '([a . i]))
                                            '#!void))
                                         (_%$%K123436123450%_
                                          (lambda (_%i123447%_ _%a123448%_)
                                            (cons (_%get-name122948%_
                                                   _%a123448%_)
                                                  _%i123447%_))))
                                    (if (pair? _%$%$%e123429123433123440%_)
                                        (let ((_%$%hd123437123453%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%$%e123429123433123440%_)))
                                              (_%$%tl123438123455%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%$%e123429123433123440%_))))
                                          (let* ((_%a123458%_
                                                  _%$%hd123437123453%_)
                                                 (_%i123460%_
                                                  _%$%tl123438123455%_))
                                            (_%$%K123436123450%_
                                             _%i123460%_
                                             _%a123458%_)))
                                        (_%$%E123435123444%_))))
                                (_%tab->list122967%_
                                 _%suffix-tail-index123070%_))
                           'c:
                           (_%get-name122948%_ _%c123379%_)
                           'p:
                           _%p123381%_
                           'suffix-pos:
                           _%suffix-pos123360%_
                           _%a123428%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (not _%p123381%_)
                                                      (let ((_g123774_
                                                             (let* ((_%pred123390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%$%g123385123387%_)
                               (_%tab-ref122964%_
                                _%suffix-tail-index123070%_
                                _%$%g123385123387%_
                                '#f)))
                            (_%rhead123393%_ _%clrh123378%_)
                            (_%tail123396%_ (cons _%c123379%_ '()))
                            (_%pred123401%_ _%pred123390%_))
                       (declare (not safe))
                       (__append-reverse-until
                        _%pred123401%_
                        _%rhead123393%_
                        _%tail123396%_))))
                (begin
                  (let ((_g123775_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g123774_)
                               (##values-length _g123774_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g123775_ 2)))
                        (error "Context expects 2 values" _g123775_)))
                  (let ((_%clrh2123423%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g123774_ 0)))
                        (_%h123424%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g123774_ 1))))
                    (if (null? _%clrh2123423%_)
                        _%h123424%_
                        (_%err2123383%_
                         'precedence-list-tail:
                         (_%get-names122968%_ _%h123424%_)
                         'ancestor-out-of-order-vs-suffix-tail:
                         (_%get-name122948%_ (car _%clrh2123423%_))
                         'precedence-list-head:
                         (_%get-names122968%_ (reverse _%clrh2123423%_)))))))
              (if (> _%p123381%_ _%suffix-pos123360%_)
                  (_%u123357%_ _%clrh123378%_ _%p123381%_)
                  (_%err2123383%_
                   'ancestor-out-of-order-vs-suffix-tail:
                   (_%get-name122948%_ _%c123379%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%$%try-match123363123474%_
                                              (lambda ()
                                                (if (pair? _%$%cl-rhead123361123370%_)
                                                    (let ((_%$%tl123367123467%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%cl-rhead123361123370%_)))
                                                          (_%$%hd123366123465%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%cl-rhead123361123370%_))))
                                                      (let ((_%c123470%_
                                                             _%$%hd123366123465%_)
                                                            (_%clrh123472%_
                                                             _%$%tl123367123467%_))
                                                        (_%$%K123365123462%_
                                                         _%clrh123472%_
                                                         _%c123470%_)))
                                                    (_%$%E123364123374%_)))))
                                         (if (null? _%$%cl-rhead123361123370%_)
                                             (_%$%K123368123478%_)
                                             (_%$%try-match123363123474%_))))))))
                              (_%candidates123146%_
                               (reverse (let ((__tmp123776
                                               (let ()
                                                 (declare (not safe))
                                                 (##map _%remove-suffix-tail-and-reverse123145%_
                                                        _%rcandidates122959%_))))
                                          (declare (not safe))
                                          (remove-nulls! __tmp123776))))
                              (_g123777_
                               (let ((_g123778_
                                      (let ((__tmp123780
                                             (lambda (_%cl123148%_)
                                               (_%decrement-ancestor-count122975%_
                                                (car _%cl123148%_)))))
                                        (declare (not safe))
                                        (##for-each
                                         __tmp123780
                                         _%candidates123146%_))))
                                 #!void
                                 _g123778_))
                              (_%c3-select-next123149%_
                               (lambda (_%tails123311%_)
                                 (let _%loop123313%_ ((_%ts123315%_
                                                       _%tails123311%_))
                                   (let* ((_%$%ts123316123326%_ _%ts123315%_)
                                          (_%$%else123318123334%_
                                           (lambda ()
                                             (_%err122969%_
                                              'c3-select-next:
                                              'fail)))
                                          (_%$%K123320123340%_
                                           (lambda (_%rts123337%_ _%c123338%_)
                                             (if (zero? (_%get-ancestor-count122973%_
                                                         _%c123338%_))
                                                 _%c123338%_
                                                 (_%loop123313%_
                                                  _%rts123337%_)))))
                                     (if (pair? _%$%ts123316123326%_)
                                         (let ((_%$%hd123321123343%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%ts123316123326%_)))
                                               (_%$%tl123322123345%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%ts123316123326%_))))
                                           (if (pair? _%$%hd123321123343%_)
                                               (let* ((_%$%hd123323123348%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd123321123343%_)))
                                                      (_%c123351%_
                                                       _%$%hd123323123348%_)
                                                      (_%rts123353%_
                                                       _%$%tl123322123345%_))
                                                 (_%$%K123320123340%_
                                                  _%rts123353%_
                                                  _%c123351%_))
                                               (_%$%else123318123334%_)))
                                         (_%$%else123318123334%_))))))
                              (_%remove-next!123150%_
                               (lambda (_%next123201%_ _%tails123202%_)
                                 (let _%loop123204%_ ((_%t123206%_
                                                       _%tails123202%_))
                                   (let* ((_%$%t123207123222%_ _%t123206%_)
                                          (_%$%E123211123226%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%$%t123207123222%_
                                                    '([(and hd
                                                            [(? (cut eq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             next
                             <>))
                     .
                     tl])
               .
               rr])
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '([_ . rr])
                                                    '(_))
                                             '#!void)))
                                     (let ((_%$%K123216123288%_
                                            (lambda (_%rr123251%_
                                                     _%tl123252%_
                                                     _%hd123253%_)
                                              (let* ((_%$%tl123254123263%_
                                                      _%tl123252%_)
                                                     (_%$%E123257123267%_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _%$%tl123254123263%_
                                                               '([c . _])
                                                               '(_))
                                                        '#!void)))
                                                (let ((_%$%K123259123280%_
                                                       (lambda (_%c123278%_)
                                                         (_%decrement-ancestor-count122975%_
                                                          _%c123278%_)))
                                                      (_%$%K123258123272%_
                                                       (lambda () '#!void)))
                                                  (if (pair? _%$%tl123254123263%_)
                                                      (let* ((_%$%hd123260123283%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%tl123254123263%_)))
                     (_%c123286%_ _%$%hd123260123283%_))
                (_%decrement-ancestor-count122975%_ _%c123286%_))
              '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (set-car!
                                               _%t123206%_
                                               _%tl123252%_)
                                              (_%loop123204%_ _%rr123251%_)))
                                           (_%$%K123213123240%_
                                            (lambda (_%rr123238%_)
                                              (_%loop123204%_ _%rr123238%_)))
                                           (_%$%K123212123231%_
                                            (lambda () _%tails123202%_)))
                                       (if (pair? _%$%t123207123222%_)
                                           (let ((_%$%tl123218123293%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%t123207123222%_)))
                                                 (_%$%hd123217123291%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%t123207123222%_))))
                                             (if (pair? _%$%hd123217123291%_)
                                                 (let ((_%$%tl123220123300%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%hd123217123291%_)))
                                                       (_%$%hd123219123298%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%hd123217123291%_))))
                                                   (if (_%eq122946%_
                                                        _%next123201%_
                                                        _%$%hd123219123298%_)
                                                       (let ((_%hd123296%_
                                                              _%$%hd123217123291%_)
                                                             (_%tl123307%_
                                                              _%$%tl123220123300%_)
                                                             (_%rr123309%_
                                                              _%$%tl123218123293%_))
                                                         (_%$%K123216123288%_
                                                          _%rr123309%_
                                                          _%tl123307%_
                                                          _%hd123296%_))
                                                       (let ((_%rr123246%_
                                                              _%$%tl123218123293%_))
                                                         (_%loop123204%_
                                                          _%rr123246%_))))
                                                 (let ((_%rr123246%_
                                                        _%$%tl123218123293%_))
                                                   (_%loop123204%_
                                                    _%rr123246%_))))
                                           (_%$%K123212123231%_)))))))
                              (_%precedence-list123151%_
                               (let _%c3loop123153%_ ((_%rhead123155%_
                                                       (reverse _%head122912%_))
                                                      (_%tails123156%_
                                                       _%candidates123146%_))
                                 (let* ((_%$%tails123157123167%_
                                         _%tails123156%_)
                                        (_%$%else123160123178%_
                                         (lambda ()
                                           (let ((_%next123175%_
                                                  (_%c3-select-next123149%_
                                                   _%tails123156%_)))
                                             (_%c3loop123153%_
                                              (cons _%next123175%_
                                                    _%rhead123155%_)
                                              (let ((__tmp123781
                                                     (_%remove-next!123150%_
                                                      _%next123175%_
                                                      _%tails123156%_)))
                                                (declare (not safe))
                                                (remove-nulls!
                                                 __tmp123781)))))))
                                   (let ((_%$%K123165123198%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead123155%_
                                             _%suffix-tail122961%_)))
                                         (_%$%K123162123184%_
                                          (lambda (_%tail123182%_)
                                            (append-reverse
                                             _%rhead123155%_
                                             (append _%tail123182%_
                                                     _%suffix-tail122961%_)))))
                                     (let ((_%$%try-match123159123194%_
                                            (lambda ()
                                              (if (pair? _%$%tails123157123167%_)
                                                  (let ((_%$%tl123164123189%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tails123157123167%_)))
                                                        (_%$%hd123163123187%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tails123157123167%_))))
                                                    (if (null? _%$%tl123164123189%_)
                                                        (let ((_%tail123192%_
                                                               _%$%hd123163123187%_))
                                                          (_%$%K123162123184%_
                                                           _%tail123192%_))
                                                        (_%$%else123160123178%_)))
                                                  (_%$%else123160123178%_)))))
                                       (if (null? _%$%tails123157123167%_)
                                           (_%$%K123165123198%_)
                                           (_%$%try-match123159123194%_))))))))
                      (values _%precedence-list123151%_
                              _%suffix122960%_))))))))
    (define c4-linearize*__@
      (lambda (_%@@keywords123635%_ . _%args123636%_)
        (apply c4-linearize*__%
               _%@@keywords123635%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords123635%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords123635%_
                  'suffix:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords123635%_
                  'super-suffix:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords123635%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords123635%_
                  'get-name:
                  absent-value))
               _%args123636%_)))
    (define c4-linearize*
      (lambda _%$%args122904123642%_
        (apply keyword-dispatch
               '#(#f
                  #f
                  super-suffix:
                  eq:
                  suffix:
                  #f
                  #f
                  get-precedence-list:
                  #f
                  get-name:)
               c4-linearize*__@
               _%$%args122904123642%_)))
    (define c4-compute-class-slots
      (lambda (_%precedence-list122853%_
               _%direct-slot-list122854%_
               _%mixin-slot-names122855%_
               _%result122856%_)
        (let* ((_%next-slot122858%_ '1)
               (_%slot-table122860%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots122862%_ (cons 'class '()))
               (_%process-slot122887%_
                (lambda (_%slot122864%_)
                  (if (symbol? _%slot122864%_)
                      '#!void
                      (error '"invalid slot name" _%slot122864%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table122860%_
                              _%slot122864%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table122860%_
                           _%slot122864%_
                           _%next-slot122858%_))
                        (let ((__tmp123782
                               (let ((_%sym122866%_ _%slot122864%_))
                                 (if (symbol? _%sym122866%_)
                                     (let ((_%sym122871%_ _%sym122866%_))
                                       (declare (not safe))
                                       (__symbol->keyword _%sym122871%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/c3
                                        'contract:
                                        'symbol?
                                        'value:
                                        _%sym122866%_)
                                       '#!void)))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table122860%_
                           __tmp123782
                           _%next-slot122858%_))
                        (set! _%r-slots122862%_
                              (cons _%slot122864%_ _%r-slots122862%_))
                        (set! _%next-slot122858%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot122858%_ '1))))
                      '#!void)))
               (_%process-slots122893%_
                (lambda (_%$%g122888122890%_)
                  (for-each _%process-slot122887%_ _%$%g122888122890%_))))
          (let ((__tmp123784
                 (lambda (_%mixin122896%_)
                   (_%process-slots122893%_
                    (_%mixin-slot-names122855%_ _%mixin122896%_))))
                (__tmp123783 (reverse _%precedence-list122853%_)))
            (declare (not safe))
            (##for-each __tmp123784 __tmp123783))
          (_%process-slots122893%_ _%direct-slot-list122854%_)
          (_%result122856%_
           (reverse! _%r-slots122862%_)
           _%slot-table122860%_))))))
