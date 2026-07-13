(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1783939345)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords125071%_
               _%$%get-precedence-list125065125072%_
               _%$%struct?125066125073%_
               _%$%eq125067125074%_
               _%$%get-name125068125075%_
               _%rhead125076%_
               _%supers125077%_)
        (let* ((_%get-precedence-list125079%_
                (if (eq? _%$%get-precedence-list125065125072%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%$%get-precedence-list125065125072%_))
               (_%struct?125083%_
                (if (eq? _%$%struct?125066125073%_ absent-value)
                    (lambda (_%_125081%_) '#f)
                    _%$%struct?125066125073%_))
               (_%eq125085%_
                (if (eq? _%$%eq125067125074%_ absent-value)
                    eq?
                    _%$%eq125067125074%_))
               (_%get-name125087%_
                (if (eq? _%$%get-name125068125075%_ absent-value)
                    identity
                    _%$%get-name125068125075%_)))
          (c4-linearize*__%
           '#f
           _%get-precedence-list125079%_
           _%struct?125083%_
           absent-value
           _%eq125085%_
           _%get-name125087%_
           (reverse _%rhead125076%_)
           (list _%supers125077%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords125093%_ . _%args125094%_)
        (apply c4-linearize__%
               _%@@keywords125093%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords125093%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords125093%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords125093%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords125093%_
                  'get-name:
                  absent-value))
               _%args125094%_)))
    (define c4-linearize
      (lambda _%$%args125069125100%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%$%args125069125100%_)))
    (define c4-linearize*__%
      (lambda (_%@@keywords124325%_
               _%$%get-precedence-list124318124326%_
               _%$%suffix?124319124327%_
               _%$%super-suffix124320124328%_
               _%$%eq124321124329%_
               _%$%get-name124322124330%_
               _%head124331%_
               _%parents124332%_)
        (let* ((_%get-precedence-list124334%_
                (if (eq? _%$%get-precedence-list124318124326%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%$%get-precedence-list124318124326%_))
               (_%suffix?124336%_
                (if (eq? _%$%suffix?124319124327%_ absent-value)
                    (error '"Missing required keyword argument" 'suffix:)
                    _%$%suffix?124319124327%_))
               (_%super-suffix124363%_
                (if (eq? _%$%super-suffix124320124328%_ absent-value)
                    (lambda (_%x124338%_)
                      (let* ((_%pred124340%_ _%suffix?124336%_)
                             (_%lst124343%_
                              (cdr (_%get-precedence-list124334%_
                                    _%x124338%_))))
                        (if (procedure? _%pred124340%_)
                            (let ((_%pred124348%_ _%pred124340%_))
                              (declare (not safe))
                              (__find _%pred124348%_ _%lst124343%_))
                            (begin
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               'gerbil/runtime/c3
                               'contract:
                               'procedure?
                               'value:
                               _%pred124340%_)
                              '#!void))))
                    _%$%super-suffix124320124328%_))
               (_%eq124365%_
                (if (eq? _%$%eq124321124329%_ absent-value)
                    eq?
                    _%$%eq124321124329%_))
               (_%get-name124367%_
                (if (eq? _%$%get-name124322124330%_ absent-value)
                    identity
                    _%$%get-name124322124330%_)))
          (set! _%parents124332%_
                (let ()
                  (declare (not safe))
                  (remove-nulls! _%parents124332%_)))
          (if (null? _%parents124332%_)
              (values _%head124331%_ '#f)
              (if (and (null? (cdr _%parents124332%_))
                       (null? (cdar _%parents124332%_)))
                  (let* ((_%parent124372%_ (caar _%parents124332%_))
                         (_%pl124374%_
                          (_%get-precedence-list124334%_ _%parent124372%_)))
                    (values (append _%head124331%_ _%pl124374%_)
                            (if (_%suffix?124336%_ _%parent124372%_)
                                _%parent124372%_
                                (_%super-suffix124363%_ _%parent124372%_))))
                  (let ((_%rcandidates124378%_ '())
                        (_%suffix124379%_ '#f)
                        (_%suffix-tail124380%_ '()))
                    (letrec* ((_g125176_
                               (let ((_g125177_
                                      (if (eq? _%eq124365%_ eq?)
                                          (values (lambda ()
                                                    (make-table 'test: eq?))
                                                  table-ref
                                                  table-set!
                                                  table-set!
                                                  table->list)
                                          (if (eq? _%eq124365%_ eqv?)
                                              (values (lambda ()
                                                        (make-table
                                                         'test:
                                                         eqv?))
                                                      table-ref
                                                      table-set!
                                                      table-set!
                                                      table->list)
                                              (if (eq? _%eq124365%_ equal?)
                                                  (values (lambda ()
                                                            (make-table
                                                             'test:
                                                             equal?))
                                                          table-ref
                                                          table-set!
                                                          table-set!
                                                          table->list)
                                                  (values (lambda ()
                                                            (letrec* ((_%this124983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '#f '())))
                      (let ()
                        (declare (not safe))
                        (##set-car! _%this124983%_ _%this124983%_))
                      _%this124983%_))
                  (lambda (_%tab124985%_ _%key124986%_ _%default124987%_)
                    (let ((_%$e124989%_
                           (assoc _%key124986%_
                                  (cdr _%tab124985%_)
                                  _%eq124365%_)))
                      (if _%$e124989%_ (cdr _%$e124989%_) _%default124987%_)))
                  (lambda (_%tab124993%_ _%key124994%_ _%value124995%_)
                    (let ((_%$e124997%_
                           (assoc _%key124994%_
                                  (cdr _%tab124993%_)
                                  _%eq124365%_)))
                      (if _%$e124997%_
                          (set-cdr! _%$e124997%_ _%value124995%_)
                          (let ((_%tail125003%_
                                 (cons (cons _%key124994%_ _%value124995%_)
                                       '())))
                            (set-cdr! (car _%tab124993%_) _%tail125003%_)
                            (set-car! _%tab124993%_ _%tail125003%_)))))
                  (lambda (_%tab125005%_ _%key125006%_)
                    (let _%lp125008%_ ((_%prev125010%_ _%tab125005%_)
                                       (_%rest125011%_ (cdr _%tab125005%_)))
                      (let* ((_%$%rest125012125021%_ _%rest125011%_)
                             (_%$%E125015125025%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%rest125012125021%_
                                       '([])
                                       '([entry . tail]))
                                '#!void)))
                        (let ((_%$%K125019125048%_ (lambda () '#!void))
                              (_%$%K125016125032%_
                               (lambda (_%tail125029%_ _%entry125030%_)
                                 (if (_%eq124365%_
                                      _%key125006%_
                                      (car _%entry125030%_))
                                     (begin
                                       (set-cdr! _%prev125010%_ _%tail125029%_)
                                       (if (null? _%tail125029%_)
                                           (set-car!
                                            _%tab125005%_
                                            _%prev125010%_)
                                           '#!void))
                                     (_%lp125008%_
                                      _%rest125011%_
                                      _%tail125029%_)))))
                          (let ((_%$%try-match125014125044%_
                                 (lambda ()
                                   (if (pair? _%$%rest125012125021%_)
                                       (let ((_%$%tl125018125037%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%rest125012125021%_)))
                                             (_%$%hd125017125035%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%rest125012125021%_))))
                                         (let ((_%entry125040%_
                                                _%$%hd125017125035%_)
                                               (_%tail125042%_
                                                _%$%tl125018125037%_))
                                           (_%$%K125016125032%_
                                            _%tail125042%_
                                            _%entry125040%_)))
                                       (_%$%E125015125025%_)))))
                            (if (null? _%$%rest125012125021%_)
                                '#!void
                                (_%$%try-match125014125044%_)))))))
                  cdr))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 #!void
                                 _g125177_))
                              (_%make-tab124382%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g125176_ 0)))
                              (_%tab-ref124383%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g125176_ 1)))
                              (_%tab-set!124384%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g125176_ 2)))
                              (_%tab-remove!124385%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g125176_ 3)))
                              (_%tab->list124386%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g125176_ 4)))
                              (_%get-names124387%_
                               (lambda (_%lst124973%_)
                                 (map _%get-name124367%_ _%lst124973%_)))
                              (_%err124388%_
                               (lambda _%a124971%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names124387%_ _%head124331%_)
                                        'parents:
                                        (map _%get-names124387%_
                                             _%parents124332%_)
                                        'precedence-lists:
                                        (let ((__tmp125178
                                               (map _%get-precedence-list124334%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl__0
                                                       append
                                                       '()
                                                       _%parents124332%_)))))
                                          (declare (not safe))
                                          (##map _%get-names124387%_
                                                 __tmp125178))
                                        'common-suffix-tail:
                                        (_%get-names124387%_
                                         _%suffix-tail124380%_)
                                        'rcandidates:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names124387%_
                                                 _%rcandidates124378%_))
                                        _%a124971%_)))
                              (_%super-suffix?124389%_
                               (lambda (_%s1124958%_ _%s2124959%_)
                                 (let ((_%$e124961%_ (not _%s2124959%_)))
                                   (if _%$e124961%_
                                       _%$e124961%_
                                       (let _%loop124964%_ ((_%s124966%_
                                                             _%s1124958%_))
                                         (if _%s124966%_
                                             (let ((_%$e124968%_
                                                    (_%eq124365%_
                                                     _%s124966%_
                                                     _%s2124959%_)))
                                               (if _%$e124968%_
                                                   _%$e124968%_
                                                   (_%loop124964%_
                                                    (_%super-suffix124363%_
                                                     _%s124966%_))))
                                             '#f))))))
                              (_%merge-suffix124390%_
                               (lambda (_%s1124942%_ _%s2124943%_)
                                 (if (not _%s2124943%_)
                                     _%s1124942%_
                                     (if (not _%s1124942%_)
                                         _%s2124943%_
                                         (let _%loop124948%_ ((_%t1124950%_
                                                               _%s1124942%_)
                                                              (_%t2124951%_
                                                               _%s2124943%_))
                                           (if (not _%t1124950%_)
                                               (if (_%super-suffix?124389%_
                                                    _%t2124951%_
                                                    _%s1124942%_)
                                                   _%s2124943%_
                                                   (_%err124388%_
                                                    'suffix-incompatibility:
                                                    (cons (_%get-name124367%_
                                                           _%s1124942%_)
                                                          (cons (_%get-name124367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%s2124943%_)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (not _%t2124951%_)
                                                   (if (_%super-suffix?124389%_
                                                        _%t1124950%_
                                                        _%s2124943%_)
                                                       _%s1124942%_
                                                       (_%err124388%_
                                                        'suffix-incompatibility:
                                                        (cons (_%get-name124367%_
                                                               _%s1124942%_)
                                                              (cons (_%get-name124367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%s2124943%_)
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (_%eq124365%_
                                                        _%t1124950%_
                                                        _%s2124943%_)
                                                       _%s1124942%_
                                                       (if (_%eq124365%_
                                                            _%t2124951%_
                                                            _%s1124942%_)
                                                           _%s2124943%_
                                                           (_%loop124948%_
                                                            (_%super-suffix124363%_
                                                             _%t1124950%_)
                                                            (_%super-suffix124363%_
                                                             _%t2124951%_)))))))))))
                              (_%ancestor-counts124391%_ (_%make-tab124382%_))
                              (_%get-ancestor-count124392%_
                               (lambda (_%c124940%_)
                                 (_%tab-ref124383%_
                                  _%ancestor-counts124391%_
                                  _%c124940%_
                                  '0)))
                              (_%increment-ancestor-count124393%_
                               (lambda (_%c124922%_)
                                 (_%tab-set!124384%_
                                  _%ancestor-counts124391%_
                                  _%c124922%_
                                  (let ((_%x124924%_
                                         (_%get-ancestor-count124392%_
                                          _%c124922%_)))
                                    (if (number? _%x124924%_)
                                        (let ((_%x124929%_ _%x124924%_))
                                          (declare (not safe))
                                          (__1+ _%x124929%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/c3
                                           'contract:
                                           'number?
                                           'value:
                                           _%x124924%_)
                                          '#!void))))))
                              (_%decrement-ancestor-count124394%_
                               (lambda (_%c124902%_)
                                 (let ((_%count124920%_
                                        (let ((_%x124904%_
                                               (_%get-ancestor-count124392%_
                                                _%c124902%_)))
                                          (if (number? _%x124904%_)
                                              (let ((_%x124909%_ _%x124904%_))
                                                (declare (not safe))
                                                (__1- _%x124909%_))
                                              (begin
                                                (raise-contract-violation-error
                                                 '"contract violation"
                                                 'context:
                                                 'gerbil/runtime/c3
                                                 'contract:
                                                 'number?
                                                 'value:
                                                 _%x124904%_)
                                                '#!void)))))
                                   (if (= '0 _%count124920%_)
                                       (_%tab-remove!124385%_
                                        _%ancestor-counts124391%_
                                        _%c124902%_)
                                       (_%tab-set!124384%_
                                        _%ancestor-counts124391%_
                                        _%c124902%_
                                        _%count124920%_)))))
                              (_g125179_
                               (let ((_g125180_
                                      (for-each
                                       (lambda (_%parent-list124396%_)
                                         (for-each
                                          (lambda (_%parent124398%_)
                                            (if (zero? (_%get-ancestor-count124392%_
                                                        _%parent124398%_))
                                                (let _%loop124400%_ ((_%al124402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_%get-precedence-list124334%_ _%parent124398%_))
                             (_%r124403%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (letrec ((_%done124405%_
                                                            (lambda ()
                                                              (if (null? _%r124403%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (set! _%rcandidates124378%_
                                (cons _%r124403%_ _%rcandidates124378%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%al124406124415%_
                                                            _%al124402%_)
                                                           (_%$%E124409124419%_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%al124406124415%_
                             '([])
                             '([a . ar]))
                      '#!void)))
              (let ((_%$%K124413124486%_ (lambda () (_%done124405%_)))
                    (_%$%K124410124470%_
                     (lambda (_%ar124423%_ _%a124424%_)
                       (if (_%suffix?124336%_ _%a124424%_)
                           (let ((_%ms124426%_
                                  (_%merge-suffix124390%_
                                   _%a124424%_
                                   _%suffix124379%_)))
                             (if (and _%suffix124379%_
                                      (_%eq124365%_
                                       _%ms124426%_
                                       _%suffix124379%_))
                                 '#!void
                                 (begin
                                   (let _%loop2124428%_ ((_%tl124430%_
                                                          _%al124402%_))
                                     (let* ((_%$%tl124431124440%_ _%tl124430%_)
                                            (_%$%E124434124444%_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _%$%tl124431124440%_
                                                      '([])
                                                      '([t . tr]))
                                               '#!void)))
                                       (let ((_%$%K124438124467%_
                                              (lambda () '#!void))
                                             (_%$%K124435124451%_
                                              (lambda (_%tr124448%_
                                                       _%t124449%_)
                                                (if (and _%suffix124379%_
                                                         (_%eq124365%_
                                                          _%t124449%_
                                                          _%suffix124379%_))
                                                    '#!void
                                                    (begin
                                                      (_%increment-ancestor-count124393%_
                                                       _%t124449%_)
                                                      (_%loop2124428%_
                                                       _%tr124448%_))))))
                                         (let ((_%$%try-match124433124463%_
                                                (lambda ()
                                                  (if (pair? _%$%tl124431124440%_)
                                                      (let ((_%$%tl124437124456%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%tl124431124440%_)))
                    (_%$%hd124436124454%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%tl124431124440%_))))
                (let ((_%t124459%_ _%$%hd124436124454%_)
                      (_%tr124461%_ _%$%tl124437124456%_))
                  (_%$%K124435124451%_ _%tr124461%_ _%t124459%_)))
              (_%$%E124434124444%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (null? _%$%tl124431124440%_)
                                               '#!void
                                               (_%$%try-match124433124463%_))))))
                                   (set! _%suffix124379%_ _%a124424%_)
                                   (set! _%suffix-tail124380%_ _%al124402%_)))
                             (_%done124405%_))
                           (begin
                             (_%increment-ancestor-count124393%_ _%a124424%_)
                             (_%loop124400%_
                              _%ar124423%_
                              (cons _%a124424%_ _%r124403%_)))))))
                (let ((_%$%try-match124408124482%_
                       (lambda ()
                         (if (pair? _%$%al124406124415%_)
                             (let ((_%$%tl124412124475%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%al124406124415%_)))
                                   (_%$%hd124411124473%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%al124406124415%_))))
                               (let ((_%a124478%_ _%$%hd124411124473%_)
                                     (_%ar124480%_ _%$%tl124412124475%_))
                                 (_%$%K124410124470%_
                                  _%ar124480%_
                                  _%a124478%_)))
                             (_%$%E124409124419%_)))))
                  (if (null? _%$%al124406124415%_)
                      (_%done124405%_)
                      (_%$%try-match124408124482%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '#!void))
                                          _%parent-list124396%_))
                                       _%parents124332%_)))
                                 #!void
                                 _g125180_))
                              (_%suffix-tail-index124489%_
                               (_%make-tab124382%_))
                              (_g125182_
                               (let ((_g125183_
                                      (let _%loop124491%_ ((_%i124493%_
                                                            (length _%suffix-tail124380%_))
                                                           (_%t124494%_
                                                            _%suffix-tail124380%_))
                                        (let* ((_%$%t124495124504%_
                                                _%t124494%_)
                                               (_%$%E124498124508%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%$%t124495124504%_
                                                         '([])
                                                         '([a . r]))
                                                  '#!void)))
                                          (let ((_%$%K124502124559%_
                                                 (lambda () '#!void))
                                                (_%$%K124499124543%_
                                                 (lambda (_%r124512%_
                                                          _%a124513%_)
                                                   (_%tab-set!124384%_
                                                    _%suffix-tail-index124489%_
                                                    _%a124513%_
                                                    _%i124493%_)
                                                   (_%loop124491%_
                                                    (let ((_%x124515%_
                                                           _%i124493%_))
                                                      (if (number? _%x124515%_)
                                                          (let ((_%x124520%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%x124515%_))
                    (declare (not safe))
                    (__1- _%x124520%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/c3
                     'contract:
                     'number?
                     'value:
                     _%x124515%_)
                    '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r124512%_))))
                                            (let ((_%$%try-match124497124555%_
                                                   (lambda ()
                                                     (if (pair? _%$%t124495124504%_)
                                                         (let ((_%$%tl124501124548%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%$%t124495124504%_)))
                       (_%$%hd124500124546%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%t124495124504%_))))
                   (let ((_%a124551%_ _%$%hd124500124546%_)
                         (_%r124553%_ _%$%tl124501124548%_))
                     (_%$%K124499124543%_ _%r124553%_ _%a124551%_)))
                 (_%$%E124498124508%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%$%t124495124504%_)
                                                  '#!void
                                                  (_%$%try-match124497124555%_))))))))
                                 #!void
                                 _g125183_))
                              (_%r-local-order124561%_
                               (let ((__tmp125185
                                      (lambda (_%parent-list124900%_)
                                        (if (null? (cdr _%parent-list124900%_))
                                            '#f
                                            (reverse _%parent-list124900%_)))))
                                 (declare (not safe))
                                 (filter-map__0
                                  __tmp125185
                                  _%parents124332%_)))
                              (_g125186_
                               (let ((_g125187_
                                      (let ((__tmp125189
                                             (lambda (_%cl124563%_)
                                               (for-each
                                                _%increment-ancestor-count124393%_
                                                _%cl124563%_))))
                                        (declare (not safe))
                                        (##for-each
                                         __tmp125189
                                         _%r-local-order124561%_))))
                                 #!void
                                 _g125187_))
                              (_g125190_
                               (let ((_g125191_
                                      (set! _%rcandidates124378%_
                                            (let ()
                                              (declare (not safe))
                                              (##append
                                               _%r-local-order124561%_
                                               _%rcandidates124378%_)))))
                                 #!void
                                 _g125191_))
                              (_%remove-suffix-tail-and-reverse124564%_
                               (lambda (_%rcl124774%_)
                                 (let _%u124776%_ ((_%cl-rhead124778%_
                                                    _%rcl124774%_)
                                                   (_%suffix-pos124779%_ '-1))
                                   (let* ((_%$%cl-rhead124780124789%_
                                           _%cl-rhead124778%_)
                                          (_%$%E124783124793%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%$%cl-rhead124780124789%_
                                                    '([])
                                                    '([c . clrh]))
                                             '#!void)))
                                     (let ((_%$%K124787124897%_
                                            (lambda () '()))
                                           (_%$%K124784124881%_
                                            (lambda (_%clrh124797%_
                                                     _%c124798%_)
                                              (let ((_%p124800%_
                                                     (_%tab-ref124383%_
                                                      _%suffix-tail-index124489%_
                                                      _%c124798%_
                                                      '#f)))
                                                (letrec ((_%err2124802%_
                                                          (lambda _%a124847%_
                                                            (apply _%err124388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'reverse-candidate-list:
                           (_%get-names124387%_ _%rcl124774%_)
                           'suffix-tail-index:
                           (map (lambda (_%$%e124848124850%_)
                                  (let* ((_%$%$%e124848124852124859%_
                                          _%$%e124848124850%_)
                                         (_%$%E124854124863%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%$%$%e124848124852124859%_
                                                   '([a . i]))
                                            '#!void))
                                         (_%$%K124855124869%_
                                          (lambda (_%i124866%_ _%a124867%_)
                                            (cons (_%get-name124367%_
                                                   _%a124867%_)
                                                  _%i124866%_))))
                                    (if (pair? _%$%$%e124848124852124859%_)
                                        (let ((_%$%hd124856124872%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%$%e124848124852124859%_)))
                                              (_%$%tl124857124874%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%$%e124848124852124859%_))))
                                          (let* ((_%a124877%_
                                                  _%$%hd124856124872%_)
                                                 (_%i124879%_
                                                  _%$%tl124857124874%_))
                                            (_%$%K124855124869%_
                                             _%i124879%_
                                             _%a124877%_)))
                                        (_%$%E124854124863%_))))
                                (_%tab->list124386%_
                                 _%suffix-tail-index124489%_))
                           'c:
                           (_%get-name124367%_ _%c124798%_)
                           'p:
                           _%p124800%_
                           'suffix-pos:
                           _%suffix-pos124779%_
                           _%a124847%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (not _%p124800%_)
                                                      (let ((_g125193_
                                                             (let* ((_%pred124809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%$%g124804124806%_)
                               (_%tab-ref124383%_
                                _%suffix-tail-index124489%_
                                _%$%g124804124806%_
                                '#f)))
                            (_%rhead124812%_ _%clrh124797%_)
                            (_%tail124815%_ (cons _%c124798%_ '()))
                            (_%pred124820%_ _%pred124809%_))
                       (declare (not safe))
                       (__append-reverse-until
                        _%pred124820%_
                        _%rhead124812%_
                        _%tail124815%_))))
                (begin
                  (let ((_g125194_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g125193_)
                               (##values-length _g125193_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g125194_ 2)))
                        (error "Context expects 2 values" _g125194_)))
                  (let ((_%clrh2124842%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g125193_ 0)))
                        (_%h124843%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g125193_ 1))))
                    (if (null? _%clrh2124842%_)
                        _%h124843%_
                        (_%err2124802%_
                         'precedence-list-tail:
                         (_%get-names124387%_ _%h124843%_)
                         'ancestor-out-of-order-vs-suffix-tail:
                         (_%get-name124367%_ (car _%clrh2124842%_))
                         'precedence-list-head:
                         (_%get-names124387%_ (reverse _%clrh2124842%_)))))))
              (if (> _%p124800%_ _%suffix-pos124779%_)
                  (_%u124776%_ _%clrh124797%_ _%p124800%_)
                  (_%err2124802%_
                   'ancestor-out-of-order-vs-suffix-tail:
                   (_%get-name124367%_ _%c124798%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%$%try-match124782124893%_
                                              (lambda ()
                                                (if (pair? _%$%cl-rhead124780124789%_)
                                                    (let ((_%$%tl124786124886%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%cl-rhead124780124789%_)))
                                                          (_%$%hd124785124884%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%cl-rhead124780124789%_))))
                                                      (let ((_%c124889%_
                                                             _%$%hd124785124884%_)
                                                            (_%clrh124891%_
                                                             _%$%tl124786124886%_))
                                                        (_%$%K124784124881%_
                                                         _%clrh124891%_
                                                         _%c124889%_)))
                                                    (_%$%E124783124793%_)))))
                                         (if (null? _%$%cl-rhead124780124789%_)
                                             (_%$%K124787124897%_)
                                             (_%$%try-match124782124893%_))))))))
                              (_%candidates124565%_
                               (reverse (let ((__tmp125195
                                               (let ()
                                                 (declare (not safe))
                                                 (##map _%remove-suffix-tail-and-reverse124564%_
                                                        _%rcandidates124378%_))))
                                          (declare (not safe))
                                          (remove-nulls! __tmp125195))))
                              (_g125196_
                               (let ((_g125197_
                                      (let ((__tmp125199
                                             (lambda (_%cl124567%_)
                                               (_%decrement-ancestor-count124394%_
                                                (car _%cl124567%_)))))
                                        (declare (not safe))
                                        (##for-each
                                         __tmp125199
                                         _%candidates124565%_))))
                                 #!void
                                 _g125197_))
                              (_%c3-select-next124568%_
                               (lambda (_%tails124730%_)
                                 (let _%loop124732%_ ((_%ts124734%_
                                                       _%tails124730%_))
                                   (let* ((_%$%ts124735124745%_ _%ts124734%_)
                                          (_%$%else124737124753%_
                                           (lambda ()
                                             (_%err124388%_
                                              'c3-select-next:
                                              'fail)))
                                          (_%$%K124739124759%_
                                           (lambda (_%rts124756%_ _%c124757%_)
                                             (if (zero? (_%get-ancestor-count124392%_
                                                         _%c124757%_))
                                                 _%c124757%_
                                                 (_%loop124732%_
                                                  _%rts124756%_)))))
                                     (if (pair? _%$%ts124735124745%_)
                                         (let ((_%$%hd124740124762%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%ts124735124745%_)))
                                               (_%$%tl124741124764%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%ts124735124745%_))))
                                           (if (pair? _%$%hd124740124762%_)
                                               (let* ((_%$%hd124742124767%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd124740124762%_)))
                                                      (_%c124770%_
                                                       _%$%hd124742124767%_)
                                                      (_%rts124772%_
                                                       _%$%tl124741124764%_))
                                                 (_%$%K124739124759%_
                                                  _%rts124772%_
                                                  _%c124770%_))
                                               (_%$%else124737124753%_)))
                                         (_%$%else124737124753%_))))))
                              (_%remove-next!124569%_
                               (lambda (_%next124620%_ _%tails124621%_)
                                 (let _%loop124623%_ ((_%t124625%_
                                                       _%tails124621%_))
                                   (let* ((_%$%t124626124641%_ _%t124625%_)
                                          (_%$%E124630124645%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%$%t124626124641%_
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
                                     (let ((_%$%K124635124707%_
                                            (lambda (_%rr124670%_
                                                     _%tl124671%_
                                                     _%hd124672%_)
                                              (let* ((_%$%tl124673124682%_
                                                      _%tl124671%_)
                                                     (_%$%E124676124686%_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _%$%tl124673124682%_
                                                               '([c . _])
                                                               '(_))
                                                        '#!void)))
                                                (let ((_%$%K124678124699%_
                                                       (lambda (_%c124697%_)
                                                         (_%decrement-ancestor-count124394%_
                                                          _%c124697%_)))
                                                      (_%$%K124677124691%_
                                                       (lambda () '#!void)))
                                                  (if (pair? _%$%tl124673124682%_)
                                                      (let* ((_%$%hd124679124702%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%tl124673124682%_)))
                     (_%c124705%_ _%$%hd124679124702%_))
                (_%decrement-ancestor-count124394%_ _%c124705%_))
              '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (set-car!
                                               _%t124625%_
                                               _%tl124671%_)
                                              (_%loop124623%_ _%rr124670%_)))
                                           (_%$%K124632124659%_
                                            (lambda (_%rr124657%_)
                                              (_%loop124623%_ _%rr124657%_)))
                                           (_%$%K124631124650%_
                                            (lambda () _%tails124621%_)))
                                       (if (pair? _%$%t124626124641%_)
                                           (let ((_%$%tl124637124712%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%t124626124641%_)))
                                                 (_%$%hd124636124710%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%t124626124641%_))))
                                             (if (pair? _%$%hd124636124710%_)
                                                 (let ((_%$%tl124639124719%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%hd124636124710%_)))
                                                       (_%$%hd124638124717%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%hd124636124710%_))))
                                                   (if (_%eq124365%_
                                                        _%next124620%_
                                                        _%$%hd124638124717%_)
                                                       (let ((_%hd124715%_
                                                              _%$%hd124636124710%_)
                                                             (_%tl124726%_
                                                              _%$%tl124639124719%_)
                                                             (_%rr124728%_
                                                              _%$%tl124637124712%_))
                                                         (_%$%K124635124707%_
                                                          _%rr124728%_
                                                          _%tl124726%_
                                                          _%hd124715%_))
                                                       (let ((_%rr124665%_
                                                              _%$%tl124637124712%_))
                                                         (_%loop124623%_
                                                          _%rr124665%_))))
                                                 (let ((_%rr124665%_
                                                        _%$%tl124637124712%_))
                                                   (_%loop124623%_
                                                    _%rr124665%_))))
                                           (_%$%K124631124650%_)))))))
                              (_%precedence-list124570%_
                               (let _%c3loop124572%_ ((_%rhead124574%_
                                                       (reverse _%head124331%_))
                                                      (_%tails124575%_
                                                       _%candidates124565%_))
                                 (let* ((_%$%tails124576124586%_
                                         _%tails124575%_)
                                        (_%$%else124579124597%_
                                         (lambda ()
                                           (let ((_%next124594%_
                                                  (_%c3-select-next124568%_
                                                   _%tails124575%_)))
                                             (_%c3loop124572%_
                                              (cons _%next124594%_
                                                    _%rhead124574%_)
                                              (let ((__tmp125200
                                                     (_%remove-next!124569%_
                                                      _%next124594%_
                                                      _%tails124575%_)))
                                                (declare (not safe))
                                                (remove-nulls!
                                                 __tmp125200)))))))
                                   (let ((_%$%K124584124617%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead124574%_
                                             _%suffix-tail124380%_)))
                                         (_%$%K124581124603%_
                                          (lambda (_%tail124601%_)
                                            (append-reverse
                                             _%rhead124574%_
                                             (append _%tail124601%_
                                                     _%suffix-tail124380%_)))))
                                     (let ((_%$%try-match124578124613%_
                                            (lambda ()
                                              (if (pair? _%$%tails124576124586%_)
                                                  (let ((_%$%tl124583124608%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tails124576124586%_)))
                                                        (_%$%hd124582124606%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tails124576124586%_))))
                                                    (if (null? _%$%tl124583124608%_)
                                                        (let ((_%tail124611%_
                                                               _%$%hd124582124606%_))
                                                          (_%$%K124581124603%_
                                                           _%tail124611%_))
                                                        (_%$%else124579124597%_)))
                                                  (_%$%else124579124597%_)))))
                                       (if (null? _%$%tails124576124586%_)
                                           (_%$%K124584124617%_)
                                           (_%$%try-match124578124613%_))))))))
                      (values _%precedence-list124570%_
                              _%suffix124379%_))))))))
    (define c4-linearize*__@
      (lambda (_%@@keywords125054%_ . _%args125055%_)
        (apply c4-linearize*__%
               _%@@keywords125054%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords125054%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords125054%_
                  'suffix:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords125054%_
                  'super-suffix:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords125054%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords125054%_
                  'get-name:
                  absent-value))
               _%args125055%_)))
    (define c4-linearize*
      (lambda _%$%args124323125061%_
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
               _%$%args124323125061%_)))
    (define c4-compute-class-slots
      (lambda (_%precedence-list124272%_
               _%direct-slot-list124273%_
               _%mixin-slot-names124274%_
               _%result124275%_)
        (let* ((_%next-slot124277%_ '1)
               (_%slot-table124279%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots124281%_ (cons 'class '()))
               (_%process-slot124306%_
                (lambda (_%slot124283%_)
                  (if (symbol? _%slot124283%_)
                      '#!void
                      (error '"invalid slot name" _%slot124283%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table124279%_
                              _%slot124283%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table124279%_
                           _%slot124283%_
                           _%next-slot124277%_))
                        (let ((__tmp125201
                               (let ((_%sym124285%_ _%slot124283%_))
                                 (if (symbol? _%sym124285%_)
                                     (let ((_%sym124290%_ _%sym124285%_))
                                       (declare (not safe))
                                       (__symbol->keyword _%sym124290%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/c3
                                        'contract:
                                        'symbol?
                                        'value:
                                        _%sym124285%_)
                                       '#!void)))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table124279%_
                           __tmp125201
                           _%next-slot124277%_))
                        (set! _%r-slots124281%_
                              (cons _%slot124283%_ _%r-slots124281%_))
                        (set! _%next-slot124277%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot124277%_ '1))))
                      '#!void)))
               (_%process-slots124312%_
                (lambda (_%$%g124307124309%_)
                  (for-each _%process-slot124306%_ _%$%g124307124309%_))))
          (let ((__tmp125203
                 (lambda (_%mixin124315%_)
                   (_%process-slots124312%_
                    (_%mixin-slot-names124274%_ _%mixin124315%_))))
                (__tmp125202 (reverse _%precedence-list124272%_)))
            (declare (not safe))
            (##for-each __tmp125203 __tmp125202))
          (_%process-slots124312%_ _%direct-slot-list124273%_)
          (_%result124275%_
           (reverse! _%r-slots124281%_)
           _%slot-table124279%_))))))
