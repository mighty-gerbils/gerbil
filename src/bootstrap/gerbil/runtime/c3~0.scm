(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1779435577)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords121737%_
               _%get-precedence-list121731121738%_
               _%struct?121732121739%_
               _%eq121733121740%_
               _%get-name121734121741%_
               _%rhead121742%_
               _%supers121743%_)
        (let* ((_%get-precedence-list121745%_
                (if (eq? _%get-precedence-list121731121738%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list121731121738%_))
               (_%struct?121747%_
                (if (eq? _%struct?121732121739%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?121732121739%_))
               (_%eq121749%_
                (if (eq? _%eq121733121740%_ absent-value)
                    eq?
                    _%eq121733121740%_))
               (_%get-name121751%_
                (if (eq? _%get-name121734121741%_ absent-value)
                    identity
                    _%get-name121734121741%_)))
          (if (null? _%supers121743%_)
              (values (reverse _%rhead121742%_) '#f)
              (if (null? (cdr _%supers121743%_))
                  (let ((_%pl121756%_
                         (_%get-precedence-list121745%_
                          (car _%supers121743%_))))
                    (values (append-reverse _%rhead121742%_ _%pl121756%_)
                            (let* ((_%pred121758%_ _%struct?121747%_)
                                   (_%lst121761%_ _%pl121756%_))
                              (if (procedure? _%pred121758%_)
                                  (let ((_%pred121766%_ _%pred121758%_))
                                    (declare (not safe))
                                    (__find _%pred121766%_ _%lst121761%_))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/c3
                                     'contract:
                                     'procedure?
                                     'value:
                                     _%pred121758%_)
                                    '#!void)))))
                  (let ((_%pls121786%_
                         (map _%get-precedence-list121745%_ _%supers121743%_))
                        (_%sis121787%_ '()))
                    (letrec* ((_%get-names121789%_
                               (lambda (_%lst122123%_)
                                 (map _%get-name121751%_ _%lst122123%_)))
                              (_%err121790%_
                               (lambda _%a122121%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names121789%_
                                         (reverse _%rhead121742%_))
                                        'precedence-lists:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names121789%_
                                                 _%pls121786%_))
                                        'single-inheritance-suffix:
                                        (_%get-names121789%_ _%sis121787%_)
                                        _%a122121%_)))
                              (_%eqlist?121791%_
                               (lambda (_%l1122115%_ _%l2122116%_)
                                 (let ((_%$e122118%_
                                        (eq? _%l1122115%_ _%l2122116%_)))
                                   (if _%$e122118%_
                                       _%$e122118%_
                                       (if (let ()
                                             (declare (not safe))
                                             (andmap__1
                                              _%eq121749%_
                                              _%l1122115%_
                                              _%l2122116%_))
                                           (let ((__tmp122171
                                                  (length _%l1122115%_))
                                                 (__tmp122170
                                                  (length _%l2122116%_)))
                                             (declare (not safe))
                                             (##fx= __tmp122171 __tmp122170))
                                           '#f)))))
                              (_%merge-sis!121792%_
                               (lambda (_%sis2122100%_)
                                 (if (null? _%sis2122100%_)
                                     '#!void
                                     (if (null? _%sis121787%_)
                                         (set! _%sis121787%_ _%sis2122100%_)
                                         (let _%loop122105%_ ((_%t1122107%_
                                                               _%sis121787%_)
                                                              (_%t2122108%_
                                                               _%sis2122100%_))
                                           (if (_%eqlist?121791%_
                                                _%t1122107%_
                                                _%sis2122100%_)
                                               '#!void
                                               (if (_%eqlist?121791%_
                                                    _%t2122108%_
                                                    _%sis121787%_)
                                                   (set! _%sis121787%_
                                                         _%sis2122100%_)
                                                   (if (null? _%t1122107%_)
                                                       (if (member (car _%sis121787%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%t2122108%_
                           _%eq121749%_)
                   (set! _%sis121787%_ _%sis2122100%_)
                   (_%err121790%_
                    'struct-incompatibility:
                    (cons (_%get-names121789%_ _%sis121787%_)
                          (cons (_%get-names121789%_ _%sis2122100%_) '()))))
               (if (null? _%t2122108%_)
                   (if (member (car _%sis2122100%_) _%t1122107%_ _%eq121749%_)
                       '#!void
                       (_%err121790%_
                        'struct-incompatibility:
                        (cons (_%get-names121789%_ _%sis121787%_)
                              (cons (_%get-names121789%_ _%sis2122100%_)
                                    '()))))
                   (_%loop122105%_
                    (cdr _%t1122107%_)
                    (cdr _%t2122108%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%rpls121793%_
                               (let ((__tmp122172
                                      (lambda (_%pl122071%_)
                                        (let ((_g122173_
                                               (let* ((_%pred122073%_
                                                       _%struct?121747%_)
                                                      (_%rhead122076%_
                                                       _%pl122071%_)
                                                      (_%tail122079%_ '()))
                                                 (if (procedure?
                                                      _%pred122073%_)
                                                     (let ((_%pred122084%_
                                                            _%pred122073%_))
                                                       (declare (not safe))
                                                       (__append-reverse-until
                                                        _%pred122084%_
                                                        _%rhead122076%_
                                                        _%tail122079%_))
                                                     (begin
                                                       (raise-contract-violation-error
                                                        '"contract violation"
                                                        'context:
                                                        'gerbil/runtime/c3
                                                        'contract:
                                                        'procedure?
                                                        'value:
                                                        _%pred122073%_)
                                                       '#!void)))))
                                          (begin
                                            (let ((_g122174_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g122173_)
                                                         (##values-length
                                                          _g122173_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g122174_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g122174_)))
                                            (let ((_%tl122097%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g122173_
                                                      0)))
                                                  (_%rh122098%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g122173_
                                                      1))))
                                              (begin
                                                (_%merge-sis!121792%_
                                                 _%tl122097%_)
                                                _%rh122098%_)))))))
                                 (declare (not safe))
                                 (##map __tmp122172 _%pls121786%_)))
                              (_%unsisr-rpl121794%_
                               (lambda (_%rpl121984%_)
                                 (let _%u121986%_ ((_%pl-rhead121988%_
                                                    _%rpl121984%_)
                                                   (_%pl-tail121989%_ '())
                                                   (_%sis-rhead121990%_
                                                    (reverse _%sis121787%_))
                                                   (_%sis-tail121991%_ '()))
                                   (let* ((_%pl-rhead121992122001%_
                                           _%pl-rhead121988%_)
                                          (_%E121995122005%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%pl-rhead121992122001%_
                                                    '([])
                                                    '([c . plrh]))
                                             '#!void)))
                                     (let ((_%K121999122068%_
                                            (lambda () _%pl-tail121989%_))
                                           (_%K121996122052%_
                                            (lambda (_%plrh122009%_
                                                     _%c122010%_)
                                              (if (member _%c122010%_
                                                          _%sis-tail121991%_
                                                          _%eq121749%_)
                                                  (_%err121790%_
                                                   'precedence-list-head:
                                                   (_%get-names121789%_
                                                    (reverse _%pl-rhead121988%_))
                                                   'precedence-list-tail:
                                                   (_%get-names121789%_
                                                    _%pl-tail121989%_)
                                                   'single-inheritance-head:
                                                   (_%get-names121789%_
                                                    (reverse _%sis-rhead121990%_))
                                                   'single-inheritance-tail:
                                                   (_%get-names121789%_
                                                    _%sis-tail121991%_)
                                                   'super-out-of-order-vs-single-inheritance-tail:
                                                   (_%get-name121751%_
                                                    _%c122010%_))
                                                  (let ((_g122175_
                                                         (let* ((_%pred122016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g122011122013%_)
                           (_%eq121749%_ _%c122010%_ _%g122011122013%_)))
                        (_%rhead122019%_ _%sis-rhead121990%_)
                        (_%tail122022%_ _%sis-tail121991%_)
                        (_%pred122027%_ _%pred122016%_))
                   (declare (not safe))
                   (__append-reverse-until
                    _%pred122027%_
                    _%rhead122019%_
                    _%tail122022%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g122176_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g122175_)
                           (##values-length _g122175_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g122176_ 2)))
                    (error "Context expects 2 values" _g122176_)))
              (let ((_%sis-rh2122049%_
                     (let () (declare (not safe)) (##values-ref _g122175_ 0)))
                    (_%sis-tl2122050%_
                     (let () (declare (not safe)) (##values-ref _g122175_ 1))))
                (if (null? _%sis-rh2122049%_)
                    (_%u121986%_
                     _%plrh122009%_
                     (cons _%c122010%_ _%pl-tail121989%_)
                     '()
                     _%sis-tl2122050%_)
                    (_%u121986%_
                     _%plrh122009%_
                     _%pl-tail121989%_
                     (cdr _%sis-rh2122049%_)
                     _%sis-tl2122050%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%try-match121994122064%_
                                              (lambda ()
                                                (if (pair? _%pl-rhead121992122001%_)
                                                    (let ((_%tl121998122057%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%pl-rhead121992122001%_)))
                                                          (_%hd121997122055%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%pl-rhead121992122001%_))))
                                                      (let ((_%c122060%_
                                                             _%hd121997122055%_)
                                                            (_%plrh122062%_
                                                             _%tl121998122057%_))
                                                        (_%K121996122052%_
                                                         _%plrh122062%_
                                                         _%c122060%_)))
                                                    (_%E121995122005%_)))))
                                         (if (null? _%pl-rhead121992122001%_)
                                             (_%K121999122068%_)
                                             (_%try-match121994122064%_))))))))
                              (_g122177_
                               (let ((_g122178_
                                      (let ((__tmp122180
                                             (reverse _%supers121743%_)))
                                        (declare (not safe))
                                        (append1!
                                         _%rpls121793%_
                                         __tmp122180))))
                                 #!void
                                 _g122178_))
                              (_%hpls121795%_
                               (let ()
                                 (declare (not safe))
                                 (##map _%unsisr-rpl121794%_ _%rpls121793%_)))
                              (_%c3-select-next121796%_
                               (lambda (_%tails121934%_)
                                 (let ((_%candidate?121940%_
                                        (lambda (_%c121936%_)
                                          (let ((__tmp122181
                                                 (lambda (_%tail121938%_)
                                                   (not (member _%c121936%_
                                                                (cdr _%tail121938%_)
                                                                _%eq121749%_)))))
                                            (declare (not safe))
                                            (andmap__0
                                             __tmp122181
                                             _%tails121934%_)))))
                                   (let _%loop121942%_ ((_%ts121944%_
                                                         _%tails121934%_))
                                     (let* ((_%ts121945121955%_ _%ts121944%_)
                                            (_%else121947121963%_
                                             (lambda () (_%err121790%_)))
                                            (_%K121949121969%_
                                             (lambda (_%rts121966%_
                                                      _%c121967%_)
                                               (if (_%candidate?121940%_
                                                    _%c121967%_)
                                                   _%c121967%_
                                                   (_%loop121942%_
                                                    _%rts121966%_)))))
                                       (if (pair? _%ts121945121955%_)
                                           (let ((_%hd121950121972%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%ts121945121955%_)))
                                                 (_%tl121951121974%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%ts121945121955%_))))
                                             (if (pair? _%hd121950121972%_)
                                                 (let* ((_%hd121952121977%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%hd121950121972%_)))
                                                        (_%c121980%_
                                                         _%hd121952121977%_)
                                                        (_%rts121982%_
                                                         _%tl121951121974%_))
                                                   (_%K121949121969%_
                                                    _%rts121982%_
                                                    _%c121980%_))
                                                 (_%err121790%_)))
                                           (_%err121790%_)))))))
                              (_%remove-next!121797%_
                               (lambda (_%next121879%_ _%tails121880%_)
                                 (let _%loop121882%_ ((_%t121884%_
                                                       _%tails121880%_))
                                   (let* ((_%t121885121896%_ _%t121884%_)
                                          (_%E121888121900%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%t121885121896%_
                                                    '([])
                                                    '([[head . tail] . more]))
                                             '#!void)))
                                     (let ((_%K121894121931%_
                                            (lambda () _%tails121880%_))
                                           (_%K121889121908%_
                                            (lambda (_%more121904%_
                                                     _%tail121905%_
                                                     _%head121906%_)
                                              (if (_%eq121749%_
                                                   _%head121906%_
                                                   _%next121879%_)
                                                  (set-car!
                                                   _%t121884%_
                                                   _%tail121905%_)
                                                  '#!void)
                                              (_%loop121882%_
                                               _%more121904%_))))
                                       (let ((_%try-match121887121927%_
                                              (lambda ()
                                                (if (pair? _%t121885121896%_)
                                                    (let ((_%tl121891121913%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%t121885121896%_)))
                                                          (_%hd121890121911%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%t121885121896%_))))
                                                      (if (pair? _%hd121890121911%_)
                                                          (let ((_%tl121893121918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd121890121911%_)))
                        (_%hd121892121916%_
                         (let ()
                           (declare (not safe))
                           (##car _%hd121890121911%_))))
                    (let ((_%head121921%_ _%hd121892121916%_)
                          (_%tail121923%_ _%tl121893121918%_)
                          (_%more121925%_ _%tl121891121913%_))
                      (_%K121889121908%_
                       _%more121925%_
                       _%tail121923%_
                       _%head121921%_)))
                  (_%E121888121900%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121888121900%_)))))
                                         (if (null? _%t121885121896%_)
                                             (_%K121894121931%_)
                                             (_%try-match121887121927%_))))))))
                              (_%precedence-list121798%_
                               (let _%c3loop121829%_ ((_%rhead121831%_
                                                       _%rhead121742%_)
                                                      (_%tails121832%_
                                                       _%hpls121795%_))
                                 (let* ((_%tails121834%_
                                         (let ()
                                           (declare (not safe))
                                           (remove-nulls! _%tails121832%_)))
                                        (_%tails121835121845%_ _%tails121834%_)
                                        (_%else121838121856%_
                                         (lambda ()
                                           (let ((_%next121853%_
                                                  (_%c3-select-next121796%_
                                                   _%tails121834%_)))
                                             (_%c3loop121829%_
                                              (cons _%next121853%_
                                                    _%rhead121831%_)
                                              (_%remove-next!121797%_
                                               _%next121853%_
                                               _%tails121834%_))))))
                                   (let ((_%K121843121876%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead121831%_
                                             _%sis121787%_)))
                                         (_%K121840121862%_
                                          (lambda (_%tail121860%_)
                                            (append-reverse
                                             _%rhead121831%_
                                             (append _%tail121860%_
                                                     _%sis121787%_)))))
                                     (let ((_%try-match121837121872%_
                                            (lambda ()
                                              (if (pair? _%tails121835121845%_)
                                                  (let ((_%tl121842121867%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tails121835121845%_)))
                                                        (_%hd121841121865%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tails121835121845%_))))
                                                    (if (null? _%tl121842121867%_)
                                                        (let ((_%tail121870%_
                                                               _%hd121841121865%_))
                                                          (_%K121840121862%_
                                                           _%tail121870%_))
                                                        (_%else121838121856%_)))
                                                  (_%else121838121856%_)))))
                                       (if (null? _%tails121835121845%_)
                                           (_%K121843121876%_)
                                           (_%try-match121837121872%_)))))))
                              (_%super-struct121799%_
                               (let* ((_%sis121800121808%_ _%sis121787%_)
                                      (_%else121802121816%_ (lambda () '#f))
                                      (_%K121804121821%_
                                       (lambda (_%s121819%_) _%s121819%_)))
                                 (if (pair? _%sis121800121808%_)
                                     (let* ((_%hd121805121824%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%sis121800121808%_)))
                                            (_%s121827%_ _%hd121805121824%_))
                                       (_%K121804121821%_ _%s121827%_))
                                     (_%else121802121816%_)))))
                      (values _%precedence-list121798%_
                              _%super-struct121799%_))))))))
    (define c4-linearize__@
      (lambda (_%@@keywords122128%_ . _%args122129%_)
        (apply c4-linearize__%
               _%@@keywords122128%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords122128%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords122128%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords122128%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords122128%_
                  'get-name:
                  absent-value))
               _%args122129%_)))
    (define c4-linearize
      (lambda _%args121735122135%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args121735122135%_)))
    (define c4-compute-class-slots
      (lambda (_%precedence-list121685%_
               _%direct-slot-list121686%_
               _%mixin-slot-names121687%_
               _%result121688%_)
        (let* ((_%next-slot121690%_ '1)
               (_%slot-table121692%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots121694%_ (cons 'class '()))
               (_%process-slot121719%_
                (lambda (_%slot121696%_)
                  (if (symbol? _%slot121696%_)
                      '#!void
                      (error '"invalid slot name" _%slot121696%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table121692%_
                              _%slot121696%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table121692%_
                           _%slot121696%_
                           _%next-slot121690%_))
                        (let ((__tmp122182
                               (let ((_%sym121698%_ _%slot121696%_))
                                 (if (symbol? _%sym121698%_)
                                     (let ((_%sym121703%_ _%sym121698%_))
                                       (declare (not safe))
                                       (__symbol->keyword _%sym121703%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/c3
                                        'contract:
                                        'symbol?
                                        'value:
                                        _%sym121698%_)
                                       '#!void)))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table121692%_
                           __tmp122182
                           _%next-slot121690%_))
                        (set! _%r-slots121694%_
                              (cons _%slot121696%_ _%r-slots121694%_))
                        (set! _%next-slot121690%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot121690%_ '1))))
                      '#!void)))
               (_%process-slots121725%_
                (lambda (_%g121720121722%_)
                  (for-each _%process-slot121719%_ _%g121720121722%_))))
          (let ((__tmp122184
                 (lambda (_%mixin121728%_)
                   (_%process-slots121725%_
                    (_%mixin-slot-names121687%_ _%mixin121728%_))))
                (__tmp122183 (reverse _%precedence-list121685%_)))
            (declare (not safe))
            (##for-each __tmp122184 __tmp122183))
          (_%process-slots121725%_ _%direct-slot-list121686%_)
          (_%result121688%_
           (reverse! _%r-slots121694%_)
           _%slot-table121692%_))))))
