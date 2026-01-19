(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1768865821)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords104441%_
               _%get-precedence-list104435104442%_
               _%struct?104436104444%_
               _%eq104437104446%_
               _%get-name104438104448%_
               _%rhead104450%_
               _%supers104451%_)
        (let* ((_%get-precedence-list104453%_
                (if (eq? _%get-precedence-list104435104442%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list104435104442%_))
               (_%struct?104455%_
                (if (eq? _%struct?104436104444%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?104436104444%_))
               (_%eq104457%_
                (if (eq? _%eq104437104446%_ absent-value)
                    eq?
                    _%eq104437104446%_))
               (_%get-name104459%_
                (if (eq? _%get-name104438104448%_ absent-value)
                    identity
                    _%get-name104438104448%_)))
          (if (null? _%supers104451%_)
              (values (reverse _%rhead104450%_) '#f)
              (if (null? (cdr _%supers104451%_))
                  (let ((_%pl104464%_
                         (_%get-precedence-list104453%_
                          (car _%supers104451%_))))
                    (values (append-reverse _%rhead104450%_ _%pl104464%_)
                            (let ()
                              (declare (not safe))
                              (find _%struct?104455%_ _%pl104464%_))))
                  (let ((_%pls104467%_
                         (map _%get-precedence-list104453%_ _%supers104451%_))
                        (_%sis104468%_ '()))
                    (letrec* ((_%get-names104470%_
                               (lambda (_%lst104747%_)
                                 (map _%get-name104459%_ _%lst104747%_)))
                              (_%err104471%_
                               (lambda _%a104745%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names104470%_
                                         (reverse _%rhead104450%_))
                                        'precedence-lists:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names104470%_
                                                 _%pls104467%_))
                                        'single-inheritance-suffix:
                                        (_%get-names104470%_ _%sis104468%_)
                                        _%a104745%_)))
                              (_%eqlist?104472%_
                               (lambda (_%l1104739%_ _%l2104740%_)
                                 (let ((_%$e104742%_
                                        (eq? _%l1104739%_ _%l2104740%_)))
                                   (if _%$e104742%_
                                       _%$e104742%_
                                       (if (let ()
                                             (declare (not safe))
                                             (andmap2 _%eq104457%_
                                                      _%l1104739%_
                                                      _%l2104740%_))
                                           (let ((__tmp104795
                                                  (length _%l1104739%_))
                                                 (__tmp104794
                                                  (length _%l2104740%_)))
                                             (declare (not safe))
                                             (##fx= __tmp104795 __tmp104794))
                                           '#f)))))
                              (_%merge-sis!104473%_
                               (lambda (_%sis2104724%_)
                                 (if (null? _%sis2104724%_)
                                     '#!void
                                     (if (null? _%sis104468%_)
                                         (set! _%sis104468%_ _%sis2104724%_)
                                         (let _%loop104729%_ ((_%t1104731%_
                                                               _%sis104468%_)
                                                              (_%t2104732%_
                                                               _%sis2104724%_))
                                           (if (_%eqlist?104472%_
                                                _%t1104731%_
                                                _%sis2104724%_)
                                               '#!void
                                               (if (_%eqlist?104472%_
                                                    _%t2104732%_
                                                    _%sis104468%_)
                                                   (set! _%sis104468%_
                                                         _%sis2104724%_)
                                                   (if (null? _%t1104731%_)
                                                       (if (member (car _%sis104468%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%t2104732%_
                           _%eq104457%_)
                   (set! _%sis104468%_ _%sis2104724%_)
                   (_%err104471%_
                    'struct-incompatibility:
                    (cons (_%get-names104470%_ _%sis104468%_)
                          (cons (_%get-names104470%_ _%sis2104724%_) '()))))
               (if (null? _%t2104732%_)
                   (if (member (car _%sis2104724%_) _%t1104731%_ _%eq104457%_)
                       '#!void
                       (_%err104471%_
                        'struct-incompatibility:
                        (cons (_%get-names104470%_ _%sis104468%_)
                              (cons (_%get-names104470%_ _%sis2104724%_)
                                    '()))))
                   (_%loop104729%_
                    (cdr _%t1104731%_)
                    (cdr _%t2104732%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%rpls104474%_
                               (let ((__tmp104796
                                      (lambda (_%pl104719%_)
                                        (let ((_g104797_
                                               (let ()
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  _%struct?104455%_
                                                  _%pl104719%_
                                                  '()))))
                                          (begin
                                            (let ((_g104798_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g104797_)
                                                         (##values-length
                                                          _g104797_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g104798_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g104798_)))
                                            (let ((_%tl104721%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g104797_
                                                      0)))
                                                  (_%rh104722%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g104797_
                                                      1))))
                                              (begin
                                                (_%merge-sis!104473%_
                                                 _%tl104721%_)
                                                _%rh104722%_)))))))
                                 (declare (not safe))
                                 (##map __tmp104796 _%pls104467%_)))
                              (_%unsisr-rpl104475%_
                               (lambda (_%rpl104665%_)
                                 (let _%u104667%_ ((_%pl-rhead104669%_
                                                    _%rpl104665%_)
                                                   (_%pl-tail104670%_ '())
                                                   (_%sis-rhead104671%_
                                                    (reverse _%sis104468%_))
                                                   (_%sis-tail104672%_ '()))
                                   (let* ((_%pl-rhead104673104682%_
                                           _%pl-rhead104669%_)
                                          (_%E104676104686%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%pl-rhead104673104682%_
                                                    '([])
                                                    '([c . plrh]))
                                             '#!void)))
                                     (let ((_%K104680104716%_
                                            (lambda () _%pl-tail104670%_))
                                           (_%K104677104700%_
                                            (lambda (_%plrh104690%_
                                                     _%c104691%_)
                                              (if (member _%c104691%_
                                                          _%sis-tail104672%_
                                                          _%eq104457%_)
                                                  (_%err104471%_
                                                   'precedence-list-head:
                                                   (_%get-names104470%_
                                                    (reverse _%pl-rhead104669%_))
                                                   'precedence-list-tail:
                                                   (_%get-names104470%_
                                                    _%pl-tail104670%_)
                                                   'single-inheritance-head:
                                                   (_%get-names104470%_
                                                    (reverse _%sis-rhead104671%_))
                                                   'single-inheritance-tail:
                                                   (_%get-names104470%_
                                                    _%sis-tail104672%_)
                                                   'super-out-of-order-vs-single-inheritance-tail:
                                                   (_%get-name104459%_
                                                    _%c104691%_))
                                                  (let ((_g104799_
                                                         (let ((__tmp104801
                                                                (lambda (_%g104692104694%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%eq104457%_ _%c104691%_ _%g104692104694%_))))
                   (declare (not safe))
                   (__append-reverse-until
                    __tmp104801
                    _%sis-rhead104671%_
                    _%sis-tail104672%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g104800_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g104799_)
                           (##values-length _g104799_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g104800_ 2)))
                    (error "Context expects 2 values" _g104800_)))
              (let ((_%sis-rh2104697%_
                     (let () (declare (not safe)) (##values-ref _g104799_ 0)))
                    (_%sis-tl2104698%_
                     (let () (declare (not safe)) (##values-ref _g104799_ 1))))
                (if (null? _%sis-rh2104697%_)
                    (_%u104667%_
                     _%plrh104690%_
                     (cons _%c104691%_ _%pl-tail104670%_)
                     '()
                     _%sis-tl2104698%_)
                    (_%u104667%_
                     _%plrh104690%_
                     _%pl-tail104670%_
                     (cdr _%sis-rh2104697%_)
                     _%sis-tl2104698%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%try-match104675104712%_
                                              (lambda ()
                                                (if (pair? _%pl-rhead104673104682%_)
                                                    (let ((_%tl104679104705%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%pl-rhead104673104682%_)))
                                                          (_%hd104678104703%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%pl-rhead104673104682%_))))
                                                      (let ((_%c104708%_
                                                             _%hd104678104703%_)
                                                            (_%plrh104710%_
                                                             _%tl104679104705%_))
                                                        (_%K104677104700%_
                                                         _%plrh104710%_
                                                         _%c104708%_)))
                                                    (_%E104676104686%_)))))
                                         (if (null? _%pl-rhead104673104682%_)
                                             (_%K104680104716%_)
                                             (_%try-match104675104712%_))))))))
                              (_g104802_
                               (let ((_g104803_
                                      (let ((__tmp104805
                                             (reverse _%supers104451%_)))
                                        (declare (not safe))
                                        (append1!
                                         _%rpls104474%_
                                         __tmp104805))))
                                 #!void
                                 _g104803_))
                              (_%hpls104476%_
                               (let ()
                                 (declare (not safe))
                                 (##map _%unsisr-rpl104475%_ _%rpls104474%_)))
                              (_%c3-select-next104477%_
                               (lambda (_%tails104615%_)
                                 (let ((_%candidate?104621%_
                                        (lambda (_%c104617%_)
                                          (let ((__tmp104806
                                                 (lambda (_%tail104619%_)
                                                   (not (member _%c104617%_
                                                                (cdr _%tail104619%_)
                                                                _%eq104457%_)))))
                                            (declare (not safe))
                                            (__andmap1
                                             __tmp104806
                                             _%tails104615%_)))))
                                   (let _%loop104623%_ ((_%ts104625%_
                                                         _%tails104615%_))
                                     (let* ((_%ts104626104636%_ _%ts104625%_)
                                            (_%else104628104644%_
                                             (lambda () (_%err104471%_)))
                                            (_%K104630104650%_
                                             (lambda (_%rts104647%_
                                                      _%c104648%_)
                                               (if (_%candidate?104621%_
                                                    _%c104648%_)
                                                   _%c104648%_
                                                   (_%loop104623%_
                                                    _%rts104647%_)))))
                                       (if (pair? _%ts104626104636%_)
                                           (let ((_%hd104631104653%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%ts104626104636%_)))
                                                 (_%tl104632104655%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%ts104626104636%_))))
                                             (if (pair? _%hd104631104653%_)
                                                 (let* ((_%hd104633104658%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%hd104631104653%_)))
                                                        (_%c104661%_
                                                         _%hd104633104658%_)
                                                        (_%rts104663%_
                                                         _%tl104632104655%_))
                                                   (_%K104630104650%_
                                                    _%rts104663%_
                                                    _%c104661%_))
                                                 (_%err104471%_)))
                                           (_%err104471%_)))))))
                              (_%remove-next!104478%_
                               (lambda (_%next104560%_ _%tails104561%_)
                                 (let _%loop104563%_ ((_%t104565%_
                                                       _%tails104561%_))
                                   (let* ((_%t104566104577%_ _%t104565%_)
                                          (_%E104569104581%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%t104566104577%_
                                                    '([])
                                                    '([[head . tail] . more]))
                                             '#!void)))
                                     (let ((_%K104575104612%_
                                            (lambda () _%tails104561%_))
                                           (_%K104570104589%_
                                            (lambda (_%more104585%_
                                                     _%tail104586%_
                                                     _%head104587%_)
                                              (if (_%eq104457%_
                                                   _%head104587%_
                                                   _%next104560%_)
                                                  (set-car!
                                                   _%t104565%_
                                                   _%tail104586%_)
                                                  '#!void)
                                              (_%loop104563%_
                                               _%more104585%_))))
                                       (let ((_%try-match104568104608%_
                                              (lambda ()
                                                (if (pair? _%t104566104577%_)
                                                    (let ((_%tl104572104594%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%t104566104577%_)))
                                                          (_%hd104571104592%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%t104566104577%_))))
                                                      (if (pair? _%hd104571104592%_)
                                                          (let ((_%tl104574104599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd104571104592%_)))
                        (_%hd104573104597%_
                         (let ()
                           (declare (not safe))
                           (##car _%hd104571104592%_))))
                    (let ((_%head104602%_ _%hd104573104597%_)
                          (_%tail104604%_ _%tl104574104599%_)
                          (_%more104606%_ _%tl104572104594%_))
                      (_%K104570104589%_
                       _%more104606%_
                       _%tail104604%_
                       _%head104602%_)))
                  (_%E104569104581%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E104569104581%_)))))
                                         (if (null? _%t104566104577%_)
                                             (_%K104575104612%_)
                                             (_%try-match104568104608%_))))))))
                              (_%precedence-list104479%_
                               (let _%c3loop104510%_ ((_%rhead104512%_
                                                       _%rhead104450%_)
                                                      (_%tails104513%_
                                                       _%hpls104476%_))
                                 (let* ((_%tails104515%_
                                         (let ()
                                           (declare (not safe))
                                           (remove-nulls! _%tails104513%_)))
                                        (_%tails104516104526%_ _%tails104515%_)
                                        (_%else104519104537%_
                                         (lambda ()
                                           (let ((_%next104534%_
                                                  (_%c3-select-next104477%_
                                                   _%tails104515%_)))
                                             (_%c3loop104510%_
                                              (cons _%next104534%_
                                                    _%rhead104512%_)
                                              (_%remove-next!104478%_
                                               _%next104534%_
                                               _%tails104515%_))))))
                                   (let ((_%K104524104557%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead104512%_
                                             _%sis104468%_)))
                                         (_%K104521104543%_
                                          (lambda (_%tail104541%_)
                                            (append-reverse
                                             _%rhead104512%_
                                             (append _%tail104541%_
                                                     _%sis104468%_)))))
                                     (let ((_%try-match104518104553%_
                                            (lambda ()
                                              (if (pair? _%tails104516104526%_)
                                                  (let ((_%tl104523104548%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tails104516104526%_)))
                                                        (_%hd104522104546%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tails104516104526%_))))
                                                    (if (null? _%tl104523104548%_)
                                                        (let ((_%tail104551%_
                                                               _%hd104522104546%_))
                                                          (_%K104521104543%_
                                                           _%tail104551%_))
                                                        (_%else104519104537%_)))
                                                  (_%else104519104537%_)))))
                                       (if (null? _%tails104516104526%_)
                                           (_%K104524104557%_)
                                           (_%try-match104518104553%_)))))))
                              (_%super-struct104480%_
                               (let* ((_%sis104481104489%_ _%sis104468%_)
                                      (_%else104483104497%_ (lambda () '#f))
                                      (_%K104485104502%_
                                       (lambda (_%s104500%_) _%s104500%_)))
                                 (if (pair? _%sis104481104489%_)
                                     (let* ((_%hd104486104505%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%sis104481104489%_)))
                                            (_%s104508%_ _%hd104486104505%_))
                                       (_%K104485104502%_ _%s104508%_))
                                     (_%else104483104497%_)))))
                      (values _%precedence-list104479%_
                              _%super-struct104480%_))))))))
    (define c4-linearize__@
      (lambda (_%@@keywords104752%_ . _%args104753%_)
        (apply c4-linearize__%
               _%@@keywords104752%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104752%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104752%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords104752%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104752%_
                  'get-name:
                  absent-value))
               _%args104753%_)))
    (define c4-linearize
      (lambda _%args104439104759%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args104439104759%_)))))
