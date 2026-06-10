(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1781119035)
  (begin
    (define c4-linearize
      (let ((_%$%kw-lambda105283105686%_
             (let ((_%$%kw-lambda-main105284105679%_
                    (lambda (_%@@keywords105291%_
                             _%$%get-precedence-list105285105292%_
                             _%$%struct?105286105293%_
                             _%$%eq105287105294%_
                             _%$%get-name105288105295%_
                             _%rhead105296%_
                             _%supers105297%_)
                      (let* ((_%get-precedence-list105299%_
                              (if (eq? _%$%get-precedence-list105285105292%_
                                       absent-value)
                                  (error '"Missing required keyword argument"
                                         'get-precedence-list:)
                                  _%$%get-precedence-list105285105292%_))
                             (_%struct?105301%_
                              (if (eq? _%$%struct?105286105293%_ absent-value)
                                  (error '"Missing required keyword argument"
                                         'struct:)
                                  _%$%struct?105286105293%_))
                             (_%eq105303%_
                              (if (eq? _%$%eq105287105294%_ absent-value)
                                  eq?
                                  _%$%eq105287105294%_))
                             (_%get-name105305%_
                              (if (eq? _%$%get-name105288105295%_ absent-value)
                                  identity
                                  _%$%get-name105288105295%_)))
                        (if (null? _%supers105297%_)
                            (values (reverse _%rhead105296%_) '#f)
                            (if (null? (cdr _%supers105297%_))
                                (let ((_%pl105310%_
                                       (_%get-precedence-list105299%_
                                        (car _%supers105297%_))))
                                  (values (append-reverse
                                           _%rhead105296%_
                                           _%pl105310%_)
                                          (let* ((_%pred105312%_
                                                  _%struct?105301%_)
                                                 (_%lst105315%_ _%pl105310%_))
                                            (if (procedure? _%pred105312%_)
                                                (let ((_%pred105320%_
                                                       _%pred105312%_))
                                                  (__find _%pred105320%_
                                                          _%lst105315%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/c3
                                                   'contract:
                                                   'procedure?
                                                   'value:
                                                   _%pred105312%_)
                                                  (void))))))
                                (let ((_%pls105340%_
                                       (map _%get-precedence-list105299%_
                                            _%supers105297%_))
                                      (_%sis105341%_ '()))
                                  (letrec* ((_%get-names105343%_
                                             (lambda (_%lst105677%_)
                                               (map _%get-name105305%_
                                                    _%lst105677%_)))
                                            (_%err105344%_
                                             (lambda _%a105675%_
                                               (apply error
                                                      '"Inconsistent precedence graph"
                                                      'head:
                                                      (_%get-names105343%_
                                                       (reverse _%rhead105296%_))
                                                      'precedence-lists:
                                                      (map _%get-names105343%_
                                                           _%pls105340%_)
                                                      'single-inheritance-suffix:
                                                      (_%get-names105343%_
                                                       _%sis105341%_)
                                                      _%a105675%_)))
                                            (_%eqlist?105345%_
                                             (lambda (_%l1105669%_
                                                      _%l2105670%_)
                                               (let ((_%$e105672%_
                                                      (eq? _%l1105669%_
                                                           _%l2105670%_)))
                                                 (if _%$e105672%_
                                                     _%$e105672%_
                                                     (if (andmap _%eq105303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%l1105669%_
                         _%l2105670%_)
                 (fx= (length _%l1105669%_) (length _%l2105670%_))
                 '#f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%merge-sis!105346%_
                                             (lambda (_%sis2105654%_)
                                               (if (null? _%sis2105654%_)
                                                   (void)
                                                   (if (null? _%sis105341%_)
                                                       (set! _%sis105341%_
                                                             _%sis2105654%_)
                                                       (let _%loop105659%_ ((_%t1105661%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%sis105341%_)
                                    (_%t2105662%_ _%sis2105654%_))
                 (if (_%eqlist?105345%_ _%t1105661%_ _%sis2105654%_)
                     (void)
                     (if (_%eqlist?105345%_ _%t2105662%_ _%sis105341%_)
                         (set! _%sis105341%_ _%sis2105654%_)
                         (if (null? _%t1105661%_)
                             (if (member (car _%sis105341%_)
                                         _%t2105662%_
                                         _%eq105303%_)
                                 (set! _%sis105341%_ _%sis2105654%_)
                                 (_%err105344%_
                                  'struct-incompatibility:
                                  (cons (_%get-names105343%_ _%sis105341%_)
                                        (cons (_%get-names105343%_
                                               _%sis2105654%_)
                                              '()))))
                             (if (null? _%t2105662%_)
                                 (if (member (car _%sis2105654%_)
                                             _%t1105661%_
                                             _%eq105303%_)
                                     (void)
                                     (_%err105344%_
                                      'struct-incompatibility:
                                      (cons (_%get-names105343%_ _%sis105341%_)
                                            (cons (_%get-names105343%_
                                                   _%sis2105654%_)
                                                  '()))))
                                 (_%loop105659%_
                                  (cdr _%t1105661%_)
                                  (cdr _%t2105662%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%rpls105347%_
                                             (map (lambda (_%pl105625%_)
                                                    (let ((_g105691_
                                                           (let* ((_%pred105627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%struct?105301%_)
                          (_%rhead105630%_ _%pl105625%_)
                          (_%tail105633%_ '()))
                     (if (procedure? _%pred105627%_)
                         (let ((_%pred105638%_ _%pred105627%_))
                           (__append-reverse-until
                            _%pred105638%_
                            _%rhead105630%_
                            _%tail105633%_))
                         (begin
                           (raise-contract-violation-error
                            '"contract violation"
                            'context:
                            'gerbil/runtime/c3
                            'contract:
                            'procedure?
                            'value:
                            _%pred105627%_)
                           (void))))))
              (begin
                (let ((_g105692_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g105691_)
                             (##values-length _g105691_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g105692_ 2)))
                      (error "Context expects 2 values" _g105692_)))
                (let ((_%tl105651%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g105691_ 0)))
                      (_%rh105652%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g105691_ 1))))
                  (begin (_%merge-sis!105346%_ _%tl105651%_) _%rh105652%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%pls105340%_))
                                            (_%unsisr-rpl105348%_
                                             (lambda (_%rpl105538%_)
                                               (let _%u105540%_ ((_%pl-rhead105542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%rpl105538%_)
                         (_%pl-tail105543%_ '())
                         (_%sis-rhead105544%_ (reverse _%sis105341%_))
                         (_%sis-tail105545%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%$%pl-rhead105546105555%_
                                                         _%pl-rhead105542%_)
                                                        (_%$%E105549105559%_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%pl-rhead105546105555%_
                          '([])
                          '([c . plrh]))
                   (void)))
                (_%$%try-match105548105618%_
                 (lambda ()
                   (let ((_%$%K105550105606%_
                          (lambda (_%plrh105563%_ _%c105564%_)
                            (if (member _%c105564%_
                                        _%sis-tail105545%_
                                        _%eq105303%_)
                                (_%err105344%_
                                 'precedence-list-head:
                                 (_%get-names105343%_
                                  (reverse _%pl-rhead105542%_))
                                 'precedence-list-tail:
                                 (_%get-names105343%_ _%pl-tail105543%_)
                                 'single-inheritance-head:
                                 (_%get-names105343%_
                                  (reverse _%sis-rhead105544%_))
                                 'single-inheritance-tail:
                                 (_%get-names105343%_ _%sis-tail105545%_)
                                 'super-out-of-order-vs-single-inheritance-tail:
                                 (_%get-name105305%_ _%c105564%_))
                                (let ((_g105693_
                                       (let* ((_%pred105570%_
                                               (lambda (_%$%g105565105567%_)
                                                 (_%eq105303%_
                                                  _%c105564%_
                                                  _%$%g105565105567%_)))
                                              (_%rhead105573%_
                                               _%sis-rhead105544%_)
                                              (_%tail105576%_
                                               _%sis-tail105545%_))
                                         (if (procedure? _%pred105570%_)
                                             (let ((_%pred105581%_
                                                    _%pred105570%_))
                                               (__append-reverse-until
                                                _%pred105581%_
                                                _%rhead105573%_
                                                _%tail105576%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/c3
                                                'contract:
                                                'procedure?
                                                'value:
                                                _%pred105570%_)
                                               (void))))))
                                  (begin
                                    (let ((_g105694_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g105693_)
                                                 (##values-length _g105693_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g105694_ 2)))
                                          (error "Context expects 2 values"
                                                 _g105694_)))
                                    (let ((_%sis-rh2105603%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g105693_ 0)))
                                          (_%sis-tl2105604%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g105693_ 1))))
                                      (if (null? _%sis-rh2105603%_)
                                          (_%u105540%_
                                           _%plrh105563%_
                                           (cons _%c105564%_ _%pl-tail105543%_)
                                           '()
                                           _%sis-tl2105604%_)
                                          (_%u105540%_
                                           _%plrh105563%_
                                           _%pl-tail105543%_
                                           (cdr _%sis-rh2105603%_)
                                           _%sis-tl2105604%_)))))))))
                     (if (pair? _%$%pl-rhead105546105555%_)
                         (let ((_%$%hd105551105609%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%pl-rhead105546105555%_)))
                               (_%$%tl105552105611%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%pl-rhead105546105555%_))))
                           (let* ((_%c105614%_ _%$%hd105551105609%_)
                                  (_%plrh105616%_ _%$%tl105552105611%_))
                             (_%$%K105550105606%_ _%plrh105616%_ _%c105614%_)))
                         (_%$%E105549105559%_)))))
                (_%$%K105553105622%_ (lambda () _%pl-tail105543%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (null? _%$%pl-rhead105546105555%_)
                                                       (_%$%K105553105622%_)
                                                       (_%$%try-match105548105618%_))))))
                                            (_g105695_
                                             (let ((_g105696_
                                                    (append1!
                                                     _%rpls105347%_
                                                     (reverse _%supers105297%_))))
                                               #!void
                                               _g105696_))
                                            (_%hpls105349%_
                                             (map _%unsisr-rpl105348%_
                                                  _%rpls105347%_))
                                            (_%c3-select-next105350%_
                                             (lambda (_%tails105488%_)
                                               (let ((_%candidate?105494%_
                                                      (lambda (_%c105490%_)
                                                        (andmap (lambda (_%tail105492%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not (member _%c105490%_
                                       (cdr _%tail105492%_)
                                       _%eq105303%_)))
                        _%tails105488%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let _%loop105496%_ ((_%ts105498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tails105488%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%$%ts105499105509%_
                                                           _%ts105498%_)
                                                          (_%$%E105502105513%_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%ts105499105509%_
                            '([[c . _] . rts])
                            'else)
                     (void)))
                  (_%$%else105501105517%_ (lambda () (_%err105344%_)))
                  (_%$%K105503105523%_
                   (lambda (_%rts105520%_ _%c105521%_)
                     (if (_%candidate?105494%_ _%c105521%_)
                         _%c105521%_
                         (_%loop105496%_ _%rts105520%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (pair? _%$%ts105499105509%_)
                                                         (let ((_%$%hd105504105526%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%ts105499105509%_)))
                       (_%$%tl105505105528%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%ts105499105509%_))))
                   (if (pair? _%$%hd105504105526%_)
                       (let* ((_%$%hd105506105531%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%hd105504105526%_)))
                              (_%c105534%_ _%$%hd105506105531%_)
                              (_%rts105536%_ _%$%tl105505105528%_))
                         (_%$%K105503105523%_ _%rts105536%_ _%c105534%_))
                       (_%$%else105501105517%_)))
                 (_%$%else105501105517%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%remove-next!105351%_
                                             (lambda (_%next105433%_
                                                      _%tails105434%_)
                                               (let _%loop105436%_ ((_%t105438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%tails105434%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%$%t105439105450%_
                                                         _%t105438%_)
                                                        (_%$%E105442105454%_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%t105439105450%_
                          '([])
                          '([[head . tail] . more]))
                   (void)))
                (_%$%try-match105441105481%_
                 (lambda ()
                   (let ((_%$%K105443105462%_
                          (lambda (_%more105458%_
                                   _%tail105459%_
                                   _%head105460%_)
                            (if (_%eq105303%_ _%head105460%_ _%next105433%_)
                                (set-car! _%t105438%_ _%tail105459%_)
                                '#!void)
                            (_%loop105436%_ _%more105458%_))))
                     (if (pair? _%$%t105439105450%_)
                         (let ((_%$%hd105444105465%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%t105439105450%_)))
                               (_%$%tl105445105467%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%t105439105450%_))))
                           (if (pair? _%$%hd105444105465%_)
                               (let ((_%$%hd105446105470%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%hd105444105465%_)))
                                     (_%$%tl105447105472%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%hd105444105465%_))))
                                 (let* ((_%head105475%_ _%$%hd105446105470%_)
                                        (_%tail105477%_ _%$%tl105447105472%_)
                                        (_%more105479%_ _%$%tl105445105467%_))
                                   (_%$%K105443105462%_
                                    _%more105479%_
                                    _%tail105477%_
                                    _%head105475%_)))
                               (_%$%E105442105454%_)))
                         (_%$%E105442105454%_)))))
                (_%$%K105448105485%_ (lambda () _%tails105434%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (null? _%$%t105439105450%_)
                                                       (_%$%K105448105485%_)
                                                       (_%$%try-match105441105481%_))))))
                                            (_%precedence-list105352%_
                                             (let _%c3loop105383%_ ((_%rhead105385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rhead105296%_)
                            (_%tails105386%_ _%hpls105349%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%tails105388%_
                                                       (remove-nulls!
                                                        _%tails105386%_))
                                                      (_%$%tails105389105399%_
                                                       _%tails105388%_)
                                                      (_%$%E105393105403%_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _%$%tails105389105399%_
                                                                '([])
                                                                '([tail])
                                                                'else)
                                                         (void)))
                                                      (_%$%else105392105410%_
                                                       (lambda ()
                                                         (let ((_%next105407%_
                                                                (_%c3-select-next105350%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tails105388%_)))
                   (_%c3loop105383%_
                    (cons _%next105407%_ _%rhead105385%_)
                    (_%remove-next!105351%_ _%next105407%_ _%tails105388%_)))))
              (_%$%try-match105391105426%_
               (lambda ()
                 (let ((_%$%K105394105416%_
                        (lambda (_%tail105414%_)
                          (append-reverse
                           _%rhead105385%_
                           (append _%tail105414%_ _%sis105341%_)))))
                   (if (pair? _%$%tails105389105399%_)
                       (let ((_%$%hd105395105419%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%tails105389105399%_)))
                             (_%$%tl105396105421%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%tails105389105399%_))))
                         (let ((_%tail105424%_ _%$%hd105395105419%_))
                           (if (null? _%$%tl105396105421%_)
                               (_%$%K105394105416%_ _%tail105424%_)
                               (_%$%else105392105410%_))))
                       (_%$%else105392105410%_)))))
              (_%$%K105397105430%_
               (lambda () (append-reverse _%rhead105385%_ _%sis105341%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (null? _%$%tails105389105399%_)
                                                     (_%$%K105397105430%_)
                                                     (_%$%try-match105391105426%_)))))
                                            (_%super-struct105353%_
                                             (let* ((_%$%sis105354105362%_
                                                     _%sis105341%_)
                                                    (_%$%E105357105366%_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _%$%sis105354105362%_
                                                              '([s . _])
                                                              'else)
                                                       (void)))
                                                    (_%$%else105356105370%_
                                                     (lambda () '#f))
                                                    (_%$%K105358105375%_
                                                     (lambda (_%s105373%_)
                                                       _%s105373%_)))
                                               (if (pair? _%$%sis105354105362%_)
                                                   (let* ((_%$%hd105359105378%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%sis105354105362%_)))
                                                          (_%s105381%_
                                                           _%$%hd105359105378%_))
                                                     (_%$%K105358105375%_
                                                      _%s105381%_))
                                                   (_%$%else105356105370%_)))))
                                    (values _%precedence-list105352%_
                                            _%super-struct105353%_)))))))))
               (lambda (_%@@keywords105682%_ . _%args105683%_)
                 (apply _%$%kw-lambda-main105284105679%_
                        _%@@keywords105682%_
                        (symbolic-table-ref
                         _%@@keywords105682%_
                         'get-precedence-list:
                         absent-value)
                        (symbolic-table-ref
                         _%@@keywords105682%_
                         'struct:
                         absent-value)
                        (symbolic-table-ref
                         _%@@keywords105682%_
                         'eq:
                         absent-value)
                        (symbolic-table-ref
                         _%@@keywords105682%_
                         'get-name:
                         absent-value)
                        _%args105683%_)))))
        (lambda _%$%args105289105689%_
          (apply keyword-dispatch
                 '#(#f get-name: struct: get-precedence-list: #f eq:)
                 _%$%kw-lambda105283105686%_
                 _%$%args105289105689%_))))
    (define c4-compute-class-slots
      (lambda (_%precedence-list105239%_
               _%direct-slot-list105240%_
               _%mixin-slot-names105241%_
               _%result105242%_)
        (let* ((_%next-slot105244%_ '1)
               (_%slot-table105246%_ (make-symbolic-table '#f '0))
               (_%r-slots105248%_ (cons 'class '()))
               (_%process-slot105273%_
                (lambda (_%slot105250%_)
                  (if (symbol? _%slot105250%_)
                      '#!void
                      (error '"invalid slot name" _%slot105250%_))
                  (if (eq? (symbolic-table-ref
                            _%slot-table105246%_
                            _%slot105250%_
                            absent-value)
                           absent-value)
                      (begin
                        (symbolic-table-set!
                         _%slot-table105246%_
                         _%slot105250%_
                         _%next-slot105244%_)
                        (symbolic-table-set!
                         _%slot-table105246%_
                         (let ((_%sym105252%_ _%slot105250%_))
                           (if (symbol? _%sym105252%_)
                               (let ((_%sym105257%_ _%sym105252%_))
                                 (__symbol->keyword _%sym105257%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/c3
                                  'contract:
                                  'symbol?
                                  'value:
                                  _%sym105252%_)
                                 (void))))
                         _%next-slot105244%_)
                        (set! _%r-slots105248%_
                              (cons _%slot105250%_ _%r-slots105248%_))
                        (set! _%next-slot105244%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot105244%_ '1))))
                      '#!void)))
               (_%process-slots105279%_
                (lambda (_%$%g105274105276%_)
                  (for-each _%process-slot105273%_ _%$%g105274105276%_))))
          (for-each
           (lambda (_%mixin105282%_)
             (_%process-slots105279%_
              (_%mixin-slot-names105241%_ _%mixin105282%_)))
           (reverse _%precedence-list105239%_))
          (_%process-slots105279%_ _%direct-slot-list105240%_)
          (_%result105242%_
           (reverse! _%r-slots105248%_)
           _%slot-table105246%_))))))
