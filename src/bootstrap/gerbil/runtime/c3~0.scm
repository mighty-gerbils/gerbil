(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1713000276)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords93616%_
               _%get-precedence-list9361093617%_
               _%struct?9361193619%_
               _%eq9361293621%_
               _%get-name9361393623%_
               _%rhead93625%_
               _%supers93626%_)
        (let* ((_%get-precedence-list93628%_
                (if (eq? _%get-precedence-list9361093617%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9361093617%_))
               (_%struct?93630%_
                (if (eq? _%struct?9361193619%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9361193619%_))
               (_%eq93632%_
                (if (eq? _%eq9361293621%_ absent-value) eq? _%eq9361293621%_))
               (_%get-name93634%_
                (if (eq? _%get-name9361393623%_ absent-value)
                    identity
                    _%get-name9361393623%_)))
          (letrec* ((_%pls93637%_
                     (map _%get-precedence-list93628%_ _%supers93626%_))
                    (_%sit93638%_ '())
                    (_%get-names93639%_
                     (lambda (_%lst93914%_)
                       (map _%get-name93634%_ _%lst93914%_)))
                    (_%err93640%_
                     (lambda _%a93912%_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (_%get-names93639%_ (reverse _%rhead93625%_))
                              'precedence-lists:
                              (let ()
                                (declare (not safe))
                                (##map _%get-names93639%_ _%pls93637%_))
                              'single-inheritance-tail:
                              (_%get-names93639%_ _%sit93638%_)
                              _%a93912%_)))
                    (_%same?93641%_
                     (lambda (_%lst193909%_ _%lst293910%_)
                       (if (let ((__tmp93962 (length _%lst193909%_))
                                 (__tmp93961 (length _%lst293910%_)))
                             (declare (not safe))
                             (##fx= __tmp93962 __tmp93961))
                           (let ()
                             (declare (not safe))
                             (andmap2 _%eq93632%_ _%lst193909%_ _%lst293910%_))
                           '#f)))
                    (_%merge-sit!93642%_
                     (lambda (_%sit293892%_)
                       (if (null? _%sit293892%_)
                           '#!void
                           (if (null? _%sit93638%_)
                               (set! _%sit93638%_ _%sit293892%_)
                               (let _%loop93897%_ ((_%t193899%_ _%sit93638%_)
                                                   (_%t293900%_ _%sit293892%_))
                                 (if (_%same?93641%_ _%t193899%_ _%sit293892%_)
                                     '#!void
                                     (if (_%same?93641%_
                                          _%t293900%_
                                          _%sit93638%_)
                                         (set! _%sit93638%_ _%sit293892%_)
                                         (if (or (null? _%t193899%_)
                                                 (null? _%t293900%_))
                                             (_%err93640%_
                                              'single-inheritance-incompatibility:
                                              (cons (_%get-names93639%_
                                                     _%sit93638%_)
                                                    (cons (_%get-names93639%_
                                                           _%sit293892%_)
                                                          '())))
                                             (_%loop93897%_
                                              (cdr _%t193899%_)
                                              (cdr _%t293900%_))))))))))
                    (_%rpls93643%_
                     (let ((__tmp93963
                            (lambda (_%pl93887%_)
                              (let ((_g93964_
                                     (let ()
                                       (declare (not safe))
                                       (append-reverse-until
                                        _%struct?93630%_
                                        _%pl93887%_
                                        '()))))
                                (begin
                                  (let ((_g93965_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g93964_)
                                               (##vector-length _g93964_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g93965_ 2)))
                                        (error "Context expects 2 values"
                                               _g93965_)))
                                  (let ((_%tl93889%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g93964_ 0)))
                                        (_%rh93890%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g93964_ 1))))
                                    (begin
                                      (_%merge-sit!93642%_ _%tl93889%_)
                                      _%rh93890%_)))))))
                       (declare (not safe))
                       (##map __tmp93963 _%pls93637%_)))
                    (_%unsitr-rpl93644%_
                     (lambda (_%rpl93833%_)
                       (let _%u93835%_ ((_%pl-rhead93837%_ _%rpl93833%_)
                                        (_%pl-tail93838%_ '())
                                        (_%sit-rhead93839%_
                                         (reverse _%sit93638%_))
                                        (_%sit-tail93840%_ '()))
                         (let* ((_%pl-rhead9384193850%_ _%pl-rhead93837%_)
                                (_%E9384493854%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%pl-rhead9384193850%_
                                          '([])
                                          '([c . plrh]))
                                   '#!void)))
                           (let ((_%K9384893884%_ (lambda () _%pl-tail93838%_))
                                 (_%K9384593868%_
                                  (lambda (_%plrh93858%_ _%c93859%_)
                                    (if (member _%c93859%_
                                                _%sit-tail93840%_
                                                _%eq93632%_)
                                        (_%err93640%_
                                         'precedence-list-head:
                                         (_%get-names93639%_
                                          (reverse _%pl-rhead93837%_))
                                         'precedence-list-tail:
                                         (_%get-names93639%_ _%pl-tail93838%_)
                                         'single-inheritance-head:
                                         (_%get-names93639%_
                                          (reverse _%sit-rhead93839%_))
                                         'single-inheritance-tail:
                                         (_%get-names93639%_ _%sit-tail93840%_)
                                         'super-out-of-order-vs-single-inheritance-tail:
                                         (_%get-name93634%_ _%c93859%_))
                                        (let ((_g93966_
                                               (let ((__tmp93968
                                                      (lambda (_%g9386093862%_)
                                                        (_%eq93632%_
                                                         _%c93859%_
                                                         _%g9386093862%_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp93968
                                                  _%sit-rhead93839%_
                                                  _%sit-tail93840%_))))
                                          (begin
                                            (let ((_g93967_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g93966_)
                                                         (##vector-length
                                                          _g93966_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g93967_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g93967_)))
                                            (let ((_%sit-rh293865%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g93966_
                                                      0)))
                                                  (_%sit-tl293866%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g93966_
                                                      1))))
                                              (if (null? _%sit-rh293865%_)
                                                  (_%u93835%_
                                                   _%plrh93858%_
                                                   (cons _%c93859%_
                                                         _%pl-tail93838%_)
                                                   '()
                                                   _%sit-tl293866%_)
                                                  (_%u93835%_
                                                   _%plrh93858%_
                                                   _%pl-tail93838%_
                                                   (cdr _%sit-rh293865%_)
                                                   _%sit-tl293866%_)))))))))
                             (let ((_%try-match9384393880%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%pl-rhead9384193850%_))
                                          (let ((_%tl9384793873%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%pl-rhead9384193850%_)))
                                                (_%hd9384693871%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%pl-rhead9384193850%_))))
                                            (let ((_%c93876%_ _%hd9384693871%_)
                                                  (_%plrh93878%_
                                                   _%tl9384793873%_))
                                              (_%K9384593868%_
                                               _%plrh93878%_
                                               _%c93876%_)))
                                          (_%E9384493854%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%pl-rhead9384193850%_))
                                   (_%K9384893884%_)
                                   (_%try-match9384393880%_))))))))
                    (_g93969_
                     (let ((_g93970_
                            (let ((__tmp93972 (reverse _%supers93626%_)))
                              (declare (not safe))
                              (append1! _%rpls93643%_ __tmp93972))))
                       #!void
                       _g93970_))
                    (_g93973_
                     (let ((_g93974_
                            (set! _%pls93637%_
                                  (let ()
                                    (declare (not safe))
                                    (##map _%unsitr-rpl93644%_
                                           _%rpls93643%_)))))
                       #!void
                       _g93974_))
                    (_%c3-select-next93645%_
                     (lambda (_%tails93783%_)
                       (let ((_%candidate?93789%_
                              (lambda (_%c93785%_)
                                (let ((__tmp93976
                                       (lambda (_%tail93787%_)
                                         (not (member _%c93785%_
                                                      (cdr _%tail93787%_)
                                                      _%eq93632%_)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp93976 _%tails93783%_)))))
                         (let _%loop93791%_ ((_%ts93793%_ _%tails93783%_))
                           (let* ((_%ts9379493804%_ _%ts93793%_)
                                  (_%else9379693812%_
                                   (lambda () (_%err93640%_)))
                                  (_%K9379893818%_
                                   (lambda (_%rts93815%_ _%c93816%_)
                                     (if (_%candidate?93789%_ _%c93816%_)
                                         _%c93816%_
                                         (_%loop93791%_ _%rts93815%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%ts9379493804%_))
                                 (let ((_%hd9379993821%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%ts9379493804%_)))
                                       (_%tl9380093823%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%ts9379493804%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%hd9379993821%_))
                                       (let* ((_%hd9380193826%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd9379993821%_)))
                                              (_%c93829%_ _%hd9380193826%_)
                                              (_%rts93831%_ _%tl9380093823%_))
                                         (_%K9379893818%_
                                          _%rts93831%_
                                          _%c93829%_))
                                       (_%err93640%_)))
                                 (_%err93640%_)))))))
                    (_%remove-next!93646%_
                     (lambda (_%next93728%_ _%tails93729%_)
                       (let _%loop93731%_ ((_%t93733%_ _%tails93729%_))
                         (let* ((_%t9373493745%_ _%t93733%_)
                                (_%E9373793749%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%t9373493745%_
                                          '([])
                                          '([[head . tail] . more]))
                                   '#!void)))
                           (let ((_%K9374393780%_ (lambda () _%tails93729%_))
                                 (_%K9373893757%_
                                  (lambda (_%more93753%_
                                           _%tail93754%_
                                           _%head93755%_)
                                    (if (_%eq93632%_
                                         _%head93755%_
                                         _%next93728%_)
                                        (set-car! _%t93733%_ _%tail93754%_)
                                        '#!void)
                                    (_%loop93731%_ _%more93753%_))))
                             (let ((_%try-match9373693776%_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%t9373493745%_))
                                          (let ((_%tl9374093762%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%t9373493745%_)))
                                                (_%hd9373993760%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%t9373493745%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd9373993760%_))
                                                (let ((_%tl9374293767%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd9373993760%_)))
                                                      (_%hd9374193765%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd9373993760%_))))
                                                  (let ((_%head93770%_
                                                         _%hd9374193765%_)
                                                        (_%tail93772%_
                                                         _%tl9374293767%_)
                                                        (_%more93774%_
                                                         _%tl9374093762%_))
                                                    (_%K9373893757%_
                                                     _%more93774%_
                                                     _%tail93772%_
                                                     _%head93770%_)))
                                                (_%E9373793749%_)))
                                          (_%E9373793749%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%t9373493745%_))
                                   (_%K9374393780%_)
                                   (_%try-match9373693776%_))))))))
                    (_%precedence-list93647%_
                     (let _%c3loop93678%_ ((_%rhead93680%_ _%rhead93625%_)
                                           (_%tails93681%_ _%pls93637%_))
                       (let* ((_%tails93683%_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _%tails93681%_)))
                              (_%tails9368493694%_ _%tails93683%_)
                              (_%else9368793705%_
                               (lambda ()
                                 (let ((_%next93702%_
                                        (_%c3-select-next93645%_
                                         _%tails93683%_)))
                                   (_%c3loop93678%_
                                    (cons _%next93702%_ _%rhead93680%_)
                                    (_%remove-next!93646%_
                                     _%next93702%_
                                     _%tails93683%_))))))
                         (let ((_%K9369293725%_
                                (lambda ()
                                  (append-reverse
                                   _%rhead93680%_
                                   _%sit93638%_)))
                               (_%K9368993711%_
                                (lambda (_%tail93709%_)
                                  (append-reverse
                                   _%rhead93680%_
                                   (append _%tail93709%_ _%sit93638%_)))))
                           (let ((_%try-match9368693721%_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tails9368493694%_))
                                        (let ((_%tl9369193716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tails9368493694%_)))
                                              (_%hd9369093714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tails9368493694%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl9369193716%_))
                                              (let ((_%tail93719%_
                                                     _%hd9369093714%_))
                                                (_%K9368993711%_
                                                 _%tail93719%_))
                                              (_%else9368793705%_)))
                                        (_%else9368793705%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tails9368493694%_))
                                 (_%K9369293725%_)
                                 (_%try-match9368693721%_)))))))
                    (_%super-struct93648%_
                     (let* ((_%sit9364993657%_ _%sit93638%_)
                            (_%else9365193665%_ (lambda () '#f))
                            (_%K9365393670%_ (lambda (_%s93668%_) _%s93668%_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%sit9364993657%_))
                           (let* ((_%hd9365493673%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%sit9364993657%_)))
                                  (_%s93676%_ _%hd9365493673%_))
                             (_%K9365393670%_ _%s93676%_))
                           (_%else9365193665%_)))))
            (values _%precedence-list93647%_ _%super-struct93648%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords93919%_ . _%args93920%_)
        (apply c4-linearize__%
               _%@@keywords93919%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords93919%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords93919%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords93919%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords93919%_
                  'get-name:
                  absent-value))
               _%args93920%_)))
    (define c4-linearize
      (lambda _%args9361493926%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9361493926%_)))))
