(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1769384626)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords104804%_
               _%get-precedence-list104798104805%_
               _%struct?104799104806%_
               _%eq104800104807%_
               _%get-name104801104808%_
               _%rhead104809%_
               _%supers104810%_)
        (let* ((_%get-precedence-list104812%_
                (if (eq? _%get-precedence-list104798104805%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list104798104805%_))
               (_%struct?104814%_
                (if (eq? _%struct?104799104806%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?104799104806%_))
               (_%eq104816%_
                (if (eq? _%eq104800104807%_ absent-value)
                    eq?
                    _%eq104800104807%_))
               (_%get-name104818%_
                (if (eq? _%get-name104801104808%_ absent-value)
                    identity
                    _%get-name104801104808%_)))
          (if (null? _%supers104810%_)
              (values (reverse _%rhead104809%_) '#f)
              (if (null? (cdr _%supers104810%_))
                  (let ((_%pl104823%_
                         (_%get-precedence-list104812%_
                          (car _%supers104810%_))))
                    (values (append-reverse _%rhead104809%_ _%pl104823%_)
                            (let ()
                              (declare (not safe))
                              (find _%struct?104814%_ _%pl104823%_))))
                  (let ((_%pls104826%_
                         (map _%get-precedence-list104812%_ _%supers104810%_))
                        (_%sis104827%_ '()))
                    (letrec* ((_%get-names104829%_
                               (lambda (_%lst105106%_)
                                 (map _%get-name104818%_ _%lst105106%_)))
                              (_%err104830%_
                               (lambda _%a105104%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names104829%_
                                         (reverse _%rhead104809%_))
                                        'precedence-lists:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names104829%_
                                                 _%pls104826%_))
                                        'single-inheritance-suffix:
                                        (_%get-names104829%_ _%sis104827%_)
                                        _%a105104%_)))
                              (_%eqlist?104831%_
                               (lambda (_%l1105098%_ _%l2105099%_)
                                 (let ((_%$e105101%_
                                        (eq? _%l1105098%_ _%l2105099%_)))
                                   (if _%$e105101%_
                                       _%$e105101%_
                                       (if (let ()
                                             (declare (not safe))
                                             (andmap2 _%eq104816%_
                                                      _%l1105098%_
                                                      _%l2105099%_))
                                           (let ((__tmp105154
                                                  (length _%l1105098%_))
                                                 (__tmp105153
                                                  (length _%l2105099%_)))
                                             (declare (not safe))
                                             (##fx= __tmp105154 __tmp105153))
                                           '#f)))))
                              (_%merge-sis!104832%_
                               (lambda (_%sis2105083%_)
                                 (if (null? _%sis2105083%_)
                                     '#!void
                                     (if (null? _%sis104827%_)
                                         (set! _%sis104827%_ _%sis2105083%_)
                                         (let _%loop105088%_ ((_%t1105090%_
                                                               _%sis104827%_)
                                                              (_%t2105091%_
                                                               _%sis2105083%_))
                                           (if (_%eqlist?104831%_
                                                _%t1105090%_
                                                _%sis2105083%_)
                                               '#!void
                                               (if (_%eqlist?104831%_
                                                    _%t2105091%_
                                                    _%sis104827%_)
                                                   (set! _%sis104827%_
                                                         _%sis2105083%_)
                                                   (if (null? _%t1105090%_)
                                                       (if (member (car _%sis104827%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%t2105091%_
                           _%eq104816%_)
                   (set! _%sis104827%_ _%sis2105083%_)
                   (_%err104830%_
                    'struct-incompatibility:
                    (cons (_%get-names104829%_ _%sis104827%_)
                          (cons (_%get-names104829%_ _%sis2105083%_) '()))))
               (if (null? _%t2105091%_)
                   (if (member (car _%sis2105083%_) _%t1105090%_ _%eq104816%_)
                       '#!void
                       (_%err104830%_
                        'struct-incompatibility:
                        (cons (_%get-names104829%_ _%sis104827%_)
                              (cons (_%get-names104829%_ _%sis2105083%_)
                                    '()))))
                   (_%loop105088%_
                    (cdr _%t1105090%_)
                    (cdr _%t2105091%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%rpls104833%_
                               (let ((__tmp105155
                                      (lambda (_%pl105078%_)
                                        (let ((_g105156_
                                               (let ()
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  _%struct?104814%_
                                                  _%pl105078%_
                                                  '()))))
                                          (begin
                                            (let ((_g105157_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g105156_)
                                                         (##values-length
                                                          _g105156_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g105157_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g105157_)))
                                            (let ((_%tl105080%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g105156_
                                                      0)))
                                                  (_%rh105081%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g105156_
                                                      1))))
                                              (begin
                                                (_%merge-sis!104832%_
                                                 _%tl105080%_)
                                                _%rh105081%_)))))))
                                 (declare (not safe))
                                 (##map __tmp105155 _%pls104826%_)))
                              (_%unsisr-rpl104834%_
                               (lambda (_%rpl105024%_)
                                 (let _%u105026%_ ((_%pl-rhead105028%_
                                                    _%rpl105024%_)
                                                   (_%pl-tail105029%_ '())
                                                   (_%sis-rhead105030%_
                                                    (reverse _%sis104827%_))
                                                   (_%sis-tail105031%_ '()))
                                   (let* ((_%pl-rhead105032105041%_
                                           _%pl-rhead105028%_)
                                          (_%E105035105045%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%pl-rhead105032105041%_
                                                    '([])
                                                    '([c . plrh]))
                                             '#!void)))
                                     (let ((_%K105039105075%_
                                            (lambda () _%pl-tail105029%_))
                                           (_%K105036105059%_
                                            (lambda (_%plrh105049%_
                                                     _%c105050%_)
                                              (if (member _%c105050%_
                                                          _%sis-tail105031%_
                                                          _%eq104816%_)
                                                  (_%err104830%_
                                                   'precedence-list-head:
                                                   (_%get-names104829%_
                                                    (reverse _%pl-rhead105028%_))
                                                   'precedence-list-tail:
                                                   (_%get-names104829%_
                                                    _%pl-tail105029%_)
                                                   'single-inheritance-head:
                                                   (_%get-names104829%_
                                                    (reverse _%sis-rhead105030%_))
                                                   'single-inheritance-tail:
                                                   (_%get-names104829%_
                                                    _%sis-tail105031%_)
                                                   'super-out-of-order-vs-single-inheritance-tail:
                                                   (_%get-name104818%_
                                                    _%c105050%_))
                                                  (let ((_g105158_
                                                         (let ((__tmp105160
                                                                (lambda (_%g105051105053%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%eq104816%_ _%c105050%_ _%g105051105053%_))))
                   (declare (not safe))
                   (__append-reverse-until
                    __tmp105160
                    _%sis-rhead105030%_
                    _%sis-tail105031%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g105159_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g105158_)
                           (##values-length _g105158_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g105159_ 2)))
                    (error "Context expects 2 values" _g105159_)))
              (let ((_%sis-rh2105056%_
                     (let () (declare (not safe)) (##values-ref _g105158_ 0)))
                    (_%sis-tl2105057%_
                     (let () (declare (not safe)) (##values-ref _g105158_ 1))))
                (if (null? _%sis-rh2105056%_)
                    (_%u105026%_
                     _%plrh105049%_
                     (cons _%c105050%_ _%pl-tail105029%_)
                     '()
                     _%sis-tl2105057%_)
                    (_%u105026%_
                     _%plrh105049%_
                     _%pl-tail105029%_
                     (cdr _%sis-rh2105056%_)
                     _%sis-tl2105057%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%try-match105034105071%_
                                              (lambda ()
                                                (if (pair? _%pl-rhead105032105041%_)
                                                    (let ((_%tl105038105064%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%pl-rhead105032105041%_)))
                                                          (_%hd105037105062%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%pl-rhead105032105041%_))))
                                                      (let ((_%c105067%_
                                                             _%hd105037105062%_)
                                                            (_%plrh105069%_
                                                             _%tl105038105064%_))
                                                        (_%K105036105059%_
                                                         _%plrh105069%_
                                                         _%c105067%_)))
                                                    (_%E105035105045%_)))))
                                         (if (null? _%pl-rhead105032105041%_)
                                             (_%K105039105075%_)
                                             (_%try-match105034105071%_))))))))
                              (_g105161_
                               (let ((_g105162_
                                      (let ((__tmp105164
                                             (reverse _%supers104810%_)))
                                        (declare (not safe))
                                        (append1!
                                         _%rpls104833%_
                                         __tmp105164))))
                                 #!void
                                 _g105162_))
                              (_%hpls104835%_
                               (let ()
                                 (declare (not safe))
                                 (##map _%unsisr-rpl104834%_ _%rpls104833%_)))
                              (_%c3-select-next104836%_
                               (lambda (_%tails104974%_)
                                 (let ((_%candidate?104980%_
                                        (lambda (_%c104976%_)
                                          (let ((__tmp105165
                                                 (lambda (_%tail104978%_)
                                                   (not (member _%c104976%_
                                                                (cdr _%tail104978%_)
                                                                _%eq104816%_)))))
                                            (declare (not safe))
                                            (__andmap1
                                             __tmp105165
                                             _%tails104974%_)))))
                                   (let _%loop104982%_ ((_%ts104984%_
                                                         _%tails104974%_))
                                     (let* ((_%ts104985104995%_ _%ts104984%_)
                                            (_%else104987105003%_
                                             (lambda () (_%err104830%_)))
                                            (_%K104989105009%_
                                             (lambda (_%rts105006%_
                                                      _%c105007%_)
                                               (if (_%candidate?104980%_
                                                    _%c105007%_)
                                                   _%c105007%_
                                                   (_%loop104982%_
                                                    _%rts105006%_)))))
                                       (if (pair? _%ts104985104995%_)
                                           (let ((_%hd104990105012%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%ts104985104995%_)))
                                                 (_%tl104991105014%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%ts104985104995%_))))
                                             (if (pair? _%hd104990105012%_)
                                                 (let* ((_%hd104992105017%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%hd104990105012%_)))
                                                        (_%c105020%_
                                                         _%hd104992105017%_)
                                                        (_%rts105022%_
                                                         _%tl104991105014%_))
                                                   (_%K104989105009%_
                                                    _%rts105022%_
                                                    _%c105020%_))
                                                 (_%err104830%_)))
                                           (_%err104830%_)))))))
                              (_%remove-next!104837%_
                               (lambda (_%next104919%_ _%tails104920%_)
                                 (let _%loop104922%_ ((_%t104924%_
                                                       _%tails104920%_))
                                   (let* ((_%t104925104936%_ _%t104924%_)
                                          (_%E104928104940%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%t104925104936%_
                                                    '([])
                                                    '([[head . tail] . more]))
                                             '#!void)))
                                     (let ((_%K104934104971%_
                                            (lambda () _%tails104920%_))
                                           (_%K104929104948%_
                                            (lambda (_%more104944%_
                                                     _%tail104945%_
                                                     _%head104946%_)
                                              (if (_%eq104816%_
                                                   _%head104946%_
                                                   _%next104919%_)
                                                  (set-car!
                                                   _%t104924%_
                                                   _%tail104945%_)
                                                  '#!void)
                                              (_%loop104922%_
                                               _%more104944%_))))
                                       (let ((_%try-match104927104967%_
                                              (lambda ()
                                                (if (pair? _%t104925104936%_)
                                                    (let ((_%tl104931104953%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%t104925104936%_)))
                                                          (_%hd104930104951%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%t104925104936%_))))
                                                      (if (pair? _%hd104930104951%_)
                                                          (let ((_%tl104933104958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd104930104951%_)))
                        (_%hd104932104956%_
                         (let ()
                           (declare (not safe))
                           (##car _%hd104930104951%_))))
                    (let ((_%head104961%_ _%hd104932104956%_)
                          (_%tail104963%_ _%tl104933104958%_)
                          (_%more104965%_ _%tl104931104953%_))
                      (_%K104929104948%_
                       _%more104965%_
                       _%tail104963%_
                       _%head104961%_)))
                  (_%E104928104940%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E104928104940%_)))))
                                         (if (null? _%t104925104936%_)
                                             (_%K104934104971%_)
                                             (_%try-match104927104967%_))))))))
                              (_%precedence-list104838%_
                               (let _%c3loop104869%_ ((_%rhead104871%_
                                                       _%rhead104809%_)
                                                      (_%tails104872%_
                                                       _%hpls104835%_))
                                 (let* ((_%tails104874%_
                                         (let ()
                                           (declare (not safe))
                                           (remove-nulls! _%tails104872%_)))
                                        (_%tails104875104885%_ _%tails104874%_)
                                        (_%else104878104896%_
                                         (lambda ()
                                           (let ((_%next104893%_
                                                  (_%c3-select-next104836%_
                                                   _%tails104874%_)))
                                             (_%c3loop104869%_
                                              (cons _%next104893%_
                                                    _%rhead104871%_)
                                              (_%remove-next!104837%_
                                               _%next104893%_
                                               _%tails104874%_))))))
                                   (let ((_%K104883104916%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead104871%_
                                             _%sis104827%_)))
                                         (_%K104880104902%_
                                          (lambda (_%tail104900%_)
                                            (append-reverse
                                             _%rhead104871%_
                                             (append _%tail104900%_
                                                     _%sis104827%_)))))
                                     (let ((_%try-match104877104912%_
                                            (lambda ()
                                              (if (pair? _%tails104875104885%_)
                                                  (let ((_%tl104882104907%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tails104875104885%_)))
                                                        (_%hd104881104905%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tails104875104885%_))))
                                                    (if (null? _%tl104882104907%_)
                                                        (let ((_%tail104910%_
                                                               _%hd104881104905%_))
                                                          (_%K104880104902%_
                                                           _%tail104910%_))
                                                        (_%else104878104896%_)))
                                                  (_%else104878104896%_)))))
                                       (if (null? _%tails104875104885%_)
                                           (_%K104883104916%_)
                                           (_%try-match104877104912%_)))))))
                              (_%super-struct104839%_
                               (let* ((_%sis104840104848%_ _%sis104827%_)
                                      (_%else104842104856%_ (lambda () '#f))
                                      (_%K104844104861%_
                                       (lambda (_%s104859%_) _%s104859%_)))
                                 (if (pair? _%sis104840104848%_)
                                     (let* ((_%hd104845104864%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%sis104840104848%_)))
                                            (_%s104867%_ _%hd104845104864%_))
                                       (_%K104844104861%_ _%s104867%_))
                                     (_%else104842104856%_)))))
                      (values _%precedence-list104838%_
                              _%super-struct104839%_))))))))
    (define c4-linearize__@
      (lambda (_%@@keywords105111%_ . _%args105112%_)
        (apply c4-linearize__%
               _%@@keywords105111%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords105111%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords105111%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105111%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords105111%_
                  'get-name:
                  absent-value))
               _%args105112%_)))
    (define c4-linearize
      (lambda _%args104802105118%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args104802105118%_)))))
