(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1773009261)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords121280%_
               _%get-precedence-list121274121281%_
               _%struct?121275121282%_
               _%eq121276121283%_
               _%get-name121277121284%_
               _%rhead121285%_
               _%supers121286%_)
        (let* ((_%get-precedence-list121288%_
                (if (eq? _%get-precedence-list121274121281%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list121274121281%_))
               (_%struct?121290%_
                (if (eq? _%struct?121275121282%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?121275121282%_))
               (_%eq121292%_
                (if (eq? _%eq121276121283%_ absent-value)
                    eq?
                    _%eq121276121283%_))
               (_%get-name121294%_
                (if (eq? _%get-name121277121284%_ absent-value)
                    identity
                    _%get-name121277121284%_)))
          (if (null? _%supers121286%_)
              (values (reverse _%rhead121285%_) '#f)
              (if (null? (cdr _%supers121286%_))
                  (let ((_%pl121299%_
                         (_%get-precedence-list121288%_
                          (car _%supers121286%_))))
                    (values (append-reverse _%rhead121285%_ _%pl121299%_)
                            (let* ((_%pred121301%_ _%struct?121290%_)
                                   (_%lst121304%_ _%pl121299%_))
                              (if (procedure? _%pred121301%_)
                                  (let ((_%pred121309%_ _%pred121301%_))
                                    (declare (not safe))
                                    (__find _%pred121309%_ _%lst121304%_))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/c3
                                     'contract:
                                     'procedure?
                                     'value:
                                     _%pred121301%_)
                                    '#!void)))))
                  (let ((_%pls121329%_
                         (map _%get-precedence-list121288%_ _%supers121286%_))
                        (_%sis121330%_ '()))
                    (letrec* ((_%get-names121332%_
                               (lambda (_%lst121666%_)
                                 (map _%get-name121294%_ _%lst121666%_)))
                              (_%err121333%_
                               (lambda _%a121664%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names121332%_
                                         (reverse _%rhead121285%_))
                                        'precedence-lists:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names121332%_
                                                 _%pls121329%_))
                                        'single-inheritance-suffix:
                                        (_%get-names121332%_ _%sis121330%_)
                                        _%a121664%_)))
                              (_%eqlist?121334%_
                               (lambda (_%l1121658%_ _%l2121659%_)
                                 (let ((_%$e121661%_
                                        (eq? _%l1121658%_ _%l2121659%_)))
                                   (if _%$e121661%_
                                       _%$e121661%_
                                       (if (let ()
                                             (declare (not safe))
                                             (andmap__1
                                              _%eq121292%_
                                              _%l1121658%_
                                              _%l2121659%_))
                                           (let ((__tmp121714
                                                  (length _%l1121658%_))
                                                 (__tmp121713
                                                  (length _%l2121659%_)))
                                             (declare (not safe))
                                             (##fx= __tmp121714 __tmp121713))
                                           '#f)))))
                              (_%merge-sis!121335%_
                               (lambda (_%sis2121643%_)
                                 (if (null? _%sis2121643%_)
                                     '#!void
                                     (if (null? _%sis121330%_)
                                         (set! _%sis121330%_ _%sis2121643%_)
                                         (let _%loop121648%_ ((_%t1121650%_
                                                               _%sis121330%_)
                                                              (_%t2121651%_
                                                               _%sis2121643%_))
                                           (if (_%eqlist?121334%_
                                                _%t1121650%_
                                                _%sis2121643%_)
                                               '#!void
                                               (if (_%eqlist?121334%_
                                                    _%t2121651%_
                                                    _%sis121330%_)
                                                   (set! _%sis121330%_
                                                         _%sis2121643%_)
                                                   (if (null? _%t1121650%_)
                                                       (if (member (car _%sis121330%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%t2121651%_
                           _%eq121292%_)
                   (set! _%sis121330%_ _%sis2121643%_)
                   (_%err121333%_
                    'struct-incompatibility:
                    (cons (_%get-names121332%_ _%sis121330%_)
                          (cons (_%get-names121332%_ _%sis2121643%_) '()))))
               (if (null? _%t2121651%_)
                   (if (member (car _%sis2121643%_) _%t1121650%_ _%eq121292%_)
                       '#!void
                       (_%err121333%_
                        'struct-incompatibility:
                        (cons (_%get-names121332%_ _%sis121330%_)
                              (cons (_%get-names121332%_ _%sis2121643%_)
                                    '()))))
                   (_%loop121648%_
                    (cdr _%t1121650%_)
                    (cdr _%t2121651%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%rpls121336%_
                               (let ((__tmp121715
                                      (lambda (_%pl121614%_)
                                        (let ((_g121716_
                                               (let* ((_%pred121616%_
                                                       _%struct?121290%_)
                                                      (_%rhead121619%_
                                                       _%pl121614%_)
                                                      (_%tail121622%_ '()))
                                                 (if (procedure?
                                                      _%pred121616%_)
                                                     (let ((_%pred121627%_
                                                            _%pred121616%_))
                                                       (declare (not safe))
                                                       (__append-reverse-until
                                                        _%pred121627%_
                                                        _%rhead121619%_
                                                        _%tail121622%_))
                                                     (begin
                                                       (raise-contract-violation-error
                                                        '"contract violation"
                                                        'context:
                                                        'gerbil/runtime/c3
                                                        'contract:
                                                        'procedure?
                                                        'value:
                                                        _%pred121616%_)
                                                       '#!void)))))
                                          (begin
                                            (let ((_g121717_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g121716_)
                                                         (##values-length
                                                          _g121716_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g121717_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g121717_)))
                                            (let ((_%tl121640%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g121716_
                                                      0)))
                                                  (_%rh121641%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g121716_
                                                      1))))
                                              (begin
                                                (_%merge-sis!121335%_
                                                 _%tl121640%_)
                                                _%rh121641%_)))))))
                                 (declare (not safe))
                                 (##map __tmp121715 _%pls121329%_)))
                              (_%unsisr-rpl121337%_
                               (lambda (_%rpl121527%_)
                                 (let _%u121529%_ ((_%pl-rhead121531%_
                                                    _%rpl121527%_)
                                                   (_%pl-tail121532%_ '())
                                                   (_%sis-rhead121533%_
                                                    (reverse _%sis121330%_))
                                                   (_%sis-tail121534%_ '()))
                                   (let* ((_%pl-rhead121535121544%_
                                           _%pl-rhead121531%_)
                                          (_%E121538121548%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%pl-rhead121535121544%_
                                                    '([])
                                                    '([c . plrh]))
                                             '#!void)))
                                     (let ((_%K121542121611%_
                                            (lambda () _%pl-tail121532%_))
                                           (_%K121539121595%_
                                            (lambda (_%plrh121552%_
                                                     _%c121553%_)
                                              (if (member _%c121553%_
                                                          _%sis-tail121534%_
                                                          _%eq121292%_)
                                                  (_%err121333%_
                                                   'precedence-list-head:
                                                   (_%get-names121332%_
                                                    (reverse _%pl-rhead121531%_))
                                                   'precedence-list-tail:
                                                   (_%get-names121332%_
                                                    _%pl-tail121532%_)
                                                   'single-inheritance-head:
                                                   (_%get-names121332%_
                                                    (reverse _%sis-rhead121533%_))
                                                   'single-inheritance-tail:
                                                   (_%get-names121332%_
                                                    _%sis-tail121534%_)
                                                   'super-out-of-order-vs-single-inheritance-tail:
                                                   (_%get-name121294%_
                                                    _%c121553%_))
                                                  (let ((_g121718_
                                                         (let* ((_%pred121559%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g121554121556%_)
                           (_%eq121292%_ _%c121553%_ _%g121554121556%_)))
                        (_%rhead121562%_ _%sis-rhead121533%_)
                        (_%tail121565%_ _%sis-tail121534%_)
                        (_%pred121570%_ _%pred121559%_))
                   (declare (not safe))
                   (__append-reverse-until
                    _%pred121570%_
                    _%rhead121562%_
                    _%tail121565%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g121719_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g121718_)
                           (##values-length _g121718_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g121719_ 2)))
                    (error "Context expects 2 values" _g121719_)))
              (let ((_%sis-rh2121592%_
                     (let () (declare (not safe)) (##values-ref _g121718_ 0)))
                    (_%sis-tl2121593%_
                     (let () (declare (not safe)) (##values-ref _g121718_ 1))))
                (if (null? _%sis-rh2121592%_)
                    (_%u121529%_
                     _%plrh121552%_
                     (cons _%c121553%_ _%pl-tail121532%_)
                     '()
                     _%sis-tl2121593%_)
                    (_%u121529%_
                     _%plrh121552%_
                     _%pl-tail121532%_
                     (cdr _%sis-rh2121592%_)
                     _%sis-tl2121593%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%try-match121537121607%_
                                              (lambda ()
                                                (if (pair? _%pl-rhead121535121544%_)
                                                    (let ((_%tl121541121600%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%pl-rhead121535121544%_)))
                                                          (_%hd121540121598%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%pl-rhead121535121544%_))))
                                                      (let ((_%c121603%_
                                                             _%hd121540121598%_)
                                                            (_%plrh121605%_
                                                             _%tl121541121600%_))
                                                        (_%K121539121595%_
                                                         _%plrh121605%_
                                                         _%c121603%_)))
                                                    (_%E121538121548%_)))))
                                         (if (null? _%pl-rhead121535121544%_)
                                             (_%K121542121611%_)
                                             (_%try-match121537121607%_))))))))
                              (_g121720_
                               (let ((_g121721_
                                      (let ((__tmp121723
                                             (reverse _%supers121286%_)))
                                        (declare (not safe))
                                        (append1!
                                         _%rpls121336%_
                                         __tmp121723))))
                                 #!void
                                 _g121721_))
                              (_%hpls121338%_
                               (let ()
                                 (declare (not safe))
                                 (##map _%unsisr-rpl121337%_ _%rpls121336%_)))
                              (_%c3-select-next121339%_
                               (lambda (_%tails121477%_)
                                 (let ((_%candidate?121483%_
                                        (lambda (_%c121479%_)
                                          (let ((__tmp121724
                                                 (lambda (_%tail121481%_)
                                                   (not (member _%c121479%_
                                                                (cdr _%tail121481%_)
                                                                _%eq121292%_)))))
                                            (declare (not safe))
                                            (andmap__0
                                             __tmp121724
                                             _%tails121477%_)))))
                                   (let _%loop121485%_ ((_%ts121487%_
                                                         _%tails121477%_))
                                     (let* ((_%ts121488121498%_ _%ts121487%_)
                                            (_%else121490121506%_
                                             (lambda () (_%err121333%_)))
                                            (_%K121492121512%_
                                             (lambda (_%rts121509%_
                                                      _%c121510%_)
                                               (if (_%candidate?121483%_
                                                    _%c121510%_)
                                                   _%c121510%_
                                                   (_%loop121485%_
                                                    _%rts121509%_)))))
                                       (if (pair? _%ts121488121498%_)
                                           (let ((_%hd121493121515%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%ts121488121498%_)))
                                                 (_%tl121494121517%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%ts121488121498%_))))
                                             (if (pair? _%hd121493121515%_)
                                                 (let* ((_%hd121495121520%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%hd121493121515%_)))
                                                        (_%c121523%_
                                                         _%hd121495121520%_)
                                                        (_%rts121525%_
                                                         _%tl121494121517%_))
                                                   (_%K121492121512%_
                                                    _%rts121525%_
                                                    _%c121523%_))
                                                 (_%err121333%_)))
                                           (_%err121333%_)))))))
                              (_%remove-next!121340%_
                               (lambda (_%next121422%_ _%tails121423%_)
                                 (let _%loop121425%_ ((_%t121427%_
                                                       _%tails121423%_))
                                   (let* ((_%t121428121439%_ _%t121427%_)
                                          (_%E121431121443%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%t121428121439%_
                                                    '([])
                                                    '([[head . tail] . more]))
                                             '#!void)))
                                     (let ((_%K121437121474%_
                                            (lambda () _%tails121423%_))
                                           (_%K121432121451%_
                                            (lambda (_%more121447%_
                                                     _%tail121448%_
                                                     _%head121449%_)
                                              (if (_%eq121292%_
                                                   _%head121449%_
                                                   _%next121422%_)
                                                  (set-car!
                                                   _%t121427%_
                                                   _%tail121448%_)
                                                  '#!void)
                                              (_%loop121425%_
                                               _%more121447%_))))
                                       (let ((_%try-match121430121470%_
                                              (lambda ()
                                                (if (pair? _%t121428121439%_)
                                                    (let ((_%tl121434121456%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%t121428121439%_)))
                                                          (_%hd121433121454%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%t121428121439%_))))
                                                      (if (pair? _%hd121433121454%_)
                                                          (let ((_%tl121436121461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd121433121454%_)))
                        (_%hd121435121459%_
                         (let ()
                           (declare (not safe))
                           (##car _%hd121433121454%_))))
                    (let ((_%head121464%_ _%hd121435121459%_)
                          (_%tail121466%_ _%tl121436121461%_)
                          (_%more121468%_ _%tl121434121456%_))
                      (_%K121432121451%_
                       _%more121468%_
                       _%tail121466%_
                       _%head121464%_)))
                  (_%E121431121443%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121431121443%_)))))
                                         (if (null? _%t121428121439%_)
                                             (_%K121437121474%_)
                                             (_%try-match121430121470%_))))))))
                              (_%precedence-list121341%_
                               (let _%c3loop121372%_ ((_%rhead121374%_
                                                       _%rhead121285%_)
                                                      (_%tails121375%_
                                                       _%hpls121338%_))
                                 (let* ((_%tails121377%_
                                         (let ()
                                           (declare (not safe))
                                           (remove-nulls! _%tails121375%_)))
                                        (_%tails121378121388%_ _%tails121377%_)
                                        (_%else121381121399%_
                                         (lambda ()
                                           (let ((_%next121396%_
                                                  (_%c3-select-next121339%_
                                                   _%tails121377%_)))
                                             (_%c3loop121372%_
                                              (cons _%next121396%_
                                                    _%rhead121374%_)
                                              (_%remove-next!121340%_
                                               _%next121396%_
                                               _%tails121377%_))))))
                                   (let ((_%K121386121419%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead121374%_
                                             _%sis121330%_)))
                                         (_%K121383121405%_
                                          (lambda (_%tail121403%_)
                                            (append-reverse
                                             _%rhead121374%_
                                             (append _%tail121403%_
                                                     _%sis121330%_)))))
                                     (let ((_%try-match121380121415%_
                                            (lambda ()
                                              (if (pair? _%tails121378121388%_)
                                                  (let ((_%tl121385121410%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tails121378121388%_)))
                                                        (_%hd121384121408%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tails121378121388%_))))
                                                    (if (null? _%tl121385121410%_)
                                                        (let ((_%tail121413%_
                                                               _%hd121384121408%_))
                                                          (_%K121383121405%_
                                                           _%tail121413%_))
                                                        (_%else121381121399%_)))
                                                  (_%else121381121399%_)))))
                                       (if (null? _%tails121378121388%_)
                                           (_%K121386121419%_)
                                           (_%try-match121380121415%_)))))))
                              (_%super-struct121342%_
                               (let* ((_%sis121343121351%_ _%sis121330%_)
                                      (_%else121345121359%_ (lambda () '#f))
                                      (_%K121347121364%_
                                       (lambda (_%s121362%_) _%s121362%_)))
                                 (if (pair? _%sis121343121351%_)
                                     (let* ((_%hd121348121367%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%sis121343121351%_)))
                                            (_%s121370%_ _%hd121348121367%_))
                                       (_%K121347121364%_ _%s121370%_))
                                     (_%else121345121359%_)))))
                      (values _%precedence-list121341%_
                              _%super-struct121342%_))))))))
    (define c4-linearize__@
      (lambda (_%@@keywords121671%_ . _%args121672%_)
        (apply c4-linearize__%
               _%@@keywords121671%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords121671%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords121671%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords121671%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords121671%_
                  'get-name:
                  absent-value))
               _%args121672%_)))
    (define c4-linearize
      (lambda _%args121278121678%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args121278121678%_)))
    (define c4-compute-class-slots
      (lambda (_%precedence-list121228%_
               _%direct-slot-list121229%_
               _%mixin-slot-names121230%_
               _%result121231%_)
        (let* ((_%next-slot121233%_ '1)
               (_%slot-table121235%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots121237%_ (cons 'class '()))
               (_%process-slot121262%_
                (lambda (_%slot121239%_)
                  (if (symbol? _%slot121239%_)
                      '#!void
                      (error '"invalid slot name" _%slot121239%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table121235%_
                              _%slot121239%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table121235%_
                           _%slot121239%_
                           _%next-slot121233%_))
                        (let ((__tmp121725
                               (let ((_%sym121241%_ _%slot121239%_))
                                 (if (symbol? _%sym121241%_)
                                     (let ((_%sym121246%_ _%sym121241%_))
                                       (declare (not safe))
                                       (__symbol->keyword _%sym121246%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/c3
                                        'contract:
                                        'symbol?
                                        'value:
                                        _%sym121241%_)
                                       '#!void)))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table121235%_
                           __tmp121725
                           _%next-slot121233%_))
                        (set! _%r-slots121237%_
                              (cons _%slot121239%_ _%r-slots121237%_))
                        (set! _%next-slot121233%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot121233%_ '1))))
                      '#!void)))
               (_%process-slots121268%_
                (lambda (_%g121263121265%_)
                  (for-each _%process-slot121262%_ _%g121263121265%_))))
          (let ((__tmp121727
                 (lambda (_%mixin121271%_)
                   (_%process-slots121268%_
                    (_%mixin-slot-names121230%_ _%mixin121271%_))))
                (__tmp121726 (reverse _%precedence-list121228%_)))
            (declare (not safe))
            (##for-each __tmp121727 __tmp121726))
          (_%process-slots121268%_ _%direct-slot-list121229%_)
          (_%result121231%_
           (reverse! _%r-slots121237%_)
           _%slot-table121235%_))))))
