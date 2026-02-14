(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1771036668)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords303434%_
               _%get-precedence-list303428303435%_
               _%struct?303429303436%_
               _%eq303430303437%_
               _%get-name303431303438%_
               _%rhead303439%_
               _%supers303440%_)
        (let* ((_%get-precedence-list303442%_
                (if (eq? _%get-precedence-list303428303435%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list303428303435%_))
               (_%struct?303444%_
                (if (eq? _%struct?303429303436%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?303429303436%_))
               (_%eq303446%_
                (if (eq? _%eq303430303437%_ absent-value)
                    eq?
                    _%eq303430303437%_))
               (_%get-name303448%_
                (if (eq? _%get-name303431303438%_ absent-value)
                    identity
                    _%get-name303431303438%_)))
          (if (null? _%supers303440%_)
              (values (reverse _%rhead303439%_) '#f)
              (if (null? (cdr _%supers303440%_))
                  (let ((_%pl303453%_
                         (_%get-precedence-list303442%_
                          (car _%supers303440%_))))
                    (values (append-reverse _%rhead303439%_ _%pl303453%_)
                            (let* ((_%pred303455%_ _%struct?303444%_)
                                   (_%lst303458%_ _%pl303453%_))
                              (if (procedure? _%pred303455%_)
                                  (let ((_%pred303463%_ _%pred303455%_))
                                    (declare (not safe))
                                    (__find _%pred303463%_ _%lst303458%_))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/c3
                                     'contract:
                                     'procedure?
                                     'value:
                                     _%pred303455%_)
                                    '#!void)))))
                  (let ((_%pls303484%_
                         (map _%get-precedence-list303442%_ _%supers303440%_))
                        (_%sis303485%_ '()))
                    (letrec* ((_%get-names303487%_
                               (lambda (_%lst303821%_)
                                 (map _%get-name303448%_ _%lst303821%_)))
                              (_%err303488%_
                               (lambda _%a303819%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names303487%_
                                         (reverse _%rhead303439%_))
                                        'precedence-lists:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names303487%_
                                                 _%pls303484%_))
                                        'single-inheritance-suffix:
                                        (_%get-names303487%_ _%sis303485%_)
                                        _%a303819%_)))
                              (_%eqlist?303489%_
                               (lambda (_%l1303813%_ _%l2303814%_)
                                 (let ((_%$e303816%_
                                        (eq? _%l1303813%_ _%l2303814%_)))
                                   (if _%$e303816%_
                                       _%$e303816%_
                                       (if (let ()
                                             (declare (not safe))
                                             (andmap__1
                                              _%eq303446%_
                                              _%l1303813%_
                                              _%l2303814%_))
                                           (let ((__tmp303869
                                                  (length _%l1303813%_))
                                                 (__tmp303868
                                                  (length _%l2303814%_)))
                                             (declare (not safe))
                                             (##fx= __tmp303869 __tmp303868))
                                           '#f)))))
                              (_%merge-sis!303490%_
                               (lambda (_%sis2303798%_)
                                 (if (null? _%sis2303798%_)
                                     '#!void
                                     (if (null? _%sis303485%_)
                                         (set! _%sis303485%_ _%sis2303798%_)
                                         (let _%loop303803%_ ((_%t1303805%_
                                                               _%sis303485%_)
                                                              (_%t2303806%_
                                                               _%sis2303798%_))
                                           (if (_%eqlist?303489%_
                                                _%t1303805%_
                                                _%sis2303798%_)
                                               '#!void
                                               (if (_%eqlist?303489%_
                                                    _%t2303806%_
                                                    _%sis303485%_)
                                                   (set! _%sis303485%_
                                                         _%sis2303798%_)
                                                   (if (null? _%t1303805%_)
                                                       (if (member (car _%sis303485%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%t2303806%_
                           _%eq303446%_)
                   (set! _%sis303485%_ _%sis2303798%_)
                   (_%err303488%_
                    'struct-incompatibility:
                    (cons (_%get-names303487%_ _%sis303485%_)
                          (cons (_%get-names303487%_ _%sis2303798%_) '()))))
               (if (null? _%t2303806%_)
                   (if (member (car _%sis2303798%_) _%t1303805%_ _%eq303446%_)
                       '#!void
                       (_%err303488%_
                        'struct-incompatibility:
                        (cons (_%get-names303487%_ _%sis303485%_)
                              (cons (_%get-names303487%_ _%sis2303798%_)
                                    '()))))
                   (_%loop303803%_
                    (cdr _%t1303805%_)
                    (cdr _%t2303806%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%rpls303491%_
                               (let ((__tmp303870
                                      (lambda (_%pl303769%_)
                                        (let ((_g303871_
                                               (let* ((_%pred303771%_
                                                       _%struct?303444%_)
                                                      (_%rhead303774%_
                                                       _%pl303769%_)
                                                      (_%tail303777%_ '()))
                                                 (if (procedure?
                                                      _%pred303771%_)
                                                     (let ((_%pred303782%_
                                                            _%pred303771%_))
                                                       (declare (not safe))
                                                       (__append-reverse-until
                                                        _%pred303782%_
                                                        _%rhead303774%_
                                                        _%tail303777%_))
                                                     (begin
                                                       (raise-contract-violation-error
                                                        '"contract violation"
                                                        'context:
                                                        'gerbil/runtime/c3
                                                        'contract:
                                                        'procedure?
                                                        'value:
                                                        _%pred303771%_)
                                                       '#!void)))))
                                          (begin
                                            (let ((_g303872_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g303871_)
                                                         (##values-length
                                                          _g303871_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g303872_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g303872_)))
                                            (let ((_%tl303795%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g303871_
                                                      0)))
                                                  (_%rh303796%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g303871_
                                                      1))))
                                              (begin
                                                (_%merge-sis!303490%_
                                                 _%tl303795%_)
                                                _%rh303796%_)))))))
                                 (declare (not safe))
                                 (##map __tmp303870 _%pls303484%_)))
                              (_%unsisr-rpl303492%_
                               (lambda (_%rpl303682%_)
                                 (let _%u303684%_ ((_%pl-rhead303686%_
                                                    _%rpl303682%_)
                                                   (_%pl-tail303687%_ '())
                                                   (_%sis-rhead303688%_
                                                    (reverse _%sis303485%_))
                                                   (_%sis-tail303689%_ '()))
                                   (let* ((_%pl-rhead303690303699%_
                                           _%pl-rhead303686%_)
                                          (_%E303693303703%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%pl-rhead303690303699%_
                                                    '([])
                                                    '([c . plrh]))
                                             '#!void)))
                                     (let ((_%K303697303766%_
                                            (lambda () _%pl-tail303687%_))
                                           (_%K303694303750%_
                                            (lambda (_%plrh303707%_
                                                     _%c303708%_)
                                              (if (member _%c303708%_
                                                          _%sis-tail303689%_
                                                          _%eq303446%_)
                                                  (_%err303488%_
                                                   'precedence-list-head:
                                                   (_%get-names303487%_
                                                    (reverse _%pl-rhead303686%_))
                                                   'precedence-list-tail:
                                                   (_%get-names303487%_
                                                    _%pl-tail303687%_)
                                                   'single-inheritance-head:
                                                   (_%get-names303487%_
                                                    (reverse _%sis-rhead303688%_))
                                                   'single-inheritance-tail:
                                                   (_%get-names303487%_
                                                    _%sis-tail303689%_)
                                                   'super-out-of-order-vs-single-inheritance-tail:
                                                   (_%get-name303448%_
                                                    _%c303708%_))
                                                  (let ((_g303873_
                                                         (let* ((_%pred303714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g303709303711%_)
                           (_%eq303446%_ _%c303708%_ _%g303709303711%_)))
                        (_%rhead303717%_ _%sis-rhead303688%_)
                        (_%tail303720%_ _%sis-tail303689%_)
                        (_%pred303725%_ _%pred303714%_))
                   (declare (not safe))
                   (__append-reverse-until
                    _%pred303725%_
                    _%rhead303717%_
                    _%tail303720%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g303874_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g303873_)
                           (##values-length _g303873_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g303874_ 2)))
                    (error "Context expects 2 values" _g303874_)))
              (let ((_%sis-rh2303747%_
                     (let () (declare (not safe)) (##values-ref _g303873_ 0)))
                    (_%sis-tl2303748%_
                     (let () (declare (not safe)) (##values-ref _g303873_ 1))))
                (if (null? _%sis-rh2303747%_)
                    (_%u303684%_
                     _%plrh303707%_
                     (cons _%c303708%_ _%pl-tail303687%_)
                     '()
                     _%sis-tl2303748%_)
                    (_%u303684%_
                     _%plrh303707%_
                     _%pl-tail303687%_
                     (cdr _%sis-rh2303747%_)
                     _%sis-tl2303748%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%try-match303692303762%_
                                              (lambda ()
                                                (if (pair? _%pl-rhead303690303699%_)
                                                    (let ((_%tl303696303755%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%pl-rhead303690303699%_)))
                                                          (_%hd303695303753%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%pl-rhead303690303699%_))))
                                                      (let ((_%c303758%_
                                                             _%hd303695303753%_)
                                                            (_%plrh303760%_
                                                             _%tl303696303755%_))
                                                        (_%K303694303750%_
                                                         _%plrh303760%_
                                                         _%c303758%_)))
                                                    (_%E303693303703%_)))))
                                         (if (null? _%pl-rhead303690303699%_)
                                             (_%K303697303766%_)
                                             (_%try-match303692303762%_))))))))
                              (_g303875_
                               (let ((_g303876_
                                      (let ((__tmp303878
                                             (reverse _%supers303440%_)))
                                        (declare (not safe))
                                        (append1!
                                         _%rpls303491%_
                                         __tmp303878))))
                                 #!void
                                 _g303876_))
                              (_%hpls303493%_
                               (let ()
                                 (declare (not safe))
                                 (##map _%unsisr-rpl303492%_ _%rpls303491%_)))
                              (_%c3-select-next303494%_
                               (lambda (_%tails303632%_)
                                 (let ((_%candidate?303638%_
                                        (lambda (_%c303634%_)
                                          (let ((__tmp303879
                                                 (lambda (_%tail303636%_)
                                                   (not (member _%c303634%_
                                                                (cdr _%tail303636%_)
                                                                _%eq303446%_)))))
                                            (declare (not safe))
                                            (andmap__0
                                             __tmp303879
                                             _%tails303632%_)))))
                                   (let _%loop303640%_ ((_%ts303642%_
                                                         _%tails303632%_))
                                     (let* ((_%ts303643303653%_ _%ts303642%_)
                                            (_%else303645303661%_
                                             (lambda () (_%err303488%_)))
                                            (_%K303647303667%_
                                             (lambda (_%rts303664%_
                                                      _%c303665%_)
                                               (if (_%candidate?303638%_
                                                    _%c303665%_)
                                                   _%c303665%_
                                                   (_%loop303640%_
                                                    _%rts303664%_)))))
                                       (if (pair? _%ts303643303653%_)
                                           (let ((_%hd303648303670%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%ts303643303653%_)))
                                                 (_%tl303649303672%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%ts303643303653%_))))
                                             (if (pair? _%hd303648303670%_)
                                                 (let* ((_%hd303650303675%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%hd303648303670%_)))
                                                        (_%c303678%_
                                                         _%hd303650303675%_)
                                                        (_%rts303680%_
                                                         _%tl303649303672%_))
                                                   (_%K303647303667%_
                                                    _%rts303680%_
                                                    _%c303678%_))
                                                 (_%err303488%_)))
                                           (_%err303488%_)))))))
                              (_%remove-next!303495%_
                               (lambda (_%next303577%_ _%tails303578%_)
                                 (let _%loop303580%_ ((_%t303582%_
                                                       _%tails303578%_))
                                   (let* ((_%t303583303594%_ _%t303582%_)
                                          (_%E303586303598%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%t303583303594%_
                                                    '([])
                                                    '([[head . tail] . more]))
                                             '#!void)))
                                     (let ((_%K303592303629%_
                                            (lambda () _%tails303578%_))
                                           (_%K303587303606%_
                                            (lambda (_%more303602%_
                                                     _%tail303603%_
                                                     _%head303604%_)
                                              (if (_%eq303446%_
                                                   _%head303604%_
                                                   _%next303577%_)
                                                  (set-car!
                                                   _%t303582%_
                                                   _%tail303603%_)
                                                  '#!void)
                                              (_%loop303580%_
                                               _%more303602%_))))
                                       (let ((_%try-match303585303625%_
                                              (lambda ()
                                                (if (pair? _%t303583303594%_)
                                                    (let ((_%tl303589303611%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%t303583303594%_)))
                                                          (_%hd303588303609%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%t303583303594%_))))
                                                      (if (pair? _%hd303588303609%_)
                                                          (let ((_%tl303591303616%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd303588303609%_)))
                        (_%hd303590303614%_
                         (let ()
                           (declare (not safe))
                           (##car _%hd303588303609%_))))
                    (let ((_%head303619%_ _%hd303590303614%_)
                          (_%tail303621%_ _%tl303591303616%_)
                          (_%more303623%_ _%tl303589303611%_))
                      (_%K303587303606%_
                       _%more303623%_
                       _%tail303621%_
                       _%head303619%_)))
                  (_%E303586303598%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E303586303598%_)))))
                                         (if (null? _%t303583303594%_)
                                             (_%K303592303629%_)
                                             (_%try-match303585303625%_))))))))
                              (_%precedence-list303496%_
                               (let _%c3loop303527%_ ((_%rhead303529%_
                                                       _%rhead303439%_)
                                                      (_%tails303530%_
                                                       _%hpls303493%_))
                                 (let* ((_%tails303532%_
                                         (let ()
                                           (declare (not safe))
                                           (remove-nulls! _%tails303530%_)))
                                        (_%tails303533303543%_ _%tails303532%_)
                                        (_%else303536303554%_
                                         (lambda ()
                                           (let ((_%next303551%_
                                                  (_%c3-select-next303494%_
                                                   _%tails303532%_)))
                                             (_%c3loop303527%_
                                              (cons _%next303551%_
                                                    _%rhead303529%_)
                                              (_%remove-next!303495%_
                                               _%next303551%_
                                               _%tails303532%_))))))
                                   (let ((_%K303541303574%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead303529%_
                                             _%sis303485%_)))
                                         (_%K303538303560%_
                                          (lambda (_%tail303558%_)
                                            (append-reverse
                                             _%rhead303529%_
                                             (append _%tail303558%_
                                                     _%sis303485%_)))))
                                     (let ((_%try-match303535303570%_
                                            (lambda ()
                                              (if (pair? _%tails303533303543%_)
                                                  (let ((_%tl303540303565%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tails303533303543%_)))
                                                        (_%hd303539303563%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tails303533303543%_))))
                                                    (if (null? _%tl303540303565%_)
                                                        (let ((_%tail303568%_
                                                               _%hd303539303563%_))
                                                          (_%K303538303560%_
                                                           _%tail303568%_))
                                                        (_%else303536303554%_)))
                                                  (_%else303536303554%_)))))
                                       (if (null? _%tails303533303543%_)
                                           (_%K303541303574%_)
                                           (_%try-match303535303570%_)))))))
                              (_%super-struct303497%_
                               (let* ((_%sis303498303506%_ _%sis303485%_)
                                      (_%else303500303514%_ (lambda () '#f))
                                      (_%K303502303519%_
                                       (lambda (_%s303517%_) _%s303517%_)))
                                 (if (pair? _%sis303498303506%_)
                                     (let* ((_%hd303503303522%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%sis303498303506%_)))
                                            (_%s303525%_ _%hd303503303522%_))
                                       (_%K303502303519%_ _%s303525%_))
                                     (_%else303500303514%_)))))
                      (values _%precedence-list303496%_
                              _%super-struct303497%_))))))))
    (define c4-linearize__@
      (lambda (_%@@keywords303826%_ . _%args303827%_)
        (apply c4-linearize__%
               _%@@keywords303826%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords303826%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords303826%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords303826%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords303826%_
                  'get-name:
                  absent-value))
               _%args303827%_)))
    (define c4-linearize
      (lambda _%args303432303833%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args303432303833%_)))))
