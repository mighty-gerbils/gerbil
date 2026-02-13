(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1771022573)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords120022%_
               _%get-precedence-list120016120023%_
               _%struct?120017120024%_
               _%eq120018120025%_
               _%get-name120019120026%_
               _%rhead120027%_
               _%supers120028%_)
        (let* ((_%get-precedence-list120030%_
                (if (eq? _%get-precedence-list120016120023%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list120016120023%_))
               (_%struct?120032%_
                (if (eq? _%struct?120017120024%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?120017120024%_))
               (_%eq120034%_
                (if (eq? _%eq120018120025%_ absent-value)
                    eq?
                    _%eq120018120025%_))
               (_%get-name120036%_
                (if (eq? _%get-name120019120026%_ absent-value)
                    identity
                    _%get-name120019120026%_)))
          (if (null? _%supers120028%_)
              (values (reverse _%rhead120027%_) '#f)
              (if (null? (cdr _%supers120028%_))
                  (let ((_%pl120041%_
                         (_%get-precedence-list120030%_
                          (car _%supers120028%_))))
                    (values (append-reverse _%rhead120027%_ _%pl120041%_)
                            (let* ((_%pred120043%_ _%struct?120032%_)
                                   (_%lst120046%_ _%pl120041%_))
                              (if (procedure? _%pred120043%_)
                                  (let ((_%pred120051%_ _%pred120043%_))
                                    (declare (not safe))
                                    (__find _%pred120051%_ _%lst120046%_))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/c3
                                     'contract:
                                     'procedure?
                                     'value:
                                     _%pred120043%_)
                                    '#!void)))))
                  (let ((_%pls120072%_
                         (map _%get-precedence-list120030%_ _%supers120028%_))
                        (_%sis120073%_ '()))
                    (letrec* ((_%get-names120075%_
                               (lambda (_%lst120409%_)
                                 (map _%get-name120036%_ _%lst120409%_)))
                              (_%err120076%_
                               (lambda _%a120407%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names120075%_
                                         (reverse _%rhead120027%_))
                                        'precedence-lists:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names120075%_
                                                 _%pls120072%_))
                                        'single-inheritance-suffix:
                                        (_%get-names120075%_ _%sis120073%_)
                                        _%a120407%_)))
                              (_%eqlist?120077%_
                               (lambda (_%l1120401%_ _%l2120402%_)
                                 (let ((_%$e120404%_
                                        (eq? _%l1120401%_ _%l2120402%_)))
                                   (if _%$e120404%_
                                       _%$e120404%_
                                       (if (let ()
                                             (declare (not safe))
                                             (andmap__1
                                              _%eq120034%_
                                              _%l1120401%_
                                              _%l2120402%_))
                                           (let ((__tmp120457
                                                  (length _%l1120401%_))
                                                 (__tmp120456
                                                  (length _%l2120402%_)))
                                             (declare (not safe))
                                             (##fx= __tmp120457 __tmp120456))
                                           '#f)))))
                              (_%merge-sis!120078%_
                               (lambda (_%sis2120386%_)
                                 (if (null? _%sis2120386%_)
                                     '#!void
                                     (if (null? _%sis120073%_)
                                         (set! _%sis120073%_ _%sis2120386%_)
                                         (let _%loop120391%_ ((_%t1120393%_
                                                               _%sis120073%_)
                                                              (_%t2120394%_
                                                               _%sis2120386%_))
                                           (if (_%eqlist?120077%_
                                                _%t1120393%_
                                                _%sis2120386%_)
                                               '#!void
                                               (if (_%eqlist?120077%_
                                                    _%t2120394%_
                                                    _%sis120073%_)
                                                   (set! _%sis120073%_
                                                         _%sis2120386%_)
                                                   (if (null? _%t1120393%_)
                                                       (if (member (car _%sis120073%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%t2120394%_
                           _%eq120034%_)
                   (set! _%sis120073%_ _%sis2120386%_)
                   (_%err120076%_
                    'struct-incompatibility:
                    (cons (_%get-names120075%_ _%sis120073%_)
                          (cons (_%get-names120075%_ _%sis2120386%_) '()))))
               (if (null? _%t2120394%_)
                   (if (member (car _%sis2120386%_) _%t1120393%_ _%eq120034%_)
                       '#!void
                       (_%err120076%_
                        'struct-incompatibility:
                        (cons (_%get-names120075%_ _%sis120073%_)
                              (cons (_%get-names120075%_ _%sis2120386%_)
                                    '()))))
                   (_%loop120391%_
                    (cdr _%t1120393%_)
                    (cdr _%t2120394%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%rpls120079%_
                               (let ((__tmp120458
                                      (lambda (_%pl120357%_)
                                        (let ((_g120459_
                                               (let* ((_%pred120359%_
                                                       _%struct?120032%_)
                                                      (_%rhead120362%_
                                                       _%pl120357%_)
                                                      (_%tail120365%_ '()))
                                                 (if (procedure?
                                                      _%pred120359%_)
                                                     (let ((_%pred120370%_
                                                            _%pred120359%_))
                                                       (declare (not safe))
                                                       (__append-reverse-until
                                                        _%pred120370%_
                                                        _%rhead120362%_
                                                        _%tail120365%_))
                                                     (begin
                                                       (raise-contract-violation-error
                                                        '"contract violation"
                                                        'context:
                                                        'gerbil/runtime/c3
                                                        'contract:
                                                        'procedure?
                                                        'value:
                                                        _%pred120359%_)
                                                       '#!void)))))
                                          (begin
                                            (let ((_g120460_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g120459_)
                                                         (##values-length
                                                          _g120459_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g120460_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g120460_)))
                                            (let ((_%tl120383%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g120459_
                                                      0)))
                                                  (_%rh120384%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g120459_
                                                      1))))
                                              (begin
                                                (_%merge-sis!120078%_
                                                 _%tl120383%_)
                                                _%rh120384%_)))))))
                                 (declare (not safe))
                                 (##map __tmp120458 _%pls120072%_)))
                              (_%unsisr-rpl120080%_
                               (lambda (_%rpl120270%_)
                                 (let _%u120272%_ ((_%pl-rhead120274%_
                                                    _%rpl120270%_)
                                                   (_%pl-tail120275%_ '())
                                                   (_%sis-rhead120276%_
                                                    (reverse _%sis120073%_))
                                                   (_%sis-tail120277%_ '()))
                                   (let* ((_%pl-rhead120278120287%_
                                           _%pl-rhead120274%_)
                                          (_%E120281120291%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%pl-rhead120278120287%_
                                                    '([])
                                                    '([c . plrh]))
                                             '#!void)))
                                     (let ((_%K120285120354%_
                                            (lambda () _%pl-tail120275%_))
                                           (_%K120282120338%_
                                            (lambda (_%plrh120295%_
                                                     _%c120296%_)
                                              (if (member _%c120296%_
                                                          _%sis-tail120277%_
                                                          _%eq120034%_)
                                                  (_%err120076%_
                                                   'precedence-list-head:
                                                   (_%get-names120075%_
                                                    (reverse _%pl-rhead120274%_))
                                                   'precedence-list-tail:
                                                   (_%get-names120075%_
                                                    _%pl-tail120275%_)
                                                   'single-inheritance-head:
                                                   (_%get-names120075%_
                                                    (reverse _%sis-rhead120276%_))
                                                   'single-inheritance-tail:
                                                   (_%get-names120075%_
                                                    _%sis-tail120277%_)
                                                   'super-out-of-order-vs-single-inheritance-tail:
                                                   (_%get-name120036%_
                                                    _%c120296%_))
                                                  (let ((_g120461_
                                                         (let* ((_%pred120302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g120297120299%_)
                           (_%eq120034%_ _%c120296%_ _%g120297120299%_)))
                        (_%rhead120305%_ _%sis-rhead120276%_)
                        (_%tail120308%_ _%sis-tail120277%_)
                        (_%pred120313%_ _%pred120302%_))
                   (declare (not safe))
                   (__append-reverse-until
                    _%pred120313%_
                    _%rhead120305%_
                    _%tail120308%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g120462_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g120461_)
                           (##values-length _g120461_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g120462_ 2)))
                    (error "Context expects 2 values" _g120462_)))
              (let ((_%sis-rh2120335%_
                     (let () (declare (not safe)) (##values-ref _g120461_ 0)))
                    (_%sis-tl2120336%_
                     (let () (declare (not safe)) (##values-ref _g120461_ 1))))
                (if (null? _%sis-rh2120335%_)
                    (_%u120272%_
                     _%plrh120295%_
                     (cons _%c120296%_ _%pl-tail120275%_)
                     '()
                     _%sis-tl2120336%_)
                    (_%u120272%_
                     _%plrh120295%_
                     _%pl-tail120275%_
                     (cdr _%sis-rh2120335%_)
                     _%sis-tl2120336%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%try-match120280120350%_
                                              (lambda ()
                                                (if (pair? _%pl-rhead120278120287%_)
                                                    (let ((_%tl120284120343%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%pl-rhead120278120287%_)))
                                                          (_%hd120283120341%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%pl-rhead120278120287%_))))
                                                      (let ((_%c120346%_
                                                             _%hd120283120341%_)
                                                            (_%plrh120348%_
                                                             _%tl120284120343%_))
                                                        (_%K120282120338%_
                                                         _%plrh120348%_
                                                         _%c120346%_)))
                                                    (_%E120281120291%_)))))
                                         (if (null? _%pl-rhead120278120287%_)
                                             (_%K120285120354%_)
                                             (_%try-match120280120350%_))))))))
                              (_g120463_
                               (let ((_g120464_
                                      (let ((__tmp120466
                                             (reverse _%supers120028%_)))
                                        (declare (not safe))
                                        (append1!
                                         _%rpls120079%_
                                         __tmp120466))))
                                 #!void
                                 _g120464_))
                              (_%hpls120081%_
                               (let ()
                                 (declare (not safe))
                                 (##map _%unsisr-rpl120080%_ _%rpls120079%_)))
                              (_%c3-select-next120082%_
                               (lambda (_%tails120220%_)
                                 (let ((_%candidate?120226%_
                                        (lambda (_%c120222%_)
                                          (let ((__tmp120467
                                                 (lambda (_%tail120224%_)
                                                   (not (member _%c120222%_
                                                                (cdr _%tail120224%_)
                                                                _%eq120034%_)))))
                                            (declare (not safe))
                                            (andmap__0
                                             __tmp120467
                                             _%tails120220%_)))))
                                   (let _%loop120228%_ ((_%ts120230%_
                                                         _%tails120220%_))
                                     (let* ((_%ts120231120241%_ _%ts120230%_)
                                            (_%else120233120249%_
                                             (lambda () (_%err120076%_)))
                                            (_%K120235120255%_
                                             (lambda (_%rts120252%_
                                                      _%c120253%_)
                                               (if (_%candidate?120226%_
                                                    _%c120253%_)
                                                   _%c120253%_
                                                   (_%loop120228%_
                                                    _%rts120252%_)))))
                                       (if (pair? _%ts120231120241%_)
                                           (let ((_%hd120236120258%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%ts120231120241%_)))
                                                 (_%tl120237120260%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%ts120231120241%_))))
                                             (if (pair? _%hd120236120258%_)
                                                 (let* ((_%hd120238120263%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%hd120236120258%_)))
                                                        (_%c120266%_
                                                         _%hd120238120263%_)
                                                        (_%rts120268%_
                                                         _%tl120237120260%_))
                                                   (_%K120235120255%_
                                                    _%rts120268%_
                                                    _%c120266%_))
                                                 (_%err120076%_)))
                                           (_%err120076%_)))))))
                              (_%remove-next!120083%_
                               (lambda (_%next120165%_ _%tails120166%_)
                                 (let _%loop120168%_ ((_%t120170%_
                                                       _%tails120166%_))
                                   (let* ((_%t120171120182%_ _%t120170%_)
                                          (_%E120174120186%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%t120171120182%_
                                                    '([])
                                                    '([[head . tail] . more]))
                                             '#!void)))
                                     (let ((_%K120180120217%_
                                            (lambda () _%tails120166%_))
                                           (_%K120175120194%_
                                            (lambda (_%more120190%_
                                                     _%tail120191%_
                                                     _%head120192%_)
                                              (if (_%eq120034%_
                                                   _%head120192%_
                                                   _%next120165%_)
                                                  (set-car!
                                                   _%t120170%_
                                                   _%tail120191%_)
                                                  '#!void)
                                              (_%loop120168%_
                                               _%more120190%_))))
                                       (let ((_%try-match120173120213%_
                                              (lambda ()
                                                (if (pair? _%t120171120182%_)
                                                    (let ((_%tl120177120199%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%t120171120182%_)))
                                                          (_%hd120176120197%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%t120171120182%_))))
                                                      (if (pair? _%hd120176120197%_)
                                                          (let ((_%tl120179120204%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd120176120197%_)))
                        (_%hd120178120202%_
                         (let ()
                           (declare (not safe))
                           (##car _%hd120176120197%_))))
                    (let ((_%head120207%_ _%hd120178120202%_)
                          (_%tail120209%_ _%tl120179120204%_)
                          (_%more120211%_ _%tl120177120199%_))
                      (_%K120175120194%_
                       _%more120211%_
                       _%tail120209%_
                       _%head120207%_)))
                  (_%E120174120186%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120174120186%_)))))
                                         (if (null? _%t120171120182%_)
                                             (_%K120180120217%_)
                                             (_%try-match120173120213%_))))))))
                              (_%precedence-list120084%_
                               (let _%c3loop120115%_ ((_%rhead120117%_
                                                       _%rhead120027%_)
                                                      (_%tails120118%_
                                                       _%hpls120081%_))
                                 (let* ((_%tails120120%_
                                         (let ()
                                           (declare (not safe))
                                           (remove-nulls! _%tails120118%_)))
                                        (_%tails120121120131%_ _%tails120120%_)
                                        (_%else120124120142%_
                                         (lambda ()
                                           (let ((_%next120139%_
                                                  (_%c3-select-next120082%_
                                                   _%tails120120%_)))
                                             (_%c3loop120115%_
                                              (cons _%next120139%_
                                                    _%rhead120117%_)
                                              (_%remove-next!120083%_
                                               _%next120139%_
                                               _%tails120120%_))))))
                                   (let ((_%K120129120162%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead120117%_
                                             _%sis120073%_)))
                                         (_%K120126120148%_
                                          (lambda (_%tail120146%_)
                                            (append-reverse
                                             _%rhead120117%_
                                             (append _%tail120146%_
                                                     _%sis120073%_)))))
                                     (let ((_%try-match120123120158%_
                                            (lambda ()
                                              (if (pair? _%tails120121120131%_)
                                                  (let ((_%tl120128120153%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tails120121120131%_)))
                                                        (_%hd120127120151%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tails120121120131%_))))
                                                    (if (null? _%tl120128120153%_)
                                                        (let ((_%tail120156%_
                                                               _%hd120127120151%_))
                                                          (_%K120126120148%_
                                                           _%tail120156%_))
                                                        (_%else120124120142%_)))
                                                  (_%else120124120142%_)))))
                                       (if (null? _%tails120121120131%_)
                                           (_%K120129120162%_)
                                           (_%try-match120123120158%_)))))))
                              (_%super-struct120085%_
                               (let* ((_%sis120086120094%_ _%sis120073%_)
                                      (_%else120088120102%_ (lambda () '#f))
                                      (_%K120090120107%_
                                       (lambda (_%s120105%_) _%s120105%_)))
                                 (if (pair? _%sis120086120094%_)
                                     (let* ((_%hd120091120110%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%sis120086120094%_)))
                                            (_%s120113%_ _%hd120091120110%_))
                                       (_%K120090120107%_ _%s120113%_))
                                     (_%else120088120102%_)))))
                      (values _%precedence-list120084%_
                              _%super-struct120085%_))))))))
    (define c4-linearize__@
      (lambda (_%@@keywords120414%_ . _%args120415%_)
        (apply c4-linearize__%
               _%@@keywords120414%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords120414%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords120414%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords120414%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords120414%_
                  'get-name:
                  absent-value))
               _%args120415%_)))
    (define c4-linearize
      (lambda _%args120020120421%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args120020120421%_)))))
