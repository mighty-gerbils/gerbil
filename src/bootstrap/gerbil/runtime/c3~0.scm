(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1769382893)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords104766%_
               _%get-precedence-list104760104767%_
               _%struct?104761104768%_
               _%eq104762104769%_
               _%get-name104763104770%_
               _%rhead104771%_
               _%supers104772%_)
        (let* ((_%get-precedence-list104774%_
                (if (eq? _%get-precedence-list104760104767%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list104760104767%_))
               (_%struct?104776%_
                (if (eq? _%struct?104761104768%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?104761104768%_))
               (_%eq104778%_
                (if (eq? _%eq104762104769%_ absent-value)
                    eq?
                    _%eq104762104769%_))
               (_%get-name104780%_
                (if (eq? _%get-name104763104770%_ absent-value)
                    identity
                    _%get-name104763104770%_)))
          (if (null? _%supers104772%_)
              (values (reverse _%rhead104771%_) '#f)
              (if (null? (cdr _%supers104772%_))
                  (let ((_%pl104785%_
                         (_%get-precedence-list104774%_
                          (car _%supers104772%_))))
                    (values (append-reverse _%rhead104771%_ _%pl104785%_)
                            (let ()
                              (declare (not safe))
                              (find _%struct?104776%_ _%pl104785%_))))
                  (let ((_%pls104788%_
                         (map _%get-precedence-list104774%_ _%supers104772%_))
                        (_%sis104789%_ '()))
                    (letrec* ((_%get-names104791%_
                               (lambda (_%lst105068%_)
                                 (map _%get-name104780%_ _%lst105068%_)))
                              (_%err104792%_
                               (lambda _%a105066%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names104791%_
                                         (reverse _%rhead104771%_))
                                        'precedence-lists:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names104791%_
                                                 _%pls104788%_))
                                        'single-inheritance-suffix:
                                        (_%get-names104791%_ _%sis104789%_)
                                        _%a105066%_)))
                              (_%eqlist?104793%_
                               (lambda (_%l1105060%_ _%l2105061%_)
                                 (let ((_%$e105063%_
                                        (eq? _%l1105060%_ _%l2105061%_)))
                                   (if _%$e105063%_
                                       _%$e105063%_
                                       (if (let ()
                                             (declare (not safe))
                                             (andmap2 _%eq104778%_
                                                      _%l1105060%_
                                                      _%l2105061%_))
                                           (let ((__tmp105116
                                                  (length _%l1105060%_))
                                                 (__tmp105115
                                                  (length _%l2105061%_)))
                                             (declare (not safe))
                                             (##fx= __tmp105116 __tmp105115))
                                           '#f)))))
                              (_%merge-sis!104794%_
                               (lambda (_%sis2105045%_)
                                 (if (null? _%sis2105045%_)
                                     '#!void
                                     (if (null? _%sis104789%_)
                                         (set! _%sis104789%_ _%sis2105045%_)
                                         (let _%loop105050%_ ((_%t1105052%_
                                                               _%sis104789%_)
                                                              (_%t2105053%_
                                                               _%sis2105045%_))
                                           (if (_%eqlist?104793%_
                                                _%t1105052%_
                                                _%sis2105045%_)
                                               '#!void
                                               (if (_%eqlist?104793%_
                                                    _%t2105053%_
                                                    _%sis104789%_)
                                                   (set! _%sis104789%_
                                                         _%sis2105045%_)
                                                   (if (null? _%t1105052%_)
                                                       (if (member (car _%sis104789%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%t2105053%_
                           _%eq104778%_)
                   (set! _%sis104789%_ _%sis2105045%_)
                   (_%err104792%_
                    'struct-incompatibility:
                    (cons (_%get-names104791%_ _%sis104789%_)
                          (cons (_%get-names104791%_ _%sis2105045%_) '()))))
               (if (null? _%t2105053%_)
                   (if (member (car _%sis2105045%_) _%t1105052%_ _%eq104778%_)
                       '#!void
                       (_%err104792%_
                        'struct-incompatibility:
                        (cons (_%get-names104791%_ _%sis104789%_)
                              (cons (_%get-names104791%_ _%sis2105045%_)
                                    '()))))
                   (_%loop105050%_
                    (cdr _%t1105052%_)
                    (cdr _%t2105053%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%rpls104795%_
                               (let ((__tmp105117
                                      (lambda (_%pl105040%_)
                                        (let ((_g105118_
                                               (let ()
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  _%struct?104776%_
                                                  _%pl105040%_
                                                  '()))))
                                          (begin
                                            (let ((_g105119_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g105118_)
                                                         (##values-length
                                                          _g105118_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g105119_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g105119_)))
                                            (let ((_%tl105042%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g105118_
                                                      0)))
                                                  (_%rh105043%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g105118_
                                                      1))))
                                              (begin
                                                (_%merge-sis!104794%_
                                                 _%tl105042%_)
                                                _%rh105043%_)))))))
                                 (declare (not safe))
                                 (##map __tmp105117 _%pls104788%_)))
                              (_%unsisr-rpl104796%_
                               (lambda (_%rpl104986%_)
                                 (let _%u104988%_ ((_%pl-rhead104990%_
                                                    _%rpl104986%_)
                                                   (_%pl-tail104991%_ '())
                                                   (_%sis-rhead104992%_
                                                    (reverse _%sis104789%_))
                                                   (_%sis-tail104993%_ '()))
                                   (let* ((_%pl-rhead104994105003%_
                                           _%pl-rhead104990%_)
                                          (_%E104997105007%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%pl-rhead104994105003%_
                                                    '([])
                                                    '([c . plrh]))
                                             '#!void)))
                                     (let ((_%K105001105037%_
                                            (lambda () _%pl-tail104991%_))
                                           (_%K104998105021%_
                                            (lambda (_%plrh105011%_
                                                     _%c105012%_)
                                              (if (member _%c105012%_
                                                          _%sis-tail104993%_
                                                          _%eq104778%_)
                                                  (_%err104792%_
                                                   'precedence-list-head:
                                                   (_%get-names104791%_
                                                    (reverse _%pl-rhead104990%_))
                                                   'precedence-list-tail:
                                                   (_%get-names104791%_
                                                    _%pl-tail104991%_)
                                                   'single-inheritance-head:
                                                   (_%get-names104791%_
                                                    (reverse _%sis-rhead104992%_))
                                                   'single-inheritance-tail:
                                                   (_%get-names104791%_
                                                    _%sis-tail104993%_)
                                                   'super-out-of-order-vs-single-inheritance-tail:
                                                   (_%get-name104780%_
                                                    _%c105012%_))
                                                  (let ((_g105120_
                                                         (let ((__tmp105122
                                                                (lambda (_%g105013105015%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%eq104778%_ _%c105012%_ _%g105013105015%_))))
                   (declare (not safe))
                   (__append-reverse-until
                    __tmp105122
                    _%sis-rhead104992%_
                    _%sis-tail104993%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g105121_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g105120_)
                           (##values-length _g105120_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g105121_ 2)))
                    (error "Context expects 2 values" _g105121_)))
              (let ((_%sis-rh2105018%_
                     (let () (declare (not safe)) (##values-ref _g105120_ 0)))
                    (_%sis-tl2105019%_
                     (let () (declare (not safe)) (##values-ref _g105120_ 1))))
                (if (null? _%sis-rh2105018%_)
                    (_%u104988%_
                     _%plrh105011%_
                     (cons _%c105012%_ _%pl-tail104991%_)
                     '()
                     _%sis-tl2105019%_)
                    (_%u104988%_
                     _%plrh105011%_
                     _%pl-tail104991%_
                     (cdr _%sis-rh2105018%_)
                     _%sis-tl2105019%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%try-match104996105033%_
                                              (lambda ()
                                                (if (pair? _%pl-rhead104994105003%_)
                                                    (let ((_%tl105000105026%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%pl-rhead104994105003%_)))
                                                          (_%hd104999105024%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%pl-rhead104994105003%_))))
                                                      (let ((_%c105029%_
                                                             _%hd104999105024%_)
                                                            (_%plrh105031%_
                                                             _%tl105000105026%_))
                                                        (_%K104998105021%_
                                                         _%plrh105031%_
                                                         _%c105029%_)))
                                                    (_%E104997105007%_)))))
                                         (if (null? _%pl-rhead104994105003%_)
                                             (_%K105001105037%_)
                                             (_%try-match104996105033%_))))))))
                              (_g105123_
                               (let ((_g105124_
                                      (let ((__tmp105126
                                             (reverse _%supers104772%_)))
                                        (declare (not safe))
                                        (append1!
                                         _%rpls104795%_
                                         __tmp105126))))
                                 #!void
                                 _g105124_))
                              (_%hpls104797%_
                               (let ()
                                 (declare (not safe))
                                 (##map _%unsisr-rpl104796%_ _%rpls104795%_)))
                              (_%c3-select-next104798%_
                               (lambda (_%tails104936%_)
                                 (let ((_%candidate?104942%_
                                        (lambda (_%c104938%_)
                                          (let ((__tmp105127
                                                 (lambda (_%tail104940%_)
                                                   (not (member _%c104938%_
                                                                (cdr _%tail104940%_)
                                                                _%eq104778%_)))))
                                            (declare (not safe))
                                            (__andmap1
                                             __tmp105127
                                             _%tails104936%_)))))
                                   (let _%loop104944%_ ((_%ts104946%_
                                                         _%tails104936%_))
                                     (let* ((_%ts104947104957%_ _%ts104946%_)
                                            (_%else104949104965%_
                                             (lambda () (_%err104792%_)))
                                            (_%K104951104971%_
                                             (lambda (_%rts104968%_
                                                      _%c104969%_)
                                               (if (_%candidate?104942%_
                                                    _%c104969%_)
                                                   _%c104969%_
                                                   (_%loop104944%_
                                                    _%rts104968%_)))))
                                       (if (pair? _%ts104947104957%_)
                                           (let ((_%hd104952104974%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%ts104947104957%_)))
                                                 (_%tl104953104976%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%ts104947104957%_))))
                                             (if (pair? _%hd104952104974%_)
                                                 (let* ((_%hd104954104979%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%hd104952104974%_)))
                                                        (_%c104982%_
                                                         _%hd104954104979%_)
                                                        (_%rts104984%_
                                                         _%tl104953104976%_))
                                                   (_%K104951104971%_
                                                    _%rts104984%_
                                                    _%c104982%_))
                                                 (_%err104792%_)))
                                           (_%err104792%_)))))))
                              (_%remove-next!104799%_
                               (lambda (_%next104881%_ _%tails104882%_)
                                 (let _%loop104884%_ ((_%t104886%_
                                                       _%tails104882%_))
                                   (let* ((_%t104887104898%_ _%t104886%_)
                                          (_%E104890104902%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%t104887104898%_
                                                    '([])
                                                    '([[head . tail] . more]))
                                             '#!void)))
                                     (let ((_%K104896104933%_
                                            (lambda () _%tails104882%_))
                                           (_%K104891104910%_
                                            (lambda (_%more104906%_
                                                     _%tail104907%_
                                                     _%head104908%_)
                                              (if (_%eq104778%_
                                                   _%head104908%_
                                                   _%next104881%_)
                                                  (set-car!
                                                   _%t104886%_
                                                   _%tail104907%_)
                                                  '#!void)
                                              (_%loop104884%_
                                               _%more104906%_))))
                                       (let ((_%try-match104889104929%_
                                              (lambda ()
                                                (if (pair? _%t104887104898%_)
                                                    (let ((_%tl104893104915%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%t104887104898%_)))
                                                          (_%hd104892104913%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%t104887104898%_))))
                                                      (if (pair? _%hd104892104913%_)
                                                          (let ((_%tl104895104920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd104892104913%_)))
                        (_%hd104894104918%_
                         (let ()
                           (declare (not safe))
                           (##car _%hd104892104913%_))))
                    (let ((_%head104923%_ _%hd104894104918%_)
                          (_%tail104925%_ _%tl104895104920%_)
                          (_%more104927%_ _%tl104893104915%_))
                      (_%K104891104910%_
                       _%more104927%_
                       _%tail104925%_
                       _%head104923%_)))
                  (_%E104890104902%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E104890104902%_)))))
                                         (if (null? _%t104887104898%_)
                                             (_%K104896104933%_)
                                             (_%try-match104889104929%_))))))))
                              (_%precedence-list104800%_
                               (let _%c3loop104831%_ ((_%rhead104833%_
                                                       _%rhead104771%_)
                                                      (_%tails104834%_
                                                       _%hpls104797%_))
                                 (let* ((_%tails104836%_
                                         (let ()
                                           (declare (not safe))
                                           (remove-nulls! _%tails104834%_)))
                                        (_%tails104837104847%_ _%tails104836%_)
                                        (_%else104840104858%_
                                         (lambda ()
                                           (let ((_%next104855%_
                                                  (_%c3-select-next104798%_
                                                   _%tails104836%_)))
                                             (_%c3loop104831%_
                                              (cons _%next104855%_
                                                    _%rhead104833%_)
                                              (_%remove-next!104799%_
                                               _%next104855%_
                                               _%tails104836%_))))))
                                   (let ((_%K104845104878%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead104833%_
                                             _%sis104789%_)))
                                         (_%K104842104864%_
                                          (lambda (_%tail104862%_)
                                            (append-reverse
                                             _%rhead104833%_
                                             (append _%tail104862%_
                                                     _%sis104789%_)))))
                                     (let ((_%try-match104839104874%_
                                            (lambda ()
                                              (if (pair? _%tails104837104847%_)
                                                  (let ((_%tl104844104869%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tails104837104847%_)))
                                                        (_%hd104843104867%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tails104837104847%_))))
                                                    (if (null? _%tl104844104869%_)
                                                        (let ((_%tail104872%_
                                                               _%hd104843104867%_))
                                                          (_%K104842104864%_
                                                           _%tail104872%_))
                                                        (_%else104840104858%_)))
                                                  (_%else104840104858%_)))))
                                       (if (null? _%tails104837104847%_)
                                           (_%K104845104878%_)
                                           (_%try-match104839104874%_)))))))
                              (_%super-struct104801%_
                               (let* ((_%sis104802104810%_ _%sis104789%_)
                                      (_%else104804104818%_ (lambda () '#f))
                                      (_%K104806104823%_
                                       (lambda (_%s104821%_) _%s104821%_)))
                                 (if (pair? _%sis104802104810%_)
                                     (let* ((_%hd104807104826%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%sis104802104810%_)))
                                            (_%s104829%_ _%hd104807104826%_))
                                       (_%K104806104823%_ _%s104829%_))
                                     (_%else104804104818%_)))))
                      (values _%precedence-list104800%_
                              _%super-struct104801%_))))))))
    (define c4-linearize__@
      (lambda (_%@@keywords105073%_ . _%args105074%_)
        (apply c4-linearize__%
               _%@@keywords105073%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords105073%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords105073%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105073%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords105073%_
                  'get-name:
                  absent-value))
               _%args105074%_)))
    (define c4-linearize
      (lambda _%args104764105080%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args104764105080%_)))))
