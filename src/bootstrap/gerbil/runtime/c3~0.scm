(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1768863410)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords104414%_
               _%get-precedence-list104408104415%_
               _%struct?104409104417%_
               _%eq104410104419%_
               _%get-name104411104421%_
               _%rhead104423%_
               _%supers104424%_)
        (let* ((_%get-precedence-list104426%_
                (if (eq? _%get-precedence-list104408104415%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list104408104415%_))
               (_%struct?104428%_
                (if (eq? _%struct?104409104417%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?104409104417%_))
               (_%eq104430%_
                (if (eq? _%eq104410104419%_ absent-value)
                    eq?
                    _%eq104410104419%_))
               (_%get-name104432%_
                (if (eq? _%get-name104411104421%_ absent-value)
                    identity
                    _%get-name104411104421%_)))
          (if (null? _%supers104424%_)
              (values (reverse _%rhead104423%_) '#f)
              (if (null? (cdr _%supers104424%_))
                  (let ((_%pl104437%_
                         (_%get-precedence-list104426%_
                          (car _%supers104424%_))))
                    (values (append-reverse _%rhead104423%_ _%pl104437%_)
                            (let ()
                              (declare (not safe))
                              (find _%struct?104428%_ _%pl104437%_))))
                  (let ((_%pls104440%_
                         (map _%get-precedence-list104426%_ _%supers104424%_))
                        (_%sis104441%_ '()))
                    (letrec* ((_%get-names104443%_
                               (lambda (_%lst104720%_)
                                 (map _%get-name104432%_ _%lst104720%_)))
                              (_%err104444%_
                               (lambda _%a104718%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names104443%_
                                         (reverse _%rhead104423%_))
                                        'precedence-lists:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names104443%_
                                                 _%pls104440%_))
                                        'single-inheritance-suffix:
                                        (_%get-names104443%_ _%sis104441%_)
                                        _%a104718%_)))
                              (_%eqlist?104445%_
                               (lambda (_%l1104712%_ _%l2104713%_)
                                 (let ((_%$e104715%_
                                        (eq? _%l1104712%_ _%l2104713%_)))
                                   (if _%$e104715%_
                                       _%$e104715%_
                                       (if (let ()
                                             (declare (not safe))
                                             (andmap2 _%eq104430%_
                                                      _%l1104712%_
                                                      _%l2104713%_))
                                           (let ((__tmp104768
                                                  (length _%l1104712%_))
                                                 (__tmp104767
                                                  (length _%l2104713%_)))
                                             (declare (not safe))
                                             (##fx= __tmp104768 __tmp104767))
                                           '#f)))))
                              (_%merge-sis!104446%_
                               (lambda (_%sis2104697%_)
                                 (if (null? _%sis2104697%_)
                                     '#!void
                                     (if (null? _%sis104441%_)
                                         (set! _%sis104441%_ _%sis2104697%_)
                                         (let _%loop104702%_ ((_%t1104704%_
                                                               _%sis104441%_)
                                                              (_%t2104705%_
                                                               _%sis2104697%_))
                                           (if (_%eqlist?104445%_
                                                _%t1104704%_
                                                _%sis2104697%_)
                                               '#!void
                                               (if (_%eqlist?104445%_
                                                    _%t2104705%_
                                                    _%sis104441%_)
                                                   (set! _%sis104441%_
                                                         _%sis2104697%_)
                                                   (if (null? _%t1104704%_)
                                                       (if (member (car _%sis104441%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%t2104705%_
                           _%eq104430%_)
                   (set! _%sis104441%_ _%sis2104697%_)
                   (_%err104444%_
                    'struct-incompatibility:
                    (cons (_%get-names104443%_ _%sis104441%_)
                          (cons (_%get-names104443%_ _%sis2104697%_) '()))))
               (if (null? _%t2104705%_)
                   (if (member (car _%sis2104697%_) _%t1104704%_ _%eq104430%_)
                       '#!void
                       (_%err104444%_
                        'struct-incompatibility:
                        (cons (_%get-names104443%_ _%sis104441%_)
                              (cons (_%get-names104443%_ _%sis2104697%_)
                                    '()))))
                   (_%loop104702%_
                    (cdr _%t1104704%_)
                    (cdr _%t2104705%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%rpls104447%_
                               (let ((__tmp104769
                                      (lambda (_%pl104692%_)
                                        (let ((_g104770_
                                               (let ()
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  _%struct?104428%_
                                                  _%pl104692%_
                                                  '()))))
                                          (begin
                                            (let ((_g104771_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g104770_)
                                                         (##values-length
                                                          _g104770_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g104771_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g104771_)))
                                            (let ((_%tl104694%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g104770_
                                                      0)))
                                                  (_%rh104695%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g104770_
                                                      1))))
                                              (begin
                                                (_%merge-sis!104446%_
                                                 _%tl104694%_)
                                                _%rh104695%_)))))))
                                 (declare (not safe))
                                 (##map __tmp104769 _%pls104440%_)))
                              (_%unsisr-rpl104448%_
                               (lambda (_%rpl104638%_)
                                 (let _%u104640%_ ((_%pl-rhead104642%_
                                                    _%rpl104638%_)
                                                   (_%pl-tail104643%_ '())
                                                   (_%sis-rhead104644%_
                                                    (reverse _%sis104441%_))
                                                   (_%sis-tail104645%_ '()))
                                   (let* ((_%pl-rhead104646104655%_
                                           _%pl-rhead104642%_)
                                          (_%E104649104659%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%pl-rhead104646104655%_
                                                    '([])
                                                    '([c . plrh]))
                                             '#!void)))
                                     (let ((_%K104653104689%_
                                            (lambda () _%pl-tail104643%_))
                                           (_%K104650104673%_
                                            (lambda (_%plrh104663%_
                                                     _%c104664%_)
                                              (if (member _%c104664%_
                                                          _%sis-tail104645%_
                                                          _%eq104430%_)
                                                  (_%err104444%_
                                                   'precedence-list-head:
                                                   (_%get-names104443%_
                                                    (reverse _%pl-rhead104642%_))
                                                   'precedence-list-tail:
                                                   (_%get-names104443%_
                                                    _%pl-tail104643%_)
                                                   'single-inheritance-head:
                                                   (_%get-names104443%_
                                                    (reverse _%sis-rhead104644%_))
                                                   'single-inheritance-tail:
                                                   (_%get-names104443%_
                                                    _%sis-tail104645%_)
                                                   'super-out-of-order-vs-single-inheritance-tail:
                                                   (_%get-name104432%_
                                                    _%c104664%_))
                                                  (let ((_g104772_
                                                         (let ((__tmp104774
                                                                (lambda (_%g104665104667%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%eq104430%_ _%c104664%_ _%g104665104667%_))))
                   (declare (not safe))
                   (__append-reverse-until
                    __tmp104774
                    _%sis-rhead104644%_
                    _%sis-tail104645%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g104773_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g104772_)
                           (##values-length _g104772_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g104773_ 2)))
                    (error "Context expects 2 values" _g104773_)))
              (let ((_%sis-rh2104670%_
                     (let () (declare (not safe)) (##values-ref _g104772_ 0)))
                    (_%sis-tl2104671%_
                     (let () (declare (not safe)) (##values-ref _g104772_ 1))))
                (if (null? _%sis-rh2104670%_)
                    (_%u104640%_
                     _%plrh104663%_
                     (cons _%c104664%_ _%pl-tail104643%_)
                     '()
                     _%sis-tl2104671%_)
                    (_%u104640%_
                     _%plrh104663%_
                     _%pl-tail104643%_
                     (cdr _%sis-rh2104670%_)
                     _%sis-tl2104671%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%try-match104648104685%_
                                              (lambda ()
                                                (if (pair? _%pl-rhead104646104655%_)
                                                    (let ((_%tl104652104678%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%pl-rhead104646104655%_)))
                                                          (_%hd104651104676%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%pl-rhead104646104655%_))))
                                                      (let ((_%c104681%_
                                                             _%hd104651104676%_)
                                                            (_%plrh104683%_
                                                             _%tl104652104678%_))
                                                        (_%K104650104673%_
                                                         _%plrh104683%_
                                                         _%c104681%_)))
                                                    (_%E104649104659%_)))))
                                         (if (null? _%pl-rhead104646104655%_)
                                             (_%K104653104689%_)
                                             (_%try-match104648104685%_))))))))
                              (_g104775_
                               (let ((_g104776_
                                      (let ((__tmp104778
                                             (reverse _%supers104424%_)))
                                        (declare (not safe))
                                        (append1!
                                         _%rpls104447%_
                                         __tmp104778))))
                                 #!void
                                 _g104776_))
                              (_%hpls104449%_
                               (let ()
                                 (declare (not safe))
                                 (##map _%unsisr-rpl104448%_ _%rpls104447%_)))
                              (_%c3-select-next104450%_
                               (lambda (_%tails104588%_)
                                 (let ((_%candidate?104594%_
                                        (lambda (_%c104590%_)
                                          (let ((__tmp104779
                                                 (lambda (_%tail104592%_)
                                                   (not (member _%c104590%_
                                                                (cdr _%tail104592%_)
                                                                _%eq104430%_)))))
                                            (declare (not safe))
                                            (__andmap1
                                             __tmp104779
                                             _%tails104588%_)))))
                                   (let _%loop104596%_ ((_%ts104598%_
                                                         _%tails104588%_))
                                     (let* ((_%ts104599104609%_ _%ts104598%_)
                                            (_%else104601104617%_
                                             (lambda () (_%err104444%_)))
                                            (_%K104603104623%_
                                             (lambda (_%rts104620%_
                                                      _%c104621%_)
                                               (if (_%candidate?104594%_
                                                    _%c104621%_)
                                                   _%c104621%_
                                                   (_%loop104596%_
                                                    _%rts104620%_)))))
                                       (if (pair? _%ts104599104609%_)
                                           (let ((_%hd104604104626%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%ts104599104609%_)))
                                                 (_%tl104605104628%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%ts104599104609%_))))
                                             (if (pair? _%hd104604104626%_)
                                                 (let* ((_%hd104606104631%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%hd104604104626%_)))
                                                        (_%c104634%_
                                                         _%hd104606104631%_)
                                                        (_%rts104636%_
                                                         _%tl104605104628%_))
                                                   (_%K104603104623%_
                                                    _%rts104636%_
                                                    _%c104634%_))
                                                 (_%err104444%_)))
                                           (_%err104444%_)))))))
                              (_%remove-next!104451%_
                               (lambda (_%next104533%_ _%tails104534%_)
                                 (let _%loop104536%_ ((_%t104538%_
                                                       _%tails104534%_))
                                   (let* ((_%t104539104550%_ _%t104538%_)
                                          (_%E104542104554%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%t104539104550%_
                                                    '([])
                                                    '([[head . tail] . more]))
                                             '#!void)))
                                     (let ((_%K104548104585%_
                                            (lambda () _%tails104534%_))
                                           (_%K104543104562%_
                                            (lambda (_%more104558%_
                                                     _%tail104559%_
                                                     _%head104560%_)
                                              (if (_%eq104430%_
                                                   _%head104560%_
                                                   _%next104533%_)
                                                  (set-car!
                                                   _%t104538%_
                                                   _%tail104559%_)
                                                  '#!void)
                                              (_%loop104536%_
                                               _%more104558%_))))
                                       (let ((_%try-match104541104581%_
                                              (lambda ()
                                                (if (pair? _%t104539104550%_)
                                                    (let ((_%tl104545104567%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%t104539104550%_)))
                                                          (_%hd104544104565%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%t104539104550%_))))
                                                      (if (pair? _%hd104544104565%_)
                                                          (let ((_%tl104547104572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd104544104565%_)))
                        (_%hd104546104570%_
                         (let ()
                           (declare (not safe))
                           (##car _%hd104544104565%_))))
                    (let ((_%head104575%_ _%hd104546104570%_)
                          (_%tail104577%_ _%tl104547104572%_)
                          (_%more104579%_ _%tl104545104567%_))
                      (_%K104543104562%_
                       _%more104579%_
                       _%tail104577%_
                       _%head104575%_)))
                  (_%E104542104554%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E104542104554%_)))))
                                         (if (null? _%t104539104550%_)
                                             (_%K104548104585%_)
                                             (_%try-match104541104581%_))))))))
                              (_%precedence-list104452%_
                               (let _%c3loop104483%_ ((_%rhead104485%_
                                                       _%rhead104423%_)
                                                      (_%tails104486%_
                                                       _%hpls104449%_))
                                 (let* ((_%tails104488%_
                                         (let ()
                                           (declare (not safe))
                                           (remove-nulls! _%tails104486%_)))
                                        (_%tails104489104499%_ _%tails104488%_)
                                        (_%else104492104510%_
                                         (lambda ()
                                           (let ((_%next104507%_
                                                  (_%c3-select-next104450%_
                                                   _%tails104488%_)))
                                             (_%c3loop104483%_
                                              (cons _%next104507%_
                                                    _%rhead104485%_)
                                              (_%remove-next!104451%_
                                               _%next104507%_
                                               _%tails104488%_))))))
                                   (let ((_%K104497104530%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead104485%_
                                             _%sis104441%_)))
                                         (_%K104494104516%_
                                          (lambda (_%tail104514%_)
                                            (append-reverse
                                             _%rhead104485%_
                                             (append _%tail104514%_
                                                     _%sis104441%_)))))
                                     (let ((_%try-match104491104526%_
                                            (lambda ()
                                              (if (pair? _%tails104489104499%_)
                                                  (let ((_%tl104496104521%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tails104489104499%_)))
                                                        (_%hd104495104519%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tails104489104499%_))))
                                                    (if (null? _%tl104496104521%_)
                                                        (let ((_%tail104524%_
                                                               _%hd104495104519%_))
                                                          (_%K104494104516%_
                                                           _%tail104524%_))
                                                        (_%else104492104510%_)))
                                                  (_%else104492104510%_)))))
                                       (if (null? _%tails104489104499%_)
                                           (_%K104497104530%_)
                                           (_%try-match104491104526%_)))))))
                              (_%super-struct104453%_
                               (let* ((_%sis104454104462%_ _%sis104441%_)
                                      (_%else104456104470%_ (lambda () '#f))
                                      (_%K104458104475%_
                                       (lambda (_%s104473%_) _%s104473%_)))
                                 (if (pair? _%sis104454104462%_)
                                     (let* ((_%hd104459104478%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%sis104454104462%_)))
                                            (_%s104481%_ _%hd104459104478%_))
                                       (_%K104458104475%_ _%s104481%_))
                                     (_%else104456104470%_)))))
                      (values _%precedence-list104452%_
                              _%super-struct104453%_))))))))
    (define c4-linearize__@
      (lambda (_%@@keywords104725%_ . _%args104726%_)
        (apply c4-linearize__%
               _%@@keywords104725%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104725%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104725%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords104725%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104725%_
                  'get-name:
                  absent-value))
               _%args104726%_)))
    (define c4-linearize
      (lambda _%args104412104732%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args104412104732%_)))))
