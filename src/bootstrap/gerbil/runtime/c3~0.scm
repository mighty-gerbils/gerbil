(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1770505711)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords118048%_
               _%get-precedence-list118042118049%_
               _%struct?118043118050%_
               _%eq118044118051%_
               _%get-name118045118052%_
               _%rhead118053%_
               _%supers118054%_)
        (let* ((_%get-precedence-list118056%_
                (if (eq? _%get-precedence-list118042118049%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list118042118049%_))
               (_%struct?118058%_
                (if (eq? _%struct?118043118050%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?118043118050%_))
               (_%eq118060%_
                (if (eq? _%eq118044118051%_ absent-value)
                    eq?
                    _%eq118044118051%_))
               (_%get-name118062%_
                (if (eq? _%get-name118045118052%_ absent-value)
                    identity
                    _%get-name118045118052%_)))
          (if (null? _%supers118054%_)
              (values (reverse _%rhead118053%_) '#f)
              (if (null? (cdr _%supers118054%_))
                  (let ((_%pl118067%_
                         (_%get-precedence-list118056%_
                          (car _%supers118054%_))))
                    (values (append-reverse _%rhead118053%_ _%pl118067%_)
                            (let* ((_%pred118069%_ _%struct?118058%_)
                                   (_%lst118072%_ _%pl118067%_))
                              (if (procedure? _%pred118069%_)
                                  (let ((_%pred118077%_ _%pred118069%_))
                                    (declare (not safe))
                                    (__find _%pred118077%_ _%lst118072%_))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/c3
                                     'contract:
                                     'procedure?
                                     'value:
                                     _%pred118069%_)
                                    '#!void)))))
                  (let ((_%pls118098%_
                         (map _%get-precedence-list118056%_ _%supers118054%_))
                        (_%sis118099%_ '()))
                    (letrec* ((_%get-names118101%_
                               (lambda (_%lst118435%_)
                                 (map _%get-name118062%_ _%lst118435%_)))
                              (_%err118102%_
                               (lambda _%a118433%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names118101%_
                                         (reverse _%rhead118053%_))
                                        'precedence-lists:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names118101%_
                                                 _%pls118098%_))
                                        'single-inheritance-suffix:
                                        (_%get-names118101%_ _%sis118099%_)
                                        _%a118433%_)))
                              (_%eqlist?118103%_
                               (lambda (_%l1118427%_ _%l2118428%_)
                                 (let ((_%$e118430%_
                                        (eq? _%l1118427%_ _%l2118428%_)))
                                   (if _%$e118430%_
                                       _%$e118430%_
                                       (if (let ()
                                             (declare (not safe))
                                             (andmap__1
                                              _%eq118060%_
                                              _%l1118427%_
                                              _%l2118428%_))
                                           (let ((__tmp118483
                                                  (length _%l1118427%_))
                                                 (__tmp118482
                                                  (length _%l2118428%_)))
                                             (declare (not safe))
                                             (##fx= __tmp118483 __tmp118482))
                                           '#f)))))
                              (_%merge-sis!118104%_
                               (lambda (_%sis2118412%_)
                                 (if (null? _%sis2118412%_)
                                     '#!void
                                     (if (null? _%sis118099%_)
                                         (set! _%sis118099%_ _%sis2118412%_)
                                         (let _%loop118417%_ ((_%t1118419%_
                                                               _%sis118099%_)
                                                              (_%t2118420%_
                                                               _%sis2118412%_))
                                           (if (_%eqlist?118103%_
                                                _%t1118419%_
                                                _%sis2118412%_)
                                               '#!void
                                               (if (_%eqlist?118103%_
                                                    _%t2118420%_
                                                    _%sis118099%_)
                                                   (set! _%sis118099%_
                                                         _%sis2118412%_)
                                                   (if (null? _%t1118419%_)
                                                       (if (member (car _%sis118099%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%t2118420%_
                           _%eq118060%_)
                   (set! _%sis118099%_ _%sis2118412%_)
                   (_%err118102%_
                    'struct-incompatibility:
                    (cons (_%get-names118101%_ _%sis118099%_)
                          (cons (_%get-names118101%_ _%sis2118412%_) '()))))
               (if (null? _%t2118420%_)
                   (if (member (car _%sis2118412%_) _%t1118419%_ _%eq118060%_)
                       '#!void
                       (_%err118102%_
                        'struct-incompatibility:
                        (cons (_%get-names118101%_ _%sis118099%_)
                              (cons (_%get-names118101%_ _%sis2118412%_)
                                    '()))))
                   (_%loop118417%_
                    (cdr _%t1118419%_)
                    (cdr _%t2118420%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%rpls118105%_
                               (let ((__tmp118484
                                      (lambda (_%pl118383%_)
                                        (let ((_g118485_
                                               (let* ((_%pred118385%_
                                                       _%struct?118058%_)
                                                      (_%rhead118388%_
                                                       _%pl118383%_)
                                                      (_%tail118391%_ '()))
                                                 (if (procedure?
                                                      _%pred118385%_)
                                                     (let ((_%pred118396%_
                                                            _%pred118385%_))
                                                       (declare (not safe))
                                                       (__append-reverse-until
                                                        _%pred118396%_
                                                        _%rhead118388%_
                                                        _%tail118391%_))
                                                     (begin
                                                       (raise-contract-violation-error
                                                        '"contract violation"
                                                        'context:
                                                        'gerbil/runtime/c3
                                                        'contract:
                                                        'procedure?
                                                        'value:
                                                        _%pred118385%_)
                                                       '#!void)))))
                                          (begin
                                            (let ((_g118486_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g118485_)
                                                         (##values-length
                                                          _g118485_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g118486_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g118486_)))
                                            (let ((_%tl118409%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g118485_
                                                      0)))
                                                  (_%rh118410%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g118485_
                                                      1))))
                                              (begin
                                                (_%merge-sis!118104%_
                                                 _%tl118409%_)
                                                _%rh118410%_)))))))
                                 (declare (not safe))
                                 (##map __tmp118484 _%pls118098%_)))
                              (_%unsisr-rpl118106%_
                               (lambda (_%rpl118296%_)
                                 (let _%u118298%_ ((_%pl-rhead118300%_
                                                    _%rpl118296%_)
                                                   (_%pl-tail118301%_ '())
                                                   (_%sis-rhead118302%_
                                                    (reverse _%sis118099%_))
                                                   (_%sis-tail118303%_ '()))
                                   (let* ((_%pl-rhead118304118313%_
                                           _%pl-rhead118300%_)
                                          (_%E118307118317%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%pl-rhead118304118313%_
                                                    '([])
                                                    '([c . plrh]))
                                             '#!void)))
                                     (let ((_%K118311118380%_
                                            (lambda () _%pl-tail118301%_))
                                           (_%K118308118364%_
                                            (lambda (_%plrh118321%_
                                                     _%c118322%_)
                                              (if (member _%c118322%_
                                                          _%sis-tail118303%_
                                                          _%eq118060%_)
                                                  (_%err118102%_
                                                   'precedence-list-head:
                                                   (_%get-names118101%_
                                                    (reverse _%pl-rhead118300%_))
                                                   'precedence-list-tail:
                                                   (_%get-names118101%_
                                                    _%pl-tail118301%_)
                                                   'single-inheritance-head:
                                                   (_%get-names118101%_
                                                    (reverse _%sis-rhead118302%_))
                                                   'single-inheritance-tail:
                                                   (_%get-names118101%_
                                                    _%sis-tail118303%_)
                                                   'super-out-of-order-vs-single-inheritance-tail:
                                                   (_%get-name118062%_
                                                    _%c118322%_))
                                                  (let ((_g118487_
                                                         (let* ((_%pred118328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g118323118325%_)
                           (_%eq118060%_ _%c118322%_ _%g118323118325%_)))
                        (_%rhead118331%_ _%sis-rhead118302%_)
                        (_%tail118334%_ _%sis-tail118303%_)
                        (_%pred118339%_ _%pred118328%_))
                   (declare (not safe))
                   (__append-reverse-until
                    _%pred118339%_
                    _%rhead118331%_
                    _%tail118334%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g118488_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g118487_)
                           (##values-length _g118487_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g118488_ 2)))
                    (error "Context expects 2 values" _g118488_)))
              (let ((_%sis-rh2118361%_
                     (let () (declare (not safe)) (##values-ref _g118487_ 0)))
                    (_%sis-tl2118362%_
                     (let () (declare (not safe)) (##values-ref _g118487_ 1))))
                (if (null? _%sis-rh2118361%_)
                    (_%u118298%_
                     _%plrh118321%_
                     (cons _%c118322%_ _%pl-tail118301%_)
                     '()
                     _%sis-tl2118362%_)
                    (_%u118298%_
                     _%plrh118321%_
                     _%pl-tail118301%_
                     (cdr _%sis-rh2118361%_)
                     _%sis-tl2118362%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%try-match118306118376%_
                                              (lambda ()
                                                (if (pair? _%pl-rhead118304118313%_)
                                                    (let ((_%tl118310118369%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%pl-rhead118304118313%_)))
                                                          (_%hd118309118367%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%pl-rhead118304118313%_))))
                                                      (let ((_%c118372%_
                                                             _%hd118309118367%_)
                                                            (_%plrh118374%_
                                                             _%tl118310118369%_))
                                                        (_%K118308118364%_
                                                         _%plrh118374%_
                                                         _%c118372%_)))
                                                    (_%E118307118317%_)))))
                                         (if (null? _%pl-rhead118304118313%_)
                                             (_%K118311118380%_)
                                             (_%try-match118306118376%_))))))))
                              (_g118489_
                               (let ((_g118490_
                                      (let ((__tmp118492
                                             (reverse _%supers118054%_)))
                                        (declare (not safe))
                                        (append1!
                                         _%rpls118105%_
                                         __tmp118492))))
                                 #!void
                                 _g118490_))
                              (_%hpls118107%_
                               (let ()
                                 (declare (not safe))
                                 (##map _%unsisr-rpl118106%_ _%rpls118105%_)))
                              (_%c3-select-next118108%_
                               (lambda (_%tails118246%_)
                                 (let ((_%candidate?118252%_
                                        (lambda (_%c118248%_)
                                          (let ((__tmp118493
                                                 (lambda (_%tail118250%_)
                                                   (not (member _%c118248%_
                                                                (cdr _%tail118250%_)
                                                                _%eq118060%_)))))
                                            (declare (not safe))
                                            (andmap__0
                                             __tmp118493
                                             _%tails118246%_)))))
                                   (let _%loop118254%_ ((_%ts118256%_
                                                         _%tails118246%_))
                                     (let* ((_%ts118257118267%_ _%ts118256%_)
                                            (_%else118259118275%_
                                             (lambda () (_%err118102%_)))
                                            (_%K118261118281%_
                                             (lambda (_%rts118278%_
                                                      _%c118279%_)
                                               (if (_%candidate?118252%_
                                                    _%c118279%_)
                                                   _%c118279%_
                                                   (_%loop118254%_
                                                    _%rts118278%_)))))
                                       (if (pair? _%ts118257118267%_)
                                           (let ((_%hd118262118284%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%ts118257118267%_)))
                                                 (_%tl118263118286%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%ts118257118267%_))))
                                             (if (pair? _%hd118262118284%_)
                                                 (let* ((_%hd118264118289%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%hd118262118284%_)))
                                                        (_%c118292%_
                                                         _%hd118264118289%_)
                                                        (_%rts118294%_
                                                         _%tl118263118286%_))
                                                   (_%K118261118281%_
                                                    _%rts118294%_
                                                    _%c118292%_))
                                                 (_%err118102%_)))
                                           (_%err118102%_)))))))
                              (_%remove-next!118109%_
                               (lambda (_%next118191%_ _%tails118192%_)
                                 (let _%loop118194%_ ((_%t118196%_
                                                       _%tails118192%_))
                                   (let* ((_%t118197118208%_ _%t118196%_)
                                          (_%E118200118212%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%t118197118208%_
                                                    '([])
                                                    '([[head . tail] . more]))
                                             '#!void)))
                                     (let ((_%K118206118243%_
                                            (lambda () _%tails118192%_))
                                           (_%K118201118220%_
                                            (lambda (_%more118216%_
                                                     _%tail118217%_
                                                     _%head118218%_)
                                              (if (_%eq118060%_
                                                   _%head118218%_
                                                   _%next118191%_)
                                                  (set-car!
                                                   _%t118196%_
                                                   _%tail118217%_)
                                                  '#!void)
                                              (_%loop118194%_
                                               _%more118216%_))))
                                       (let ((_%try-match118199118239%_
                                              (lambda ()
                                                (if (pair? _%t118197118208%_)
                                                    (let ((_%tl118203118225%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%t118197118208%_)))
                                                          (_%hd118202118223%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%t118197118208%_))))
                                                      (if (pair? _%hd118202118223%_)
                                                          (let ((_%tl118205118230%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd118202118223%_)))
                        (_%hd118204118228%_
                         (let ()
                           (declare (not safe))
                           (##car _%hd118202118223%_))))
                    (let ((_%head118233%_ _%hd118204118228%_)
                          (_%tail118235%_ _%tl118205118230%_)
                          (_%more118237%_ _%tl118203118225%_))
                      (_%K118201118220%_
                       _%more118237%_
                       _%tail118235%_
                       _%head118233%_)))
                  (_%E118200118212%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E118200118212%_)))))
                                         (if (null? _%t118197118208%_)
                                             (_%K118206118243%_)
                                             (_%try-match118199118239%_))))))))
                              (_%precedence-list118110%_
                               (let _%c3loop118141%_ ((_%rhead118143%_
                                                       _%rhead118053%_)
                                                      (_%tails118144%_
                                                       _%hpls118107%_))
                                 (let* ((_%tails118146%_
                                         (let ()
                                           (declare (not safe))
                                           (remove-nulls! _%tails118144%_)))
                                        (_%tails118147118157%_ _%tails118146%_)
                                        (_%else118150118168%_
                                         (lambda ()
                                           (let ((_%next118165%_
                                                  (_%c3-select-next118108%_
                                                   _%tails118146%_)))
                                             (_%c3loop118141%_
                                              (cons _%next118165%_
                                                    _%rhead118143%_)
                                              (_%remove-next!118109%_
                                               _%next118165%_
                                               _%tails118146%_))))))
                                   (let ((_%K118155118188%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead118143%_
                                             _%sis118099%_)))
                                         (_%K118152118174%_
                                          (lambda (_%tail118172%_)
                                            (append-reverse
                                             _%rhead118143%_
                                             (append _%tail118172%_
                                                     _%sis118099%_)))))
                                     (let ((_%try-match118149118184%_
                                            (lambda ()
                                              (if (pair? _%tails118147118157%_)
                                                  (let ((_%tl118154118179%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tails118147118157%_)))
                                                        (_%hd118153118177%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tails118147118157%_))))
                                                    (if (null? _%tl118154118179%_)
                                                        (let ((_%tail118182%_
                                                               _%hd118153118177%_))
                                                          (_%K118152118174%_
                                                           _%tail118182%_))
                                                        (_%else118150118168%_)))
                                                  (_%else118150118168%_)))))
                                       (if (null? _%tails118147118157%_)
                                           (_%K118155118188%_)
                                           (_%try-match118149118184%_)))))))
                              (_%super-struct118111%_
                               (let* ((_%sis118112118120%_ _%sis118099%_)
                                      (_%else118114118128%_ (lambda () '#f))
                                      (_%K118116118133%_
                                       (lambda (_%s118131%_) _%s118131%_)))
                                 (if (pair? _%sis118112118120%_)
                                     (let* ((_%hd118117118136%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%sis118112118120%_)))
                                            (_%s118139%_ _%hd118117118136%_))
                                       (_%K118116118133%_ _%s118139%_))
                                     (_%else118114118128%_)))))
                      (values _%precedence-list118110%_
                              _%super-struct118111%_))))))))
    (define c4-linearize__@
      (lambda (_%@@keywords118440%_ . _%args118441%_)
        (apply c4-linearize__%
               _%@@keywords118440%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords118440%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords118440%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords118440%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords118440%_
                  'get-name:
                  absent-value))
               _%args118441%_)))
    (define c4-linearize
      (lambda _%args118046118447%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args118046118447%_)))))
