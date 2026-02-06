(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1770405370)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords118040%_
               _%get-precedence-list118034118041%_
               _%struct?118035118042%_
               _%eq118036118043%_
               _%get-name118037118044%_
               _%rhead118045%_
               _%supers118046%_)
        (let* ((_%get-precedence-list118048%_
                (if (eq? _%get-precedence-list118034118041%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list118034118041%_))
               (_%struct?118050%_
                (if (eq? _%struct?118035118042%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?118035118042%_))
               (_%eq118052%_
                (if (eq? _%eq118036118043%_ absent-value)
                    eq?
                    _%eq118036118043%_))
               (_%get-name118054%_
                (if (eq? _%get-name118037118044%_ absent-value)
                    identity
                    _%get-name118037118044%_)))
          (if (null? _%supers118046%_)
              (values (reverse _%rhead118045%_) '#f)
              (if (null? (cdr _%supers118046%_))
                  (let ((_%pl118059%_
                         (_%get-precedence-list118048%_
                          (car _%supers118046%_))))
                    (values (append-reverse _%rhead118045%_ _%pl118059%_)
                            (let* ((_%pred118061%_ _%struct?118050%_)
                                   (_%lst118064%_ _%pl118059%_))
                              (if (procedure? _%pred118061%_)
                                  (let ((_%pred118069%_ _%pred118061%_))
                                    (declare (not safe))
                                    (__find _%pred118069%_ _%lst118064%_))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/c3
                                     'contract:
                                     'procedure?
                                     'value:
                                     _%pred118061%_)
                                    '#!void)))))
                  (let ((_%pls118090%_
                         (map _%get-precedence-list118048%_ _%supers118046%_))
                        (_%sis118091%_ '()))
                    (letrec* ((_%get-names118093%_
                               (lambda (_%lst118427%_)
                                 (map _%get-name118054%_ _%lst118427%_)))
                              (_%err118094%_
                               (lambda _%a118425%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names118093%_
                                         (reverse _%rhead118045%_))
                                        'precedence-lists:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names118093%_
                                                 _%pls118090%_))
                                        'single-inheritance-suffix:
                                        (_%get-names118093%_ _%sis118091%_)
                                        _%a118425%_)))
                              (_%eqlist?118095%_
                               (lambda (_%l1118419%_ _%l2118420%_)
                                 (let ((_%$e118422%_
                                        (eq? _%l1118419%_ _%l2118420%_)))
                                   (if _%$e118422%_
                                       _%$e118422%_
                                       (if (let ()
                                             (declare (not safe))
                                             (andmap__1
                                              _%eq118052%_
                                              _%l1118419%_
                                              _%l2118420%_))
                                           (let ((__tmp118475
                                                  (length _%l1118419%_))
                                                 (__tmp118474
                                                  (length _%l2118420%_)))
                                             (declare (not safe))
                                             (##fx= __tmp118475 __tmp118474))
                                           '#f)))))
                              (_%merge-sis!118096%_
                               (lambda (_%sis2118404%_)
                                 (if (null? _%sis2118404%_)
                                     '#!void
                                     (if (null? _%sis118091%_)
                                         (set! _%sis118091%_ _%sis2118404%_)
                                         (let _%loop118409%_ ((_%t1118411%_
                                                               _%sis118091%_)
                                                              (_%t2118412%_
                                                               _%sis2118404%_))
                                           (if (_%eqlist?118095%_
                                                _%t1118411%_
                                                _%sis2118404%_)
                                               '#!void
                                               (if (_%eqlist?118095%_
                                                    _%t2118412%_
                                                    _%sis118091%_)
                                                   (set! _%sis118091%_
                                                         _%sis2118404%_)
                                                   (if (null? _%t1118411%_)
                                                       (if (member (car _%sis118091%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%t2118412%_
                           _%eq118052%_)
                   (set! _%sis118091%_ _%sis2118404%_)
                   (_%err118094%_
                    'struct-incompatibility:
                    (cons (_%get-names118093%_ _%sis118091%_)
                          (cons (_%get-names118093%_ _%sis2118404%_) '()))))
               (if (null? _%t2118412%_)
                   (if (member (car _%sis2118404%_) _%t1118411%_ _%eq118052%_)
                       '#!void
                       (_%err118094%_
                        'struct-incompatibility:
                        (cons (_%get-names118093%_ _%sis118091%_)
                              (cons (_%get-names118093%_ _%sis2118404%_)
                                    '()))))
                   (_%loop118409%_
                    (cdr _%t1118411%_)
                    (cdr _%t2118412%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%rpls118097%_
                               (let ((__tmp118476
                                      (lambda (_%pl118375%_)
                                        (let ((_g118477_
                                               (let* ((_%pred118377%_
                                                       _%struct?118050%_)
                                                      (_%rhead118380%_
                                                       _%pl118375%_)
                                                      (_%tail118383%_ '()))
                                                 (if (procedure?
                                                      _%pred118377%_)
                                                     (let ((_%pred118388%_
                                                            _%pred118377%_))
                                                       (declare (not safe))
                                                       (__append-reverse-until
                                                        _%pred118388%_
                                                        _%rhead118380%_
                                                        _%tail118383%_))
                                                     (begin
                                                       (raise-contract-violation-error
                                                        '"contract violation"
                                                        'context:
                                                        'gerbil/runtime/c3
                                                        'contract:
                                                        'procedure?
                                                        'value:
                                                        _%pred118377%_)
                                                       '#!void)))))
                                          (begin
                                            (let ((_g118478_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g118477_)
                                                         (##values-length
                                                          _g118477_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g118478_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g118478_)))
                                            (let ((_%tl118401%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g118477_
                                                      0)))
                                                  (_%rh118402%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g118477_
                                                      1))))
                                              (begin
                                                (_%merge-sis!118096%_
                                                 _%tl118401%_)
                                                _%rh118402%_)))))))
                                 (declare (not safe))
                                 (##map __tmp118476 _%pls118090%_)))
                              (_%unsisr-rpl118098%_
                               (lambda (_%rpl118288%_)
                                 (let _%u118290%_ ((_%pl-rhead118292%_
                                                    _%rpl118288%_)
                                                   (_%pl-tail118293%_ '())
                                                   (_%sis-rhead118294%_
                                                    (reverse _%sis118091%_))
                                                   (_%sis-tail118295%_ '()))
                                   (let* ((_%pl-rhead118296118305%_
                                           _%pl-rhead118292%_)
                                          (_%E118299118309%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%pl-rhead118296118305%_
                                                    '([])
                                                    '([c . plrh]))
                                             '#!void)))
                                     (let ((_%K118303118372%_
                                            (lambda () _%pl-tail118293%_))
                                           (_%K118300118356%_
                                            (lambda (_%plrh118313%_
                                                     _%c118314%_)
                                              (if (member _%c118314%_
                                                          _%sis-tail118295%_
                                                          _%eq118052%_)
                                                  (_%err118094%_
                                                   'precedence-list-head:
                                                   (_%get-names118093%_
                                                    (reverse _%pl-rhead118292%_))
                                                   'precedence-list-tail:
                                                   (_%get-names118093%_
                                                    _%pl-tail118293%_)
                                                   'single-inheritance-head:
                                                   (_%get-names118093%_
                                                    (reverse _%sis-rhead118294%_))
                                                   'single-inheritance-tail:
                                                   (_%get-names118093%_
                                                    _%sis-tail118295%_)
                                                   'super-out-of-order-vs-single-inheritance-tail:
                                                   (_%get-name118054%_
                                                    _%c118314%_))
                                                  (let ((_g118479_
                                                         (let* ((_%pred118320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g118315118317%_)
                           (_%eq118052%_ _%c118314%_ _%g118315118317%_)))
                        (_%rhead118323%_ _%sis-rhead118294%_)
                        (_%tail118326%_ _%sis-tail118295%_)
                        (_%pred118331%_ _%pred118320%_))
                   (declare (not safe))
                   (__append-reverse-until
                    _%pred118331%_
                    _%rhead118323%_
                    _%tail118326%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g118480_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g118479_)
                           (##values-length _g118479_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g118480_ 2)))
                    (error "Context expects 2 values" _g118480_)))
              (let ((_%sis-rh2118353%_
                     (let () (declare (not safe)) (##values-ref _g118479_ 0)))
                    (_%sis-tl2118354%_
                     (let () (declare (not safe)) (##values-ref _g118479_ 1))))
                (if (null? _%sis-rh2118353%_)
                    (_%u118290%_
                     _%plrh118313%_
                     (cons _%c118314%_ _%pl-tail118293%_)
                     '()
                     _%sis-tl2118354%_)
                    (_%u118290%_
                     _%plrh118313%_
                     _%pl-tail118293%_
                     (cdr _%sis-rh2118353%_)
                     _%sis-tl2118354%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%try-match118298118368%_
                                              (lambda ()
                                                (if (pair? _%pl-rhead118296118305%_)
                                                    (let ((_%tl118302118361%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%pl-rhead118296118305%_)))
                                                          (_%hd118301118359%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%pl-rhead118296118305%_))))
                                                      (let ((_%c118364%_
                                                             _%hd118301118359%_)
                                                            (_%plrh118366%_
                                                             _%tl118302118361%_))
                                                        (_%K118300118356%_
                                                         _%plrh118366%_
                                                         _%c118364%_)))
                                                    (_%E118299118309%_)))))
                                         (if (null? _%pl-rhead118296118305%_)
                                             (_%K118303118372%_)
                                             (_%try-match118298118368%_))))))))
                              (_g118481_
                               (let ((_g118482_
                                      (let ((__tmp118484
                                             (reverse _%supers118046%_)))
                                        (declare (not safe))
                                        (append1!
                                         _%rpls118097%_
                                         __tmp118484))))
                                 #!void
                                 _g118482_))
                              (_%hpls118099%_
                               (let ()
                                 (declare (not safe))
                                 (##map _%unsisr-rpl118098%_ _%rpls118097%_)))
                              (_%c3-select-next118100%_
                               (lambda (_%tails118238%_)
                                 (let ((_%candidate?118244%_
                                        (lambda (_%c118240%_)
                                          (let ((__tmp118485
                                                 (lambda (_%tail118242%_)
                                                   (not (member _%c118240%_
                                                                (cdr _%tail118242%_)
                                                                _%eq118052%_)))))
                                            (declare (not safe))
                                            (andmap__0
                                             __tmp118485
                                             _%tails118238%_)))))
                                   (let _%loop118246%_ ((_%ts118248%_
                                                         _%tails118238%_))
                                     (let* ((_%ts118249118259%_ _%ts118248%_)
                                            (_%else118251118267%_
                                             (lambda () (_%err118094%_)))
                                            (_%K118253118273%_
                                             (lambda (_%rts118270%_
                                                      _%c118271%_)
                                               (if (_%candidate?118244%_
                                                    _%c118271%_)
                                                   _%c118271%_
                                                   (_%loop118246%_
                                                    _%rts118270%_)))))
                                       (if (pair? _%ts118249118259%_)
                                           (let ((_%hd118254118276%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%ts118249118259%_)))
                                                 (_%tl118255118278%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%ts118249118259%_))))
                                             (if (pair? _%hd118254118276%_)
                                                 (let* ((_%hd118256118281%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%hd118254118276%_)))
                                                        (_%c118284%_
                                                         _%hd118256118281%_)
                                                        (_%rts118286%_
                                                         _%tl118255118278%_))
                                                   (_%K118253118273%_
                                                    _%rts118286%_
                                                    _%c118284%_))
                                                 (_%err118094%_)))
                                           (_%err118094%_)))))))
                              (_%remove-next!118101%_
                               (lambda (_%next118183%_ _%tails118184%_)
                                 (let _%loop118186%_ ((_%t118188%_
                                                       _%tails118184%_))
                                   (let* ((_%t118189118200%_ _%t118188%_)
                                          (_%E118192118204%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%t118189118200%_
                                                    '([])
                                                    '([[head . tail] . more]))
                                             '#!void)))
                                     (let ((_%K118198118235%_
                                            (lambda () _%tails118184%_))
                                           (_%K118193118212%_
                                            (lambda (_%more118208%_
                                                     _%tail118209%_
                                                     _%head118210%_)
                                              (if (_%eq118052%_
                                                   _%head118210%_
                                                   _%next118183%_)
                                                  (set-car!
                                                   _%t118188%_
                                                   _%tail118209%_)
                                                  '#!void)
                                              (_%loop118186%_
                                               _%more118208%_))))
                                       (let ((_%try-match118191118231%_
                                              (lambda ()
                                                (if (pair? _%t118189118200%_)
                                                    (let ((_%tl118195118217%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%t118189118200%_)))
                                                          (_%hd118194118215%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%t118189118200%_))))
                                                      (if (pair? _%hd118194118215%_)
                                                          (let ((_%tl118197118222%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd118194118215%_)))
                        (_%hd118196118220%_
                         (let ()
                           (declare (not safe))
                           (##car _%hd118194118215%_))))
                    (let ((_%head118225%_ _%hd118196118220%_)
                          (_%tail118227%_ _%tl118197118222%_)
                          (_%more118229%_ _%tl118195118217%_))
                      (_%K118193118212%_
                       _%more118229%_
                       _%tail118227%_
                       _%head118225%_)))
                  (_%E118192118204%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E118192118204%_)))))
                                         (if (null? _%t118189118200%_)
                                             (_%K118198118235%_)
                                             (_%try-match118191118231%_))))))))
                              (_%precedence-list118102%_
                               (let _%c3loop118133%_ ((_%rhead118135%_
                                                       _%rhead118045%_)
                                                      (_%tails118136%_
                                                       _%hpls118099%_))
                                 (let* ((_%tails118138%_
                                         (let ()
                                           (declare (not safe))
                                           (remove-nulls! _%tails118136%_)))
                                        (_%tails118139118149%_ _%tails118138%_)
                                        (_%else118142118160%_
                                         (lambda ()
                                           (let ((_%next118157%_
                                                  (_%c3-select-next118100%_
                                                   _%tails118138%_)))
                                             (_%c3loop118133%_
                                              (cons _%next118157%_
                                                    _%rhead118135%_)
                                              (_%remove-next!118101%_
                                               _%next118157%_
                                               _%tails118138%_))))))
                                   (let ((_%K118147118180%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead118135%_
                                             _%sis118091%_)))
                                         (_%K118144118166%_
                                          (lambda (_%tail118164%_)
                                            (append-reverse
                                             _%rhead118135%_
                                             (append _%tail118164%_
                                                     _%sis118091%_)))))
                                     (let ((_%try-match118141118176%_
                                            (lambda ()
                                              (if (pair? _%tails118139118149%_)
                                                  (let ((_%tl118146118171%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tails118139118149%_)))
                                                        (_%hd118145118169%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tails118139118149%_))))
                                                    (if (null? _%tl118146118171%_)
                                                        (let ((_%tail118174%_
                                                               _%hd118145118169%_))
                                                          (_%K118144118166%_
                                                           _%tail118174%_))
                                                        (_%else118142118160%_)))
                                                  (_%else118142118160%_)))))
                                       (if (null? _%tails118139118149%_)
                                           (_%K118147118180%_)
                                           (_%try-match118141118176%_)))))))
                              (_%super-struct118103%_
                               (let* ((_%sis118104118112%_ _%sis118091%_)
                                      (_%else118106118120%_ (lambda () '#f))
                                      (_%K118108118125%_
                                       (lambda (_%s118123%_) _%s118123%_)))
                                 (if (pair? _%sis118104118112%_)
                                     (let* ((_%hd118109118128%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%sis118104118112%_)))
                                            (_%s118131%_ _%hd118109118128%_))
                                       (_%K118108118125%_ _%s118131%_))
                                     (_%else118106118120%_)))))
                      (values _%precedence-list118102%_
                              _%super-struct118103%_))))))))
    (define c4-linearize__@
      (lambda (_%@@keywords118432%_ . _%args118433%_)
        (apply c4-linearize__%
               _%@@keywords118432%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords118432%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords118432%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords118432%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords118432%_
                  'get-name:
                  absent-value))
               _%args118433%_)))
    (define c4-linearize
      (lambda _%args118038118439%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args118038118439%_)))))
