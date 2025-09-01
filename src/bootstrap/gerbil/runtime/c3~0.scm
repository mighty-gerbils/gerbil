(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1756715351)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords102341%_
               _%get-precedence-list102335102342%_
               _%struct?102336102344%_
               _%eq102337102346%_
               _%get-name102338102348%_
               _%rhead102350%_
               _%supers102351%_)
        (let* ((_%get-precedence-list102353%_
                (if (eq? _%get-precedence-list102335102342%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list102335102342%_))
               (_%struct?102355%_
                (if (eq? _%struct?102336102344%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?102336102344%_))
               (_%eq102357%_
                (if (eq? _%eq102337102346%_ absent-value)
                    eq?
                    _%eq102337102346%_))
               (_%get-name102359%_
                (if (eq? _%get-name102338102348%_ absent-value)
                    identity
                    _%get-name102338102348%_)))
          (if (null? _%supers102351%_)
              (values (reverse _%rhead102350%_) '#f)
              (if (null? (cdr _%supers102351%_))
                  (let ((_%pl102364%_
                         (_%get-precedence-list102353%_
                          (car _%supers102351%_))))
                    (values (append-reverse _%rhead102350%_ _%pl102364%_)
                            (let ()
                              (declare (not safe))
                              (find _%struct?102355%_ _%pl102364%_))))
                  (let ((_%pls102367%_
                         (map _%get-precedence-list102353%_ _%supers102351%_))
                        (_%sis102368%_ '()))
                    (letrec* ((_%get-names102370%_
                               (lambda (_%lst102647%_)
                                 (map _%get-name102359%_ _%lst102647%_)))
                              (_%err102371%_
                               (lambda _%a102645%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names102370%_
                                         (reverse _%rhead102350%_))
                                        'precedence-lists:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names102370%_
                                                 _%pls102367%_))
                                        'single-inheritance-suffix:
                                        (_%get-names102370%_ _%sis102368%_)
                                        _%a102645%_)))
                              (_%eqlist?102372%_
                               (lambda (_%l1102639%_ _%l2102640%_)
                                 (let ((_%$e102642%_
                                        (eq? _%l1102639%_ _%l2102640%_)))
                                   (if _%$e102642%_
                                       _%$e102642%_
                                       (if (let ()
                                             (declare (not safe))
                                             (andmap2 _%eq102357%_
                                                      _%l1102639%_
                                                      _%l2102640%_))
                                           (let ((__tmp102695
                                                  (length _%l1102639%_))
                                                 (__tmp102694
                                                  (length _%l2102640%_)))
                                             (declare (not safe))
                                             (##fx= __tmp102695 __tmp102694))
                                           '#f)))))
                              (_%merge-sis!102373%_
                               (lambda (_%sis2102624%_)
                                 (if (null? _%sis2102624%_)
                                     '#!void
                                     (if (null? _%sis102368%_)
                                         (set! _%sis102368%_ _%sis2102624%_)
                                         (let _%loop102629%_ ((_%t1102631%_
                                                               _%sis102368%_)
                                                              (_%t2102632%_
                                                               _%sis2102624%_))
                                           (if (_%eqlist?102372%_
                                                _%t1102631%_
                                                _%sis2102624%_)
                                               '#!void
                                               (if (_%eqlist?102372%_
                                                    _%t2102632%_
                                                    _%sis102368%_)
                                                   (set! _%sis102368%_
                                                         _%sis2102624%_)
                                                   (if (null? _%t1102631%_)
                                                       (if (member (car _%sis102368%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%t2102632%_
                           _%eq102357%_)
                   (set! _%sis102368%_ _%sis2102624%_)
                   (_%err102371%_
                    'struct-incompatibility:
                    (cons (_%get-names102370%_ _%sis102368%_)
                          (cons (_%get-names102370%_ _%sis2102624%_) '()))))
               (if (null? _%t2102632%_)
                   (if (member (car _%sis2102624%_) _%t1102631%_ _%eq102357%_)
                       '#!void
                       (_%err102371%_
                        'struct-incompatibility:
                        (cons (_%get-names102370%_ _%sis102368%_)
                              (cons (_%get-names102370%_ _%sis2102624%_)
                                    '()))))
                   (_%loop102629%_
                    (cdr _%t1102631%_)
                    (cdr _%t2102632%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%rpls102374%_
                               (let ((__tmp102696
                                      (lambda (_%pl102619%_)
                                        (let ((_g102697_
                                               (let ()
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  _%struct?102355%_
                                                  _%pl102619%_
                                                  '()))))
                                          (begin
                                            (let ((_g102698_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g102697_)
                                                         (##values-length
                                                          _g102697_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g102698_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g102698_)))
                                            (let ((_%tl102621%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g102697_
                                                      0)))
                                                  (_%rh102622%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g102697_
                                                      1))))
                                              (begin
                                                (_%merge-sis!102373%_
                                                 _%tl102621%_)
                                                _%rh102622%_)))))))
                                 (declare (not safe))
                                 (##map __tmp102696 _%pls102367%_)))
                              (_%unsisr-rpl102375%_
                               (lambda (_%rpl102565%_)
                                 (let _%u102567%_ ((_%pl-rhead102569%_
                                                    _%rpl102565%_)
                                                   (_%pl-tail102570%_ '())
                                                   (_%sis-rhead102571%_
                                                    (reverse _%sis102368%_))
                                                   (_%sis-tail102572%_ '()))
                                   (let* ((_%pl-rhead102573102582%_
                                           _%pl-rhead102569%_)
                                          (_%E102576102586%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%pl-rhead102573102582%_
                                                    '([])
                                                    '([c . plrh]))
                                             '#!void)))
                                     (let ((_%K102580102616%_
                                            (lambda () _%pl-tail102570%_))
                                           (_%K102577102600%_
                                            (lambda (_%plrh102590%_
                                                     _%c102591%_)
                                              (if (member _%c102591%_
                                                          _%sis-tail102572%_
                                                          _%eq102357%_)
                                                  (_%err102371%_
                                                   'precedence-list-head:
                                                   (_%get-names102370%_
                                                    (reverse _%pl-rhead102569%_))
                                                   'precedence-list-tail:
                                                   (_%get-names102370%_
                                                    _%pl-tail102570%_)
                                                   'single-inheritance-head:
                                                   (_%get-names102370%_
                                                    (reverse _%sis-rhead102571%_))
                                                   'single-inheritance-tail:
                                                   (_%get-names102370%_
                                                    _%sis-tail102572%_)
                                                   'super-out-of-order-vs-single-inheritance-tail:
                                                   (_%get-name102359%_
                                                    _%c102591%_))
                                                  (let ((_g102699_
                                                         (let ((__tmp102701
                                                                (lambda (_%g102592102594%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%eq102357%_ _%c102591%_ _%g102592102594%_))))
                   (declare (not safe))
                   (__append-reverse-until
                    __tmp102701
                    _%sis-rhead102571%_
                    _%sis-tail102572%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g102700_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g102699_)
                           (##values-length _g102699_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g102700_ 2)))
                    (error "Context expects 2 values" _g102700_)))
              (let ((_%sis-rh2102597%_
                     (let () (declare (not safe)) (##values-ref _g102699_ 0)))
                    (_%sis-tl2102598%_
                     (let () (declare (not safe)) (##values-ref _g102699_ 1))))
                (if (null? _%sis-rh2102597%_)
                    (_%u102567%_
                     _%plrh102590%_
                     (cons _%c102591%_ _%pl-tail102570%_)
                     '()
                     _%sis-tl2102598%_)
                    (_%u102567%_
                     _%plrh102590%_
                     _%pl-tail102570%_
                     (cdr _%sis-rh2102597%_)
                     _%sis-tl2102598%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%try-match102575102612%_
                                              (lambda ()
                                                (if (pair? _%pl-rhead102573102582%_)
                                                    (let ((_%tl102579102605%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%pl-rhead102573102582%_)))
                                                          (_%hd102578102603%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%pl-rhead102573102582%_))))
                                                      (let ((_%c102608%_
                                                             _%hd102578102603%_)
                                                            (_%plrh102610%_
                                                             _%tl102579102605%_))
                                                        (_%K102577102600%_
                                                         _%plrh102610%_
                                                         _%c102608%_)))
                                                    (_%E102576102586%_)))))
                                         (if (null? _%pl-rhead102573102582%_)
                                             (_%K102580102616%_)
                                             (_%try-match102575102612%_))))))))
                              (_g102702_
                               (let ((_g102703_
                                      (let ((__tmp102705
                                             (reverse _%supers102351%_)))
                                        (declare (not safe))
                                        (append1!
                                         _%rpls102374%_
                                         __tmp102705))))
                                 #!void
                                 _g102703_))
                              (_%hpls102376%_
                               (let ()
                                 (declare (not safe))
                                 (##map _%unsisr-rpl102375%_ _%rpls102374%_)))
                              (_%c3-select-next102377%_
                               (lambda (_%tails102515%_)
                                 (let ((_%candidate?102521%_
                                        (lambda (_%c102517%_)
                                          (let ((__tmp102706
                                                 (lambda (_%tail102519%_)
                                                   (not (member _%c102517%_
                                                                (cdr _%tail102519%_)
                                                                _%eq102357%_)))))
                                            (declare (not safe))
                                            (__andmap1
                                             __tmp102706
                                             _%tails102515%_)))))
                                   (let _%loop102523%_ ((_%ts102525%_
                                                         _%tails102515%_))
                                     (let* ((_%ts102526102536%_ _%ts102525%_)
                                            (_%else102528102544%_
                                             (lambda () (_%err102371%_)))
                                            (_%K102530102550%_
                                             (lambda (_%rts102547%_
                                                      _%c102548%_)
                                               (if (_%candidate?102521%_
                                                    _%c102548%_)
                                                   _%c102548%_
                                                   (_%loop102523%_
                                                    _%rts102547%_)))))
                                       (if (pair? _%ts102526102536%_)
                                           (let ((_%hd102531102553%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%ts102526102536%_)))
                                                 (_%tl102532102555%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%ts102526102536%_))))
                                             (if (pair? _%hd102531102553%_)
                                                 (let* ((_%hd102533102558%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%hd102531102553%_)))
                                                        (_%c102561%_
                                                         _%hd102533102558%_)
                                                        (_%rts102563%_
                                                         _%tl102532102555%_))
                                                   (_%K102530102550%_
                                                    _%rts102563%_
                                                    _%c102561%_))
                                                 (_%err102371%_)))
                                           (_%err102371%_)))))))
                              (_%remove-next!102378%_
                               (lambda (_%next102460%_ _%tails102461%_)
                                 (let _%loop102463%_ ((_%t102465%_
                                                       _%tails102461%_))
                                   (let* ((_%t102466102477%_ _%t102465%_)
                                          (_%E102469102481%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%t102466102477%_
                                                    '([])
                                                    '([[head . tail] . more]))
                                             '#!void)))
                                     (let ((_%K102475102512%_
                                            (lambda () _%tails102461%_))
                                           (_%K102470102489%_
                                            (lambda (_%more102485%_
                                                     _%tail102486%_
                                                     _%head102487%_)
                                              (if (_%eq102357%_
                                                   _%head102487%_
                                                   _%next102460%_)
                                                  (set-car!
                                                   _%t102465%_
                                                   _%tail102486%_)
                                                  '#!void)
                                              (_%loop102463%_
                                               _%more102485%_))))
                                       (let ((_%try-match102468102508%_
                                              (lambda ()
                                                (if (pair? _%t102466102477%_)
                                                    (let ((_%tl102472102494%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%t102466102477%_)))
                                                          (_%hd102471102492%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%t102466102477%_))))
                                                      (if (pair? _%hd102471102492%_)
                                                          (let ((_%tl102474102499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd102471102492%_)))
                        (_%hd102473102497%_
                         (let ()
                           (declare (not safe))
                           (##car _%hd102471102492%_))))
                    (let ((_%head102502%_ _%hd102473102497%_)
                          (_%tail102504%_ _%tl102474102499%_)
                          (_%more102506%_ _%tl102472102494%_))
                      (_%K102470102489%_
                       _%more102506%_
                       _%tail102504%_
                       _%head102502%_)))
                  (_%E102469102481%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E102469102481%_)))))
                                         (if (null? _%t102466102477%_)
                                             (_%K102475102512%_)
                                             (_%try-match102468102508%_))))))))
                              (_%precedence-list102379%_
                               (let _%c3loop102410%_ ((_%rhead102412%_
                                                       _%rhead102350%_)
                                                      (_%tails102413%_
                                                       _%hpls102376%_))
                                 (let* ((_%tails102415%_
                                         (let ()
                                           (declare (not safe))
                                           (remove-nulls! _%tails102413%_)))
                                        (_%tails102416102426%_ _%tails102415%_)
                                        (_%else102419102437%_
                                         (lambda ()
                                           (let ((_%next102434%_
                                                  (_%c3-select-next102377%_
                                                   _%tails102415%_)))
                                             (_%c3loop102410%_
                                              (cons _%next102434%_
                                                    _%rhead102412%_)
                                              (_%remove-next!102378%_
                                               _%next102434%_
                                               _%tails102415%_))))))
                                   (let ((_%K102424102457%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead102412%_
                                             _%sis102368%_)))
                                         (_%K102421102443%_
                                          (lambda (_%tail102441%_)
                                            (append-reverse
                                             _%rhead102412%_
                                             (append _%tail102441%_
                                                     _%sis102368%_)))))
                                     (let ((_%try-match102418102453%_
                                            (lambda ()
                                              (if (pair? _%tails102416102426%_)
                                                  (let ((_%tl102423102448%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tails102416102426%_)))
                                                        (_%hd102422102446%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tails102416102426%_))))
                                                    (if (null? _%tl102423102448%_)
                                                        (let ((_%tail102451%_
                                                               _%hd102422102446%_))
                                                          (_%K102421102443%_
                                                           _%tail102451%_))
                                                        (_%else102419102437%_)))
                                                  (_%else102419102437%_)))))
                                       (if (null? _%tails102416102426%_)
                                           (_%K102424102457%_)
                                           (_%try-match102418102453%_)))))))
                              (_%super-struct102380%_
                               (let* ((_%sis102381102389%_ _%sis102368%_)
                                      (_%else102383102397%_ (lambda () '#f))
                                      (_%K102385102402%_
                                       (lambda (_%s102400%_) _%s102400%_)))
                                 (if (pair? _%sis102381102389%_)
                                     (let* ((_%hd102386102405%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%sis102381102389%_)))
                                            (_%s102408%_ _%hd102386102405%_))
                                       (_%K102385102402%_ _%s102408%_))
                                     (_%else102383102397%_)))))
                      (values _%precedence-list102379%_
                              _%super-struct102380%_))))))))
    (define c4-linearize__@
      (lambda (_%@@keywords102652%_ . _%args102653%_)
        (apply c4-linearize__%
               _%@@keywords102652%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords102652%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords102652%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords102652%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords102652%_
                  'get-name:
                  absent-value))
               _%args102653%_)))
    (define c4-linearize
      (lambda _%args102339102659%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args102339102659%_)))))
