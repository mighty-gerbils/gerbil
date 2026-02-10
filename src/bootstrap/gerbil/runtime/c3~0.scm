(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1770744573)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords119202%_
               _%get-precedence-list119196119203%_
               _%struct?119197119204%_
               _%eq119198119205%_
               _%get-name119199119206%_
               _%rhead119207%_
               _%supers119208%_)
        (let* ((_%get-precedence-list119210%_
                (if (eq? _%get-precedence-list119196119203%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list119196119203%_))
               (_%struct?119212%_
                (if (eq? _%struct?119197119204%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?119197119204%_))
               (_%eq119214%_
                (if (eq? _%eq119198119205%_ absent-value)
                    eq?
                    _%eq119198119205%_))
               (_%get-name119216%_
                (if (eq? _%get-name119199119206%_ absent-value)
                    identity
                    _%get-name119199119206%_)))
          (if (null? _%supers119208%_)
              (values (reverse _%rhead119207%_) '#f)
              (if (null? (cdr _%supers119208%_))
                  (let ((_%pl119221%_
                         (_%get-precedence-list119210%_
                          (car _%supers119208%_))))
                    (values (append-reverse _%rhead119207%_ _%pl119221%_)
                            (let* ((_%pred119223%_ _%struct?119212%_)
                                   (_%lst119226%_ _%pl119221%_))
                              (if (procedure? _%pred119223%_)
                                  (let ((_%pred119231%_ _%pred119223%_))
                                    (declare (not safe))
                                    (__find _%pred119231%_ _%lst119226%_))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/c3
                                     'contract:
                                     'procedure?
                                     'value:
                                     _%pred119223%_)
                                    '#!void)))))
                  (let ((_%pls119252%_
                         (map _%get-precedence-list119210%_ _%supers119208%_))
                        (_%sis119253%_ '()))
                    (letrec* ((_%get-names119255%_
                               (lambda (_%lst119589%_)
                                 (map _%get-name119216%_ _%lst119589%_)))
                              (_%err119256%_
                               (lambda _%a119587%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names119255%_
                                         (reverse _%rhead119207%_))
                                        'precedence-lists:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names119255%_
                                                 _%pls119252%_))
                                        'single-inheritance-suffix:
                                        (_%get-names119255%_ _%sis119253%_)
                                        _%a119587%_)))
                              (_%eqlist?119257%_
                               (lambda (_%l1119581%_ _%l2119582%_)
                                 (let ((_%$e119584%_
                                        (eq? _%l1119581%_ _%l2119582%_)))
                                   (if _%$e119584%_
                                       _%$e119584%_
                                       (if (let ()
                                             (declare (not safe))
                                             (andmap__1
                                              _%eq119214%_
                                              _%l1119581%_
                                              _%l2119582%_))
                                           (let ((__tmp119637
                                                  (length _%l1119581%_))
                                                 (__tmp119636
                                                  (length _%l2119582%_)))
                                             (declare (not safe))
                                             (##fx= __tmp119637 __tmp119636))
                                           '#f)))))
                              (_%merge-sis!119258%_
                               (lambda (_%sis2119566%_)
                                 (if (null? _%sis2119566%_)
                                     '#!void
                                     (if (null? _%sis119253%_)
                                         (set! _%sis119253%_ _%sis2119566%_)
                                         (let _%loop119571%_ ((_%t1119573%_
                                                               _%sis119253%_)
                                                              (_%t2119574%_
                                                               _%sis2119566%_))
                                           (if (_%eqlist?119257%_
                                                _%t1119573%_
                                                _%sis2119566%_)
                                               '#!void
                                               (if (_%eqlist?119257%_
                                                    _%t2119574%_
                                                    _%sis119253%_)
                                                   (set! _%sis119253%_
                                                         _%sis2119566%_)
                                                   (if (null? _%t1119573%_)
                                                       (if (member (car _%sis119253%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%t2119574%_
                           _%eq119214%_)
                   (set! _%sis119253%_ _%sis2119566%_)
                   (_%err119256%_
                    'struct-incompatibility:
                    (cons (_%get-names119255%_ _%sis119253%_)
                          (cons (_%get-names119255%_ _%sis2119566%_) '()))))
               (if (null? _%t2119574%_)
                   (if (member (car _%sis2119566%_) _%t1119573%_ _%eq119214%_)
                       '#!void
                       (_%err119256%_
                        'struct-incompatibility:
                        (cons (_%get-names119255%_ _%sis119253%_)
                              (cons (_%get-names119255%_ _%sis2119566%_)
                                    '()))))
                   (_%loop119571%_
                    (cdr _%t1119573%_)
                    (cdr _%t2119574%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%rpls119259%_
                               (let ((__tmp119638
                                      (lambda (_%pl119537%_)
                                        (let ((_g119639_
                                               (let* ((_%pred119539%_
                                                       _%struct?119212%_)
                                                      (_%rhead119542%_
                                                       _%pl119537%_)
                                                      (_%tail119545%_ '()))
                                                 (if (procedure?
                                                      _%pred119539%_)
                                                     (let ((_%pred119550%_
                                                            _%pred119539%_))
                                                       (declare (not safe))
                                                       (__append-reverse-until
                                                        _%pred119550%_
                                                        _%rhead119542%_
                                                        _%tail119545%_))
                                                     (begin
                                                       (raise-contract-violation-error
                                                        '"contract violation"
                                                        'context:
                                                        'gerbil/runtime/c3
                                                        'contract:
                                                        'procedure?
                                                        'value:
                                                        _%pred119539%_)
                                                       '#!void)))))
                                          (begin
                                            (let ((_g119640_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g119639_)
                                                         (##values-length
                                                          _g119639_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g119640_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g119640_)))
                                            (let ((_%tl119563%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g119639_
                                                      0)))
                                                  (_%rh119564%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g119639_
                                                      1))))
                                              (begin
                                                (_%merge-sis!119258%_
                                                 _%tl119563%_)
                                                _%rh119564%_)))))))
                                 (declare (not safe))
                                 (##map __tmp119638 _%pls119252%_)))
                              (_%unsisr-rpl119260%_
                               (lambda (_%rpl119450%_)
                                 (let _%u119452%_ ((_%pl-rhead119454%_
                                                    _%rpl119450%_)
                                                   (_%pl-tail119455%_ '())
                                                   (_%sis-rhead119456%_
                                                    (reverse _%sis119253%_))
                                                   (_%sis-tail119457%_ '()))
                                   (let* ((_%pl-rhead119458119467%_
                                           _%pl-rhead119454%_)
                                          (_%E119461119471%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%pl-rhead119458119467%_
                                                    '([])
                                                    '([c . plrh]))
                                             '#!void)))
                                     (let ((_%K119465119534%_
                                            (lambda () _%pl-tail119455%_))
                                           (_%K119462119518%_
                                            (lambda (_%plrh119475%_
                                                     _%c119476%_)
                                              (if (member _%c119476%_
                                                          _%sis-tail119457%_
                                                          _%eq119214%_)
                                                  (_%err119256%_
                                                   'precedence-list-head:
                                                   (_%get-names119255%_
                                                    (reverse _%pl-rhead119454%_))
                                                   'precedence-list-tail:
                                                   (_%get-names119255%_
                                                    _%pl-tail119455%_)
                                                   'single-inheritance-head:
                                                   (_%get-names119255%_
                                                    (reverse _%sis-rhead119456%_))
                                                   'single-inheritance-tail:
                                                   (_%get-names119255%_
                                                    _%sis-tail119457%_)
                                                   'super-out-of-order-vs-single-inheritance-tail:
                                                   (_%get-name119216%_
                                                    _%c119476%_))
                                                  (let ((_g119641_
                                                         (let* ((_%pred119482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g119477119479%_)
                           (_%eq119214%_ _%c119476%_ _%g119477119479%_)))
                        (_%rhead119485%_ _%sis-rhead119456%_)
                        (_%tail119488%_ _%sis-tail119457%_)
                        (_%pred119493%_ _%pred119482%_))
                   (declare (not safe))
                   (__append-reverse-until
                    _%pred119493%_
                    _%rhead119485%_
                    _%tail119488%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g119642_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g119641_)
                           (##values-length _g119641_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g119642_ 2)))
                    (error "Context expects 2 values" _g119642_)))
              (let ((_%sis-rh2119515%_
                     (let () (declare (not safe)) (##values-ref _g119641_ 0)))
                    (_%sis-tl2119516%_
                     (let () (declare (not safe)) (##values-ref _g119641_ 1))))
                (if (null? _%sis-rh2119515%_)
                    (_%u119452%_
                     _%plrh119475%_
                     (cons _%c119476%_ _%pl-tail119455%_)
                     '()
                     _%sis-tl2119516%_)
                    (_%u119452%_
                     _%plrh119475%_
                     _%pl-tail119455%_
                     (cdr _%sis-rh2119515%_)
                     _%sis-tl2119516%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%try-match119460119530%_
                                              (lambda ()
                                                (if (pair? _%pl-rhead119458119467%_)
                                                    (let ((_%tl119464119523%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%pl-rhead119458119467%_)))
                                                          (_%hd119463119521%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%pl-rhead119458119467%_))))
                                                      (let ((_%c119526%_
                                                             _%hd119463119521%_)
                                                            (_%plrh119528%_
                                                             _%tl119464119523%_))
                                                        (_%K119462119518%_
                                                         _%plrh119528%_
                                                         _%c119526%_)))
                                                    (_%E119461119471%_)))))
                                         (if (null? _%pl-rhead119458119467%_)
                                             (_%K119465119534%_)
                                             (_%try-match119460119530%_))))))))
                              (_g119643_
                               (let ((_g119644_
                                      (let ((__tmp119646
                                             (reverse _%supers119208%_)))
                                        (declare (not safe))
                                        (append1!
                                         _%rpls119259%_
                                         __tmp119646))))
                                 #!void
                                 _g119644_))
                              (_%hpls119261%_
                               (let ()
                                 (declare (not safe))
                                 (##map _%unsisr-rpl119260%_ _%rpls119259%_)))
                              (_%c3-select-next119262%_
                               (lambda (_%tails119400%_)
                                 (let ((_%candidate?119406%_
                                        (lambda (_%c119402%_)
                                          (let ((__tmp119647
                                                 (lambda (_%tail119404%_)
                                                   (not (member _%c119402%_
                                                                (cdr _%tail119404%_)
                                                                _%eq119214%_)))))
                                            (declare (not safe))
                                            (andmap__0
                                             __tmp119647
                                             _%tails119400%_)))))
                                   (let _%loop119408%_ ((_%ts119410%_
                                                         _%tails119400%_))
                                     (let* ((_%ts119411119421%_ _%ts119410%_)
                                            (_%else119413119429%_
                                             (lambda () (_%err119256%_)))
                                            (_%K119415119435%_
                                             (lambda (_%rts119432%_
                                                      _%c119433%_)
                                               (if (_%candidate?119406%_
                                                    _%c119433%_)
                                                   _%c119433%_
                                                   (_%loop119408%_
                                                    _%rts119432%_)))))
                                       (if (pair? _%ts119411119421%_)
                                           (let ((_%hd119416119438%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%ts119411119421%_)))
                                                 (_%tl119417119440%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%ts119411119421%_))))
                                             (if (pair? _%hd119416119438%_)
                                                 (let* ((_%hd119418119443%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%hd119416119438%_)))
                                                        (_%c119446%_
                                                         _%hd119418119443%_)
                                                        (_%rts119448%_
                                                         _%tl119417119440%_))
                                                   (_%K119415119435%_
                                                    _%rts119448%_
                                                    _%c119446%_))
                                                 (_%err119256%_)))
                                           (_%err119256%_)))))))
                              (_%remove-next!119263%_
                               (lambda (_%next119345%_ _%tails119346%_)
                                 (let _%loop119348%_ ((_%t119350%_
                                                       _%tails119346%_))
                                   (let* ((_%t119351119362%_ _%t119350%_)
                                          (_%E119354119366%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%t119351119362%_
                                                    '([])
                                                    '([[head . tail] . more]))
                                             '#!void)))
                                     (let ((_%K119360119397%_
                                            (lambda () _%tails119346%_))
                                           (_%K119355119374%_
                                            (lambda (_%more119370%_
                                                     _%tail119371%_
                                                     _%head119372%_)
                                              (if (_%eq119214%_
                                                   _%head119372%_
                                                   _%next119345%_)
                                                  (set-car!
                                                   _%t119350%_
                                                   _%tail119371%_)
                                                  '#!void)
                                              (_%loop119348%_
                                               _%more119370%_))))
                                       (let ((_%try-match119353119393%_
                                              (lambda ()
                                                (if (pair? _%t119351119362%_)
                                                    (let ((_%tl119357119379%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%t119351119362%_)))
                                                          (_%hd119356119377%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%t119351119362%_))))
                                                      (if (pair? _%hd119356119377%_)
                                                          (let ((_%tl119359119384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd119356119377%_)))
                        (_%hd119358119382%_
                         (let ()
                           (declare (not safe))
                           (##car _%hd119356119377%_))))
                    (let ((_%head119387%_ _%hd119358119382%_)
                          (_%tail119389%_ _%tl119359119384%_)
                          (_%more119391%_ _%tl119357119379%_))
                      (_%K119355119374%_
                       _%more119391%_
                       _%tail119389%_
                       _%head119387%_)))
                  (_%E119354119366%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E119354119366%_)))))
                                         (if (null? _%t119351119362%_)
                                             (_%K119360119397%_)
                                             (_%try-match119353119393%_))))))))
                              (_%precedence-list119264%_
                               (let _%c3loop119295%_ ((_%rhead119297%_
                                                       _%rhead119207%_)
                                                      (_%tails119298%_
                                                       _%hpls119261%_))
                                 (let* ((_%tails119300%_
                                         (let ()
                                           (declare (not safe))
                                           (remove-nulls! _%tails119298%_)))
                                        (_%tails119301119311%_ _%tails119300%_)
                                        (_%else119304119322%_
                                         (lambda ()
                                           (let ((_%next119319%_
                                                  (_%c3-select-next119262%_
                                                   _%tails119300%_)))
                                             (_%c3loop119295%_
                                              (cons _%next119319%_
                                                    _%rhead119297%_)
                                              (_%remove-next!119263%_
                                               _%next119319%_
                                               _%tails119300%_))))))
                                   (let ((_%K119309119342%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead119297%_
                                             _%sis119253%_)))
                                         (_%K119306119328%_
                                          (lambda (_%tail119326%_)
                                            (append-reverse
                                             _%rhead119297%_
                                             (append _%tail119326%_
                                                     _%sis119253%_)))))
                                     (let ((_%try-match119303119338%_
                                            (lambda ()
                                              (if (pair? _%tails119301119311%_)
                                                  (let ((_%tl119308119333%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tails119301119311%_)))
                                                        (_%hd119307119331%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tails119301119311%_))))
                                                    (if (null? _%tl119308119333%_)
                                                        (let ((_%tail119336%_
                                                               _%hd119307119331%_))
                                                          (_%K119306119328%_
                                                           _%tail119336%_))
                                                        (_%else119304119322%_)))
                                                  (_%else119304119322%_)))))
                                       (if (null? _%tails119301119311%_)
                                           (_%K119309119342%_)
                                           (_%try-match119303119338%_)))))))
                              (_%super-struct119265%_
                               (let* ((_%sis119266119274%_ _%sis119253%_)
                                      (_%else119268119282%_ (lambda () '#f))
                                      (_%K119270119287%_
                                       (lambda (_%s119285%_) _%s119285%_)))
                                 (if (pair? _%sis119266119274%_)
                                     (let* ((_%hd119271119290%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%sis119266119274%_)))
                                            (_%s119293%_ _%hd119271119290%_))
                                       (_%K119270119287%_ _%s119293%_))
                                     (_%else119268119282%_)))))
                      (values _%precedence-list119264%_
                              _%super-struct119265%_))))))))
    (define c4-linearize__@
      (lambda (_%@@keywords119594%_ . _%args119595%_)
        (apply c4-linearize__%
               _%@@keywords119594%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords119594%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords119594%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords119594%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords119594%_
                  'get-name:
                  absent-value))
               _%args119595%_)))
    (define c4-linearize
      (lambda _%args119200119601%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args119200119601%_)))))
