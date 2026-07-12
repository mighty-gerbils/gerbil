(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1783878474)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords124891%_
               _%$%get-precedence-list124885124892%_
               _%$%struct?124886124893%_
               _%$%eq124887124894%_
               _%$%get-name124888124895%_
               _%rhead124896%_
               _%supers124897%_)
        (let* ((_%get-precedence-list124899%_
                (if (eq? _%$%get-precedence-list124885124892%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%$%get-precedence-list124885124892%_))
               (_%struct?124903%_
                (if (eq? _%$%struct?124886124893%_ absent-value)
                    (lambda (_%_124901%_) '#f)
                    _%$%struct?124886124893%_))
               (_%eq124905%_
                (if (eq? _%$%eq124887124894%_ absent-value)
                    eq?
                    _%$%eq124887124894%_))
               (_%get-name124907%_
                (if (eq? _%$%get-name124888124895%_ absent-value)
                    identity
                    _%$%get-name124888124895%_)))
          (c4-linearize*__%
           '#f
           _%get-precedence-list124899%_
           _%struct?124903%_
           absent-value
           _%eq124905%_
           _%get-name124907%_
           (reverse _%rhead124896%_)
           (list _%supers124897%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords124913%_ . _%args124914%_)
        (apply c4-linearize__%
               _%@@keywords124913%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords124913%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords124913%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords124913%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords124913%_
                  'get-name:
                  absent-value))
               _%args124914%_)))
    (define c4-linearize
      (lambda _%$%args124889124920%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%$%args124889124920%_)))
    (define c4-linearize*__%
      (lambda (_%@@keywords124145%_
               _%$%get-precedence-list124138124146%_
               _%$%suffix?124139124147%_
               _%$%super-suffix124140124148%_
               _%$%eq124141124149%_
               _%$%get-name124142124150%_
               _%head124151%_
               _%parents124152%_)
        (let* ((_%get-precedence-list124154%_
                (if (eq? _%$%get-precedence-list124138124146%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%$%get-precedence-list124138124146%_))
               (_%suffix?124156%_
                (if (eq? _%$%suffix?124139124147%_ absent-value)
                    (error '"Missing required keyword argument" 'suffix:)
                    _%$%suffix?124139124147%_))
               (_%super-suffix124183%_
                (if (eq? _%$%super-suffix124140124148%_ absent-value)
                    (lambda (_%x124158%_)
                      (let* ((_%pred124160%_ _%suffix?124156%_)
                             (_%lst124163%_
                              (cdr (_%get-precedence-list124154%_
                                    _%x124158%_))))
                        (if (procedure? _%pred124160%_)
                            (let ((_%pred124168%_ _%pred124160%_))
                              (declare (not safe))
                              (__find _%pred124168%_ _%lst124163%_))
                            (begin
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               'gerbil/runtime/c3
                               'contract:
                               'procedure?
                               'value:
                               _%pred124160%_)
                              '#!void))))
                    _%$%super-suffix124140124148%_))
               (_%eq124185%_
                (if (eq? _%$%eq124141124149%_ absent-value)
                    eq?
                    _%$%eq124141124149%_))
               (_%get-name124187%_
                (if (eq? _%$%get-name124142124150%_ absent-value)
                    identity
                    _%$%get-name124142124150%_)))
          (set! _%parents124152%_
                (let ()
                  (declare (not safe))
                  (remove-nulls! _%parents124152%_)))
          (if (null? _%parents124152%_)
              (values _%head124151%_ '#f)
              (if (and (null? (cdr _%parents124152%_))
                       (null? (cdar _%parents124152%_)))
                  (let* ((_%parent124192%_ (caar _%parents124152%_))
                         (_%pl124194%_
                          (_%get-precedence-list124154%_ _%parent124192%_)))
                    (values (append _%head124151%_ _%pl124194%_)
                            (if (_%suffix?124156%_ _%parent124192%_)
                                _%parent124192%_
                                (_%super-suffix124183%_ _%parent124192%_))))
                  (let ((_%rcandidates124198%_ '())
                        (_%suffix124199%_ '#f)
                        (_%suffix-tail124200%_ '()))
                    (letrec* ((_g124996_
                               (let ((_g124997_
                                      (if (eq? _%eq124185%_ eq?)
                                          (values (lambda ()
                                                    (make-table 'test: eq?))
                                                  table-ref
                                                  table-set!
                                                  table-set!
                                                  table->list)
                                          (if (eq? _%eq124185%_ eqv?)
                                              (values (lambda ()
                                                        (make-table
                                                         'test:
                                                         eqv?))
                                                      table-ref
                                                      table-set!
                                                      table-set!
                                                      table->list)
                                              (if (eq? _%eq124185%_ equal?)
                                                  (values (lambda ()
                                                            (make-table
                                                             'test:
                                                             equal?))
                                                          table-ref
                                                          table-set!
                                                          table-set!
                                                          table->list)
                                                  (values (lambda ()
                                                            (letrec* ((_%this124803%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '#f '())))
                      (let ()
                        (declare (not safe))
                        (##set-car! _%this124803%_ _%this124803%_))
                      _%this124803%_))
                  (lambda (_%tab124805%_ _%key124806%_ _%default124807%_)
                    (let ((_%$e124809%_
                           (assoc _%key124806%_
                                  (cdr _%tab124805%_)
                                  _%eq124185%_)))
                      (if _%$e124809%_ (cdr _%$e124809%_) _%default124807%_)))
                  (lambda (_%tab124813%_ _%key124814%_ _%value124815%_)
                    (let ((_%$e124817%_
                           (assoc _%key124814%_
                                  (cdr _%tab124813%_)
                                  _%eq124185%_)))
                      (if _%$e124817%_
                          (set-cdr! _%$e124817%_ _%value124815%_)
                          (let ((_%tail124823%_
                                 (cons (cons _%key124814%_ _%value124815%_)
                                       '())))
                            (set-cdr! (car _%tab124813%_) _%tail124823%_)
                            (set-car! _%tab124813%_ _%tail124823%_)))))
                  (lambda (_%tab124825%_ _%key124826%_)
                    (let _%lp124828%_ ((_%prev124830%_ _%tab124825%_)
                                       (_%rest124831%_ (cdr _%tab124825%_)))
                      (let* ((_%$%rest124832124841%_ _%rest124831%_)
                             (_%$%E124835124845%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%rest124832124841%_
                                       '([])
                                       '([entry . tail]))
                                '#!void)))
                        (let ((_%$%K124839124868%_ (lambda () '#!void))
                              (_%$%K124836124852%_
                               (lambda (_%tail124849%_ _%entry124850%_)
                                 (if (_%eq124185%_
                                      _%key124826%_
                                      (car _%entry124850%_))
                                     (begin
                                       (set-cdr! _%prev124830%_ _%tail124849%_)
                                       (if (null? _%tail124849%_)
                                           (set-car!
                                            _%tab124825%_
                                            _%prev124830%_)
                                           '#!void))
                                     (_%lp124828%_
                                      _%rest124831%_
                                      _%tail124849%_)))))
                          (let ((_%$%try-match124834124864%_
                                 (lambda ()
                                   (if (pair? _%$%rest124832124841%_)
                                       (let ((_%$%tl124838124857%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%rest124832124841%_)))
                                             (_%$%hd124837124855%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%rest124832124841%_))))
                                         (let ((_%entry124860%_
                                                _%$%hd124837124855%_)
                                               (_%tail124862%_
                                                _%$%tl124838124857%_))
                                           (_%$%K124836124852%_
                                            _%tail124862%_
                                            _%entry124860%_)))
                                       (_%$%E124835124845%_)))))
                            (if (null? _%$%rest124832124841%_)
                                '#!void
                                (_%$%try-match124834124864%_)))))))
                  cdr))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 #!void
                                 _g124997_))
                              (_%make-tab124202%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g124996_ 0)))
                              (_%tab-ref124203%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g124996_ 1)))
                              (_%tab-set!124204%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g124996_ 2)))
                              (_%tab-remove!124205%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g124996_ 3)))
                              (_%tab->list124206%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g124996_ 4)))
                              (_%get-names124207%_
                               (lambda (_%lst124793%_)
                                 (map _%get-name124187%_ _%lst124793%_)))
                              (_%err124208%_
                               (lambda _%a124791%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names124207%_ _%head124151%_)
                                        'parents:
                                        (map _%get-names124207%_
                                             _%parents124152%_)
                                        'precedence-lists:
                                        (let ((__tmp124998
                                               (map _%get-precedence-list124154%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl__0
                                                       append
                                                       '()
                                                       _%parents124152%_)))))
                                          (declare (not safe))
                                          (##map _%get-names124207%_
                                                 __tmp124998))
                                        'common-suffix-tail:
                                        (_%get-names124207%_
                                         _%suffix-tail124200%_)
                                        'rcandidates:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names124207%_
                                                 _%rcandidates124198%_))
                                        _%a124791%_)))
                              (_%super-suffix?124209%_
                               (lambda (_%s1124778%_ _%s2124779%_)
                                 (let ((_%$e124781%_ (not _%s2124779%_)))
                                   (if _%$e124781%_
                                       _%$e124781%_
                                       (let _%loop124784%_ ((_%s124786%_
                                                             _%s1124778%_))
                                         (if _%s124786%_
                                             (let ((_%$e124788%_
                                                    (_%eq124185%_
                                                     _%s124786%_
                                                     _%s2124779%_)))
                                               (if _%$e124788%_
                                                   _%$e124788%_
                                                   (_%loop124784%_
                                                    (_%super-suffix124183%_
                                                     _%s124786%_))))
                                             '#f))))))
                              (_%merge-suffix124210%_
                               (lambda (_%s1124762%_ _%s2124763%_)
                                 (if (not _%s2124763%_)
                                     _%s1124762%_
                                     (if (not _%s1124762%_)
                                         _%s2124763%_
                                         (let _%loop124768%_ ((_%t1124770%_
                                                               _%s1124762%_)
                                                              (_%t2124771%_
                                                               _%s2124763%_))
                                           (if (not _%t1124770%_)
                                               (if (_%super-suffix?124209%_
                                                    _%t2124771%_
                                                    _%s1124762%_)
                                                   _%s2124763%_
                                                   (_%err124208%_
                                                    'suffix-incompatibility:
                                                    (cons (_%get-name124187%_
                                                           _%s1124762%_)
                                                          (cons (_%get-name124187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%s2124763%_)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (not _%t2124771%_)
                                                   (if (_%super-suffix?124209%_
                                                        _%t1124770%_
                                                        _%s2124763%_)
                                                       _%s1124762%_
                                                       (_%err124208%_
                                                        'suffix-incompatibility:
                                                        (cons (_%get-name124187%_
                                                               _%s1124762%_)
                                                              (cons (_%get-name124187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%s2124763%_)
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (_%eq124185%_
                                                        _%t1124770%_
                                                        _%s2124763%_)
                                                       _%s1124762%_
                                                       (if (_%eq124185%_
                                                            _%t2124771%_
                                                            _%s1124762%_)
                                                           _%s2124763%_
                                                           (_%loop124768%_
                                                            (_%super-suffix124183%_
                                                             _%t1124770%_)
                                                            (_%super-suffix124183%_
                                                             _%t2124771%_)))))))))))
                              (_%ancestor-counts124211%_ (_%make-tab124202%_))
                              (_%get-ancestor-count124212%_
                               (lambda (_%c124760%_)
                                 (_%tab-ref124203%_
                                  _%ancestor-counts124211%_
                                  _%c124760%_
                                  '0)))
                              (_%increment-ancestor-count124213%_
                               (lambda (_%c124742%_)
                                 (_%tab-set!124204%_
                                  _%ancestor-counts124211%_
                                  _%c124742%_
                                  (let ((_%x124744%_
                                         (_%get-ancestor-count124212%_
                                          _%c124742%_)))
                                    (if (number? _%x124744%_)
                                        (let ((_%x124749%_ _%x124744%_))
                                          (declare (not safe))
                                          (__1+ _%x124749%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/c3
                                           'contract:
                                           'number?
                                           'value:
                                           _%x124744%_)
                                          '#!void))))))
                              (_%decrement-ancestor-count124214%_
                               (lambda (_%c124722%_)
                                 (let ((_%count124740%_
                                        (let ((_%x124724%_
                                               (_%get-ancestor-count124212%_
                                                _%c124722%_)))
                                          (if (number? _%x124724%_)
                                              (let ((_%x124729%_ _%x124724%_))
                                                (declare (not safe))
                                                (__1- _%x124729%_))
                                              (begin
                                                (raise-contract-violation-error
                                                 '"contract violation"
                                                 'context:
                                                 'gerbil/runtime/c3
                                                 'contract:
                                                 'number?
                                                 'value:
                                                 _%x124724%_)
                                                '#!void)))))
                                   (if (= '0 _%count124740%_)
                                       (_%tab-remove!124205%_
                                        _%ancestor-counts124211%_
                                        _%c124722%_)
                                       (_%tab-set!124204%_
                                        _%ancestor-counts124211%_
                                        _%c124722%_
                                        _%count124740%_)))))
                              (_g124999_
                               (let ((_g125000_
                                      (for-each
                                       (lambda (_%parent-list124216%_)
                                         (for-each
                                          (lambda (_%parent124218%_)
                                            (if (zero? (_%get-ancestor-count124212%_
                                                        _%parent124218%_))
                                                (let _%loop124220%_ ((_%al124222%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_%get-precedence-list124154%_ _%parent124218%_))
                             (_%r124223%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (letrec ((_%done124225%_
                                                            (lambda ()
                                                              (if (null? _%r124223%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (set! _%rcandidates124198%_
                                (cons _%r124223%_ _%rcandidates124198%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%al124226124235%_
                                                            _%al124222%_)
                                                           (_%$%E124229124239%_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%al124226124235%_
                             '([])
                             '([a . ar]))
                      '#!void)))
              (let ((_%$%K124233124306%_ (lambda () (_%done124225%_)))
                    (_%$%K124230124290%_
                     (lambda (_%ar124243%_ _%a124244%_)
                       (if (_%suffix?124156%_ _%a124244%_)
                           (let ((_%ms124246%_
                                  (_%merge-suffix124210%_
                                   _%a124244%_
                                   _%suffix124199%_)))
                             (if (and _%suffix124199%_
                                      (_%eq124185%_
                                       _%ms124246%_
                                       _%suffix124199%_))
                                 '#!void
                                 (begin
                                   (let _%loop2124248%_ ((_%tl124250%_
                                                          _%al124222%_))
                                     (let* ((_%$%tl124251124260%_ _%tl124250%_)
                                            (_%$%E124254124264%_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _%$%tl124251124260%_
                                                      '([])
                                                      '([t . tr]))
                                               '#!void)))
                                       (let ((_%$%K124258124287%_
                                              (lambda () '#!void))
                                             (_%$%K124255124271%_
                                              (lambda (_%tr124268%_
                                                       _%t124269%_)
                                                (if (and _%suffix124199%_
                                                         (_%eq124185%_
                                                          _%t124269%_
                                                          _%suffix124199%_))
                                                    '#!void
                                                    (begin
                                                      (_%increment-ancestor-count124213%_
                                                       _%t124269%_)
                                                      (_%loop2124248%_
                                                       _%tr124268%_))))))
                                         (let ((_%$%try-match124253124283%_
                                                (lambda ()
                                                  (if (pair? _%$%tl124251124260%_)
                                                      (let ((_%$%tl124257124276%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%tl124251124260%_)))
                    (_%$%hd124256124274%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%tl124251124260%_))))
                (let ((_%t124279%_ _%$%hd124256124274%_)
                      (_%tr124281%_ _%$%tl124257124276%_))
                  (_%$%K124255124271%_ _%tr124281%_ _%t124279%_)))
              (_%$%E124254124264%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (null? _%$%tl124251124260%_)
                                               '#!void
                                               (_%$%try-match124253124283%_))))))
                                   (set! _%suffix124199%_ _%a124244%_)
                                   (set! _%suffix-tail124200%_ _%al124222%_)))
                             (_%done124225%_))
                           (begin
                             (_%increment-ancestor-count124213%_ _%a124244%_)
                             (_%loop124220%_
                              _%ar124243%_
                              (cons _%a124244%_ _%r124223%_)))))))
                (let ((_%$%try-match124228124302%_
                       (lambda ()
                         (if (pair? _%$%al124226124235%_)
                             (let ((_%$%tl124232124295%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%al124226124235%_)))
                                   (_%$%hd124231124293%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%al124226124235%_))))
                               (let ((_%a124298%_ _%$%hd124231124293%_)
                                     (_%ar124300%_ _%$%tl124232124295%_))
                                 (_%$%K124230124290%_
                                  _%ar124300%_
                                  _%a124298%_)))
                             (_%$%E124229124239%_)))))
                  (if (null? _%$%al124226124235%_)
                      (_%done124225%_)
                      (_%$%try-match124228124302%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '#!void))
                                          _%parent-list124216%_))
                                       _%parents124152%_)))
                                 #!void
                                 _g125000_))
                              (_%suffix-tail-index124309%_
                               (_%make-tab124202%_))
                              (_g125002_
                               (let ((_g125003_
                                      (let _%loop124311%_ ((_%i124313%_
                                                            (length _%suffix-tail124200%_))
                                                           (_%t124314%_
                                                            _%suffix-tail124200%_))
                                        (let* ((_%$%t124315124324%_
                                                _%t124314%_)
                                               (_%$%E124318124328%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%$%t124315124324%_
                                                         '([])
                                                         '([a . r]))
                                                  '#!void)))
                                          (let ((_%$%K124322124379%_
                                                 (lambda () '#!void))
                                                (_%$%K124319124363%_
                                                 (lambda (_%r124332%_
                                                          _%a124333%_)
                                                   (_%tab-set!124204%_
                                                    _%suffix-tail-index124309%_
                                                    _%a124333%_
                                                    _%i124313%_)
                                                   (_%loop124311%_
                                                    (let ((_%x124335%_
                                                           _%i124313%_))
                                                      (if (number? _%x124335%_)
                                                          (let ((_%x124340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%x124335%_))
                    (declare (not safe))
                    (__1- _%x124340%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/c3
                     'contract:
                     'number?
                     'value:
                     _%x124335%_)
                    '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r124332%_))))
                                            (let ((_%$%try-match124317124375%_
                                                   (lambda ()
                                                     (if (pair? _%$%t124315124324%_)
                                                         (let ((_%$%tl124321124368%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%$%t124315124324%_)))
                       (_%$%hd124320124366%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%t124315124324%_))))
                   (let ((_%a124371%_ _%$%hd124320124366%_)
                         (_%r124373%_ _%$%tl124321124368%_))
                     (_%$%K124319124363%_ _%r124373%_ _%a124371%_)))
                 (_%$%E124318124328%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%$%t124315124324%_)
                                                  '#!void
                                                  (_%$%try-match124317124375%_))))))))
                                 #!void
                                 _g125003_))
                              (_%r-local-order124381%_
                               (let ((__tmp125005
                                      (lambda (_%parent-list124720%_)
                                        (if (null? (cdr _%parent-list124720%_))
                                            '#f
                                            (reverse _%parent-list124720%_)))))
                                 (declare (not safe))
                                 (filter-map__0
                                  __tmp125005
                                  _%parents124152%_)))
                              (_g125006_
                               (let ((_g125007_
                                      (let ((__tmp125009
                                             (lambda (_%cl124383%_)
                                               (for-each
                                                _%increment-ancestor-count124213%_
                                                _%cl124383%_))))
                                        (declare (not safe))
                                        (##for-each
                                         __tmp125009
                                         _%r-local-order124381%_))))
                                 #!void
                                 _g125007_))
                              (_g125010_
                               (let ((_g125011_
                                      (set! _%rcandidates124198%_
                                            (let ()
                                              (declare (not safe))
                                              (##append
                                               _%r-local-order124381%_
                                               _%rcandidates124198%_)))))
                                 #!void
                                 _g125011_))
                              (_%remove-suffix-tail-and-reverse124384%_
                               (lambda (_%rcl124594%_)
                                 (let _%u124596%_ ((_%cl-rhead124598%_
                                                    _%rcl124594%_)
                                                   (_%suffix-pos124599%_ '-1))
                                   (let* ((_%$%cl-rhead124600124609%_
                                           _%cl-rhead124598%_)
                                          (_%$%E124603124613%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%$%cl-rhead124600124609%_
                                                    '([])
                                                    '([c . clrh]))
                                             '#!void)))
                                     (let ((_%$%K124607124717%_
                                            (lambda () '()))
                                           (_%$%K124604124701%_
                                            (lambda (_%clrh124617%_
                                                     _%c124618%_)
                                              (let ((_%p124620%_
                                                     (_%tab-ref124203%_
                                                      _%suffix-tail-index124309%_
                                                      _%c124618%_
                                                      '#f)))
                                                (letrec ((_%err2124622%_
                                                          (lambda _%a124667%_
                                                            (apply _%err124208%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'reverse-candidate-list:
                           (_%get-names124207%_ _%rcl124594%_)
                           'suffix-tail-index:
                           (map (lambda (_%$%e124668124670%_)
                                  (let* ((_%$%$%e124668124672124679%_
                                          _%$%e124668124670%_)
                                         (_%$%E124674124683%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%$%$%e124668124672124679%_
                                                   '([a . i]))
                                            '#!void))
                                         (_%$%K124675124689%_
                                          (lambda (_%i124686%_ _%a124687%_)
                                            (cons (_%get-name124187%_
                                                   _%a124687%_)
                                                  _%i124686%_))))
                                    (if (pair? _%$%$%e124668124672124679%_)
                                        (let ((_%$%hd124676124692%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%$%e124668124672124679%_)))
                                              (_%$%tl124677124694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%$%e124668124672124679%_))))
                                          (let* ((_%a124697%_
                                                  _%$%hd124676124692%_)
                                                 (_%i124699%_
                                                  _%$%tl124677124694%_))
                                            (_%$%K124675124689%_
                                             _%i124699%_
                                             _%a124697%_)))
                                        (_%$%E124674124683%_))))
                                (_%tab->list124206%_
                                 _%suffix-tail-index124309%_))
                           'c:
                           (_%get-name124187%_ _%c124618%_)
                           'p:
                           _%p124620%_
                           'suffix-pos:
                           _%suffix-pos124599%_
                           _%a124667%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (not _%p124620%_)
                                                      (let ((_g125013_
                                                             (let* ((_%pred124629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%$%g124624124626%_)
                               (_%tab-ref124203%_
                                _%suffix-tail-index124309%_
                                _%$%g124624124626%_
                                '#f)))
                            (_%rhead124632%_ _%clrh124617%_)
                            (_%tail124635%_ (cons _%c124618%_ '()))
                            (_%pred124640%_ _%pred124629%_))
                       (declare (not safe))
                       (__append-reverse-until
                        _%pred124640%_
                        _%rhead124632%_
                        _%tail124635%_))))
                (begin
                  (let ((_g125014_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g125013_)
                               (##values-length _g125013_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g125014_ 2)))
                        (error "Context expects 2 values" _g125014_)))
                  (let ((_%clrh2124662%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g125013_ 0)))
                        (_%h124663%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g125013_ 1))))
                    (if (null? _%clrh2124662%_)
                        _%h124663%_
                        (_%err2124622%_
                         'precedence-list-tail:
                         (_%get-names124207%_ _%h124663%_)
                         'ancestor-out-of-order-vs-suffix-tail:
                         (_%get-name124187%_ (car _%clrh2124662%_))
                         'precedence-list-head:
                         (_%get-names124207%_ (reverse _%clrh2124662%_)))))))
              (if (> _%p124620%_ _%suffix-pos124599%_)
                  (_%u124596%_ _%clrh124617%_ _%p124620%_)
                  (_%err2124622%_
                   'ancestor-out-of-order-vs-suffix-tail:
                   (_%get-name124187%_ _%c124618%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%$%try-match124602124713%_
                                              (lambda ()
                                                (if (pair? _%$%cl-rhead124600124609%_)
                                                    (let ((_%$%tl124606124706%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%cl-rhead124600124609%_)))
                                                          (_%$%hd124605124704%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%cl-rhead124600124609%_))))
                                                      (let ((_%c124709%_
                                                             _%$%hd124605124704%_)
                                                            (_%clrh124711%_
                                                             _%$%tl124606124706%_))
                                                        (_%$%K124604124701%_
                                                         _%clrh124711%_
                                                         _%c124709%_)))
                                                    (_%$%E124603124613%_)))))
                                         (if (null? _%$%cl-rhead124600124609%_)
                                             (_%$%K124607124717%_)
                                             (_%$%try-match124602124713%_))))))))
                              (_%candidates124385%_
                               (reverse (let ((__tmp125015
                                               (let ()
                                                 (declare (not safe))
                                                 (##map _%remove-suffix-tail-and-reverse124384%_
                                                        _%rcandidates124198%_))))
                                          (declare (not safe))
                                          (remove-nulls! __tmp125015))))
                              (_g125016_
                               (let ((_g125017_
                                      (let ((__tmp125019
                                             (lambda (_%cl124387%_)
                                               (_%decrement-ancestor-count124214%_
                                                (car _%cl124387%_)))))
                                        (declare (not safe))
                                        (##for-each
                                         __tmp125019
                                         _%candidates124385%_))))
                                 #!void
                                 _g125017_))
                              (_%c3-select-next124388%_
                               (lambda (_%tails124550%_)
                                 (let _%loop124552%_ ((_%ts124554%_
                                                       _%tails124550%_))
                                   (let* ((_%$%ts124555124565%_ _%ts124554%_)
                                          (_%$%else124557124573%_
                                           (lambda ()
                                             (_%err124208%_
                                              'c3-select-next:
                                              'fail)))
                                          (_%$%K124559124579%_
                                           (lambda (_%rts124576%_ _%c124577%_)
                                             (if (zero? (_%get-ancestor-count124212%_
                                                         _%c124577%_))
                                                 _%c124577%_
                                                 (_%loop124552%_
                                                  _%rts124576%_)))))
                                     (if (pair? _%$%ts124555124565%_)
                                         (let ((_%$%hd124560124582%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%ts124555124565%_)))
                                               (_%$%tl124561124584%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%ts124555124565%_))))
                                           (if (pair? _%$%hd124560124582%_)
                                               (let* ((_%$%hd124562124587%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd124560124582%_)))
                                                      (_%c124590%_
                                                       _%$%hd124562124587%_)
                                                      (_%rts124592%_
                                                       _%$%tl124561124584%_))
                                                 (_%$%K124559124579%_
                                                  _%rts124592%_
                                                  _%c124590%_))
                                               (_%$%else124557124573%_)))
                                         (_%$%else124557124573%_))))))
                              (_%remove-next!124389%_
                               (lambda (_%next124440%_ _%tails124441%_)
                                 (let _%loop124443%_ ((_%t124445%_
                                                       _%tails124441%_))
                                   (let* ((_%$%t124446124461%_ _%t124445%_)
                                          (_%$%E124450124465%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%$%t124446124461%_
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
                                     (let ((_%$%K124455124527%_
                                            (lambda (_%rr124490%_
                                                     _%tl124491%_
                                                     _%hd124492%_)
                                              (let* ((_%$%tl124493124502%_
                                                      _%tl124491%_)
                                                     (_%$%E124496124506%_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _%$%tl124493124502%_
                                                               '([c . _])
                                                               '(_))
                                                        '#!void)))
                                                (let ((_%$%K124498124519%_
                                                       (lambda (_%c124517%_)
                                                         (_%decrement-ancestor-count124214%_
                                                          _%c124517%_)))
                                                      (_%$%K124497124511%_
                                                       (lambda () '#!void)))
                                                  (if (pair? _%$%tl124493124502%_)
                                                      (let* ((_%$%hd124499124522%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%tl124493124502%_)))
                     (_%c124525%_ _%$%hd124499124522%_))
                (_%decrement-ancestor-count124214%_ _%c124525%_))
              '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (set-car!
                                               _%t124445%_
                                               _%tl124491%_)
                                              (_%loop124443%_ _%rr124490%_)))
                                           (_%$%K124452124479%_
                                            (lambda (_%rr124477%_)
                                              (_%loop124443%_ _%rr124477%_)))
                                           (_%$%K124451124470%_
                                            (lambda () _%tails124441%_)))
                                       (if (pair? _%$%t124446124461%_)
                                           (let ((_%$%tl124457124532%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%t124446124461%_)))
                                                 (_%$%hd124456124530%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%t124446124461%_))))
                                             (if (pair? _%$%hd124456124530%_)
                                                 (let ((_%$%tl124459124539%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%hd124456124530%_)))
                                                       (_%$%hd124458124537%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%hd124456124530%_))))
                                                   (if (_%eq124185%_
                                                        _%next124440%_
                                                        _%$%hd124458124537%_)
                                                       (let ((_%hd124535%_
                                                              _%$%hd124456124530%_)
                                                             (_%tl124546%_
                                                              _%$%tl124459124539%_)
                                                             (_%rr124548%_
                                                              _%$%tl124457124532%_))
                                                         (_%$%K124455124527%_
                                                          _%rr124548%_
                                                          _%tl124546%_
                                                          _%hd124535%_))
                                                       (let ((_%rr124485%_
                                                              _%$%tl124457124532%_))
                                                         (_%loop124443%_
                                                          _%rr124485%_))))
                                                 (let ((_%rr124485%_
                                                        _%$%tl124457124532%_))
                                                   (_%loop124443%_
                                                    _%rr124485%_))))
                                           (_%$%K124451124470%_)))))))
                              (_%precedence-list124390%_
                               (let _%c3loop124392%_ ((_%rhead124394%_
                                                       (reverse _%head124151%_))
                                                      (_%tails124395%_
                                                       _%candidates124385%_))
                                 (let* ((_%$%tails124396124406%_
                                         _%tails124395%_)
                                        (_%$%else124399124417%_
                                         (lambda ()
                                           (let ((_%next124414%_
                                                  (_%c3-select-next124388%_
                                                   _%tails124395%_)))
                                             (_%c3loop124392%_
                                              (cons _%next124414%_
                                                    _%rhead124394%_)
                                              (let ((__tmp125020
                                                     (_%remove-next!124389%_
                                                      _%next124414%_
                                                      _%tails124395%_)))
                                                (declare (not safe))
                                                (remove-nulls!
                                                 __tmp125020)))))))
                                   (let ((_%$%K124404124437%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead124394%_
                                             _%suffix-tail124200%_)))
                                         (_%$%K124401124423%_
                                          (lambda (_%tail124421%_)
                                            (append-reverse
                                             _%rhead124394%_
                                             (append _%tail124421%_
                                                     _%suffix-tail124200%_)))))
                                     (let ((_%$%try-match124398124433%_
                                            (lambda ()
                                              (if (pair? _%$%tails124396124406%_)
                                                  (let ((_%$%tl124403124428%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tails124396124406%_)))
                                                        (_%$%hd124402124426%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tails124396124406%_))))
                                                    (if (null? _%$%tl124403124428%_)
                                                        (let ((_%tail124431%_
                                                               _%$%hd124402124426%_))
                                                          (_%$%K124401124423%_
                                                           _%tail124431%_))
                                                        (_%$%else124399124417%_)))
                                                  (_%$%else124399124417%_)))))
                                       (if (null? _%$%tails124396124406%_)
                                           (_%$%K124404124437%_)
                                           (_%$%try-match124398124433%_))))))))
                      (values _%precedence-list124390%_
                              _%suffix124199%_))))))))
    (define c4-linearize*__@
      (lambda (_%@@keywords124874%_ . _%args124875%_)
        (apply c4-linearize*__%
               _%@@keywords124874%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords124874%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords124874%_
                  'suffix:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords124874%_
                  'super-suffix:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords124874%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords124874%_
                  'get-name:
                  absent-value))
               _%args124875%_)))
    (define c4-linearize*
      (lambda _%$%args124143124881%_
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
               _%$%args124143124881%_)))
    (define c4-compute-class-slots
      (lambda (_%precedence-list124092%_
               _%direct-slot-list124093%_
               _%mixin-slot-names124094%_
               _%result124095%_)
        (let* ((_%next-slot124097%_ '1)
               (_%slot-table124099%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots124101%_ (cons 'class '()))
               (_%process-slot124126%_
                (lambda (_%slot124103%_)
                  (if (symbol? _%slot124103%_)
                      '#!void
                      (error '"invalid slot name" _%slot124103%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table124099%_
                              _%slot124103%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table124099%_
                           _%slot124103%_
                           _%next-slot124097%_))
                        (let ((__tmp125021
                               (let ((_%sym124105%_ _%slot124103%_))
                                 (if (symbol? _%sym124105%_)
                                     (let ((_%sym124110%_ _%sym124105%_))
                                       (declare (not safe))
                                       (__symbol->keyword _%sym124110%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/c3
                                        'contract:
                                        'symbol?
                                        'value:
                                        _%sym124105%_)
                                       '#!void)))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table124099%_
                           __tmp125021
                           _%next-slot124097%_))
                        (set! _%r-slots124101%_
                              (cons _%slot124103%_ _%r-slots124101%_))
                        (set! _%next-slot124097%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot124097%_ '1))))
                      '#!void)))
               (_%process-slots124132%_
                (lambda (_%$%g124127124129%_)
                  (for-each _%process-slot124126%_ _%$%g124127124129%_))))
          (let ((__tmp125023
                 (lambda (_%mixin124135%_)
                   (_%process-slots124132%_
                    (_%mixin-slot-names124094%_ _%mixin124135%_))))
                (__tmp125022 (reverse _%precedence-list124092%_)))
            (declare (not safe))
            (##for-each __tmp125023 __tmp125022))
          (_%process-slots124132%_ _%direct-slot-list124093%_)
          (_%result124095%_
           (reverse! _%r-slots124101%_)
           _%slot-table124099%_))))))
