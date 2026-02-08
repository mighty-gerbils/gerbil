(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1770513293)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords118132%_
               _%get-precedence-list118126118133%_
               _%struct?118127118134%_
               _%eq118128118135%_
               _%get-name118129118136%_
               _%rhead118137%_
               _%supers118138%_)
        (let* ((_%get-precedence-list118140%_
                (if (eq? _%get-precedence-list118126118133%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list118126118133%_))
               (_%struct?118142%_
                (if (eq? _%struct?118127118134%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?118127118134%_))
               (_%eq118144%_
                (if (eq? _%eq118128118135%_ absent-value)
                    eq?
                    _%eq118128118135%_))
               (_%get-name118146%_
                (if (eq? _%get-name118129118136%_ absent-value)
                    identity
                    _%get-name118129118136%_)))
          (if (null? _%supers118138%_)
              (values (reverse _%rhead118137%_) '#f)
              (if (null? (cdr _%supers118138%_))
                  (let ((_%pl118151%_
                         (_%get-precedence-list118140%_
                          (car _%supers118138%_))))
                    (values (append-reverse _%rhead118137%_ _%pl118151%_)
                            (let* ((_%pred118153%_ _%struct?118142%_)
                                   (_%lst118156%_ _%pl118151%_))
                              (if (procedure? _%pred118153%_)
                                  (let ((_%pred118161%_ _%pred118153%_))
                                    (declare (not safe))
                                    (__find _%pred118161%_ _%lst118156%_))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/c3
                                     'contract:
                                     'procedure?
                                     'value:
                                     _%pred118153%_)
                                    '#!void)))))
                  (let ((_%pls118182%_
                         (map _%get-precedence-list118140%_ _%supers118138%_))
                        (_%sis118183%_ '()))
                    (letrec* ((_%get-names118185%_
                               (lambda (_%lst118519%_)
                                 (map _%get-name118146%_ _%lst118519%_)))
                              (_%err118186%_
                               (lambda _%a118517%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names118185%_
                                         (reverse _%rhead118137%_))
                                        'precedence-lists:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names118185%_
                                                 _%pls118182%_))
                                        'single-inheritance-suffix:
                                        (_%get-names118185%_ _%sis118183%_)
                                        _%a118517%_)))
                              (_%eqlist?118187%_
                               (lambda (_%l1118511%_ _%l2118512%_)
                                 (let ((_%$e118514%_
                                        (eq? _%l1118511%_ _%l2118512%_)))
                                   (if _%$e118514%_
                                       _%$e118514%_
                                       (if (let ()
                                             (declare (not safe))
                                             (andmap__1
                                              _%eq118144%_
                                              _%l1118511%_
                                              _%l2118512%_))
                                           (let ((__tmp118567
                                                  (length _%l1118511%_))
                                                 (__tmp118566
                                                  (length _%l2118512%_)))
                                             (declare (not safe))
                                             (##fx= __tmp118567 __tmp118566))
                                           '#f)))))
                              (_%merge-sis!118188%_
                               (lambda (_%sis2118496%_)
                                 (if (null? _%sis2118496%_)
                                     '#!void
                                     (if (null? _%sis118183%_)
                                         (set! _%sis118183%_ _%sis2118496%_)
                                         (let _%loop118501%_ ((_%t1118503%_
                                                               _%sis118183%_)
                                                              (_%t2118504%_
                                                               _%sis2118496%_))
                                           (if (_%eqlist?118187%_
                                                _%t1118503%_
                                                _%sis2118496%_)
                                               '#!void
                                               (if (_%eqlist?118187%_
                                                    _%t2118504%_
                                                    _%sis118183%_)
                                                   (set! _%sis118183%_
                                                         _%sis2118496%_)
                                                   (if (null? _%t1118503%_)
                                                       (if (member (car _%sis118183%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%t2118504%_
                           _%eq118144%_)
                   (set! _%sis118183%_ _%sis2118496%_)
                   (_%err118186%_
                    'struct-incompatibility:
                    (cons (_%get-names118185%_ _%sis118183%_)
                          (cons (_%get-names118185%_ _%sis2118496%_) '()))))
               (if (null? _%t2118504%_)
                   (if (member (car _%sis2118496%_) _%t1118503%_ _%eq118144%_)
                       '#!void
                       (_%err118186%_
                        'struct-incompatibility:
                        (cons (_%get-names118185%_ _%sis118183%_)
                              (cons (_%get-names118185%_ _%sis2118496%_)
                                    '()))))
                   (_%loop118501%_
                    (cdr _%t1118503%_)
                    (cdr _%t2118504%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%rpls118189%_
                               (let ((__tmp118568
                                      (lambda (_%pl118467%_)
                                        (let ((_g118569_
                                               (let* ((_%pred118469%_
                                                       _%struct?118142%_)
                                                      (_%rhead118472%_
                                                       _%pl118467%_)
                                                      (_%tail118475%_ '()))
                                                 (if (procedure?
                                                      _%pred118469%_)
                                                     (let ((_%pred118480%_
                                                            _%pred118469%_))
                                                       (declare (not safe))
                                                       (__append-reverse-until
                                                        _%pred118480%_
                                                        _%rhead118472%_
                                                        _%tail118475%_))
                                                     (begin
                                                       (raise-contract-violation-error
                                                        '"contract violation"
                                                        'context:
                                                        'gerbil/runtime/c3
                                                        'contract:
                                                        'procedure?
                                                        'value:
                                                        _%pred118469%_)
                                                       '#!void)))))
                                          (begin
                                            (let ((_g118570_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g118569_)
                                                         (##values-length
                                                          _g118569_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g118570_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g118570_)))
                                            (let ((_%tl118493%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g118569_
                                                      0)))
                                                  (_%rh118494%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g118569_
                                                      1))))
                                              (begin
                                                (_%merge-sis!118188%_
                                                 _%tl118493%_)
                                                _%rh118494%_)))))))
                                 (declare (not safe))
                                 (##map __tmp118568 _%pls118182%_)))
                              (_%unsisr-rpl118190%_
                               (lambda (_%rpl118380%_)
                                 (let _%u118382%_ ((_%pl-rhead118384%_
                                                    _%rpl118380%_)
                                                   (_%pl-tail118385%_ '())
                                                   (_%sis-rhead118386%_
                                                    (reverse _%sis118183%_))
                                                   (_%sis-tail118387%_ '()))
                                   (let* ((_%pl-rhead118388118397%_
                                           _%pl-rhead118384%_)
                                          (_%E118391118401%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%pl-rhead118388118397%_
                                                    '([])
                                                    '([c . plrh]))
                                             '#!void)))
                                     (let ((_%K118395118464%_
                                            (lambda () _%pl-tail118385%_))
                                           (_%K118392118448%_
                                            (lambda (_%plrh118405%_
                                                     _%c118406%_)
                                              (if (member _%c118406%_
                                                          _%sis-tail118387%_
                                                          _%eq118144%_)
                                                  (_%err118186%_
                                                   'precedence-list-head:
                                                   (_%get-names118185%_
                                                    (reverse _%pl-rhead118384%_))
                                                   'precedence-list-tail:
                                                   (_%get-names118185%_
                                                    _%pl-tail118385%_)
                                                   'single-inheritance-head:
                                                   (_%get-names118185%_
                                                    (reverse _%sis-rhead118386%_))
                                                   'single-inheritance-tail:
                                                   (_%get-names118185%_
                                                    _%sis-tail118387%_)
                                                   'super-out-of-order-vs-single-inheritance-tail:
                                                   (_%get-name118146%_
                                                    _%c118406%_))
                                                  (let ((_g118571_
                                                         (let* ((_%pred118412%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g118407118409%_)
                           (_%eq118144%_ _%c118406%_ _%g118407118409%_)))
                        (_%rhead118415%_ _%sis-rhead118386%_)
                        (_%tail118418%_ _%sis-tail118387%_)
                        (_%pred118423%_ _%pred118412%_))
                   (declare (not safe))
                   (__append-reverse-until
                    _%pred118423%_
                    _%rhead118415%_
                    _%tail118418%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g118572_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g118571_)
                           (##values-length _g118571_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g118572_ 2)))
                    (error "Context expects 2 values" _g118572_)))
              (let ((_%sis-rh2118445%_
                     (let () (declare (not safe)) (##values-ref _g118571_ 0)))
                    (_%sis-tl2118446%_
                     (let () (declare (not safe)) (##values-ref _g118571_ 1))))
                (if (null? _%sis-rh2118445%_)
                    (_%u118382%_
                     _%plrh118405%_
                     (cons _%c118406%_ _%pl-tail118385%_)
                     '()
                     _%sis-tl2118446%_)
                    (_%u118382%_
                     _%plrh118405%_
                     _%pl-tail118385%_
                     (cdr _%sis-rh2118445%_)
                     _%sis-tl2118446%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%try-match118390118460%_
                                              (lambda ()
                                                (if (pair? _%pl-rhead118388118397%_)
                                                    (let ((_%tl118394118453%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%pl-rhead118388118397%_)))
                                                          (_%hd118393118451%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%pl-rhead118388118397%_))))
                                                      (let ((_%c118456%_
                                                             _%hd118393118451%_)
                                                            (_%plrh118458%_
                                                             _%tl118394118453%_))
                                                        (_%K118392118448%_
                                                         _%plrh118458%_
                                                         _%c118456%_)))
                                                    (_%E118391118401%_)))))
                                         (if (null? _%pl-rhead118388118397%_)
                                             (_%K118395118464%_)
                                             (_%try-match118390118460%_))))))))
                              (_g118573_
                               (let ((_g118574_
                                      (let ((__tmp118576
                                             (reverse _%supers118138%_)))
                                        (declare (not safe))
                                        (append1!
                                         _%rpls118189%_
                                         __tmp118576))))
                                 #!void
                                 _g118574_))
                              (_%hpls118191%_
                               (let ()
                                 (declare (not safe))
                                 (##map _%unsisr-rpl118190%_ _%rpls118189%_)))
                              (_%c3-select-next118192%_
                               (lambda (_%tails118330%_)
                                 (let ((_%candidate?118336%_
                                        (lambda (_%c118332%_)
                                          (let ((__tmp118577
                                                 (lambda (_%tail118334%_)
                                                   (not (member _%c118332%_
                                                                (cdr _%tail118334%_)
                                                                _%eq118144%_)))))
                                            (declare (not safe))
                                            (andmap__0
                                             __tmp118577
                                             _%tails118330%_)))))
                                   (let _%loop118338%_ ((_%ts118340%_
                                                         _%tails118330%_))
                                     (let* ((_%ts118341118351%_ _%ts118340%_)
                                            (_%else118343118359%_
                                             (lambda () (_%err118186%_)))
                                            (_%K118345118365%_
                                             (lambda (_%rts118362%_
                                                      _%c118363%_)
                                               (if (_%candidate?118336%_
                                                    _%c118363%_)
                                                   _%c118363%_
                                                   (_%loop118338%_
                                                    _%rts118362%_)))))
                                       (if (pair? _%ts118341118351%_)
                                           (let ((_%hd118346118368%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%ts118341118351%_)))
                                                 (_%tl118347118370%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%ts118341118351%_))))
                                             (if (pair? _%hd118346118368%_)
                                                 (let* ((_%hd118348118373%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%hd118346118368%_)))
                                                        (_%c118376%_
                                                         _%hd118348118373%_)
                                                        (_%rts118378%_
                                                         _%tl118347118370%_))
                                                   (_%K118345118365%_
                                                    _%rts118378%_
                                                    _%c118376%_))
                                                 (_%err118186%_)))
                                           (_%err118186%_)))))))
                              (_%remove-next!118193%_
                               (lambda (_%next118275%_ _%tails118276%_)
                                 (let _%loop118278%_ ((_%t118280%_
                                                       _%tails118276%_))
                                   (let* ((_%t118281118292%_ _%t118280%_)
                                          (_%E118284118296%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%t118281118292%_
                                                    '([])
                                                    '([[head . tail] . more]))
                                             '#!void)))
                                     (let ((_%K118290118327%_
                                            (lambda () _%tails118276%_))
                                           (_%K118285118304%_
                                            (lambda (_%more118300%_
                                                     _%tail118301%_
                                                     _%head118302%_)
                                              (if (_%eq118144%_
                                                   _%head118302%_
                                                   _%next118275%_)
                                                  (set-car!
                                                   _%t118280%_
                                                   _%tail118301%_)
                                                  '#!void)
                                              (_%loop118278%_
                                               _%more118300%_))))
                                       (let ((_%try-match118283118323%_
                                              (lambda ()
                                                (if (pair? _%t118281118292%_)
                                                    (let ((_%tl118287118309%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%t118281118292%_)))
                                                          (_%hd118286118307%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%t118281118292%_))))
                                                      (if (pair? _%hd118286118307%_)
                                                          (let ((_%tl118289118314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd118286118307%_)))
                        (_%hd118288118312%_
                         (let ()
                           (declare (not safe))
                           (##car _%hd118286118307%_))))
                    (let ((_%head118317%_ _%hd118288118312%_)
                          (_%tail118319%_ _%tl118289118314%_)
                          (_%more118321%_ _%tl118287118309%_))
                      (_%K118285118304%_
                       _%more118321%_
                       _%tail118319%_
                       _%head118317%_)))
                  (_%E118284118296%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E118284118296%_)))))
                                         (if (null? _%t118281118292%_)
                                             (_%K118290118327%_)
                                             (_%try-match118283118323%_))))))))
                              (_%precedence-list118194%_
                               (let _%c3loop118225%_ ((_%rhead118227%_
                                                       _%rhead118137%_)
                                                      (_%tails118228%_
                                                       _%hpls118191%_))
                                 (let* ((_%tails118230%_
                                         (let ()
                                           (declare (not safe))
                                           (remove-nulls! _%tails118228%_)))
                                        (_%tails118231118241%_ _%tails118230%_)
                                        (_%else118234118252%_
                                         (lambda ()
                                           (let ((_%next118249%_
                                                  (_%c3-select-next118192%_
                                                   _%tails118230%_)))
                                             (_%c3loop118225%_
                                              (cons _%next118249%_
                                                    _%rhead118227%_)
                                              (_%remove-next!118193%_
                                               _%next118249%_
                                               _%tails118230%_))))))
                                   (let ((_%K118239118272%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead118227%_
                                             _%sis118183%_)))
                                         (_%K118236118258%_
                                          (lambda (_%tail118256%_)
                                            (append-reverse
                                             _%rhead118227%_
                                             (append _%tail118256%_
                                                     _%sis118183%_)))))
                                     (let ((_%try-match118233118268%_
                                            (lambda ()
                                              (if (pair? _%tails118231118241%_)
                                                  (let ((_%tl118238118263%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tails118231118241%_)))
                                                        (_%hd118237118261%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tails118231118241%_))))
                                                    (if (null? _%tl118238118263%_)
                                                        (let ((_%tail118266%_
                                                               _%hd118237118261%_))
                                                          (_%K118236118258%_
                                                           _%tail118266%_))
                                                        (_%else118234118252%_)))
                                                  (_%else118234118252%_)))))
                                       (if (null? _%tails118231118241%_)
                                           (_%K118239118272%_)
                                           (_%try-match118233118268%_)))))))
                              (_%super-struct118195%_
                               (let* ((_%sis118196118204%_ _%sis118183%_)
                                      (_%else118198118212%_ (lambda () '#f))
                                      (_%K118200118217%_
                                       (lambda (_%s118215%_) _%s118215%_)))
                                 (if (pair? _%sis118196118204%_)
                                     (let* ((_%hd118201118220%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%sis118196118204%_)))
                                            (_%s118223%_ _%hd118201118220%_))
                                       (_%K118200118217%_ _%s118223%_))
                                     (_%else118198118212%_)))))
                      (values _%precedence-list118194%_
                              _%super-struct118195%_))))))))
    (define c4-linearize__@
      (lambda (_%@@keywords118524%_ . _%args118525%_)
        (apply c4-linearize__%
               _%@@keywords118524%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords118524%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords118524%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords118524%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords118524%_
                  'get-name:
                  absent-value))
               _%args118525%_)))
    (define c4-linearize
      (lambda _%args118130118531%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args118130118531%_)))))
