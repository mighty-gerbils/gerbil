(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1712836656)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords92649%_
               _%get-precedence-list9264392650%_
               _%struct?9264492652%_
               _%eq9264592654%_
               _%get-name9264692656%_
               _%rhead92658%_
               _%supers92659%_)
        (let* ((_%get-precedence-list92661%_
                (if (eq? _%get-precedence-list9264392650%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9264392650%_))
               (_%struct?92663%_
                (if (eq? _%struct?9264492652%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9264492652%_))
               (_%eq92665%_
                (if (eq? _%eq9264592654%_ absent-value) eq? _%eq9264592654%_))
               (_%get-name92667%_
                (if (eq? _%get-name9264692656%_ absent-value)
                    identity
                    _%get-name9264692656%_)))
          (letrec* ((_%pls92670%_
                     (map _%get-precedence-list92661%_ _%supers92659%_))
                    (_%sit92671%_ '())
                    (_%get-names92672%_
                     (lambda (_%lst92947%_)
                       (map _%get-name92667%_ _%lst92947%_)))
                    (_%err92673%_
                     (lambda _%a92945%_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (_%get-names92672%_ (reverse _%rhead92658%_))
                              'precedence-lists:
                              (let ()
                                (declare (not safe))
                                (##map _%get-names92672%_ _%pls92670%_))
                              'single-inheritance-tail:
                              (_%get-names92672%_ _%sit92671%_)
                              _%a92945%_)))
                    (_%same?92674%_
                     (lambda (_%lst192942%_ _%lst292943%_)
                       (if (let ((__tmp92995 (length _%lst192942%_))
                                 (__tmp92994 (length _%lst292943%_)))
                             (declare (not safe))
                             (##fx= __tmp92995 __tmp92994))
                           (let ()
                             (declare (not safe))
                             (andmap2 _%eq92665%_ _%lst192942%_ _%lst292943%_))
                           '#f)))
                    (_%merge-sit!92675%_
                     (lambda (_%sit292925%_)
                       (if (null? _%sit292925%_)
                           '#!void
                           (if (null? _%sit92671%_)
                               (set! _%sit92671%_ _%sit292925%_)
                               (let _%loop92930%_ ((_%t192932%_ _%sit92671%_)
                                                   (_%t292933%_ _%sit292925%_))
                                 (if (_%same?92674%_ _%t192932%_ _%sit292925%_)
                                     '#!void
                                     (if (_%same?92674%_
                                          _%t292933%_
                                          _%sit92671%_)
                                         (set! _%sit92671%_ _%sit292925%_)
                                         (if (or (null? _%t192932%_)
                                                 (null? _%t292933%_))
                                             (_%err92673%_
                                              'single-inheritance-incompatibility:
                                              (cons (_%get-names92672%_
                                                     _%sit92671%_)
                                                    (cons (_%get-names92672%_
                                                           _%sit292925%_)
                                                          '())))
                                             (_%loop92930%_
                                              (cdr _%t192932%_)
                                              (cdr _%t292933%_))))))))))
                    (_%rpls92676%_
                     (let ((__tmp92996
                            (lambda (_%pl92920%_)
                              (let ((_g92997_
                                     (let ()
                                       (declare (not safe))
                                       (append-reverse-until
                                        _%struct?92663%_
                                        _%pl92920%_
                                        '()))))
                                (begin
                                  (let ((_g92998_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g92997_)
                                               (##vector-length _g92997_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g92998_ 2)))
                                        (error "Context expects 2 values"
                                               _g92998_)))
                                  (let ((_%tl92922%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g92997_ 0)))
                                        (_%rh92923%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g92997_ 1))))
                                    (begin
                                      (_%merge-sit!92675%_ _%tl92922%_)
                                      _%rh92923%_)))))))
                       (declare (not safe))
                       (##map __tmp92996 _%pls92670%_)))
                    (_%unsitr-rpl92677%_
                     (lambda (_%rpl92866%_)
                       (let _%u92868%_ ((_%pl-rhead92870%_ _%rpl92866%_)
                                        (_%pl-tail92871%_ '())
                                        (_%sit-rhead92872%_
                                         (reverse _%sit92671%_))
                                        (_%sit-tail92873%_ '()))
                         (let* ((_%pl-rhead9287492883%_ _%pl-rhead92870%_)
                                (_%E9287792887%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%pl-rhead9287492883%_
                                          '([])
                                          '([c . plrh]))
                                   '#!void)))
                           (let ((_%K9288192917%_ (lambda () _%pl-tail92871%_))
                                 (_%K9287892901%_
                                  (lambda (_%plrh92891%_ _%c92892%_)
                                    (if (member _%c92892%_
                                                _%sit-tail92873%_
                                                _%eq92665%_)
                                        (_%err92673%_
                                         'precedence-list-head:
                                         (_%get-names92672%_
                                          (reverse _%pl-rhead92870%_))
                                         'precedence-list-tail:
                                         (_%get-names92672%_ _%pl-tail92871%_)
                                         'single-inheritance-head:
                                         (_%get-names92672%_
                                          (reverse _%sit-rhead92872%_))
                                         'single-inheritance-tail:
                                         (_%get-names92672%_ _%sit-tail92873%_)
                                         'super-out-of-order-vs-single-inheritance-tail:
                                         (_%get-name92667%_ _%c92892%_))
                                        (let ((_g92999_
                                               (let ((__tmp93001
                                                      (lambda (_%g9289392895%_)
                                                        (_%eq92665%_
                                                         _%c92892%_
                                                         _%g9289392895%_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp93001
                                                  _%sit-rhead92872%_
                                                  _%sit-tail92873%_))))
                                          (begin
                                            (let ((_g93000_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g92999_)
                                                         (##vector-length
                                                          _g92999_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g93000_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g93000_)))
                                            (let ((_%sit-rh292898%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g92999_
                                                      0)))
                                                  (_%sit-tl292899%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g92999_
                                                      1))))
                                              (if (null? _%sit-rh292898%_)
                                                  (_%u92868%_
                                                   _%plrh92891%_
                                                   (cons _%c92892%_
                                                         _%pl-tail92871%_)
                                                   '()
                                                   _%sit-tl292899%_)
                                                  (_%u92868%_
                                                   _%plrh92891%_
                                                   _%pl-tail92871%_
                                                   (cdr _%sit-rh292898%_)
                                                   _%sit-tl292899%_)))))))))
                             (let ((_%try-match9287692913%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%pl-rhead9287492883%_))
                                          (let ((_%tl9288092906%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%pl-rhead9287492883%_)))
                                                (_%hd9287992904%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%pl-rhead9287492883%_))))
                                            (let ((_%c92909%_ _%hd9287992904%_)
                                                  (_%plrh92911%_
                                                   _%tl9288092906%_))
                                              (_%K9287892901%_
                                               _%plrh92911%_
                                               _%c92909%_)))
                                          (_%E9287792887%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%pl-rhead9287492883%_))
                                   (_%K9288192917%_)
                                   (_%try-match9287692913%_))))))))
                    (_g93002_
                     (let ((_g93003_
                            (let ((__tmp93005 (reverse _%supers92659%_)))
                              (declare (not safe))
                              (append1! _%rpls92676%_ __tmp93005))))
                       #!void
                       _g93003_))
                    (_g93006_
                     (let ((_g93007_
                            (set! _%pls92670%_
                                  (let ()
                                    (declare (not safe))
                                    (##map _%unsitr-rpl92677%_
                                           _%rpls92676%_)))))
                       #!void
                       _g93007_))
                    (_%c3-select-next92678%_
                     (lambda (_%tails92816%_)
                       (let ((_%candidate?92822%_
                              (lambda (_%c92818%_)
                                (let ((__tmp93009
                                       (lambda (_%tail92820%_)
                                         (not (member _%c92818%_
                                                      (cdr _%tail92820%_)
                                                      _%eq92665%_)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp93009 _%tails92816%_)))))
                         (let _%loop92824%_ ((_%ts92826%_ _%tails92816%_))
                           (let* ((_%ts9282792837%_ _%ts92826%_)
                                  (_%else9282992845%_
                                   (lambda () (_%err92673%_)))
                                  (_%K9283192851%_
                                   (lambda (_%rts92848%_ _%c92849%_)
                                     (if (_%candidate?92822%_ _%c92849%_)
                                         _%c92849%_
                                         (_%loop92824%_ _%rts92848%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%ts9282792837%_))
                                 (let ((_%hd9283292854%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%ts9282792837%_)))
                                       (_%tl9283392856%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%ts9282792837%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%hd9283292854%_))
                                       (let* ((_%hd9283492859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd9283292854%_)))
                                              (_%c92862%_ _%hd9283492859%_)
                                              (_%rts92864%_ _%tl9283392856%_))
                                         (_%K9283192851%_
                                          _%rts92864%_
                                          _%c92862%_))
                                       (_%err92673%_)))
                                 (_%err92673%_)))))))
                    (_%remove-next!92679%_
                     (lambda (_%next92761%_ _%tails92762%_)
                       (let _%loop92764%_ ((_%t92766%_ _%tails92762%_))
                         (let* ((_%t9276792778%_ _%t92766%_)
                                (_%E9277092782%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%t9276792778%_
                                          '([])
                                          '([[head . tail] . more]))
                                   '#!void)))
                           (let ((_%K9277692813%_ (lambda () _%tails92762%_))
                                 (_%K9277192790%_
                                  (lambda (_%more92786%_
                                           _%tail92787%_
                                           _%head92788%_)
                                    (if (_%eq92665%_
                                         _%head92788%_
                                         _%next92761%_)
                                        (set-car! _%t92766%_ _%tail92787%_)
                                        '#!void)
                                    (_%loop92764%_ _%more92786%_))))
                             (let ((_%try-match9276992809%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%t9276792778%_))
                                          (let ((_%tl9277392795%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%t9276792778%_)))
                                                (_%hd9277292793%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%t9276792778%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd9277292793%_))
                                                (let ((_%tl9277592800%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd9277292793%_)))
                                                      (_%hd9277492798%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd9277292793%_))))
                                                  (let ((_%head92803%_
                                                         _%hd9277492798%_)
                                                        (_%tail92805%_
                                                         _%tl9277592800%_)
                                                        (_%more92807%_
                                                         _%tl9277392795%_))
                                                    (_%K9277192790%_
                                                     _%more92807%_
                                                     _%tail92805%_
                                                     _%head92803%_)))
                                                (_%E9277092782%_)))
                                          (_%E9277092782%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%t9276792778%_))
                                   (_%K9277692813%_)
                                   (_%try-match9276992809%_))))))))
                    (_%precedence-list92680%_
                     (let _%c3loop92711%_ ((_%rhead92713%_ _%rhead92658%_)
                                           (_%tails92714%_ _%pls92670%_))
                       (let* ((_%tails92716%_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _%tails92714%_)))
                              (_%tails9271792727%_ _%tails92716%_)
                              (_%else9272092738%_
                               (lambda ()
                                 (let ((_%next92735%_
                                        (_%c3-select-next92678%_
                                         _%tails92716%_)))
                                   (_%c3loop92711%_
                                    (cons _%next92735%_ _%rhead92713%_)
                                    (_%remove-next!92679%_
                                     _%next92735%_
                                     _%tails92716%_))))))
                         (let ((_%K9272592758%_
                                (lambda ()
                                  (append-reverse
                                   _%rhead92713%_
                                   _%sit92671%_)))
                               (_%K9272292744%_
                                (lambda (_%tail92742%_)
                                  (append-reverse
                                   _%rhead92713%_
                                   (append _%tail92742%_ _%sit92671%_)))))
                           (let ((_%try-match9271992754%_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tails9271792727%_))
                                        (let ((_%tl9272492749%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tails9271792727%_)))
                                              (_%hd9272392747%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tails9271792727%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl9272492749%_))
                                              (let ((_%tail92752%_
                                                     _%hd9272392747%_))
                                                (_%K9272292744%_
                                                 _%tail92752%_))
                                              (_%else9272092738%_)))
                                        (_%else9272092738%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tails9271792727%_))
                                 (_%K9272592758%_)
                                 (_%try-match9271992754%_)))))))
                    (_%super-struct92681%_
                     (let* ((_%sit9268292690%_ _%sit92671%_)
                            (_%else9268492698%_ (lambda () '#f))
                            (_%K9268692703%_ (lambda (_%s92701%_) _%s92701%_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%sit9268292690%_))
                           (let* ((_%hd9268792706%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%sit9268292690%_)))
                                  (_%s92709%_ _%hd9268792706%_))
                             (_%K9268692703%_ _%s92709%_))
                           (_%else9268492698%_)))))
            (values _%precedence-list92680%_ _%super-struct92681%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords92952%_ . _%args92953%_)
        (apply c4-linearize__%
               _%@@keywords92952%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords92952%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords92952%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords92952%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords92952%_
                  'get-name:
                  absent-value))
               _%args92953%_)))
    (define c4-linearize
      (lambda _%args9264792959%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9264792959%_)))))
