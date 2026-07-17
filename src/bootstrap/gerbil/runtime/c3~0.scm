(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1784471374)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords127689%_
               _%$%get-precedence-list127683127690%_
               _%$%struct?127684127691%_
               _%$%eq127685127692%_
               _%$%get-name127686127693%_
               _%rhead127694%_
               _%supers127695%_)
        (let* ((_%get-precedence-list127697%_
                (if (eq? _%$%get-precedence-list127683127690%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%$%get-precedence-list127683127690%_))
               (_%struct?127701%_
                (if (eq? _%$%struct?127684127691%_ absent-value)
                    (lambda (_%_127699%_) '#f)
                    _%$%struct?127684127691%_))
               (_%eq127703%_
                (if (eq? _%$%eq127685127692%_ absent-value)
                    eq?
                    _%$%eq127685127692%_))
               (_%get-name127705%_
                (if (eq? _%$%get-name127686127693%_ absent-value)
                    identity
                    _%$%get-name127686127693%_)))
          (c4-linearize*__%
           '#f
           _%get-precedence-list127697%_
           _%struct?127701%_
           absent-value
           _%eq127703%_
           _%get-name127705%_
           (reverse _%rhead127694%_)
           (list _%supers127695%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords127711%_ . _%args127712%_)
        (apply c4-linearize__%
               _%@@keywords127711%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords127711%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords127711%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords127711%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords127711%_
                  'get-name:
                  absent-value))
               _%args127712%_)))
    (define c4-linearize
      (lambda _%$%args127687127718%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%$%args127687127718%_)))
    (define c4-linearize*__%
      (lambda (_%@@keywords126943%_
               _%$%get-precedence-list126936126944%_
               _%$%suffix?126937126945%_
               _%$%super-suffix126938126946%_
               _%$%eq126939126947%_
               _%$%get-name126940126948%_
               _%head126949%_
               _%parents126950%_)
        (let* ((_%get-precedence-list126952%_
                (if (eq? _%$%get-precedence-list126936126944%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%$%get-precedence-list126936126944%_))
               (_%suffix?126954%_
                (if (eq? _%$%suffix?126937126945%_ absent-value)
                    (error '"Missing required keyword argument" 'suffix:)
                    _%$%suffix?126937126945%_))
               (_%super-suffix126981%_
                (if (eq? _%$%super-suffix126938126946%_ absent-value)
                    (lambda (_%x126956%_)
                      (let* ((_%pred126958%_ _%suffix?126954%_)
                             (_%lst126961%_
                              (cdr (_%get-precedence-list126952%_
                                    _%x126956%_))))
                        (if (procedure? _%pred126958%_)
                            (let ((_%pred126966%_ _%pred126958%_))
                              (declare (not safe))
                              (__find _%pred126966%_ _%lst126961%_))
                            (begin
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               'gerbil/runtime/c3
                               'contract:
                               'procedure?
                               'value:
                               _%pred126958%_)
                              '#!void))))
                    _%$%super-suffix126938126946%_))
               (_%eq126983%_
                (if (eq? _%$%eq126939126947%_ absent-value)
                    eq?
                    _%$%eq126939126947%_))
               (_%get-name126985%_
                (if (eq? _%$%get-name126940126948%_ absent-value)
                    identity
                    _%$%get-name126940126948%_)))
          (set! _%parents126950%_
                (let ()
                  (declare (not safe))
                  (remove-nulls! _%parents126950%_)))
          (if (null? _%parents126950%_)
              (values _%head126949%_ '#f)
              (if (and (null? (cdr _%parents126950%_))
                       (null? (cdar _%parents126950%_)))
                  (let* ((_%parent126990%_ (caar _%parents126950%_))
                         (_%pl126992%_
                          (_%get-precedence-list126952%_ _%parent126990%_)))
                    (values (append _%head126949%_ _%pl126992%_)
                            (if (_%suffix?126954%_ _%parent126990%_)
                                _%parent126990%_
                                (_%super-suffix126981%_ _%parent126990%_))))
                  (let ((_%rcandidates126996%_ '())
                        (_%suffix126997%_ '#f)
                        (_%suffix-tail126998%_ '()))
                    (letrec* ((_g127794_
                               (let ((_g127795_
                                      (if (eq? _%eq126983%_ eq?)
                                          (values (lambda ()
                                                    (make-table 'test: eq?))
                                                  table-ref
                                                  table-set!
                                                  table-set!
                                                  table->list)
                                          (if (eq? _%eq126983%_ eqv?)
                                              (values (lambda ()
                                                        (make-table
                                                         'test:
                                                         eqv?))
                                                      table-ref
                                                      table-set!
                                                      table-set!
                                                      table->list)
                                              (if (eq? _%eq126983%_ equal?)
                                                  (values (lambda ()
                                                            (make-table
                                                             'test:
                                                             equal?))
                                                          table-ref
                                                          table-set!
                                                          table-set!
                                                          table->list)
                                                  (values (lambda ()
                                                            (letrec* ((_%this127601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '#f '())))
                      (let ()
                        (declare (not safe))
                        (##set-car! _%this127601%_ _%this127601%_))
                      _%this127601%_))
                  (lambda (_%tab127603%_ _%key127604%_ _%default127605%_)
                    (let ((_%$e127607%_
                           (assoc _%key127604%_
                                  (cdr _%tab127603%_)
                                  _%eq126983%_)))
                      (if _%$e127607%_ (cdr _%$e127607%_) _%default127605%_)))
                  (lambda (_%tab127611%_ _%key127612%_ _%value127613%_)
                    (let ((_%$e127615%_
                           (assoc _%key127612%_
                                  (cdr _%tab127611%_)
                                  _%eq126983%_)))
                      (if _%$e127615%_
                          (set-cdr! _%$e127615%_ _%value127613%_)
                          (let ((_%tail127621%_
                                 (cons (cons _%key127612%_ _%value127613%_)
                                       '())))
                            (set-cdr! (car _%tab127611%_) _%tail127621%_)
                            (set-car! _%tab127611%_ _%tail127621%_)))))
                  (lambda (_%tab127623%_ _%key127624%_)
                    (let _%lp127626%_ ((_%prev127628%_ _%tab127623%_)
                                       (_%rest127629%_ (cdr _%tab127623%_)))
                      (let* ((_%$%rest127630127639%_ _%rest127629%_)
                             (_%$%E127633127643%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%rest127630127639%_
                                       '([])
                                       '([entry . tail]))
                                '#!void)))
                        (let ((_%$%K127637127666%_ (lambda () '#!void))
                              (_%$%K127634127650%_
                               (lambda (_%tail127647%_ _%entry127648%_)
                                 (if (_%eq126983%_
                                      _%key127624%_
                                      (car _%entry127648%_))
                                     (begin
                                       (set-cdr! _%prev127628%_ _%tail127647%_)
                                       (if (null? _%tail127647%_)
                                           (set-car!
                                            _%tab127623%_
                                            _%prev127628%_)
                                           '#!void))
                                     (_%lp127626%_
                                      _%rest127629%_
                                      _%tail127647%_)))))
                          (let ((_%$%try-match127632127662%_
                                 (lambda ()
                                   (if (pair? _%$%rest127630127639%_)
                                       (let ((_%$%tl127636127655%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%rest127630127639%_)))
                                             (_%$%hd127635127653%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%rest127630127639%_))))
                                         (let ((_%entry127658%_
                                                _%$%hd127635127653%_)
                                               (_%tail127660%_
                                                _%$%tl127636127655%_))
                                           (_%$%K127634127650%_
                                            _%tail127660%_
                                            _%entry127658%_)))
                                       (_%$%E127633127643%_)))))
                            (if (null? _%$%rest127630127639%_)
                                '#!void
                                (_%$%try-match127632127662%_)))))))
                  cdr))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 #!void
                                 _g127795_))
                              (_%make-tab127000%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g127794_ 0)))
                              (_%tab-ref127001%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g127794_ 1)))
                              (_%tab-set!127002%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g127794_ 2)))
                              (_%tab-remove!127003%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g127794_ 3)))
                              (_%tab->list127004%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g127794_ 4)))
                              (_%get-names127005%_
                               (lambda (_%lst127591%_)
                                 (map _%get-name126985%_ _%lst127591%_)))
                              (_%err127006%_
                               (lambda _%a127589%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names127005%_ _%head126949%_)
                                        'parents:
                                        (map _%get-names127005%_
                                             _%parents126950%_)
                                        'precedence-lists:
                                        (let ((__tmp127796
                                               (map _%get-precedence-list126952%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl__0
                                                       append
                                                       '()
                                                       _%parents126950%_)))))
                                          (declare (not safe))
                                          (##map _%get-names127005%_
                                                 __tmp127796))
                                        'common-suffix-tail:
                                        (_%get-names127005%_
                                         _%suffix-tail126998%_)
                                        'rcandidates:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names127005%_
                                                 _%rcandidates126996%_))
                                        _%a127589%_)))
                              (_%super-suffix?127007%_
                               (lambda (_%s1127576%_ _%s2127577%_)
                                 (let ((_%$e127579%_ (not _%s2127577%_)))
                                   (if _%$e127579%_
                                       _%$e127579%_
                                       (let _%loop127582%_ ((_%s127584%_
                                                             _%s1127576%_))
                                         (if _%s127584%_
                                             (let ((_%$e127586%_
                                                    (_%eq126983%_
                                                     _%s127584%_
                                                     _%s2127577%_)))
                                               (if _%$e127586%_
                                                   _%$e127586%_
                                                   (_%loop127582%_
                                                    (_%super-suffix126981%_
                                                     _%s127584%_))))
                                             '#f))))))
                              (_%merge-suffix127008%_
                               (lambda (_%s1127560%_ _%s2127561%_)
                                 (if (not _%s2127561%_)
                                     _%s1127560%_
                                     (if (not _%s1127560%_)
                                         _%s2127561%_
                                         (let _%loop127566%_ ((_%t1127568%_
                                                               _%s1127560%_)
                                                              (_%t2127569%_
                                                               _%s2127561%_))
                                           (if (not _%t1127568%_)
                                               (if (_%super-suffix?127007%_
                                                    _%t2127569%_
                                                    _%s1127560%_)
                                                   _%s2127561%_
                                                   (_%err127006%_
                                                    'suffix-incompatibility:
                                                    (cons (_%get-name126985%_
                                                           _%s1127560%_)
                                                          (cons (_%get-name126985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%s2127561%_)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (not _%t2127569%_)
                                                   (if (_%super-suffix?127007%_
                                                        _%t1127568%_
                                                        _%s2127561%_)
                                                       _%s1127560%_
                                                       (_%err127006%_
                                                        'suffix-incompatibility:
                                                        (cons (_%get-name126985%_
                                                               _%s1127560%_)
                                                              (cons (_%get-name126985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%s2127561%_)
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (_%eq126983%_
                                                        _%t1127568%_
                                                        _%s2127561%_)
                                                       _%s1127560%_
                                                       (if (_%eq126983%_
                                                            _%t2127569%_
                                                            _%s1127560%_)
                                                           _%s2127561%_
                                                           (_%loop127566%_
                                                            (_%super-suffix126981%_
                                                             _%t1127568%_)
                                                            (_%super-suffix126981%_
                                                             _%t2127569%_)))))))))))
                              (_%ancestor-counts127009%_ (_%make-tab127000%_))
                              (_%get-ancestor-count127010%_
                               (lambda (_%c127558%_)
                                 (_%tab-ref127001%_
                                  _%ancestor-counts127009%_
                                  _%c127558%_
                                  '0)))
                              (_%increment-ancestor-count127011%_
                               (lambda (_%c127540%_)
                                 (_%tab-set!127002%_
                                  _%ancestor-counts127009%_
                                  _%c127540%_
                                  (let ((_%x127542%_
                                         (_%get-ancestor-count127010%_
                                          _%c127540%_)))
                                    (if (number? _%x127542%_)
                                        (let ((_%x127547%_ _%x127542%_))
                                          (declare (not safe))
                                          (__1+ _%x127547%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/c3
                                           'contract:
                                           'number?
                                           'value:
                                           _%x127542%_)
                                          '#!void))))))
                              (_%decrement-ancestor-count127012%_
                               (lambda (_%c127520%_)
                                 (let ((_%count127538%_
                                        (let ((_%x127522%_
                                               (_%get-ancestor-count127010%_
                                                _%c127520%_)))
                                          (if (number? _%x127522%_)
                                              (let ((_%x127527%_ _%x127522%_))
                                                (declare (not safe))
                                                (__1- _%x127527%_))
                                              (begin
                                                (raise-contract-violation-error
                                                 '"contract violation"
                                                 'context:
                                                 'gerbil/runtime/c3
                                                 'contract:
                                                 'number?
                                                 'value:
                                                 _%x127522%_)
                                                '#!void)))))
                                   (if (= '0 _%count127538%_)
                                       (_%tab-remove!127003%_
                                        _%ancestor-counts127009%_
                                        _%c127520%_)
                                       (_%tab-set!127002%_
                                        _%ancestor-counts127009%_
                                        _%c127520%_
                                        _%count127538%_)))))
                              (_g127797_
                               (let ((_g127798_
                                      (for-each
                                       (lambda (_%parent-list127014%_)
                                         (for-each
                                          (lambda (_%parent127016%_)
                                            (if (zero? (_%get-ancestor-count127010%_
                                                        _%parent127016%_))
                                                (let _%loop127018%_ ((_%al127020%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_%get-precedence-list126952%_ _%parent127016%_))
                             (_%r127021%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (letrec ((_%done127023%_
                                                            (lambda ()
                                                              (if (null? _%r127021%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (set! _%rcandidates126996%_
                                (cons _%r127021%_ _%rcandidates126996%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%al127024127033%_
                                                            _%al127020%_)
                                                           (_%$%E127027127037%_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%al127024127033%_
                             '([])
                             '([a . ar]))
                      '#!void)))
              (let ((_%$%K127031127104%_ (lambda () (_%done127023%_)))
                    (_%$%K127028127088%_
                     (lambda (_%ar127041%_ _%a127042%_)
                       (if (_%suffix?126954%_ _%a127042%_)
                           (let ((_%ms127044%_
                                  (_%merge-suffix127008%_
                                   _%a127042%_
                                   _%suffix126997%_)))
                             (if (and _%suffix126997%_
                                      (_%eq126983%_
                                       _%ms127044%_
                                       _%suffix126997%_))
                                 '#!void
                                 (begin
                                   (let _%loop2127046%_ ((_%tl127048%_
                                                          _%al127020%_))
                                     (let* ((_%$%tl127049127058%_ _%tl127048%_)
                                            (_%$%E127052127062%_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _%$%tl127049127058%_
                                                      '([])
                                                      '([t . tr]))
                                               '#!void)))
                                       (let ((_%$%K127056127085%_
                                              (lambda () '#!void))
                                             (_%$%K127053127069%_
                                              (lambda (_%tr127066%_
                                                       _%t127067%_)
                                                (if (and _%suffix126997%_
                                                         (_%eq126983%_
                                                          _%t127067%_
                                                          _%suffix126997%_))
                                                    '#!void
                                                    (begin
                                                      (_%increment-ancestor-count127011%_
                                                       _%t127067%_)
                                                      (_%loop2127046%_
                                                       _%tr127066%_))))))
                                         (let ((_%$%try-match127051127081%_
                                                (lambda ()
                                                  (if (pair? _%$%tl127049127058%_)
                                                      (let ((_%$%tl127055127074%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%tl127049127058%_)))
                    (_%$%hd127054127072%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%tl127049127058%_))))
                (let ((_%t127077%_ _%$%hd127054127072%_)
                      (_%tr127079%_ _%$%tl127055127074%_))
                  (_%$%K127053127069%_ _%tr127079%_ _%t127077%_)))
              (_%$%E127052127062%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (null? _%$%tl127049127058%_)
                                               '#!void
                                               (_%$%try-match127051127081%_))))))
                                   (set! _%suffix126997%_ _%a127042%_)
                                   (set! _%suffix-tail126998%_ _%al127020%_)))
                             (_%done127023%_))
                           (begin
                             (_%increment-ancestor-count127011%_ _%a127042%_)
                             (_%loop127018%_
                              _%ar127041%_
                              (cons _%a127042%_ _%r127021%_)))))))
                (let ((_%$%try-match127026127100%_
                       (lambda ()
                         (if (pair? _%$%al127024127033%_)
                             (let ((_%$%tl127030127093%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%al127024127033%_)))
                                   (_%$%hd127029127091%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%al127024127033%_))))
                               (let ((_%a127096%_ _%$%hd127029127091%_)
                                     (_%ar127098%_ _%$%tl127030127093%_))
                                 (_%$%K127028127088%_
                                  _%ar127098%_
                                  _%a127096%_)))
                             (_%$%E127027127037%_)))))
                  (if (null? _%$%al127024127033%_)
                      (_%done127023%_)
                      (_%$%try-match127026127100%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '#!void))
                                          _%parent-list127014%_))
                                       _%parents126950%_)))
                                 #!void
                                 _g127798_))
                              (_%suffix-tail-index127107%_
                               (_%make-tab127000%_))
                              (_g127800_
                               (let ((_g127801_
                                      (let _%loop127109%_ ((_%i127111%_
                                                            (length _%suffix-tail126998%_))
                                                           (_%t127112%_
                                                            _%suffix-tail126998%_))
                                        (let* ((_%$%t127113127122%_
                                                _%t127112%_)
                                               (_%$%E127116127126%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%$%t127113127122%_
                                                         '([])
                                                         '([a . r]))
                                                  '#!void)))
                                          (let ((_%$%K127120127177%_
                                                 (lambda () '#!void))
                                                (_%$%K127117127161%_
                                                 (lambda (_%r127130%_
                                                          _%a127131%_)
                                                   (_%tab-set!127002%_
                                                    _%suffix-tail-index127107%_
                                                    _%a127131%_
                                                    _%i127111%_)
                                                   (_%loop127109%_
                                                    (let ((_%x127133%_
                                                           _%i127111%_))
                                                      (if (number? _%x127133%_)
                                                          (let ((_%x127138%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%x127133%_))
                    (declare (not safe))
                    (__1- _%x127138%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/c3
                     'contract:
                     'number?
                     'value:
                     _%x127133%_)
                    '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r127130%_))))
                                            (let ((_%$%try-match127115127173%_
                                                   (lambda ()
                                                     (if (pair? _%$%t127113127122%_)
                                                         (let ((_%$%tl127119127166%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%$%t127113127122%_)))
                       (_%$%hd127118127164%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%t127113127122%_))))
                   (let ((_%a127169%_ _%$%hd127118127164%_)
                         (_%r127171%_ _%$%tl127119127166%_))
                     (_%$%K127117127161%_ _%r127171%_ _%a127169%_)))
                 (_%$%E127116127126%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%$%t127113127122%_)
                                                  '#!void
                                                  (_%$%try-match127115127173%_))))))))
                                 #!void
                                 _g127801_))
                              (_%r-local-order127179%_
                               (let ((__tmp127803
                                      (lambda (_%parent-list127518%_)
                                        (if (null? (cdr _%parent-list127518%_))
                                            '#f
                                            (reverse _%parent-list127518%_)))))
                                 (declare (not safe))
                                 (filter-map__0
                                  __tmp127803
                                  _%parents126950%_)))
                              (_g127804_
                               (let ((_g127805_
                                      (let ((__tmp127807
                                             (lambda (_%cl127181%_)
                                               (for-each
                                                _%increment-ancestor-count127011%_
                                                _%cl127181%_))))
                                        (declare (not safe))
                                        (##for-each
                                         __tmp127807
                                         _%r-local-order127179%_))))
                                 #!void
                                 _g127805_))
                              (_g127808_
                               (let ((_g127809_
                                      (set! _%rcandidates126996%_
                                            (let ()
                                              (declare (not safe))
                                              (##append
                                               _%r-local-order127179%_
                                               _%rcandidates126996%_)))))
                                 #!void
                                 _g127809_))
                              (_%remove-suffix-tail-and-reverse127182%_
                               (lambda (_%rcl127392%_)
                                 (let _%u127394%_ ((_%cl-rhead127396%_
                                                    _%rcl127392%_)
                                                   (_%suffix-pos127397%_ '-1))
                                   (let* ((_%$%cl-rhead127398127407%_
                                           _%cl-rhead127396%_)
                                          (_%$%E127401127411%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%$%cl-rhead127398127407%_
                                                    '([])
                                                    '([c . clrh]))
                                             '#!void)))
                                     (let ((_%$%K127405127515%_
                                            (lambda () '()))
                                           (_%$%K127402127499%_
                                            (lambda (_%clrh127415%_
                                                     _%c127416%_)
                                              (let ((_%p127418%_
                                                     (_%tab-ref127001%_
                                                      _%suffix-tail-index127107%_
                                                      _%c127416%_
                                                      '#f)))
                                                (letrec ((_%err2127420%_
                                                          (lambda _%a127465%_
                                                            (apply _%err127006%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'reverse-candidate-list:
                           (_%get-names127005%_ _%rcl127392%_)
                           'suffix-tail-index:
                           (map (lambda (_%$%e127466127468%_)
                                  (let* ((_%$%$%e127466127470127477%_
                                          _%$%e127466127468%_)
                                         (_%$%E127472127481%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%$%$%e127466127470127477%_
                                                   '([a . i]))
                                            '#!void))
                                         (_%$%K127473127487%_
                                          (lambda (_%i127484%_ _%a127485%_)
                                            (cons (_%get-name126985%_
                                                   _%a127485%_)
                                                  _%i127484%_))))
                                    (if (pair? _%$%$%e127466127470127477%_)
                                        (let ((_%$%hd127474127490%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%$%e127466127470127477%_)))
                                              (_%$%tl127475127492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%$%e127466127470127477%_))))
                                          (let* ((_%a127495%_
                                                  _%$%hd127474127490%_)
                                                 (_%i127497%_
                                                  _%$%tl127475127492%_))
                                            (_%$%K127473127487%_
                                             _%i127497%_
                                             _%a127495%_)))
                                        (_%$%E127472127481%_))))
                                (_%tab->list127004%_
                                 _%suffix-tail-index127107%_))
                           'c:
                           (_%get-name126985%_ _%c127416%_)
                           'p:
                           _%p127418%_
                           'suffix-pos:
                           _%suffix-pos127397%_
                           _%a127465%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (not _%p127418%_)
                                                      (let ((_g127811_
                                                             (let* ((_%pred127427%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%$%g127422127424%_)
                               (_%tab-ref127001%_
                                _%suffix-tail-index127107%_
                                _%$%g127422127424%_
                                '#f)))
                            (_%rhead127430%_ _%clrh127415%_)
                            (_%tail127433%_ (cons _%c127416%_ '()))
                            (_%pred127438%_ _%pred127427%_))
                       (declare (not safe))
                       (__append-reverse-until
                        _%pred127438%_
                        _%rhead127430%_
                        _%tail127433%_))))
                (begin
                  (let ((_g127812_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g127811_)
                               (##values-length _g127811_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g127812_ 2)))
                        (error "Context expects 2 values" _g127812_)))
                  (let ((_%clrh2127460%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g127811_ 0)))
                        (_%h127461%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g127811_ 1))))
                    (if (null? _%clrh2127460%_)
                        _%h127461%_
                        (_%err2127420%_
                         'precedence-list-tail:
                         (_%get-names127005%_ _%h127461%_)
                         'ancestor-out-of-order-vs-suffix-tail:
                         (_%get-name126985%_ (car _%clrh2127460%_))
                         'precedence-list-head:
                         (_%get-names127005%_ (reverse _%clrh2127460%_)))))))
              (if (> _%p127418%_ _%suffix-pos127397%_)
                  (_%u127394%_ _%clrh127415%_ _%p127418%_)
                  (_%err2127420%_
                   'ancestor-out-of-order-vs-suffix-tail:
                   (_%get-name126985%_ _%c127416%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%$%try-match127400127511%_
                                              (lambda ()
                                                (if (pair? _%$%cl-rhead127398127407%_)
                                                    (let ((_%$%tl127404127504%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%cl-rhead127398127407%_)))
                                                          (_%$%hd127403127502%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%cl-rhead127398127407%_))))
                                                      (let ((_%c127507%_
                                                             _%$%hd127403127502%_)
                                                            (_%clrh127509%_
                                                             _%$%tl127404127504%_))
                                                        (_%$%K127402127499%_
                                                         _%clrh127509%_
                                                         _%c127507%_)))
                                                    (_%$%E127401127411%_)))))
                                         (if (null? _%$%cl-rhead127398127407%_)
                                             (_%$%K127405127515%_)
                                             (_%$%try-match127400127511%_))))))))
                              (_%candidates127183%_
                               (reverse (let ((__tmp127813
                                               (let ()
                                                 (declare (not safe))
                                                 (##map _%remove-suffix-tail-and-reverse127182%_
                                                        _%rcandidates126996%_))))
                                          (declare (not safe))
                                          (remove-nulls! __tmp127813))))
                              (_g127814_
                               (let ((_g127815_
                                      (let ((__tmp127817
                                             (lambda (_%cl127185%_)
                                               (_%decrement-ancestor-count127012%_
                                                (car _%cl127185%_)))))
                                        (declare (not safe))
                                        (##for-each
                                         __tmp127817
                                         _%candidates127183%_))))
                                 #!void
                                 _g127815_))
                              (_%c3-select-next127186%_
                               (lambda (_%tails127348%_)
                                 (let _%loop127350%_ ((_%ts127352%_
                                                       _%tails127348%_))
                                   (let* ((_%$%ts127353127363%_ _%ts127352%_)
                                          (_%$%else127355127371%_
                                           (lambda ()
                                             (_%err127006%_
                                              'c3-select-next:
                                              'fail)))
                                          (_%$%K127357127377%_
                                           (lambda (_%rts127374%_ _%c127375%_)
                                             (if (zero? (_%get-ancestor-count127010%_
                                                         _%c127375%_))
                                                 _%c127375%_
                                                 (_%loop127350%_
                                                  _%rts127374%_)))))
                                     (if (pair? _%$%ts127353127363%_)
                                         (let ((_%$%hd127358127380%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%ts127353127363%_)))
                                               (_%$%tl127359127382%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%ts127353127363%_))))
                                           (if (pair? _%$%hd127358127380%_)
                                               (let* ((_%$%hd127360127385%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd127358127380%_)))
                                                      (_%c127388%_
                                                       _%$%hd127360127385%_)
                                                      (_%rts127390%_
                                                       _%$%tl127359127382%_))
                                                 (_%$%K127357127377%_
                                                  _%rts127390%_
                                                  _%c127388%_))
                                               (_%$%else127355127371%_)))
                                         (_%$%else127355127371%_))))))
                              (_%remove-next!127187%_
                               (lambda (_%next127238%_ _%tails127239%_)
                                 (let _%loop127241%_ ((_%t127243%_
                                                       _%tails127239%_))
                                   (let* ((_%$%t127244127259%_ _%t127243%_)
                                          (_%$%E127248127263%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%$%t127244127259%_
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
                                     (let ((_%$%K127253127325%_
                                            (lambda (_%rr127288%_
                                                     _%tl127289%_
                                                     _%hd127290%_)
                                              (let* ((_%$%tl127291127300%_
                                                      _%tl127289%_)
                                                     (_%$%E127294127304%_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _%$%tl127291127300%_
                                                               '([c . _])
                                                               '(_))
                                                        '#!void)))
                                                (let ((_%$%K127296127317%_
                                                       (lambda (_%c127315%_)
                                                         (_%decrement-ancestor-count127012%_
                                                          _%c127315%_)))
                                                      (_%$%K127295127309%_
                                                       (lambda () '#!void)))
                                                  (if (pair? _%$%tl127291127300%_)
                                                      (let* ((_%$%hd127297127320%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%tl127291127300%_)))
                     (_%c127323%_ _%$%hd127297127320%_))
                (_%decrement-ancestor-count127012%_ _%c127323%_))
              '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (set-car!
                                               _%t127243%_
                                               _%tl127289%_)
                                              (_%loop127241%_ _%rr127288%_)))
                                           (_%$%K127250127277%_
                                            (lambda (_%rr127275%_)
                                              (_%loop127241%_ _%rr127275%_)))
                                           (_%$%K127249127268%_
                                            (lambda () _%tails127239%_)))
                                       (if (pair? _%$%t127244127259%_)
                                           (let ((_%$%tl127255127330%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%t127244127259%_)))
                                                 (_%$%hd127254127328%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%t127244127259%_))))
                                             (if (pair? _%$%hd127254127328%_)
                                                 (let ((_%$%tl127257127337%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%hd127254127328%_)))
                                                       (_%$%hd127256127335%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%hd127254127328%_))))
                                                   (if (_%eq126983%_
                                                        _%next127238%_
                                                        _%$%hd127256127335%_)
                                                       (let ((_%hd127333%_
                                                              _%$%hd127254127328%_)
                                                             (_%tl127344%_
                                                              _%$%tl127257127337%_)
                                                             (_%rr127346%_
                                                              _%$%tl127255127330%_))
                                                         (_%$%K127253127325%_
                                                          _%rr127346%_
                                                          _%tl127344%_
                                                          _%hd127333%_))
                                                       (let ((_%rr127283%_
                                                              _%$%tl127255127330%_))
                                                         (_%loop127241%_
                                                          _%rr127283%_))))
                                                 (let ((_%rr127283%_
                                                        _%$%tl127255127330%_))
                                                   (_%loop127241%_
                                                    _%rr127283%_))))
                                           (_%$%K127249127268%_)))))))
                              (_%precedence-list127188%_
                               (let _%c3loop127190%_ ((_%rhead127192%_
                                                       (reverse _%head126949%_))
                                                      (_%tails127193%_
                                                       _%candidates127183%_))
                                 (let* ((_%$%tails127194127204%_
                                         _%tails127193%_)
                                        (_%$%else127197127215%_
                                         (lambda ()
                                           (let ((_%next127212%_
                                                  (_%c3-select-next127186%_
                                                   _%tails127193%_)))
                                             (_%c3loop127190%_
                                              (cons _%next127212%_
                                                    _%rhead127192%_)
                                              (let ((__tmp127818
                                                     (_%remove-next!127187%_
                                                      _%next127212%_
                                                      _%tails127193%_)))
                                                (declare (not safe))
                                                (remove-nulls!
                                                 __tmp127818)))))))
                                   (let ((_%$%K127202127235%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead127192%_
                                             _%suffix-tail126998%_)))
                                         (_%$%K127199127221%_
                                          (lambda (_%tail127219%_)
                                            (append-reverse
                                             _%rhead127192%_
                                             (append _%tail127219%_
                                                     _%suffix-tail126998%_)))))
                                     (let ((_%$%try-match127196127231%_
                                            (lambda ()
                                              (if (pair? _%$%tails127194127204%_)
                                                  (let ((_%$%tl127201127226%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tails127194127204%_)))
                                                        (_%$%hd127200127224%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tails127194127204%_))))
                                                    (if (null? _%$%tl127201127226%_)
                                                        (let ((_%tail127229%_
                                                               _%$%hd127200127224%_))
                                                          (_%$%K127199127221%_
                                                           _%tail127229%_))
                                                        (_%$%else127197127215%_)))
                                                  (_%$%else127197127215%_)))))
                                       (if (null? _%$%tails127194127204%_)
                                           (_%$%K127202127235%_)
                                           (_%$%try-match127196127231%_))))))))
                      (values _%precedence-list127188%_
                              _%suffix126997%_))))))))
    (define c4-linearize*__@
      (lambda (_%@@keywords127672%_ . _%args127673%_)
        (apply c4-linearize*__%
               _%@@keywords127672%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords127672%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords127672%_
                  'suffix:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords127672%_
                  'super-suffix:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords127672%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords127672%_
                  'get-name:
                  absent-value))
               _%args127673%_)))
    (define c4-linearize*
      (lambda _%$%args126941127679%_
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
               _%$%args126941127679%_)))
    (define c4-compute-class-slots
      (lambda (_%precedence-list126890%_
               _%direct-slot-list126891%_
               _%mixin-slot-names126892%_
               _%result126893%_)
        (let* ((_%next-slot126895%_ '1)
               (_%slot-table126897%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots126899%_ (cons 'class '()))
               (_%process-slot126924%_
                (lambda (_%slot126901%_)
                  (if (symbol? _%slot126901%_)
                      '#!void
                      (error '"invalid slot name" _%slot126901%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table126897%_
                              _%slot126901%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table126897%_
                           _%slot126901%_
                           _%next-slot126895%_))
                        (let ((__tmp127819
                               (let ((_%sym126903%_ _%slot126901%_))
                                 (if (symbol? _%sym126903%_)
                                     (let ((_%sym126908%_ _%sym126903%_))
                                       (declare (not safe))
                                       (__symbol->keyword _%sym126908%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/c3
                                        'contract:
                                        'symbol?
                                        'value:
                                        _%sym126903%_)
                                       '#!void)))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table126897%_
                           __tmp127819
                           _%next-slot126895%_))
                        (set! _%r-slots126899%_
                              (cons _%slot126901%_ _%r-slots126899%_))
                        (set! _%next-slot126895%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot126895%_ '1))))
                      '#!void)))
               (_%process-slots126930%_
                (lambda (_%$%g126925126927%_)
                  (for-each _%process-slot126924%_ _%$%g126925126927%_))))
          (let ((__tmp127821
                 (lambda (_%mixin126933%_)
                   (_%process-slots126930%_
                    (_%mixin-slot-names126892%_ _%mixin126933%_))))
                (__tmp127820 (reverse _%precedence-list126890%_)))
            (declare (not safe))
            (##for-each __tmp127821 __tmp127820))
          (_%process-slots126930%_ _%direct-slot-list126891%_)
          (_%result126893%_
           (reverse! _%r-slots126899%_)
           _%slot-table126897%_))))))
