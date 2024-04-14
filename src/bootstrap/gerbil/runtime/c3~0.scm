(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1713453198)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords93313%_
               _%get-precedence-list9330793314%_
               _%struct?9330893316%_
               _%eq9330993318%_
               _%get-name9331093320%_
               _%rhead93322%_
               _%supers93323%_)
        (let* ((_%get-precedence-list93325%_
                (if (eq? _%get-precedence-list9330793314%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9330793314%_))
               (_%struct?93327%_
                (if (eq? _%struct?9330893316%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9330893316%_))
               (_%eq93329%_
                (if (eq? _%eq9330993318%_ absent-value) eq? _%eq9330993318%_))
               (_%get-name93331%_
                (if (eq? _%get-name9331093320%_ absent-value)
                    identity
                    _%get-name9331093320%_)))
          (letrec* ((_%pls93334%_
                     (map _%get-precedence-list93325%_ _%supers93323%_))
                    (_%sit93335%_ '())
                    (_%get-names93336%_
                     (lambda (_%lst93611%_)
                       (map _%get-name93331%_ _%lst93611%_)))
                    (_%err93337%_
                     (lambda _%a93609%_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (_%get-names93336%_ (reverse _%rhead93322%_))
                              'precedence-lists:
                              (let ()
                                (declare (not safe))
                                (##map _%get-names93336%_ _%pls93334%_))
                              'single-inheritance-tail:
                              (_%get-names93336%_ _%sit93335%_)
                              _%a93609%_)))
                    (_%same?93338%_
                     (lambda (_%lst193606%_ _%lst293607%_)
                       (if (let ((__tmp93659 (length _%lst193606%_))
                                 (__tmp93658 (length _%lst293607%_)))
                             (declare (not safe))
                             (##fx= __tmp93659 __tmp93658))
                           (let ()
                             (declare (not safe))
                             (andmap2 _%eq93329%_ _%lst193606%_ _%lst293607%_))
                           '#f)))
                    (_%merge-sit!93339%_
                     (lambda (_%sit293589%_)
                       (if (null? _%sit293589%_)
                           '#!void
                           (if (null? _%sit93335%_)
                               (set! _%sit93335%_ _%sit293589%_)
                               (let _%loop93594%_ ((_%t193596%_ _%sit93335%_)
                                                   (_%t293597%_ _%sit293589%_))
                                 (if (_%same?93338%_ _%t193596%_ _%sit293589%_)
                                     '#!void
                                     (if (_%same?93338%_
                                          _%t293597%_
                                          _%sit93335%_)
                                         (set! _%sit93335%_ _%sit293589%_)
                                         (if (or (null? _%t193596%_)
                                                 (null? _%t293597%_))
                                             (_%err93337%_
                                              'single-inheritance-incompatibility:
                                              (cons (_%get-names93336%_
                                                     _%sit93335%_)
                                                    (cons (_%get-names93336%_
                                                           _%sit293589%_)
                                                          '())))
                                             (_%loop93594%_
                                              (cdr _%t193596%_)
                                              (cdr _%t293597%_))))))))))
                    (_%rpls93340%_
                     (let ((__tmp93660
                            (lambda (_%pl93584%_)
                              (let ((_g93661_
                                     (let ()
                                       (declare (not safe))
                                       (append-reverse-until
                                        _%struct?93327%_
                                        _%pl93584%_
                                        '()))))
                                (begin
                                  (let ((_g93662_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g93661_)
                                               (##vector-length _g93661_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g93662_ 2)))
                                        (error "Context expects 2 values"
                                               _g93662_)))
                                  (let ((_%tl93586%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g93661_ 0)))
                                        (_%rh93587%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g93661_ 1))))
                                    (begin
                                      (_%merge-sit!93339%_ _%tl93586%_)
                                      _%rh93587%_)))))))
                       (declare (not safe))
                       (##map __tmp93660 _%pls93334%_)))
                    (_%unsitr-rpl93341%_
                     (lambda (_%rpl93530%_)
                       (let _%u93532%_ ((_%pl-rhead93534%_ _%rpl93530%_)
                                        (_%pl-tail93535%_ '())
                                        (_%sit-rhead93536%_
                                         (reverse _%sit93335%_))
                                        (_%sit-tail93537%_ '()))
                         (let* ((_%pl-rhead9353893547%_ _%pl-rhead93534%_)
                                (_%E9354193551%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%pl-rhead9353893547%_
                                          '([])
                                          '([c . plrh]))
                                   '#!void)))
                           (let ((_%K9354593581%_ (lambda () _%pl-tail93535%_))
                                 (_%K9354293565%_
                                  (lambda (_%plrh93555%_ _%c93556%_)
                                    (if (member _%c93556%_
                                                _%sit-tail93537%_
                                                _%eq93329%_)
                                        (_%err93337%_
                                         'precedence-list-head:
                                         (_%get-names93336%_
                                          (reverse _%pl-rhead93534%_))
                                         'precedence-list-tail:
                                         (_%get-names93336%_ _%pl-tail93535%_)
                                         'single-inheritance-head:
                                         (_%get-names93336%_
                                          (reverse _%sit-rhead93536%_))
                                         'single-inheritance-tail:
                                         (_%get-names93336%_ _%sit-tail93537%_)
                                         'super-out-of-order-vs-single-inheritance-tail:
                                         (_%get-name93331%_ _%c93556%_))
                                        (let ((_g93663_
                                               (let ((__tmp93665
                                                      (lambda (_%g9355793559%_)
                                                        (_%eq93329%_
                                                         _%c93556%_
                                                         _%g9355793559%_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp93665
                                                  _%sit-rhead93536%_
                                                  _%sit-tail93537%_))))
                                          (begin
                                            (let ((_g93664_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g93663_)
                                                         (##vector-length
                                                          _g93663_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g93664_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g93664_)))
                                            (let ((_%sit-rh293562%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g93663_
                                                      0)))
                                                  (_%sit-tl293563%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g93663_
                                                      1))))
                                              (if (null? _%sit-rh293562%_)
                                                  (_%u93532%_
                                                   _%plrh93555%_
                                                   (cons _%c93556%_
                                                         _%pl-tail93535%_)
                                                   '()
                                                   _%sit-tl293563%_)
                                                  (_%u93532%_
                                                   _%plrh93555%_
                                                   _%pl-tail93535%_
                                                   (cdr _%sit-rh293562%_)
                                                   _%sit-tl293563%_)))))))))
                             (let ((_%try-match9354093577%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%pl-rhead9353893547%_))
                                          (let ((_%tl9354493570%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%pl-rhead9353893547%_)))
                                                (_%hd9354393568%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%pl-rhead9353893547%_))))
                                            (let ((_%c93573%_ _%hd9354393568%_)
                                                  (_%plrh93575%_
                                                   _%tl9354493570%_))
                                              (_%K9354293565%_
                                               _%plrh93575%_
                                               _%c93573%_)))
                                          (_%E9354193551%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%pl-rhead9353893547%_))
                                   (_%K9354593581%_)
                                   (_%try-match9354093577%_))))))))
                    (_g93666_
                     (let ((_g93667_
                            (let ((__tmp93669 (reverse _%supers93323%_)))
                              (declare (not safe))
                              (append1! _%rpls93340%_ __tmp93669))))
                       #!void
                       _g93667_))
                    (_g93670_
                     (let ((_g93671_
                            (set! _%pls93334%_
                                  (let ()
                                    (declare (not safe))
                                    (##map _%unsitr-rpl93341%_
                                           _%rpls93340%_)))))
                       #!void
                       _g93671_))
                    (_%c3-select-next93342%_
                     (lambda (_%tails93480%_)
                       (let ((_%candidate?93486%_
                              (lambda (_%c93482%_)
                                (let ((__tmp93673
                                       (lambda (_%tail93484%_)
                                         (not (member _%c93482%_
                                                      (cdr _%tail93484%_)
                                                      _%eq93329%_)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp93673 _%tails93480%_)))))
                         (let _%loop93488%_ ((_%ts93490%_ _%tails93480%_))
                           (let* ((_%ts9349193501%_ _%ts93490%_)
                                  (_%else9349393509%_
                                   (lambda () (_%err93337%_)))
                                  (_%K9349593515%_
                                   (lambda (_%rts93512%_ _%c93513%_)
                                     (if (_%candidate?93486%_ _%c93513%_)
                                         _%c93513%_
                                         (_%loop93488%_ _%rts93512%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%ts9349193501%_))
                                 (let ((_%hd9349693518%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%ts9349193501%_)))
                                       (_%tl9349793520%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%ts9349193501%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%hd9349693518%_))
                                       (let* ((_%hd9349893523%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd9349693518%_)))
                                              (_%c93526%_ _%hd9349893523%_)
                                              (_%rts93528%_ _%tl9349793520%_))
                                         (_%K9349593515%_
                                          _%rts93528%_
                                          _%c93526%_))
                                       (_%err93337%_)))
                                 (_%err93337%_)))))))
                    (_%remove-next!93343%_
                     (lambda (_%next93425%_ _%tails93426%_)
                       (let _%loop93428%_ ((_%t93430%_ _%tails93426%_))
                         (let* ((_%t9343193442%_ _%t93430%_)
                                (_%E9343493446%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%t9343193442%_
                                          '([])
                                          '([[head . tail] . more]))
                                   '#!void)))
                           (let ((_%K9344093477%_ (lambda () _%tails93426%_))
                                 (_%K9343593454%_
                                  (lambda (_%more93450%_
                                           _%tail93451%_
                                           _%head93452%_)
                                    (if (_%eq93329%_
                                         _%head93452%_
                                         _%next93425%_)
                                        (set-car! _%t93430%_ _%tail93451%_)
                                        '#!void)
                                    (_%loop93428%_ _%more93450%_))))
                             (let ((_%try-match9343393473%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%t9343193442%_))
                                          (let ((_%tl9343793459%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%t9343193442%_)))
                                                (_%hd9343693457%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%t9343193442%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd9343693457%_))
                                                (let ((_%tl9343993464%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd9343693457%_)))
                                                      (_%hd9343893462%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd9343693457%_))))
                                                  (let ((_%head93467%_
                                                         _%hd9343893462%_)
                                                        (_%tail93469%_
                                                         _%tl9343993464%_)
                                                        (_%more93471%_
                                                         _%tl9343793459%_))
                                                    (_%K9343593454%_
                                                     _%more93471%_
                                                     _%tail93469%_
                                                     _%head93467%_)))
                                                (_%E9343493446%_)))
                                          (_%E9343493446%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%t9343193442%_))
                                   (_%K9344093477%_)
                                   (_%try-match9343393473%_))))))))
                    (_%precedence-list93344%_
                     (let _%c3loop93375%_ ((_%rhead93377%_ _%rhead93322%_)
                                           (_%tails93378%_ _%pls93334%_))
                       (let* ((_%tails93380%_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _%tails93378%_)))
                              (_%tails9338193391%_ _%tails93380%_)
                              (_%else9338493402%_
                               (lambda ()
                                 (let ((_%next93399%_
                                        (_%c3-select-next93342%_
                                         _%tails93380%_)))
                                   (_%c3loop93375%_
                                    (cons _%next93399%_ _%rhead93377%_)
                                    (_%remove-next!93343%_
                                     _%next93399%_
                                     _%tails93380%_))))))
                         (let ((_%K9338993422%_
                                (lambda ()
                                  (append-reverse
                                   _%rhead93377%_
                                   _%sit93335%_)))
                               (_%K9338693408%_
                                (lambda (_%tail93406%_)
                                  (append-reverse
                                   _%rhead93377%_
                                   (append _%tail93406%_ _%sit93335%_)))))
                           (let ((_%try-match9338393418%_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tails9338193391%_))
                                        (let ((_%tl9338893413%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tails9338193391%_)))
                                              (_%hd9338793411%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tails9338193391%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl9338893413%_))
                                              (let ((_%tail93416%_
                                                     _%hd9338793411%_))
                                                (_%K9338693408%_
                                                 _%tail93416%_))
                                              (_%else9338493402%_)))
                                        (_%else9338493402%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tails9338193391%_))
                                 (_%K9338993422%_)
                                 (_%try-match9338393418%_)))))))
                    (_%super-struct93345%_
                     (let* ((_%sit9334693354%_ _%sit93335%_)
                            (_%else9334893362%_ (lambda () '#f))
                            (_%K9335093367%_ (lambda (_%s93365%_) _%s93365%_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%sit9334693354%_))
                           (let* ((_%hd9335193370%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%sit9334693354%_)))
                                  (_%s93373%_ _%hd9335193370%_))
                             (_%K9335093367%_ _%s93373%_))
                           (_%else9334893362%_)))))
            (values _%precedence-list93344%_ _%super-struct93345%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords93616%_ . _%args93617%_)
        (apply c4-linearize__%
               _%@@keywords93616%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords93616%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords93616%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords93616%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords93616%_
                  'get-name:
                  absent-value))
               _%args93617%_)))
    (define c4-linearize
      (lambda _%args9331193623%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9331193623%_)))))
