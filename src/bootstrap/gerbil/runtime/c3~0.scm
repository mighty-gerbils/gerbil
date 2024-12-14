(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1734215268)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords94660%_
               _%get-precedence-list9465494661%_
               _%struct?9465594663%_
               _%eq9465694665%_
               _%get-name9465794667%_
               _%rhead94669%_
               _%supers94670%_)
        (let* ((_%get-precedence-list94672%_
                (if (eq? _%get-precedence-list9465494661%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9465494661%_))
               (_%struct?94674%_
                (if (eq? _%struct?9465594663%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9465594663%_))
               (_%eq94676%_
                (if (eq? _%eq9465694665%_ absent-value) eq? _%eq9465694665%_))
               (_%get-name94678%_
                (if (eq? _%get-name9465794667%_ absent-value)
                    identity
                    _%get-name9465794667%_)))
          (letrec* ((_%pls94681%_
                     (map _%get-precedence-list94672%_ _%supers94670%_))
                    (_%sis94682%_ '())
                    (_%get-names94683%_
                     (lambda (_%lst94965%_)
                       (map _%get-name94678%_ _%lst94965%_)))
                    (_%err94684%_
                     (lambda _%a94963%_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (_%get-names94683%_ (reverse _%rhead94669%_))
                              'precedence-lists:
                              (let ()
                                (declare (not safe))
                                (##map _%get-names94683%_ _%pls94681%_))
                              'single-inheritance-suffix:
                              (_%get-names94683%_ _%sis94682%_)
                              _%a94963%_)))
                    (_%eqlist?94685%_
                     (lambda (_%l194957%_ _%l294958%_)
                       (let ((_%$e94960%_ (eq? _%l194957%_ _%l294958%_)))
                         (if _%$e94960%_
                             _%$e94960%_
                             (if (let ()
                                   (declare (not safe))
                                   (andmap2 _%eq94676%_
                                            _%l194957%_
                                            _%l294958%_))
                                 (let ((__tmp95013 (length _%l194957%_))
                                       (__tmp95012 (length _%l294958%_)))
                                   (declare (not safe))
                                   (##fx= __tmp95013 __tmp95012))
                                 '#f)))))
                    (_%merge-sis!94686%_
                     (lambda (_%sis294940%_)
                       (if (null? _%sis294940%_)
                           '#!void
                           (if (null? _%sis94682%_)
                               (set! _%sis94682%_ _%sis294940%_)
                               (let _%loop94945%_ ((_%t194947%_ _%sis94682%_)
                                                   (_%t294948%_ _%sis294940%_))
                                 (if (_%eqlist?94685%_
                                      _%t194947%_
                                      _%sis294940%_)
                                     '#!void
                                     (if (_%eqlist?94685%_
                                          _%t294948%_
                                          _%sis94682%_)
                                         (set! _%sis94682%_ _%sis294940%_)
                                         (if (or (null? _%t194947%_)
                                                 (null? _%t294948%_))
                                             (_%err94684%_
                                              'struct-incompatibility:
                                              (cons (_%get-names94683%_
                                                     _%sis94682%_)
                                                    (cons (_%get-names94683%_
                                                           _%sis294940%_)
                                                          '())))
                                             (_%loop94945%_
                                              (cdr _%t194947%_)
                                              (cdr _%t294948%_))))))))))
                    (_%rpls94687%_
                     (let ((__tmp95014
                            (lambda (_%pl94935%_)
                              (let ((_g95015_
                                     (let ()
                                       (declare (not safe))
                                       (append-reverse-until
                                        _%struct?94674%_
                                        _%pl94935%_
                                        '()))))
                                (begin
                                  (let ((_g95016_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g95015_)
                                               (##values-length _g95015_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g95016_ 2)))
                                        (error "Context expects 2 values"
                                               _g95016_)))
                                  (let ((_%tl94937%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g95015_ 0)))
                                        (_%rh94938%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g95015_ 1))))
                                    (begin
                                      (_%merge-sis!94686%_ _%tl94937%_)
                                      _%rh94938%_)))))))
                       (declare (not safe))
                       (##map __tmp95014 _%pls94681%_)))
                    (_%unsisr-rpl94688%_
                     (lambda (_%rpl94881%_)
                       (let _%u94883%_ ((_%pl-rhead94885%_ _%rpl94881%_)
                                        (_%pl-tail94886%_ '())
                                        (_%sis-rhead94887%_
                                         (reverse _%sis94682%_))
                                        (_%sis-tail94888%_ '()))
                         (let* ((_%pl-rhead9488994898%_ _%pl-rhead94885%_)
                                (_%E9489294902%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%pl-rhead9488994898%_
                                          '([])
                                          '([c . plrh]))
                                   '#!void)))
                           (let ((_%K9489694932%_ (lambda () _%pl-tail94886%_))
                                 (_%K9489394916%_
                                  (lambda (_%plrh94906%_ _%c94907%_)
                                    (if (member _%c94907%_
                                                _%sis-tail94888%_
                                                _%eq94676%_)
                                        (_%err94684%_
                                         'precedence-list-head:
                                         (_%get-names94683%_
                                          (reverse _%pl-rhead94885%_))
                                         'precedence-list-tail:
                                         (_%get-names94683%_ _%pl-tail94886%_)
                                         'single-inheritance-head:
                                         (_%get-names94683%_
                                          (reverse _%sis-rhead94887%_))
                                         'single-inheritance-tail:
                                         (_%get-names94683%_ _%sis-tail94888%_)
                                         'super-out-of-order-vs-single-inheritance-tail:
                                         (_%get-name94678%_ _%c94907%_))
                                        (let ((_g95017_
                                               (let ((__tmp95019
                                                      (lambda (_%g9490894910%_)
                                                        (_%eq94676%_
                                                         _%c94907%_
                                                         _%g9490894910%_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp95019
                                                  _%sis-rhead94887%_
                                                  _%sis-tail94888%_))))
                                          (begin
                                            (let ((_g95018_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g95017_)
                                                         (##values-length
                                                          _g95017_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g95018_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g95018_)))
                                            (let ((_%sis-rh294913%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g95017_
                                                      0)))
                                                  (_%sis-tl294914%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g95017_
                                                      1))))
                                              (if (null? _%sis-rh294913%_)
                                                  (_%u94883%_
                                                   _%plrh94906%_
                                                   (cons _%c94907%_
                                                         _%pl-tail94886%_)
                                                   '()
                                                   _%sis-tl294914%_)
                                                  (_%u94883%_
                                                   _%plrh94906%_
                                                   _%pl-tail94886%_
                                                   (cdr _%sis-rh294913%_)
                                                   _%sis-tl294914%_)))))))))
                             (let ((_%try-match9489194928%_
                                    (lambda ()
                                      (if (pair? _%pl-rhead9488994898%_)
                                          (let ((_%tl9489594921%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%pl-rhead9488994898%_)))
                                                (_%hd9489494919%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%pl-rhead9488994898%_))))
                                            (let ((_%c94924%_ _%hd9489494919%_)
                                                  (_%plrh94926%_
                                                   _%tl9489594921%_))
                                              (_%K9489394916%_
                                               _%plrh94926%_
                                               _%c94924%_)))
                                          (_%E9489294902%_)))))
                               (if (null? _%pl-rhead9488994898%_)
                                   (_%K9489694932%_)
                                   (_%try-match9489194928%_))))))))
                    (_g95020_
                     (let ((_g95021_
                            (let ((__tmp95023 (reverse _%supers94670%_)))
                              (declare (not safe))
                              (append1! _%rpls94687%_ __tmp95023))))
                       #!void
                       _g95021_))
                    (_%hpls94689%_
                     (let ()
                       (declare (not safe))
                       (##map _%unsisr-rpl94688%_ _%rpls94687%_)))
                    (_%c3-select-next94690%_
                     (lambda (_%tails94831%_)
                       (let ((_%candidate?94837%_
                              (lambda (_%c94833%_)
                                (let ((__tmp95024
                                       (lambda (_%tail94835%_)
                                         (not (member _%c94833%_
                                                      (cdr _%tail94835%_)
                                                      _%eq94676%_)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp95024 _%tails94831%_)))))
                         (let _%loop94839%_ ((_%ts94841%_ _%tails94831%_))
                           (let* ((_%ts9484294852%_ _%ts94841%_)
                                  (_%else9484494860%_
                                   (lambda () (_%err94684%_)))
                                  (_%K9484694866%_
                                   (lambda (_%rts94863%_ _%c94864%_)
                                     (if (_%candidate?94837%_ _%c94864%_)
                                         _%c94864%_
                                         (_%loop94839%_ _%rts94863%_)))))
                             (if (pair? _%ts9484294852%_)
                                 (let ((_%hd9484794869%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%ts9484294852%_)))
                                       (_%tl9484894871%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%ts9484294852%_))))
                                   (if (pair? _%hd9484794869%_)
                                       (let* ((_%hd9484994874%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd9484794869%_)))
                                              (_%c94877%_ _%hd9484994874%_)
                                              (_%rts94879%_ _%tl9484894871%_))
                                         (_%K9484694866%_
                                          _%rts94879%_
                                          _%c94877%_))
                                       (_%err94684%_)))
                                 (_%err94684%_)))))))
                    (_%remove-next!94691%_
                     (lambda (_%next94776%_ _%tails94777%_)
                       (let _%loop94779%_ ((_%t94781%_ _%tails94777%_))
                         (let* ((_%t9478294793%_ _%t94781%_)
                                (_%E9478594797%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%t9478294793%_
                                          '([])
                                          '([[head . tail] . more]))
                                   '#!void)))
                           (let ((_%K9479194828%_ (lambda () _%tails94777%_))
                                 (_%K9478694805%_
                                  (lambda (_%more94801%_
                                           _%tail94802%_
                                           _%head94803%_)
                                    (if (_%eq94676%_
                                         _%head94803%_
                                         _%next94776%_)
                                        (set-car! _%t94781%_ _%tail94802%_)
                                        '#!void)
                                    (_%loop94779%_ _%more94801%_))))
                             (let ((_%try-match9478494824%_
                                    (lambda ()
                                      (if (pair? _%t9478294793%_)
                                          (let ((_%tl9478894810%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%t9478294793%_)))
                                                (_%hd9478794808%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%t9478294793%_))))
                                            (if (pair? _%hd9478794808%_)
                                                (let ((_%tl9479094815%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd9478794808%_)))
                                                      (_%hd9478994813%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd9478794808%_))))
                                                  (let ((_%head94818%_
                                                         _%hd9478994813%_)
                                                        (_%tail94820%_
                                                         _%tl9479094815%_)
                                                        (_%more94822%_
                                                         _%tl9478894810%_))
                                                    (_%K9478694805%_
                                                     _%more94822%_
                                                     _%tail94820%_
                                                     _%head94818%_)))
                                                (_%E9478594797%_)))
                                          (_%E9478594797%_)))))
                               (if (null? _%t9478294793%_)
                                   (_%K9479194828%_)
                                   (_%try-match9478494824%_))))))))
                    (_%precedence-list94692%_
                     (if (null? _%supers94670%_)
                         (reverse _%rhead94669%_)
                         (if (null? (cdr _%supers94670%_))
                             (append-reverse _%rhead94669%_ (car _%pls94681%_))
                             (let _%c3loop94726%_ ((_%rhead94728%_
                                                    _%rhead94669%_)
                                                   (_%tails94729%_
                                                    _%hpls94689%_))
                               (let* ((_%tails94731%_
                                       (let ()
                                         (declare (not safe))
                                         (remove-nulls! _%tails94729%_)))
                                      (_%tails9473294742%_ _%tails94731%_)
                                      (_%else9473594753%_
                                       (lambda ()
                                         (let ((_%next94750%_
                                                (_%c3-select-next94690%_
                                                 _%tails94731%_)))
                                           (_%c3loop94726%_
                                            (cons _%next94750%_ _%rhead94728%_)
                                            (_%remove-next!94691%_
                                             _%next94750%_
                                             _%tails94731%_))))))
                                 (let ((_%K9474094773%_
                                        (lambda ()
                                          (append-reverse
                                           _%rhead94728%_
                                           _%sis94682%_)))
                                       (_%K9473794759%_
                                        (lambda (_%tail94757%_)
                                          (append-reverse
                                           _%rhead94728%_
                                           (append _%tail94757%_
                                                   _%sis94682%_)))))
                                   (let ((_%try-match9473494769%_
                                          (lambda ()
                                            (if (pair? _%tails9473294742%_)
                                                (let ((_%tl9473994764%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tails9473294742%_)))
                                                      (_%hd9473894762%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tails9473294742%_))))
                                                  (if (null? _%tl9473994764%_)
                                                      (let ((_%tail94767%_
                                                             _%hd9473894762%_))
                                                        (_%K9473794759%_
                                                         _%tail94767%_))
                                                      (_%else9473594753%_)))
                                                (_%else9473594753%_)))))
                                     (if (null? _%tails9473294742%_)
                                         (_%K9474094773%_)
                                         (_%try-match9473494769%_)))))))))
                    (_%super-struct94693%_
                     (let* ((_%sis9469494702%_ _%sis94682%_)
                            (_%else9469694710%_ (lambda () '#f))
                            (_%K9469894715%_ (lambda (_%s94713%_) _%s94713%_)))
                       (if (pair? _%sis9469494702%_)
                           (let* ((_%hd9469994718%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%sis9469494702%_)))
                                  (_%s94721%_ _%hd9469994718%_))
                             (_%K9469894715%_ _%s94721%_))
                           (_%else9469694710%_)))))
            (values _%precedence-list94692%_ _%super-struct94693%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords94970%_ . _%args94971%_)
        (apply c4-linearize__%
               _%@@keywords94970%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords94970%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords94970%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords94970%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords94970%_
                  'get-name:
                  absent-value))
               _%args94971%_)))
    (define c4-linearize
      (lambda _%args9465894977%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9465894977%_)))))
