(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1713004409)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords93039%_
               _%get-precedence-list9303393040%_
               _%struct?9303493042%_
               _%eq9303593044%_
               _%get-name9303693046%_
               _%rhead93048%_
               _%supers93049%_)
        (let* ((_%get-precedence-list93051%_
                (if (eq? _%get-precedence-list9303393040%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9303393040%_))
               (_%struct?93053%_
                (if (eq? _%struct?9303493042%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9303493042%_))
               (_%eq93055%_
                (if (eq? _%eq9303593044%_ absent-value) eq? _%eq9303593044%_))
               (_%get-name93057%_
                (if (eq? _%get-name9303693046%_ absent-value)
                    identity
                    _%get-name9303693046%_)))
          (letrec* ((_%pls93060%_
                     (map _%get-precedence-list93051%_ _%supers93049%_))
                    (_%sit93061%_ '())
                    (_%get-names93062%_
                     (lambda (_%lst93337%_)
                       (map _%get-name93057%_ _%lst93337%_)))
                    (_%err93063%_
                     (lambda _%a93335%_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (_%get-names93062%_ (reverse _%rhead93048%_))
                              'precedence-lists:
                              (let ()
                                (declare (not safe))
                                (##map _%get-names93062%_ _%pls93060%_))
                              'single-inheritance-tail:
                              (_%get-names93062%_ _%sit93061%_)
                              _%a93335%_)))
                    (_%same?93064%_
                     (lambda (_%lst193332%_ _%lst293333%_)
                       (if (let ((__tmp93385 (length _%lst193332%_))
                                 (__tmp93384 (length _%lst293333%_)))
                             (declare (not safe))
                             (##fx= __tmp93385 __tmp93384))
                           (let ()
                             (declare (not safe))
                             (andmap2 _%eq93055%_ _%lst193332%_ _%lst293333%_))
                           '#f)))
                    (_%merge-sit!93065%_
                     (lambda (_%sit293315%_)
                       (if (null? _%sit293315%_)
                           '#!void
                           (if (null? _%sit93061%_)
                               (set! _%sit93061%_ _%sit293315%_)
                               (let _%loop93320%_ ((_%t193322%_ _%sit93061%_)
                                                   (_%t293323%_ _%sit293315%_))
                                 (if (_%same?93064%_ _%t193322%_ _%sit293315%_)
                                     '#!void
                                     (if (_%same?93064%_
                                          _%t293323%_
                                          _%sit93061%_)
                                         (set! _%sit93061%_ _%sit293315%_)
                                         (if (or (null? _%t193322%_)
                                                 (null? _%t293323%_))
                                             (_%err93063%_
                                              'single-inheritance-incompatibility:
                                              (cons (_%get-names93062%_
                                                     _%sit93061%_)
                                                    (cons (_%get-names93062%_
                                                           _%sit293315%_)
                                                          '())))
                                             (_%loop93320%_
                                              (cdr _%t193322%_)
                                              (cdr _%t293323%_))))))))))
                    (_%rpls93066%_
                     (let ((__tmp93386
                            (lambda (_%pl93310%_)
                              (let ((_g93387_
                                     (let ()
                                       (declare (not safe))
                                       (append-reverse-until
                                        _%struct?93053%_
                                        _%pl93310%_
                                        '()))))
                                (begin
                                  (let ((_g93388_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g93387_)
                                               (##vector-length _g93387_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g93388_ 2)))
                                        (error "Context expects 2 values"
                                               _g93388_)))
                                  (let ((_%tl93312%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g93387_ 0)))
                                        (_%rh93313%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g93387_ 1))))
                                    (begin
                                      (_%merge-sit!93065%_ _%tl93312%_)
                                      _%rh93313%_)))))))
                       (declare (not safe))
                       (##map __tmp93386 _%pls93060%_)))
                    (_%unsitr-rpl93067%_
                     (lambda (_%rpl93256%_)
                       (let _%u93258%_ ((_%pl-rhead93260%_ _%rpl93256%_)
                                        (_%pl-tail93261%_ '())
                                        (_%sit-rhead93262%_
                                         (reverse _%sit93061%_))
                                        (_%sit-tail93263%_ '()))
                         (let* ((_%pl-rhead9326493273%_ _%pl-rhead93260%_)
                                (_%E9326793277%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%pl-rhead9326493273%_
                                          '([])
                                          '([c . plrh]))
                                   '#!void)))
                           (let ((_%K9327193307%_ (lambda () _%pl-tail93261%_))
                                 (_%K9326893291%_
                                  (lambda (_%plrh93281%_ _%c93282%_)
                                    (if (member _%c93282%_
                                                _%sit-tail93263%_
                                                _%eq93055%_)
                                        (_%err93063%_
                                         'precedence-list-head:
                                         (_%get-names93062%_
                                          (reverse _%pl-rhead93260%_))
                                         'precedence-list-tail:
                                         (_%get-names93062%_ _%pl-tail93261%_)
                                         'single-inheritance-head:
                                         (_%get-names93062%_
                                          (reverse _%sit-rhead93262%_))
                                         'single-inheritance-tail:
                                         (_%get-names93062%_ _%sit-tail93263%_)
                                         'super-out-of-order-vs-single-inheritance-tail:
                                         (_%get-name93057%_ _%c93282%_))
                                        (let ((_g93389_
                                               (let ((__tmp93391
                                                      (lambda (_%g9328393285%_)
                                                        (_%eq93055%_
                                                         _%c93282%_
                                                         _%g9328393285%_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp93391
                                                  _%sit-rhead93262%_
                                                  _%sit-tail93263%_))))
                                          (begin
                                            (let ((_g93390_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g93389_)
                                                         (##vector-length
                                                          _g93389_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g93390_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g93390_)))
                                            (let ((_%sit-rh293288%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g93389_
                                                      0)))
                                                  (_%sit-tl293289%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g93389_
                                                      1))))
                                              (if (null? _%sit-rh293288%_)
                                                  (_%u93258%_
                                                   _%plrh93281%_
                                                   (cons _%c93282%_
                                                         _%pl-tail93261%_)
                                                   '()
                                                   _%sit-tl293289%_)
                                                  (_%u93258%_
                                                   _%plrh93281%_
                                                   _%pl-tail93261%_
                                                   (cdr _%sit-rh293288%_)
                                                   _%sit-tl293289%_)))))))))
                             (let ((_%try-match9326693303%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%pl-rhead9326493273%_))
                                          (let ((_%tl9327093296%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%pl-rhead9326493273%_)))
                                                (_%hd9326993294%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%pl-rhead9326493273%_))))
                                            (let ((_%c93299%_ _%hd9326993294%_)
                                                  (_%plrh93301%_
                                                   _%tl9327093296%_))
                                              (_%K9326893291%_
                                               _%plrh93301%_
                                               _%c93299%_)))
                                          (_%E9326793277%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%pl-rhead9326493273%_))
                                   (_%K9327193307%_)
                                   (_%try-match9326693303%_))))))))
                    (_g93392_
                     (let ((_g93393_
                            (let ((__tmp93395 (reverse _%supers93049%_)))
                              (declare (not safe))
                              (append1! _%rpls93066%_ __tmp93395))))
                       #!void
                       _g93393_))
                    (_g93396_
                     (let ((_g93397_
                            (set! _%pls93060%_
                                  (let ()
                                    (declare (not safe))
                                    (##map _%unsitr-rpl93067%_
                                           _%rpls93066%_)))))
                       #!void
                       _g93397_))
                    (_%c3-select-next93068%_
                     (lambda (_%tails93206%_)
                       (let ((_%candidate?93212%_
                              (lambda (_%c93208%_)
                                (let ((__tmp93399
                                       (lambda (_%tail93210%_)
                                         (not (member _%c93208%_
                                                      (cdr _%tail93210%_)
                                                      _%eq93055%_)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp93399 _%tails93206%_)))))
                         (let _%loop93214%_ ((_%ts93216%_ _%tails93206%_))
                           (let* ((_%ts9321793227%_ _%ts93216%_)
                                  (_%else9321993235%_
                                   (lambda () (_%err93063%_)))
                                  (_%K9322193241%_
                                   (lambda (_%rts93238%_ _%c93239%_)
                                     (if (_%candidate?93212%_ _%c93239%_)
                                         _%c93239%_
                                         (_%loop93214%_ _%rts93238%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%ts9321793227%_))
                                 (let ((_%hd9322293244%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%ts9321793227%_)))
                                       (_%tl9322393246%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%ts9321793227%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%hd9322293244%_))
                                       (let* ((_%hd9322493249%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd9322293244%_)))
                                              (_%c93252%_ _%hd9322493249%_)
                                              (_%rts93254%_ _%tl9322393246%_))
                                         (_%K9322193241%_
                                          _%rts93254%_
                                          _%c93252%_))
                                       (_%err93063%_)))
                                 (_%err93063%_)))))))
                    (_%remove-next!93069%_
                     (lambda (_%next93151%_ _%tails93152%_)
                       (let _%loop93154%_ ((_%t93156%_ _%tails93152%_))
                         (let* ((_%t9315793168%_ _%t93156%_)
                                (_%E9316093172%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%t9315793168%_
                                          '([])
                                          '([[head . tail] . more]))
                                   '#!void)))
                           (let ((_%K9316693203%_ (lambda () _%tails93152%_))
                                 (_%K9316193180%_
                                  (lambda (_%more93176%_
                                           _%tail93177%_
                                           _%head93178%_)
                                    (if (_%eq93055%_
                                         _%head93178%_
                                         _%next93151%_)
                                        (set-car! _%t93156%_ _%tail93177%_)
                                        '#!void)
                                    (_%loop93154%_ _%more93176%_))))
                             (let ((_%try-match9315993199%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%t9315793168%_))
                                          (let ((_%tl9316393185%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%t9315793168%_)))
                                                (_%hd9316293183%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%t9315793168%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd9316293183%_))
                                                (let ((_%tl9316593190%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd9316293183%_)))
                                                      (_%hd9316493188%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd9316293183%_))))
                                                  (let ((_%head93193%_
                                                         _%hd9316493188%_)
                                                        (_%tail93195%_
                                                         _%tl9316593190%_)
                                                        (_%more93197%_
                                                         _%tl9316393185%_))
                                                    (_%K9316193180%_
                                                     _%more93197%_
                                                     _%tail93195%_
                                                     _%head93193%_)))
                                                (_%E9316093172%_)))
                                          (_%E9316093172%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%t9315793168%_))
                                   (_%K9316693203%_)
                                   (_%try-match9315993199%_))))))))
                    (_%precedence-list93070%_
                     (let _%c3loop93101%_ ((_%rhead93103%_ _%rhead93048%_)
                                           (_%tails93104%_ _%pls93060%_))
                       (let* ((_%tails93106%_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _%tails93104%_)))
                              (_%tails9310793117%_ _%tails93106%_)
                              (_%else9311093128%_
                               (lambda ()
                                 (let ((_%next93125%_
                                        (_%c3-select-next93068%_
                                         _%tails93106%_)))
                                   (_%c3loop93101%_
                                    (cons _%next93125%_ _%rhead93103%_)
                                    (_%remove-next!93069%_
                                     _%next93125%_
                                     _%tails93106%_))))))
                         (let ((_%K9311593148%_
                                (lambda ()
                                  (append-reverse
                                   _%rhead93103%_
                                   _%sit93061%_)))
                               (_%K9311293134%_
                                (lambda (_%tail93132%_)
                                  (append-reverse
                                   _%rhead93103%_
                                   (append _%tail93132%_ _%sit93061%_)))))
                           (let ((_%try-match9310993144%_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tails9310793117%_))
                                        (let ((_%tl9311493139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tails9310793117%_)))
                                              (_%hd9311393137%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tails9310793117%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl9311493139%_))
                                              (let ((_%tail93142%_
                                                     _%hd9311393137%_))
                                                (_%K9311293134%_
                                                 _%tail93142%_))
                                              (_%else9311093128%_)))
                                        (_%else9311093128%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tails9310793117%_))
                                 (_%K9311593148%_)
                                 (_%try-match9310993144%_)))))))
                    (_%super-struct93071%_
                     (let* ((_%sit9307293080%_ _%sit93061%_)
                            (_%else9307493088%_ (lambda () '#f))
                            (_%K9307693093%_ (lambda (_%s93091%_) _%s93091%_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%sit9307293080%_))
                           (let* ((_%hd9307793096%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%sit9307293080%_)))
                                  (_%s93099%_ _%hd9307793096%_))
                             (_%K9307693093%_ _%s93099%_))
                           (_%else9307493088%_)))))
            (values _%precedence-list93070%_ _%super-struct93071%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords93342%_ . _%args93343%_)
        (apply c4-linearize__%
               _%@@keywords93342%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords93342%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords93342%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords93342%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords93342%_
                  'get-name:
                  absent-value))
               _%args93343%_)))
    (define c4-linearize
      (lambda _%args9303793349%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9303793349%_)))))
