(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1756721294)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords102339%_
               _%get-precedence-list102333102340%_
               _%struct?102334102342%_
               _%eq102335102344%_
               _%get-name102336102346%_
               _%rhead102348%_
               _%supers102349%_)
        (let* ((_%get-precedence-list102351%_
                (if (eq? _%get-precedence-list102333102340%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list102333102340%_))
               (_%struct?102353%_
                (if (eq? _%struct?102334102342%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?102334102342%_))
               (_%eq102355%_
                (if (eq? _%eq102335102344%_ absent-value)
                    eq?
                    _%eq102335102344%_))
               (_%get-name102357%_
                (if (eq? _%get-name102336102346%_ absent-value)
                    identity
                    _%get-name102336102346%_)))
          (if (null? _%supers102349%_)
              (values (reverse _%rhead102348%_) '#f)
              (if (null? (cdr _%supers102349%_))
                  (let ((_%pl102362%_
                         (_%get-precedence-list102351%_
                          (car _%supers102349%_))))
                    (values (append-reverse _%rhead102348%_ _%pl102362%_)
                            (let ()
                              (declare (not safe))
                              (find _%struct?102353%_ _%pl102362%_))))
                  (let ((_%pls102365%_
                         (map _%get-precedence-list102351%_ _%supers102349%_))
                        (_%sis102366%_ '()))
                    (letrec* ((_%get-names102368%_
                               (lambda (_%lst102645%_)
                                 (map _%get-name102357%_ _%lst102645%_)))
                              (_%err102369%_
                               (lambda _%a102643%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names102368%_
                                         (reverse _%rhead102348%_))
                                        'precedence-lists:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names102368%_
                                                 _%pls102365%_))
                                        'single-inheritance-suffix:
                                        (_%get-names102368%_ _%sis102366%_)
                                        _%a102643%_)))
                              (_%eqlist?102370%_
                               (lambda (_%l1102637%_ _%l2102638%_)
                                 (let ((_%$e102640%_
                                        (eq? _%l1102637%_ _%l2102638%_)))
                                   (if _%$e102640%_
                                       _%$e102640%_
                                       (if (let ()
                                             (declare (not safe))
                                             (andmap2 _%eq102355%_
                                                      _%l1102637%_
                                                      _%l2102638%_))
                                           (let ((__tmp102693
                                                  (length _%l1102637%_))
                                                 (__tmp102692
                                                  (length _%l2102638%_)))
                                             (declare (not safe))
                                             (##fx= __tmp102693 __tmp102692))
                                           '#f)))))
                              (_%merge-sis!102371%_
                               (lambda (_%sis2102622%_)
                                 (if (null? _%sis2102622%_)
                                     '#!void
                                     (if (null? _%sis102366%_)
                                         (set! _%sis102366%_ _%sis2102622%_)
                                         (let _%loop102627%_ ((_%t1102629%_
                                                               _%sis102366%_)
                                                              (_%t2102630%_
                                                               _%sis2102622%_))
                                           (if (_%eqlist?102370%_
                                                _%t1102629%_
                                                _%sis2102622%_)
                                               '#!void
                                               (if (_%eqlist?102370%_
                                                    _%t2102630%_
                                                    _%sis102366%_)
                                                   (set! _%sis102366%_
                                                         _%sis2102622%_)
                                                   (if (null? _%t1102629%_)
                                                       (if (member (car _%sis102366%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%t2102630%_
                           _%eq102355%_)
                   (set! _%sis102366%_ _%sis2102622%_)
                   (_%err102369%_
                    'struct-incompatibility:
                    (cons (_%get-names102368%_ _%sis102366%_)
                          (cons (_%get-names102368%_ _%sis2102622%_) '()))))
               (if (null? _%t2102630%_)
                   (if (member (car _%sis2102622%_) _%t1102629%_ _%eq102355%_)
                       '#!void
                       (_%err102369%_
                        'struct-incompatibility:
                        (cons (_%get-names102368%_ _%sis102366%_)
                              (cons (_%get-names102368%_ _%sis2102622%_)
                                    '()))))
                   (_%loop102627%_
                    (cdr _%t1102629%_)
                    (cdr _%t2102630%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%rpls102372%_
                               (let ((__tmp102694
                                      (lambda (_%pl102617%_)
                                        (let ((_g102695_
                                               (let ()
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  _%struct?102353%_
                                                  _%pl102617%_
                                                  '()))))
                                          (begin
                                            (let ((_g102696_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g102695_)
                                                         (##values-length
                                                          _g102695_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g102696_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g102696_)))
                                            (let ((_%tl102619%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g102695_
                                                      0)))
                                                  (_%rh102620%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g102695_
                                                      1))))
                                              (begin
                                                (_%merge-sis!102371%_
                                                 _%tl102619%_)
                                                _%rh102620%_)))))))
                                 (declare (not safe))
                                 (##map __tmp102694 _%pls102365%_)))
                              (_%unsisr-rpl102373%_
                               (lambda (_%rpl102563%_)
                                 (let _%u102565%_ ((_%pl-rhead102567%_
                                                    _%rpl102563%_)
                                                   (_%pl-tail102568%_ '())
                                                   (_%sis-rhead102569%_
                                                    (reverse _%sis102366%_))
                                                   (_%sis-tail102570%_ '()))
                                   (let* ((_%pl-rhead102571102580%_
                                           _%pl-rhead102567%_)
                                          (_%E102574102584%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%pl-rhead102571102580%_
                                                    '([])
                                                    '([c . plrh]))
                                             '#!void)))
                                     (let ((_%K102578102614%_
                                            (lambda () _%pl-tail102568%_))
                                           (_%K102575102598%_
                                            (lambda (_%plrh102588%_
                                                     _%c102589%_)
                                              (if (member _%c102589%_
                                                          _%sis-tail102570%_
                                                          _%eq102355%_)
                                                  (_%err102369%_
                                                   'precedence-list-head:
                                                   (_%get-names102368%_
                                                    (reverse _%pl-rhead102567%_))
                                                   'precedence-list-tail:
                                                   (_%get-names102368%_
                                                    _%pl-tail102568%_)
                                                   'single-inheritance-head:
                                                   (_%get-names102368%_
                                                    (reverse _%sis-rhead102569%_))
                                                   'single-inheritance-tail:
                                                   (_%get-names102368%_
                                                    _%sis-tail102570%_)
                                                   'super-out-of-order-vs-single-inheritance-tail:
                                                   (_%get-name102357%_
                                                    _%c102589%_))
                                                  (let ((_g102697_
                                                         (let ((__tmp102699
                                                                (lambda (_%g102590102592%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%eq102355%_ _%c102589%_ _%g102590102592%_))))
                   (declare (not safe))
                   (__append-reverse-until
                    __tmp102699
                    _%sis-rhead102569%_
                    _%sis-tail102570%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g102698_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g102697_)
                           (##values-length _g102697_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g102698_ 2)))
                    (error "Context expects 2 values" _g102698_)))
              (let ((_%sis-rh2102595%_
                     (let () (declare (not safe)) (##values-ref _g102697_ 0)))
                    (_%sis-tl2102596%_
                     (let () (declare (not safe)) (##values-ref _g102697_ 1))))
                (if (null? _%sis-rh2102595%_)
                    (_%u102565%_
                     _%plrh102588%_
                     (cons _%c102589%_ _%pl-tail102568%_)
                     '()
                     _%sis-tl2102596%_)
                    (_%u102565%_
                     _%plrh102588%_
                     _%pl-tail102568%_
                     (cdr _%sis-rh2102595%_)
                     _%sis-tl2102596%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%try-match102573102610%_
                                              (lambda ()
                                                (if (pair? _%pl-rhead102571102580%_)
                                                    (let ((_%tl102577102603%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%pl-rhead102571102580%_)))
                                                          (_%hd102576102601%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%pl-rhead102571102580%_))))
                                                      (let ((_%c102606%_
                                                             _%hd102576102601%_)
                                                            (_%plrh102608%_
                                                             _%tl102577102603%_))
                                                        (_%K102575102598%_
                                                         _%plrh102608%_
                                                         _%c102606%_)))
                                                    (_%E102574102584%_)))))
                                         (if (null? _%pl-rhead102571102580%_)
                                             (_%K102578102614%_)
                                             (_%try-match102573102610%_))))))))
                              (_g102700_
                               (let ((_g102701_
                                      (let ((__tmp102703
                                             (reverse _%supers102349%_)))
                                        (declare (not safe))
                                        (append1!
                                         _%rpls102372%_
                                         __tmp102703))))
                                 #!void
                                 _g102701_))
                              (_%hpls102374%_
                               (let ()
                                 (declare (not safe))
                                 (##map _%unsisr-rpl102373%_ _%rpls102372%_)))
                              (_%c3-select-next102375%_
                               (lambda (_%tails102513%_)
                                 (let ((_%candidate?102519%_
                                        (lambda (_%c102515%_)
                                          (let ((__tmp102704
                                                 (lambda (_%tail102517%_)
                                                   (not (member _%c102515%_
                                                                (cdr _%tail102517%_)
                                                                _%eq102355%_)))))
                                            (declare (not safe))
                                            (__andmap1
                                             __tmp102704
                                             _%tails102513%_)))))
                                   (let _%loop102521%_ ((_%ts102523%_
                                                         _%tails102513%_))
                                     (let* ((_%ts102524102534%_ _%ts102523%_)
                                            (_%else102526102542%_
                                             (lambda () (_%err102369%_)))
                                            (_%K102528102548%_
                                             (lambda (_%rts102545%_
                                                      _%c102546%_)
                                               (if (_%candidate?102519%_
                                                    _%c102546%_)
                                                   _%c102546%_
                                                   (_%loop102521%_
                                                    _%rts102545%_)))))
                                       (if (pair? _%ts102524102534%_)
                                           (let ((_%hd102529102551%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%ts102524102534%_)))
                                                 (_%tl102530102553%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%ts102524102534%_))))
                                             (if (pair? _%hd102529102551%_)
                                                 (let* ((_%hd102531102556%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%hd102529102551%_)))
                                                        (_%c102559%_
                                                         _%hd102531102556%_)
                                                        (_%rts102561%_
                                                         _%tl102530102553%_))
                                                   (_%K102528102548%_
                                                    _%rts102561%_
                                                    _%c102559%_))
                                                 (_%err102369%_)))
                                           (_%err102369%_)))))))
                              (_%remove-next!102376%_
                               (lambda (_%next102458%_ _%tails102459%_)
                                 (let _%loop102461%_ ((_%t102463%_
                                                       _%tails102459%_))
                                   (let* ((_%t102464102475%_ _%t102463%_)
                                          (_%E102467102479%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%t102464102475%_
                                                    '([])
                                                    '([[head . tail] . more]))
                                             '#!void)))
                                     (let ((_%K102473102510%_
                                            (lambda () _%tails102459%_))
                                           (_%K102468102487%_
                                            (lambda (_%more102483%_
                                                     _%tail102484%_
                                                     _%head102485%_)
                                              (if (_%eq102355%_
                                                   _%head102485%_
                                                   _%next102458%_)
                                                  (set-car!
                                                   _%t102463%_
                                                   _%tail102484%_)
                                                  '#!void)
                                              (_%loop102461%_
                                               _%more102483%_))))
                                       (let ((_%try-match102466102506%_
                                              (lambda ()
                                                (if (pair? _%t102464102475%_)
                                                    (let ((_%tl102470102492%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%t102464102475%_)))
                                                          (_%hd102469102490%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%t102464102475%_))))
                                                      (if (pair? _%hd102469102490%_)
                                                          (let ((_%tl102472102497%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd102469102490%_)))
                        (_%hd102471102495%_
                         (let ()
                           (declare (not safe))
                           (##car _%hd102469102490%_))))
                    (let ((_%head102500%_ _%hd102471102495%_)
                          (_%tail102502%_ _%tl102472102497%_)
                          (_%more102504%_ _%tl102470102492%_))
                      (_%K102468102487%_
                       _%more102504%_
                       _%tail102502%_
                       _%head102500%_)))
                  (_%E102467102479%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E102467102479%_)))))
                                         (if (null? _%t102464102475%_)
                                             (_%K102473102510%_)
                                             (_%try-match102466102506%_))))))))
                              (_%precedence-list102377%_
                               (let _%c3loop102408%_ ((_%rhead102410%_
                                                       _%rhead102348%_)
                                                      (_%tails102411%_
                                                       _%hpls102374%_))
                                 (let* ((_%tails102413%_
                                         (let ()
                                           (declare (not safe))
                                           (remove-nulls! _%tails102411%_)))
                                        (_%tails102414102424%_ _%tails102413%_)
                                        (_%else102417102435%_
                                         (lambda ()
                                           (let ((_%next102432%_
                                                  (_%c3-select-next102375%_
                                                   _%tails102413%_)))
                                             (_%c3loop102408%_
                                              (cons _%next102432%_
                                                    _%rhead102410%_)
                                              (_%remove-next!102376%_
                                               _%next102432%_
                                               _%tails102413%_))))))
                                   (let ((_%K102422102455%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead102410%_
                                             _%sis102366%_)))
                                         (_%K102419102441%_
                                          (lambda (_%tail102439%_)
                                            (append-reverse
                                             _%rhead102410%_
                                             (append _%tail102439%_
                                                     _%sis102366%_)))))
                                     (let ((_%try-match102416102451%_
                                            (lambda ()
                                              (if (pair? _%tails102414102424%_)
                                                  (let ((_%tl102421102446%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tails102414102424%_)))
                                                        (_%hd102420102444%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tails102414102424%_))))
                                                    (if (null? _%tl102421102446%_)
                                                        (let ((_%tail102449%_
                                                               _%hd102420102444%_))
                                                          (_%K102419102441%_
                                                           _%tail102449%_))
                                                        (_%else102417102435%_)))
                                                  (_%else102417102435%_)))))
                                       (if (null? _%tails102414102424%_)
                                           (_%K102422102455%_)
                                           (_%try-match102416102451%_)))))))
                              (_%super-struct102378%_
                               (let* ((_%sis102379102387%_ _%sis102366%_)
                                      (_%else102381102395%_ (lambda () '#f))
                                      (_%K102383102400%_
                                       (lambda (_%s102398%_) _%s102398%_)))
                                 (if (pair? _%sis102379102387%_)
                                     (let* ((_%hd102384102403%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%sis102379102387%_)))
                                            (_%s102406%_ _%hd102384102403%_))
                                       (_%K102383102400%_ _%s102406%_))
                                     (_%else102381102395%_)))))
                      (values _%precedence-list102377%_
                              _%super-struct102378%_))))))))
    (define c4-linearize__@
      (lambda (_%@@keywords102650%_ . _%args102651%_)
        (apply c4-linearize__%
               _%@@keywords102650%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords102650%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords102650%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords102650%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords102650%_
                  'get-name:
                  absent-value))
               _%args102651%_)))
    (define c4-linearize
      (lambda _%args102337102657%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args102337102657%_)))))
