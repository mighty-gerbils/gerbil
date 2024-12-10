(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1733868034)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords94597%_
               _%get-precedence-list9459194598%_
               _%struct?9459294600%_
               _%eq9459394602%_
               _%get-name9459494604%_
               _%rhead94606%_
               _%supers94607%_)
        (let* ((_%get-precedence-list94609%_
                (if (eq? _%get-precedence-list9459194598%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9459194598%_))
               (_%struct?94611%_
                (if (eq? _%struct?9459294600%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9459294600%_))
               (_%eq94613%_
                (if (eq? _%eq9459394602%_ absent-value) eq? _%eq9459394602%_))
               (_%get-name94615%_
                (if (eq? _%get-name9459494604%_ absent-value)
                    identity
                    _%get-name9459494604%_)))
          (letrec* ((_%pls94618%_
                     (map _%get-precedence-list94609%_ _%supers94607%_))
                    (_%sis94619%_ '())
                    (_%get-names94620%_
                     (lambda (_%lst94902%_)
                       (map _%get-name94615%_ _%lst94902%_)))
                    (_%err94621%_
                     (lambda _%a94900%_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (_%get-names94620%_ (reverse _%rhead94606%_))
                              'precedence-lists:
                              (let ()
                                (declare (not safe))
                                (##map _%get-names94620%_ _%pls94618%_))
                              'single-inheritance-suffix:
                              (_%get-names94620%_ _%sis94619%_)
                              _%a94900%_)))
                    (_%eqlist?94622%_
                     (lambda (_%l194894%_ _%l294895%_)
                       (let ((_%$e94897%_ (eq? _%l194894%_ _%l294895%_)))
                         (if _%$e94897%_
                             _%$e94897%_
                             (if (let ()
                                   (declare (not safe))
                                   (andmap2 _%eq94613%_
                                            _%l194894%_
                                            _%l294895%_))
                                 (let ((__tmp94950 (length _%l194894%_))
                                       (__tmp94949 (length _%l294895%_)))
                                   (declare (not safe))
                                   (##fx= __tmp94950 __tmp94949))
                                 '#f)))))
                    (_%merge-sis!94623%_
                     (lambda (_%sis294877%_)
                       (if (null? _%sis294877%_)
                           '#!void
                           (if (null? _%sis94619%_)
                               (set! _%sis94619%_ _%sis294877%_)
                               (let _%loop94882%_ ((_%t194884%_ _%sis94619%_)
                                                   (_%t294885%_ _%sis294877%_))
                                 (if (_%eqlist?94622%_
                                      _%t194884%_
                                      _%sis294877%_)
                                     '#!void
                                     (if (_%eqlist?94622%_
                                          _%t294885%_
                                          _%sis94619%_)
                                         (set! _%sis94619%_ _%sis294877%_)
                                         (if (or (null? _%t194884%_)
                                                 (null? _%t294885%_))
                                             (_%err94621%_
                                              'struct-incompatibility:
                                              (cons (_%get-names94620%_
                                                     _%sis94619%_)
                                                    (cons (_%get-names94620%_
                                                           _%sis294877%_)
                                                          '())))
                                             (_%loop94882%_
                                              (cdr _%t194884%_)
                                              (cdr _%t294885%_))))))))))
                    (_%rpls94624%_
                     (let ((__tmp94951
                            (lambda (_%pl94872%_)
                              (let ((_g94952_
                                     (let ()
                                       (declare (not safe))
                                       (append-reverse-until
                                        _%struct?94611%_
                                        _%pl94872%_
                                        '()))))
                                (begin
                                  (let ((_g94953_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g94952_)
                                               (##vector-length _g94952_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g94953_ 2)))
                                        (error "Context expects 2 values"
                                               _g94953_)))
                                  (let ((_%tl94874%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g94952_ 0)))
                                        (_%rh94875%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g94952_ 1))))
                                    (begin
                                      (_%merge-sis!94623%_ _%tl94874%_)
                                      _%rh94875%_)))))))
                       (declare (not safe))
                       (##map __tmp94951 _%pls94618%_)))
                    (_%unsisr-rpl94625%_
                     (lambda (_%rpl94818%_)
                       (let _%u94820%_ ((_%pl-rhead94822%_ _%rpl94818%_)
                                        (_%pl-tail94823%_ '())
                                        (_%sis-rhead94824%_
                                         (reverse _%sis94619%_))
                                        (_%sis-tail94825%_ '()))
                         (let* ((_%pl-rhead9482694835%_ _%pl-rhead94822%_)
                                (_%E9482994839%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%pl-rhead9482694835%_
                                          '([])
                                          '([c . plrh]))
                                   '#!void)))
                           (let ((_%K9483394869%_ (lambda () _%pl-tail94823%_))
                                 (_%K9483094853%_
                                  (lambda (_%plrh94843%_ _%c94844%_)
                                    (if (member _%c94844%_
                                                _%sis-tail94825%_
                                                _%eq94613%_)
                                        (_%err94621%_
                                         'precedence-list-head:
                                         (_%get-names94620%_
                                          (reverse _%pl-rhead94822%_))
                                         'precedence-list-tail:
                                         (_%get-names94620%_ _%pl-tail94823%_)
                                         'single-inheritance-head:
                                         (_%get-names94620%_
                                          (reverse _%sis-rhead94824%_))
                                         'single-inheritance-tail:
                                         (_%get-names94620%_ _%sis-tail94825%_)
                                         'super-out-of-order-vs-single-inheritance-tail:
                                         (_%get-name94615%_ _%c94844%_))
                                        (let ((_g94954_
                                               (let ((__tmp94956
                                                      (lambda (_%g9484594847%_)
                                                        (_%eq94613%_
                                                         _%c94844%_
                                                         _%g9484594847%_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp94956
                                                  _%sis-rhead94824%_
                                                  _%sis-tail94825%_))))
                                          (begin
                                            (let ((_g94955_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g94954_)
                                                         (##vector-length
                                                          _g94954_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g94955_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g94955_)))
                                            (let ((_%sis-rh294850%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g94954_
                                                      0)))
                                                  (_%sis-tl294851%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g94954_
                                                      1))))
                                              (if (null? _%sis-rh294850%_)
                                                  (_%u94820%_
                                                   _%plrh94843%_
                                                   (cons _%c94844%_
                                                         _%pl-tail94823%_)
                                                   '()
                                                   _%sis-tl294851%_)
                                                  (_%u94820%_
                                                   _%plrh94843%_
                                                   _%pl-tail94823%_
                                                   (cdr _%sis-rh294850%_)
                                                   _%sis-tl294851%_)))))))))
                             (let ((_%try-match9482894865%_
                                    (lambda ()
                                      (if (pair? _%pl-rhead9482694835%_)
                                          (let ((_%tl9483294858%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%pl-rhead9482694835%_)))
                                                (_%hd9483194856%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%pl-rhead9482694835%_))))
                                            (let ((_%c94861%_ _%hd9483194856%_)
                                                  (_%plrh94863%_
                                                   _%tl9483294858%_))
                                              (_%K9483094853%_
                                               _%plrh94863%_
                                               _%c94861%_)))
                                          (_%E9482994839%_)))))
                               (if (null? _%pl-rhead9482694835%_)
                                   (_%K9483394869%_)
                                   (_%try-match9482894865%_))))))))
                    (_g94957_
                     (let ((_g94958_
                            (let ((__tmp94960 (reverse _%supers94607%_)))
                              (declare (not safe))
                              (append1! _%rpls94624%_ __tmp94960))))
                       #!void
                       _g94958_))
                    (_%hpls94626%_
                     (let ()
                       (declare (not safe))
                       (##map _%unsisr-rpl94625%_ _%rpls94624%_)))
                    (_%c3-select-next94627%_
                     (lambda (_%tails94768%_)
                       (let ((_%candidate?94774%_
                              (lambda (_%c94770%_)
                                (let ((__tmp94961
                                       (lambda (_%tail94772%_)
                                         (not (member _%c94770%_
                                                      (cdr _%tail94772%_)
                                                      _%eq94613%_)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp94961 _%tails94768%_)))))
                         (let _%loop94776%_ ((_%ts94778%_ _%tails94768%_))
                           (let* ((_%ts9477994789%_ _%ts94778%_)
                                  (_%else9478194797%_
                                   (lambda () (_%err94621%_)))
                                  (_%K9478394803%_
                                   (lambda (_%rts94800%_ _%c94801%_)
                                     (if (_%candidate?94774%_ _%c94801%_)
                                         _%c94801%_
                                         (_%loop94776%_ _%rts94800%_)))))
                             (if (pair? _%ts9477994789%_)
                                 (let ((_%hd9478494806%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%ts9477994789%_)))
                                       (_%tl9478594808%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%ts9477994789%_))))
                                   (if (pair? _%hd9478494806%_)
                                       (let* ((_%hd9478694811%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd9478494806%_)))
                                              (_%c94814%_ _%hd9478694811%_)
                                              (_%rts94816%_ _%tl9478594808%_))
                                         (_%K9478394803%_
                                          _%rts94816%_
                                          _%c94814%_))
                                       (_%err94621%_)))
                                 (_%err94621%_)))))))
                    (_%remove-next!94628%_
                     (lambda (_%next94713%_ _%tails94714%_)
                       (let _%loop94716%_ ((_%t94718%_ _%tails94714%_))
                         (let* ((_%t9471994730%_ _%t94718%_)
                                (_%E9472294734%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%t9471994730%_
                                          '([])
                                          '([[head . tail] . more]))
                                   '#!void)))
                           (let ((_%K9472894765%_ (lambda () _%tails94714%_))
                                 (_%K9472394742%_
                                  (lambda (_%more94738%_
                                           _%tail94739%_
                                           _%head94740%_)
                                    (if (_%eq94613%_
                                         _%head94740%_
                                         _%next94713%_)
                                        (set-car! _%t94718%_ _%tail94739%_)
                                        '#!void)
                                    (_%loop94716%_ _%more94738%_))))
                             (let ((_%try-match9472194761%_
                                    (lambda ()
                                      (if (pair? _%t9471994730%_)
                                          (let ((_%tl9472594747%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%t9471994730%_)))
                                                (_%hd9472494745%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%t9471994730%_))))
                                            (if (pair? _%hd9472494745%_)
                                                (let ((_%tl9472794752%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd9472494745%_)))
                                                      (_%hd9472694750%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd9472494745%_))))
                                                  (let ((_%head94755%_
                                                         _%hd9472694750%_)
                                                        (_%tail94757%_
                                                         _%tl9472794752%_)
                                                        (_%more94759%_
                                                         _%tl9472594747%_))
                                                    (_%K9472394742%_
                                                     _%more94759%_
                                                     _%tail94757%_
                                                     _%head94755%_)))
                                                (_%E9472294734%_)))
                                          (_%E9472294734%_)))))
                               (if (null? _%t9471994730%_)
                                   (_%K9472894765%_)
                                   (_%try-match9472194761%_))))))))
                    (_%precedence-list94629%_
                     (if (null? _%supers94607%_)
                         (reverse _%rhead94606%_)
                         (if (null? (cdr _%supers94607%_))
                             (append-reverse _%rhead94606%_ (car _%pls94618%_))
                             (let _%c3loop94663%_ ((_%rhead94665%_
                                                    _%rhead94606%_)
                                                   (_%tails94666%_
                                                    _%hpls94626%_))
                               (let* ((_%tails94668%_
                                       (let ()
                                         (declare (not safe))
                                         (remove-nulls! _%tails94666%_)))
                                      (_%tails9466994679%_ _%tails94668%_)
                                      (_%else9467294690%_
                                       (lambda ()
                                         (let ((_%next94687%_
                                                (_%c3-select-next94627%_
                                                 _%tails94668%_)))
                                           (_%c3loop94663%_
                                            (cons _%next94687%_ _%rhead94665%_)
                                            (_%remove-next!94628%_
                                             _%next94687%_
                                             _%tails94668%_))))))
                                 (let ((_%K9467794710%_
                                        (lambda ()
                                          (append-reverse
                                           _%rhead94665%_
                                           _%sis94619%_)))
                                       (_%K9467494696%_
                                        (lambda (_%tail94694%_)
                                          (append-reverse
                                           _%rhead94665%_
                                           (append _%tail94694%_
                                                   _%sis94619%_)))))
                                   (let ((_%try-match9467194706%_
                                          (lambda ()
                                            (if (pair? _%tails9466994679%_)
                                                (let ((_%tl9467694701%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tails9466994679%_)))
                                                      (_%hd9467594699%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tails9466994679%_))))
                                                  (if (null? _%tl9467694701%_)
                                                      (let ((_%tail94704%_
                                                             _%hd9467594699%_))
                                                        (_%K9467494696%_
                                                         _%tail94704%_))
                                                      (_%else9467294690%_)))
                                                (_%else9467294690%_)))))
                                     (if (null? _%tails9466994679%_)
                                         (_%K9467794710%_)
                                         (_%try-match9467194706%_)))))))))
                    (_%super-struct94630%_
                     (let* ((_%sis9463194639%_ _%sis94619%_)
                            (_%else9463394647%_ (lambda () '#f))
                            (_%K9463594652%_ (lambda (_%s94650%_) _%s94650%_)))
                       (if (pair? _%sis9463194639%_)
                           (let* ((_%hd9463694655%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%sis9463194639%_)))
                                  (_%s94658%_ _%hd9463694655%_))
                             (_%K9463594652%_ _%s94658%_))
                           (_%else9463394647%_)))))
            (values _%precedence-list94629%_ _%super-struct94630%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords94907%_ . _%args94908%_)
        (apply c4-linearize__%
               _%@@keywords94907%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords94907%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords94907%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords94907%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords94907%_
                  'get-name:
                  absent-value))
               _%args94908%_)))
    (define c4-linearize
      (lambda _%args9459594914%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9459594914%_)))))
