(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1771037606)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords129619%_
               _%get-precedence-list129613129620%_
               _%struct?129614129621%_
               _%eq129615129622%_
               _%get-name129616129623%_
               _%rhead129624%_
               _%supers129625%_)
        (let* ((_%get-precedence-list129627%_
                (if (eq? _%get-precedence-list129613129620%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list129613129620%_))
               (_%struct?129629%_
                (if (eq? _%struct?129614129621%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?129614129621%_))
               (_%eq129631%_
                (if (eq? _%eq129615129622%_ absent-value)
                    eq?
                    _%eq129615129622%_))
               (_%get-name129633%_
                (if (eq? _%get-name129616129623%_ absent-value)
                    identity
                    _%get-name129616129623%_)))
          (if (null? _%supers129625%_)
              (values (reverse _%rhead129624%_) '#f)
              (if (null? (cdr _%supers129625%_))
                  (let ((_%pl129638%_
                         (_%get-precedence-list129627%_
                          (car _%supers129625%_))))
                    (values (append-reverse _%rhead129624%_ _%pl129638%_)
                            (let* ((_%pred129640%_ _%struct?129629%_)
                                   (_%lst129643%_ _%pl129638%_))
                              (if (procedure? _%pred129640%_)
                                  (let ((_%pred129648%_ _%pred129640%_))
                                    (declare (not safe))
                                    (__find _%pred129648%_ _%lst129643%_))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/c3
                                     'contract:
                                     'procedure?
                                     'value:
                                     _%pred129640%_)
                                    '#!void)))))
                  (let ((_%pls129669%_
                         (map _%get-precedence-list129627%_ _%supers129625%_))
                        (_%sis129670%_ '()))
                    (letrec* ((_%get-names129672%_
                               (lambda (_%lst130006%_)
                                 (map _%get-name129633%_ _%lst130006%_)))
                              (_%err129673%_
                               (lambda _%a130004%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names129672%_
                                         (reverse _%rhead129624%_))
                                        'precedence-lists:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names129672%_
                                                 _%pls129669%_))
                                        'single-inheritance-suffix:
                                        (_%get-names129672%_ _%sis129670%_)
                                        _%a130004%_)))
                              (_%eqlist?129674%_
                               (lambda (_%l1129998%_ _%l2129999%_)
                                 (let ((_%$e130001%_
                                        (eq? _%l1129998%_ _%l2129999%_)))
                                   (if _%$e130001%_
                                       _%$e130001%_
                                       (if (let ()
                                             (declare (not safe))
                                             (andmap__1
                                              _%eq129631%_
                                              _%l1129998%_
                                              _%l2129999%_))
                                           (let ((__tmp130054
                                                  (length _%l1129998%_))
                                                 (__tmp130053
                                                  (length _%l2129999%_)))
                                             (declare (not safe))
                                             (##fx= __tmp130054 __tmp130053))
                                           '#f)))))
                              (_%merge-sis!129675%_
                               (lambda (_%sis2129983%_)
                                 (if (null? _%sis2129983%_)
                                     '#!void
                                     (if (null? _%sis129670%_)
                                         (set! _%sis129670%_ _%sis2129983%_)
                                         (let _%loop129988%_ ((_%t1129990%_
                                                               _%sis129670%_)
                                                              (_%t2129991%_
                                                               _%sis2129983%_))
                                           (if (_%eqlist?129674%_
                                                _%t1129990%_
                                                _%sis2129983%_)
                                               '#!void
                                               (if (_%eqlist?129674%_
                                                    _%t2129991%_
                                                    _%sis129670%_)
                                                   (set! _%sis129670%_
                                                         _%sis2129983%_)
                                                   (if (null? _%t1129990%_)
                                                       (if (member (car _%sis129670%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%t2129991%_
                           _%eq129631%_)
                   (set! _%sis129670%_ _%sis2129983%_)
                   (_%err129673%_
                    'struct-incompatibility:
                    (cons (_%get-names129672%_ _%sis129670%_)
                          (cons (_%get-names129672%_ _%sis2129983%_) '()))))
               (if (null? _%t2129991%_)
                   (if (member (car _%sis2129983%_) _%t1129990%_ _%eq129631%_)
                       '#!void
                       (_%err129673%_
                        'struct-incompatibility:
                        (cons (_%get-names129672%_ _%sis129670%_)
                              (cons (_%get-names129672%_ _%sis2129983%_)
                                    '()))))
                   (_%loop129988%_
                    (cdr _%t1129990%_)
                    (cdr _%t2129991%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%rpls129676%_
                               (let ((__tmp130055
                                      (lambda (_%pl129954%_)
                                        (let ((_g130056_
                                               (let* ((_%pred129956%_
                                                       _%struct?129629%_)
                                                      (_%rhead129959%_
                                                       _%pl129954%_)
                                                      (_%tail129962%_ '()))
                                                 (if (procedure?
                                                      _%pred129956%_)
                                                     (let ((_%pred129967%_
                                                            _%pred129956%_))
                                                       (declare (not safe))
                                                       (__append-reverse-until
                                                        _%pred129967%_
                                                        _%rhead129959%_
                                                        _%tail129962%_))
                                                     (begin
                                                       (raise-contract-violation-error
                                                        '"contract violation"
                                                        'context:
                                                        'gerbil/runtime/c3
                                                        'contract:
                                                        'procedure?
                                                        'value:
                                                        _%pred129956%_)
                                                       '#!void)))))
                                          (begin
                                            (let ((_g130057_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g130056_)
                                                         (##values-length
                                                          _g130056_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g130057_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g130057_)))
                                            (let ((_%tl129980%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g130056_
                                                      0)))
                                                  (_%rh129981%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g130056_
                                                      1))))
                                              (begin
                                                (_%merge-sis!129675%_
                                                 _%tl129980%_)
                                                _%rh129981%_)))))))
                                 (declare (not safe))
                                 (##map __tmp130055 _%pls129669%_)))
                              (_%unsisr-rpl129677%_
                               (lambda (_%rpl129867%_)
                                 (let _%u129869%_ ((_%pl-rhead129871%_
                                                    _%rpl129867%_)
                                                   (_%pl-tail129872%_ '())
                                                   (_%sis-rhead129873%_
                                                    (reverse _%sis129670%_))
                                                   (_%sis-tail129874%_ '()))
                                   (let* ((_%pl-rhead129875129884%_
                                           _%pl-rhead129871%_)
                                          (_%E129878129888%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%pl-rhead129875129884%_
                                                    '([])
                                                    '([c . plrh]))
                                             '#!void)))
                                     (let ((_%K129882129951%_
                                            (lambda () _%pl-tail129872%_))
                                           (_%K129879129935%_
                                            (lambda (_%plrh129892%_
                                                     _%c129893%_)
                                              (if (member _%c129893%_
                                                          _%sis-tail129874%_
                                                          _%eq129631%_)
                                                  (_%err129673%_
                                                   'precedence-list-head:
                                                   (_%get-names129672%_
                                                    (reverse _%pl-rhead129871%_))
                                                   'precedence-list-tail:
                                                   (_%get-names129672%_
                                                    _%pl-tail129872%_)
                                                   'single-inheritance-head:
                                                   (_%get-names129672%_
                                                    (reverse _%sis-rhead129873%_))
                                                   'single-inheritance-tail:
                                                   (_%get-names129672%_
                                                    _%sis-tail129874%_)
                                                   'super-out-of-order-vs-single-inheritance-tail:
                                                   (_%get-name129633%_
                                                    _%c129893%_))
                                                  (let ((_g130058_
                                                         (let* ((_%pred129899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g129894129896%_)
                           (_%eq129631%_ _%c129893%_ _%g129894129896%_)))
                        (_%rhead129902%_ _%sis-rhead129873%_)
                        (_%tail129905%_ _%sis-tail129874%_)
                        (_%pred129910%_ _%pred129899%_))
                   (declare (not safe))
                   (__append-reverse-until
                    _%pred129910%_
                    _%rhead129902%_
                    _%tail129905%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g130059_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g130058_)
                           (##values-length _g130058_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g130059_ 2)))
                    (error "Context expects 2 values" _g130059_)))
              (let ((_%sis-rh2129932%_
                     (let () (declare (not safe)) (##values-ref _g130058_ 0)))
                    (_%sis-tl2129933%_
                     (let () (declare (not safe)) (##values-ref _g130058_ 1))))
                (if (null? _%sis-rh2129932%_)
                    (_%u129869%_
                     _%plrh129892%_
                     (cons _%c129893%_ _%pl-tail129872%_)
                     '()
                     _%sis-tl2129933%_)
                    (_%u129869%_
                     _%plrh129892%_
                     _%pl-tail129872%_
                     (cdr _%sis-rh2129932%_)
                     _%sis-tl2129933%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%try-match129877129947%_
                                              (lambda ()
                                                (if (pair? _%pl-rhead129875129884%_)
                                                    (let ((_%tl129881129940%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%pl-rhead129875129884%_)))
                                                          (_%hd129880129938%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%pl-rhead129875129884%_))))
                                                      (let ((_%c129943%_
                                                             _%hd129880129938%_)
                                                            (_%plrh129945%_
                                                             _%tl129881129940%_))
                                                        (_%K129879129935%_
                                                         _%plrh129945%_
                                                         _%c129943%_)))
                                                    (_%E129878129888%_)))))
                                         (if (null? _%pl-rhead129875129884%_)
                                             (_%K129882129951%_)
                                             (_%try-match129877129947%_))))))))
                              (_g130060_
                               (let ((_g130061_
                                      (let ((__tmp130063
                                             (reverse _%supers129625%_)))
                                        (declare (not safe))
                                        (append1!
                                         _%rpls129676%_
                                         __tmp130063))))
                                 #!void
                                 _g130061_))
                              (_%hpls129678%_
                               (let ()
                                 (declare (not safe))
                                 (##map _%unsisr-rpl129677%_ _%rpls129676%_)))
                              (_%c3-select-next129679%_
                               (lambda (_%tails129817%_)
                                 (let ((_%candidate?129823%_
                                        (lambda (_%c129819%_)
                                          (let ((__tmp130064
                                                 (lambda (_%tail129821%_)
                                                   (not (member _%c129819%_
                                                                (cdr _%tail129821%_)
                                                                _%eq129631%_)))))
                                            (declare (not safe))
                                            (andmap__0
                                             __tmp130064
                                             _%tails129817%_)))))
                                   (let _%loop129825%_ ((_%ts129827%_
                                                         _%tails129817%_))
                                     (let* ((_%ts129828129838%_ _%ts129827%_)
                                            (_%else129830129846%_
                                             (lambda () (_%err129673%_)))
                                            (_%K129832129852%_
                                             (lambda (_%rts129849%_
                                                      _%c129850%_)
                                               (if (_%candidate?129823%_
                                                    _%c129850%_)
                                                   _%c129850%_
                                                   (_%loop129825%_
                                                    _%rts129849%_)))))
                                       (if (pair? _%ts129828129838%_)
                                           (let ((_%hd129833129855%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%ts129828129838%_)))
                                                 (_%tl129834129857%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%ts129828129838%_))))
                                             (if (pair? _%hd129833129855%_)
                                                 (let* ((_%hd129835129860%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%hd129833129855%_)))
                                                        (_%c129863%_
                                                         _%hd129835129860%_)
                                                        (_%rts129865%_
                                                         _%tl129834129857%_))
                                                   (_%K129832129852%_
                                                    _%rts129865%_
                                                    _%c129863%_))
                                                 (_%err129673%_)))
                                           (_%err129673%_)))))))
                              (_%remove-next!129680%_
                               (lambda (_%next129762%_ _%tails129763%_)
                                 (let _%loop129765%_ ((_%t129767%_
                                                       _%tails129763%_))
                                   (let* ((_%t129768129779%_ _%t129767%_)
                                          (_%E129771129783%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%t129768129779%_
                                                    '([])
                                                    '([[head . tail] . more]))
                                             '#!void)))
                                     (let ((_%K129777129814%_
                                            (lambda () _%tails129763%_))
                                           (_%K129772129791%_
                                            (lambda (_%more129787%_
                                                     _%tail129788%_
                                                     _%head129789%_)
                                              (if (_%eq129631%_
                                                   _%head129789%_
                                                   _%next129762%_)
                                                  (set-car!
                                                   _%t129767%_
                                                   _%tail129788%_)
                                                  '#!void)
                                              (_%loop129765%_
                                               _%more129787%_))))
                                       (let ((_%try-match129770129810%_
                                              (lambda ()
                                                (if (pair? _%t129768129779%_)
                                                    (let ((_%tl129774129796%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%t129768129779%_)))
                                                          (_%hd129773129794%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%t129768129779%_))))
                                                      (if (pair? _%hd129773129794%_)
                                                          (let ((_%tl129776129801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd129773129794%_)))
                        (_%hd129775129799%_
                         (let ()
                           (declare (not safe))
                           (##car _%hd129773129794%_))))
                    (let ((_%head129804%_ _%hd129775129799%_)
                          (_%tail129806%_ _%tl129776129801%_)
                          (_%more129808%_ _%tl129774129796%_))
                      (_%K129772129791%_
                       _%more129808%_
                       _%tail129806%_
                       _%head129804%_)))
                  (_%E129771129783%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E129771129783%_)))))
                                         (if (null? _%t129768129779%_)
                                             (_%K129777129814%_)
                                             (_%try-match129770129810%_))))))))
                              (_%precedence-list129681%_
                               (let _%c3loop129712%_ ((_%rhead129714%_
                                                       _%rhead129624%_)
                                                      (_%tails129715%_
                                                       _%hpls129678%_))
                                 (let* ((_%tails129717%_
                                         (let ()
                                           (declare (not safe))
                                           (remove-nulls! _%tails129715%_)))
                                        (_%tails129718129728%_ _%tails129717%_)
                                        (_%else129721129739%_
                                         (lambda ()
                                           (let ((_%next129736%_
                                                  (_%c3-select-next129679%_
                                                   _%tails129717%_)))
                                             (_%c3loop129712%_
                                              (cons _%next129736%_
                                                    _%rhead129714%_)
                                              (_%remove-next!129680%_
                                               _%next129736%_
                                               _%tails129717%_))))))
                                   (let ((_%K129726129759%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead129714%_
                                             _%sis129670%_)))
                                         (_%K129723129745%_
                                          (lambda (_%tail129743%_)
                                            (append-reverse
                                             _%rhead129714%_
                                             (append _%tail129743%_
                                                     _%sis129670%_)))))
                                     (let ((_%try-match129720129755%_
                                            (lambda ()
                                              (if (pair? _%tails129718129728%_)
                                                  (let ((_%tl129725129750%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tails129718129728%_)))
                                                        (_%hd129724129748%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tails129718129728%_))))
                                                    (if (null? _%tl129725129750%_)
                                                        (let ((_%tail129753%_
                                                               _%hd129724129748%_))
                                                          (_%K129723129745%_
                                                           _%tail129753%_))
                                                        (_%else129721129739%_)))
                                                  (_%else129721129739%_)))))
                                       (if (null? _%tails129718129728%_)
                                           (_%K129726129759%_)
                                           (_%try-match129720129755%_)))))))
                              (_%super-struct129682%_
                               (let* ((_%sis129683129691%_ _%sis129670%_)
                                      (_%else129685129699%_ (lambda () '#f))
                                      (_%K129687129704%_
                                       (lambda (_%s129702%_) _%s129702%_)))
                                 (if (pair? _%sis129683129691%_)
                                     (let* ((_%hd129688129707%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%sis129683129691%_)))
                                            (_%s129710%_ _%hd129688129707%_))
                                       (_%K129687129704%_ _%s129710%_))
                                     (_%else129685129699%_)))))
                      (values _%precedence-list129681%_
                              _%super-struct129682%_))))))))
    (define c4-linearize__@
      (lambda (_%@@keywords130011%_ . _%args130012%_)
        (apply c4-linearize__%
               _%@@keywords130011%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords130011%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords130011%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords130011%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords130011%_
                  'get-name:
                  absent-value))
               _%args130012%_)))
    (define c4-linearize
      (lambda _%args129617130018%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args129617130018%_)))))
