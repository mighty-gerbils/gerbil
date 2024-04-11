(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1712823025)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords92647%_
               _%get-precedence-list9264192648%_
               _%struct?9264292650%_
               _%eq9264392652%_
               _%get-name9264492654%_
               _%rhead92656%_
               _%supers92657%_)
        (let* ((_%get-precedence-list92659%_
                (if (eq? _%get-precedence-list9264192648%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9264192648%_))
               (_%struct?92661%_
                (if (eq? _%struct?9264292650%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9264292650%_))
               (_%eq92663%_
                (if (eq? _%eq9264392652%_ absent-value) eq? _%eq9264392652%_))
               (_%get-name92665%_
                (if (eq? _%get-name9264492654%_ absent-value)
                    identity
                    _%get-name9264492654%_)))
          (letrec* ((_%pls92668%_
                     (map _%get-precedence-list92659%_ _%supers92657%_))
                    (_%sit92669%_ '())
                    (_%get-names92670%_
                     (lambda (_%lst92945%_)
                       (map _%get-name92665%_ _%lst92945%_)))
                    (_%err92671%_
                     (lambda _%a92943%_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (_%get-names92670%_ (reverse _%rhead92656%_))
                              'precedence-lists:
                              (let ()
                                (declare (not safe))
                                (##map _%get-names92670%_ _%pls92668%_))
                              'single-inheritance-tail:
                              (_%get-names92670%_ _%sit92669%_)
                              _%a92943%_)))
                    (_%same?92672%_
                     (lambda (_%lst192940%_ _%lst292941%_)
                       (if (let ((__tmp92993 (length _%lst192940%_))
                                 (__tmp92992 (length _%lst292941%_)))
                             (declare (not safe))
                             (##fx= __tmp92993 __tmp92992))
                           (let ()
                             (declare (not safe))
                             (andmap2 _%eq92663%_ _%lst192940%_ _%lst292941%_))
                           '#f)))
                    (_%merge-sit!92673%_
                     (lambda (_%sit292923%_)
                       (if (null? _%sit292923%_)
                           '#!void
                           (if (null? _%sit92669%_)
                               (set! _%sit92669%_ _%sit292923%_)
                               (let _%loop92928%_ ((_%t192930%_ _%sit92669%_)
                                                   (_%t292931%_ _%sit292923%_))
                                 (if (_%same?92672%_ _%t192930%_ _%sit292923%_)
                                     '#!void
                                     (if (_%same?92672%_
                                          _%t292931%_
                                          _%sit92669%_)
                                         (set! _%sit92669%_ _%sit292923%_)
                                         (if (or (null? _%t192930%_)
                                                 (null? _%t292931%_))
                                             (_%err92671%_
                                              'single-inheritance-incompatibility:
                                              (cons (_%get-names92670%_
                                                     _%sit92669%_)
                                                    (cons (_%get-names92670%_
                                                           _%sit292923%_)
                                                          '())))
                                             (_%loop92928%_
                                              (cdr _%t192930%_)
                                              (cdr _%t292931%_))))))))))
                    (_%rpls92674%_
                     (let ((__tmp92994
                            (lambda (_%pl92918%_)
                              (let ((_g92995_
                                     (let ()
                                       (declare (not safe))
                                       (append-reverse-until
                                        _%struct?92661%_
                                        _%pl92918%_
                                        '()))))
                                (begin
                                  (let ((_g92996_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g92995_)
                                               (##vector-length _g92995_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g92996_ 2)))
                                        (error "Context expects 2 values"
                                               _g92996_)))
                                  (let ((_%tl92920%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g92995_ 0)))
                                        (_%rh92921%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g92995_ 1))))
                                    (begin
                                      (_%merge-sit!92673%_ _%tl92920%_)
                                      _%rh92921%_)))))))
                       (declare (not safe))
                       (##map __tmp92994 _%pls92668%_)))
                    (_%unsitr-rpl92675%_
                     (lambda (_%rpl92864%_)
                       (let _%u92866%_ ((_%pl-rhead92868%_ _%rpl92864%_)
                                        (_%pl-tail92869%_ '())
                                        (_%sit-rhead92870%_
                                         (reverse _%sit92669%_))
                                        (_%sit-tail92871%_ '()))
                         (let* ((_%pl-rhead9287292881%_ _%pl-rhead92868%_)
                                (_%E9287592885%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%pl-rhead9287292881%_
                                          '([])
                                          '([c . plrh]))
                                   '#!void)))
                           (let ((_%K9287992915%_ (lambda () _%pl-tail92869%_))
                                 (_%K9287692899%_
                                  (lambda (_%plrh92889%_ _%c92890%_)
                                    (if (member _%c92890%_
                                                _%sit-tail92871%_
                                                _%eq92663%_)
                                        (_%err92671%_
                                         'precedence-list-head:
                                         (_%get-names92670%_
                                          (reverse _%pl-rhead92868%_))
                                         'precedence-list-tail:
                                         (_%get-names92670%_ _%pl-tail92869%_)
                                         'single-inheritance-head:
                                         (_%get-names92670%_
                                          (reverse _%sit-rhead92870%_))
                                         'single-inheritance-tail:
                                         (_%get-names92670%_ _%sit-tail92871%_)
                                         'super-out-of-order-vs-single-inheritance-tail:
                                         (_%get-name92665%_ _%c92890%_))
                                        (let ((_g92997_
                                               (let ((__tmp92999
                                                      (lambda (_%g9289192893%_)
                                                        (_%eq92663%_
                                                         _%c92890%_
                                                         _%g9289192893%_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp92999
                                                  _%sit-rhead92870%_
                                                  _%sit-tail92871%_))))
                                          (begin
                                            (let ((_g92998_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g92997_)
                                                         (##vector-length
                                                          _g92997_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g92998_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g92998_)))
                                            (let ((_%sit-rh292896%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g92997_
                                                      0)))
                                                  (_%sit-tl292897%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g92997_
                                                      1))))
                                              (if (null? _%sit-rh292896%_)
                                                  (_%u92866%_
                                                   _%plrh92889%_
                                                   (cons _%c92890%_
                                                         _%pl-tail92869%_)
                                                   '()
                                                   _%sit-tl292897%_)
                                                  (_%u92866%_
                                                   _%plrh92889%_
                                                   _%pl-tail92869%_
                                                   (cdr _%sit-rh292896%_)
                                                   _%sit-tl292897%_)))))))))
                             (let ((_%try-match9287492911%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%pl-rhead9287292881%_))
                                          (let ((_%tl9287892904%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%pl-rhead9287292881%_)))
                                                (_%hd9287792902%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%pl-rhead9287292881%_))))
                                            (let ((_%c92907%_ _%hd9287792902%_)
                                                  (_%plrh92909%_
                                                   _%tl9287892904%_))
                                              (_%K9287692899%_
                                               _%plrh92909%_
                                               _%c92907%_)))
                                          (_%E9287592885%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%pl-rhead9287292881%_))
                                   (_%K9287992915%_)
                                   (_%try-match9287492911%_))))))))
                    (_g93000_
                     (let ((_g93001_
                            (let ((__tmp93003 (reverse _%supers92657%_)))
                              (declare (not safe))
                              (append1! _%rpls92674%_ __tmp93003))))
                       #!void
                       _g93001_))
                    (_g93004_
                     (let ((_g93005_
                            (set! _%pls92668%_
                                  (let ()
                                    (declare (not safe))
                                    (##map _%unsitr-rpl92675%_
                                           _%rpls92674%_)))))
                       #!void
                       _g93005_))
                    (_%c3-select-next92676%_
                     (lambda (_%tails92814%_)
                       (let ((_%candidate?92820%_
                              (lambda (_%c92816%_)
                                (let ((__tmp93007
                                       (lambda (_%tail92818%_)
                                         (not (member _%c92816%_
                                                      (cdr _%tail92818%_)
                                                      _%eq92663%_)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp93007 _%tails92814%_)))))
                         (let _%loop92822%_ ((_%ts92824%_ _%tails92814%_))
                           (let* ((_%ts9282592835%_ _%ts92824%_)
                                  (_%else9282792843%_
                                   (lambda () (_%err92671%_)))
                                  (_%K9282992849%_
                                   (lambda (_%rts92846%_ _%c92847%_)
                                     (if (_%candidate?92820%_ _%c92847%_)
                                         _%c92847%_
                                         (_%loop92822%_ _%rts92846%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%ts9282592835%_))
                                 (let ((_%hd9283092852%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%ts9282592835%_)))
                                       (_%tl9283192854%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%ts9282592835%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%hd9283092852%_))
                                       (let* ((_%hd9283292857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd9283092852%_)))
                                              (_%c92860%_ _%hd9283292857%_)
                                              (_%rts92862%_ _%tl9283192854%_))
                                         (_%K9282992849%_
                                          _%rts92862%_
                                          _%c92860%_))
                                       (_%err92671%_)))
                                 (_%err92671%_)))))))
                    (_%remove-next!92677%_
                     (lambda (_%next92759%_ _%tails92760%_)
                       (let _%loop92762%_ ((_%t92764%_ _%tails92760%_))
                         (let* ((_%t9276592776%_ _%t92764%_)
                                (_%E9276892780%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%t9276592776%_
                                          '([])
                                          '([[head . tail] . more]))
                                   '#!void)))
                           (let ((_%K9277492811%_ (lambda () _%tails92760%_))
                                 (_%K9276992788%_
                                  (lambda (_%more92784%_
                                           _%tail92785%_
                                           _%head92786%_)
                                    (if (_%eq92663%_
                                         _%head92786%_
                                         _%next92759%_)
                                        (set-car! _%t92764%_ _%tail92785%_)
                                        '#!void)
                                    (_%loop92762%_ _%more92784%_))))
                             (let ((_%try-match9276792807%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%t9276592776%_))
                                          (let ((_%tl9277192793%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%t9276592776%_)))
                                                (_%hd9277092791%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%t9276592776%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd9277092791%_))
                                                (let ((_%tl9277392798%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd9277092791%_)))
                                                      (_%hd9277292796%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd9277092791%_))))
                                                  (let ((_%head92801%_
                                                         _%hd9277292796%_)
                                                        (_%tail92803%_
                                                         _%tl9277392798%_)
                                                        (_%more92805%_
                                                         _%tl9277192793%_))
                                                    (_%K9276992788%_
                                                     _%more92805%_
                                                     _%tail92803%_
                                                     _%head92801%_)))
                                                (_%E9276892780%_)))
                                          (_%E9276892780%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%t9276592776%_))
                                   (_%K9277492811%_)
                                   (_%try-match9276792807%_))))))))
                    (_%precedence-list92678%_
                     (let _%c3loop92709%_ ((_%rhead92711%_ _%rhead92656%_)
                                           (_%tails92712%_ _%pls92668%_))
                       (let* ((_%tails92714%_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _%tails92712%_)))
                              (_%tails9271592725%_ _%tails92714%_)
                              (_%else9271892736%_
                               (lambda ()
                                 (let ((_%next92733%_
                                        (_%c3-select-next92676%_
                                         _%tails92714%_)))
                                   (_%c3loop92709%_
                                    (cons _%next92733%_ _%rhead92711%_)
                                    (_%remove-next!92677%_
                                     _%next92733%_
                                     _%tails92714%_))))))
                         (let ((_%K9272392756%_
                                (lambda ()
                                  (append-reverse
                                   _%rhead92711%_
                                   _%sit92669%_)))
                               (_%K9272092742%_
                                (lambda (_%tail92740%_)
                                  (append-reverse
                                   _%rhead92711%_
                                   (append _%tail92740%_ _%sit92669%_)))))
                           (let ((_%try-match9271792752%_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tails9271592725%_))
                                        (let ((_%tl9272292747%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tails9271592725%_)))
                                              (_%hd9272192745%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tails9271592725%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl9272292747%_))
                                              (let ((_%tail92750%_
                                                     _%hd9272192745%_))
                                                (_%K9272092742%_
                                                 _%tail92750%_))
                                              (_%else9271892736%_)))
                                        (_%else9271892736%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tails9271592725%_))
                                 (_%K9272392756%_)
                                 (_%try-match9271792752%_)))))))
                    (_%super-struct92679%_
                     (let* ((_%sit9268092688%_ _%sit92669%_)
                            (_%else9268292696%_ (lambda () '#f))
                            (_%K9268492701%_ (lambda (_%s92699%_) _%s92699%_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%sit9268092688%_))
                           (let* ((_%hd9268592704%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%sit9268092688%_)))
                                  (_%s92707%_ _%hd9268592704%_))
                             (_%K9268492701%_ _%s92707%_))
                           (_%else9268292696%_)))))
            (values _%precedence-list92678%_ _%super-struct92679%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords92950%_ . _%args92951%_)
        (apply c4-linearize__%
               _%@@keywords92950%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords92950%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords92950%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords92950%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords92950%_
                  'get-name:
                  absent-value))
               _%args92951%_)))
    (define c4-linearize
      (lambda _%args9264592957%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9264592957%_)))))
