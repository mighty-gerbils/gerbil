(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1755903074)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords98863%_
               _%get-precedence-list9885798864%_
               _%struct?9885898866%_
               _%eq9885998868%_
               _%get-name9886098870%_
               _%rhead98872%_
               _%supers98873%_)
        (let* ((_%get-precedence-list98875%_
                (if (eq? _%get-precedence-list9885798864%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9885798864%_))
               (_%struct?98877%_
                (if (eq? _%struct?9885898866%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9885898866%_))
               (_%eq98879%_
                (if (eq? _%eq9885998868%_ absent-value) eq? _%eq9885998868%_))
               (_%get-name98881%_
                (if (eq? _%get-name9886098870%_ absent-value)
                    identity
                    _%get-name9886098870%_)))
          (if (null? _%supers98873%_)
              (values (reverse _%rhead98872%_) '#f)
              (if (null? (cdr _%supers98873%_))
                  (let ((_%pl98886%_
                         (_%get-precedence-list98875%_ (car _%supers98873%_))))
                    (values (append-reverse _%rhead98872%_ _%pl98886%_)
                            (let ()
                              (declare (not safe))
                              (find _%struct?98877%_ _%pl98886%_))))
                  (let ((_%pls98889%_
                         (map _%get-precedence-list98875%_ _%supers98873%_))
                        (_%sis98890%_ '()))
                    (letrec* ((_%get-names98892%_
                               (lambda (_%lst99169%_)
                                 (map _%get-name98881%_ _%lst99169%_)))
                              (_%err98893%_
                               (lambda _%a99167%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names98892%_
                                         (reverse _%rhead98872%_))
                                        'precedence-lists:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names98892%_
                                                 _%pls98889%_))
                                        'single-inheritance-suffix:
                                        (_%get-names98892%_ _%sis98890%_)
                                        _%a99167%_)))
                              (_%eqlist?98894%_
                               (lambda (_%l199161%_ _%l299162%_)
                                 (let ((_%$e99164%_
                                        (eq? _%l199161%_ _%l299162%_)))
                                   (if _%$e99164%_
                                       _%$e99164%_
                                       (if (let ()
                                             (declare (not safe))
                                             (andmap2 _%eq98879%_
                                                      _%l199161%_
                                                      _%l299162%_))
                                           (let ((__tmp99217
                                                  (length _%l199161%_))
                                                 (__tmp99216
                                                  (length _%l299162%_)))
                                             (declare (not safe))
                                             (##fx= __tmp99217 __tmp99216))
                                           '#f)))))
                              (_%merge-sis!98895%_
                               (lambda (_%sis299146%_)
                                 (if (null? _%sis299146%_)
                                     '#!void
                                     (if (null? _%sis98890%_)
                                         (set! _%sis98890%_ _%sis299146%_)
                                         (let _%loop99151%_ ((_%t199153%_
                                                              _%sis98890%_)
                                                             (_%t299154%_
                                                              _%sis299146%_))
                                           (if (_%eqlist?98894%_
                                                _%t199153%_
                                                _%sis299146%_)
                                               '#!void
                                               (if (_%eqlist?98894%_
                                                    _%t299154%_
                                                    _%sis98890%_)
                                                   (set! _%sis98890%_
                                                         _%sis299146%_)
                                                   (if (null? _%t199153%_)
                                                       (if (member (car _%sis98890%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%t299154%_
                           _%eq98879%_)
                   (set! _%sis98890%_ _%sis299146%_)
                   (_%err98893%_
                    'struct-incompatibility:
                    (cons (_%get-names98892%_ _%sis98890%_)
                          (cons (_%get-names98892%_ _%sis299146%_) '()))))
               (if (null? _%t299154%_)
                   (if (member (car _%sis299146%_) _%t199153%_ _%eq98879%_)
                       '#!void
                       (_%err98893%_
                        'struct-incompatibility:
                        (cons (_%get-names98892%_ _%sis98890%_)
                              (cons (_%get-names98892%_ _%sis299146%_) '()))))
                   (_%loop99151%_ (cdr _%t199153%_) (cdr _%t299154%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%rpls98896%_
                               (let ((__tmp99218
                                      (lambda (_%pl99141%_)
                                        (let ((_g99219_
                                               (let ()
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  _%struct?98877%_
                                                  _%pl99141%_
                                                  '()))))
                                          (begin
                                            (let ((_g99220_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g99219_)
                                                         (##values-length
                                                          _g99219_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g99220_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g99220_)))
                                            (let ((_%tl99143%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g99219_
                                                      0)))
                                                  (_%rh99144%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g99219_
                                                      1))))
                                              (begin
                                                (_%merge-sis!98895%_
                                                 _%tl99143%_)
                                                _%rh99144%_)))))))
                                 (declare (not safe))
                                 (##map __tmp99218 _%pls98889%_)))
                              (_%unsisr-rpl98897%_
                               (lambda (_%rpl99087%_)
                                 (let _%u99089%_ ((_%pl-rhead99091%_
                                                   _%rpl99087%_)
                                                  (_%pl-tail99092%_ '())
                                                  (_%sis-rhead99093%_
                                                   (reverse _%sis98890%_))
                                                  (_%sis-tail99094%_ '()))
                                   (let* ((_%pl-rhead9909599104%_
                                           _%pl-rhead99091%_)
                                          (_%E9909899108%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%pl-rhead9909599104%_
                                                    '([])
                                                    '([c . plrh]))
                                             '#!void)))
                                     (let ((_%K9910299138%_
                                            (lambda () _%pl-tail99092%_))
                                           (_%K9909999122%_
                                            (lambda (_%plrh99112%_ _%c99113%_)
                                              (if (member _%c99113%_
                                                          _%sis-tail99094%_
                                                          _%eq98879%_)
                                                  (_%err98893%_
                                                   'precedence-list-head:
                                                   (_%get-names98892%_
                                                    (reverse _%pl-rhead99091%_))
                                                   'precedence-list-tail:
                                                   (_%get-names98892%_
                                                    _%pl-tail99092%_)
                                                   'single-inheritance-head:
                                                   (_%get-names98892%_
                                                    (reverse _%sis-rhead99093%_))
                                                   'single-inheritance-tail:
                                                   (_%get-names98892%_
                                                    _%sis-tail99094%_)
                                                   'super-out-of-order-vs-single-inheritance-tail:
                                                   (_%get-name98881%_
                                                    _%c99113%_))
                                                  (let ((_g99221_
                                                         (let ((__tmp99223
                                                                (lambda (_%g9911499116%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%eq98879%_ _%c99113%_ _%g9911499116%_))))
                   (declare (not safe))
                   (__append-reverse-until
                    __tmp99223
                    _%sis-rhead99093%_
                    _%sis-tail99094%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g99222_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g99221_)
                           (##values-length _g99221_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g99222_ 2)))
                    (error "Context expects 2 values" _g99222_)))
              (let ((_%sis-rh299119%_
                     (let () (declare (not safe)) (##values-ref _g99221_ 0)))
                    (_%sis-tl299120%_
                     (let () (declare (not safe)) (##values-ref _g99221_ 1))))
                (if (null? _%sis-rh299119%_)
                    (_%u99089%_
                     _%plrh99112%_
                     (cons _%c99113%_ _%pl-tail99092%_)
                     '()
                     _%sis-tl299120%_)
                    (_%u99089%_
                     _%plrh99112%_
                     _%pl-tail99092%_
                     (cdr _%sis-rh299119%_)
                     _%sis-tl299120%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%try-match9909799134%_
                                              (lambda ()
                                                (if (pair? _%pl-rhead9909599104%_)
                                                    (let ((_%tl9910199127%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%pl-rhead9909599104%_)))
                                                          (_%hd9910099125%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%pl-rhead9909599104%_))))
                                                      (let ((_%c99130%_
                                                             _%hd9910099125%_)
                                                            (_%plrh99132%_
                                                             _%tl9910199127%_))
                                                        (_%K9909999122%_
                                                         _%plrh99132%_
                                                         _%c99130%_)))
                                                    (_%E9909899108%_)))))
                                         (if (null? _%pl-rhead9909599104%_)
                                             (_%K9910299138%_)
                                             (_%try-match9909799134%_))))))))
                              (_g99224_
                               (let ((_g99225_
                                      (let ((__tmp99227
                                             (reverse _%supers98873%_)))
                                        (declare (not safe))
                                        (append1! _%rpls98896%_ __tmp99227))))
                                 #!void
                                 _g99225_))
                              (_%hpls98898%_
                               (let ()
                                 (declare (not safe))
                                 (##map _%unsisr-rpl98897%_ _%rpls98896%_)))
                              (_%c3-select-next98899%_
                               (lambda (_%tails99037%_)
                                 (let ((_%candidate?99043%_
                                        (lambda (_%c99039%_)
                                          (let ((__tmp99228
                                                 (lambda (_%tail99041%_)
                                                   (not (member _%c99039%_
                                                                (cdr _%tail99041%_)
                                                                _%eq98879%_)))))
                                            (declare (not safe))
                                            (__andmap1
                                             __tmp99228
                                             _%tails99037%_)))))
                                   (let _%loop99045%_ ((_%ts99047%_
                                                        _%tails99037%_))
                                     (let* ((_%ts9904899058%_ _%ts99047%_)
                                            (_%else9905099066%_
                                             (lambda () (_%err98893%_)))
                                            (_%K9905299072%_
                                             (lambda (_%rts99069%_ _%c99070%_)
                                               (if (_%candidate?99043%_
                                                    _%c99070%_)
                                                   _%c99070%_
                                                   (_%loop99045%_
                                                    _%rts99069%_)))))
                                       (if (pair? _%ts9904899058%_)
                                           (let ((_%hd9905399075%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%ts9904899058%_)))
                                                 (_%tl9905499077%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%ts9904899058%_))))
                                             (if (pair? _%hd9905399075%_)
                                                 (let* ((_%hd9905599080%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%hd9905399075%_)))
                                                        (_%c99083%_
                                                         _%hd9905599080%_)
                                                        (_%rts99085%_
                                                         _%tl9905499077%_))
                                                   (_%K9905299072%_
                                                    _%rts99085%_
                                                    _%c99083%_))
                                                 (_%err98893%_)))
                                           (_%err98893%_)))))))
                              (_%remove-next!98900%_
                               (lambda (_%next98982%_ _%tails98983%_)
                                 (let _%loop98985%_ ((_%t98987%_
                                                      _%tails98983%_))
                                   (let* ((_%t9898898999%_ _%t98987%_)
                                          (_%E9899199003%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%t9898898999%_
                                                    '([])
                                                    '([[head . tail] . more]))
                                             '#!void)))
                                     (let ((_%K9899799034%_
                                            (lambda () _%tails98983%_))
                                           (_%K9899299011%_
                                            (lambda (_%more99007%_
                                                     _%tail99008%_
                                                     _%head99009%_)
                                              (if (_%eq98879%_
                                                   _%head99009%_
                                                   _%next98982%_)
                                                  (set-car!
                                                   _%t98987%_
                                                   _%tail99008%_)
                                                  '#!void)
                                              (_%loop98985%_ _%more99007%_))))
                                       (let ((_%try-match9899099030%_
                                              (lambda ()
                                                (if (pair? _%t9898898999%_)
                                                    (let ((_%tl9899499016%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%t9898898999%_)))
                                                          (_%hd9899399014%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%t9898898999%_))))
                                                      (if (pair? _%hd9899399014%_)
                                                          (let ((_%tl9899699021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd9899399014%_)))
                        (_%hd9899599019%_
                         (let ()
                           (declare (not safe))
                           (##car _%hd9899399014%_))))
                    (let ((_%head99024%_ _%hd9899599019%_)
                          (_%tail99026%_ _%tl9899699021%_)
                          (_%more99028%_ _%tl9899499016%_))
                      (_%K9899299011%_
                       _%more99028%_
                       _%tail99026%_
                       _%head99024%_)))
                  (_%E9899199003%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E9899199003%_)))))
                                         (if (null? _%t9898898999%_)
                                             (_%K9899799034%_)
                                             (_%try-match9899099030%_))))))))
                              (_%precedence-list98901%_
                               (let _%c3loop98932%_ ((_%rhead98934%_
                                                      _%rhead98872%_)
                                                     (_%tails98935%_
                                                      _%hpls98898%_))
                                 (let* ((_%tails98937%_
                                         (let ()
                                           (declare (not safe))
                                           (remove-nulls! _%tails98935%_)))
                                        (_%tails9893898948%_ _%tails98937%_)
                                        (_%else9894198959%_
                                         (lambda ()
                                           (let ((_%next98956%_
                                                  (_%c3-select-next98899%_
                                                   _%tails98937%_)))
                                             (_%c3loop98932%_
                                              (cons _%next98956%_
                                                    _%rhead98934%_)
                                              (_%remove-next!98900%_
                                               _%next98956%_
                                               _%tails98937%_))))))
                                   (let ((_%K9894698979%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead98934%_
                                             _%sis98890%_)))
                                         (_%K9894398965%_
                                          (lambda (_%tail98963%_)
                                            (append-reverse
                                             _%rhead98934%_
                                             (append _%tail98963%_
                                                     _%sis98890%_)))))
                                     (let ((_%try-match9894098975%_
                                            (lambda ()
                                              (if (pair? _%tails9893898948%_)
                                                  (let ((_%tl9894598970%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tails9893898948%_)))
                                                        (_%hd9894498968%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tails9893898948%_))))
                                                    (if (null? _%tl9894598970%_)
                                                        (let ((_%tail98973%_
                                                               _%hd9894498968%_))
                                                          (_%K9894398965%_
                                                           _%tail98973%_))
                                                        (_%else9894198959%_)))
                                                  (_%else9894198959%_)))))
                                       (if (null? _%tails9893898948%_)
                                           (_%K9894698979%_)
                                           (_%try-match9894098975%_)))))))
                              (_%super-struct98902%_
                               (let* ((_%sis9890398911%_ _%sis98890%_)
                                      (_%else9890598919%_ (lambda () '#f))
                                      (_%K9890798924%_
                                       (lambda (_%s98922%_) _%s98922%_)))
                                 (if (pair? _%sis9890398911%_)
                                     (let* ((_%hd9890898927%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%sis9890398911%_)))
                                            (_%s98930%_ _%hd9890898927%_))
                                       (_%K9890798924%_ _%s98930%_))
                                     (_%else9890598919%_)))))
                      (values _%precedence-list98901%_
                              _%super-struct98902%_))))))))
    (define c4-linearize__@
      (lambda (_%@@keywords99174%_ . _%args99175%_)
        (apply c4-linearize__%
               _%@@keywords99174%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords99174%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords99174%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords99174%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords99174%_
                  'get-name:
                  absent-value))
               _%args99175%_)))
    (define c4-linearize
      (lambda _%args9886199181%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9886199181%_)))))
