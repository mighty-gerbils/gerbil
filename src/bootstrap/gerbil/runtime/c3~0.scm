(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1779967240)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords121784%_
               _%get-precedence-list121778121785%_
               _%struct?121779121786%_
               _%eq121780121787%_
               _%get-name121781121788%_
               _%rhead121789%_
               _%supers121790%_)
        (let* ((_%get-precedence-list121792%_
                (if (eq? _%get-precedence-list121778121785%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list121778121785%_))
               (_%struct?121794%_
                (if (eq? _%struct?121779121786%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?121779121786%_))
               (_%eq121796%_
                (if (eq? _%eq121780121787%_ absent-value)
                    eq?
                    _%eq121780121787%_))
               (_%get-name121798%_
                (if (eq? _%get-name121781121788%_ absent-value)
                    identity
                    _%get-name121781121788%_)))
          (if (null? _%supers121790%_)
              (values (reverse _%rhead121789%_) '#f)
              (if (null? (cdr _%supers121790%_))
                  (let ((_%pl121803%_
                         (_%get-precedence-list121792%_
                          (car _%supers121790%_))))
                    (values (append-reverse _%rhead121789%_ _%pl121803%_)
                            (let* ((_%pred121805%_ _%struct?121794%_)
                                   (_%lst121808%_ _%pl121803%_))
                              (if (procedure? _%pred121805%_)
                                  (let ((_%pred121813%_ _%pred121805%_))
                                    (declare (not safe))
                                    (__find _%pred121813%_ _%lst121808%_))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/c3
                                     'contract:
                                     'procedure?
                                     'value:
                                     _%pred121805%_)
                                    '#!void)))))
                  (let ((_%pls121833%_
                         (map _%get-precedence-list121792%_ _%supers121790%_))
                        (_%sis121834%_ '()))
                    (letrec* ((_%get-names121836%_
                               (lambda (_%lst122170%_)
                                 (map _%get-name121798%_ _%lst122170%_)))
                              (_%err121837%_
                               (lambda _%a122168%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names121836%_
                                         (reverse _%rhead121789%_))
                                        'precedence-lists:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names121836%_
                                                 _%pls121833%_))
                                        'single-inheritance-suffix:
                                        (_%get-names121836%_ _%sis121834%_)
                                        _%a122168%_)))
                              (_%eqlist?121838%_
                               (lambda (_%l1122162%_ _%l2122163%_)
                                 (let ((_%$e122165%_
                                        (eq? _%l1122162%_ _%l2122163%_)))
                                   (if _%$e122165%_
                                       _%$e122165%_
                                       (if (let ()
                                             (declare (not safe))
                                             (andmap__1
                                              _%eq121796%_
                                              _%l1122162%_
                                              _%l2122163%_))
                                           (let ((__tmp122218
                                                  (length _%l1122162%_))
                                                 (__tmp122217
                                                  (length _%l2122163%_)))
                                             (declare (not safe))
                                             (##fx= __tmp122218 __tmp122217))
                                           '#f)))))
                              (_%merge-sis!121839%_
                               (lambda (_%sis2122147%_)
                                 (if (null? _%sis2122147%_)
                                     '#!void
                                     (if (null? _%sis121834%_)
                                         (set! _%sis121834%_ _%sis2122147%_)
                                         (let _%loop122152%_ ((_%t1122154%_
                                                               _%sis121834%_)
                                                              (_%t2122155%_
                                                               _%sis2122147%_))
                                           (if (_%eqlist?121838%_
                                                _%t1122154%_
                                                _%sis2122147%_)
                                               '#!void
                                               (if (_%eqlist?121838%_
                                                    _%t2122155%_
                                                    _%sis121834%_)
                                                   (set! _%sis121834%_
                                                         _%sis2122147%_)
                                                   (if (null? _%t1122154%_)
                                                       (if (member (car _%sis121834%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%t2122155%_
                           _%eq121796%_)
                   (set! _%sis121834%_ _%sis2122147%_)
                   (_%err121837%_
                    'struct-incompatibility:
                    (cons (_%get-names121836%_ _%sis121834%_)
                          (cons (_%get-names121836%_ _%sis2122147%_) '()))))
               (if (null? _%t2122155%_)
                   (if (member (car _%sis2122147%_) _%t1122154%_ _%eq121796%_)
                       '#!void
                       (_%err121837%_
                        'struct-incompatibility:
                        (cons (_%get-names121836%_ _%sis121834%_)
                              (cons (_%get-names121836%_ _%sis2122147%_)
                                    '()))))
                   (_%loop122152%_
                    (cdr _%t1122154%_)
                    (cdr _%t2122155%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%rpls121840%_
                               (let ((__tmp122219
                                      (lambda (_%pl122118%_)
                                        (let ((_g122220_
                                               (let* ((_%pred122120%_
                                                       _%struct?121794%_)
                                                      (_%rhead122123%_
                                                       _%pl122118%_)
                                                      (_%tail122126%_ '()))
                                                 (if (procedure?
                                                      _%pred122120%_)
                                                     (let ((_%pred122131%_
                                                            _%pred122120%_))
                                                       (declare (not safe))
                                                       (__append-reverse-until
                                                        _%pred122131%_
                                                        _%rhead122123%_
                                                        _%tail122126%_))
                                                     (begin
                                                       (raise-contract-violation-error
                                                        '"contract violation"
                                                        'context:
                                                        'gerbil/runtime/c3
                                                        'contract:
                                                        'procedure?
                                                        'value:
                                                        _%pred122120%_)
                                                       '#!void)))))
                                          (begin
                                            (let ((_g122221_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g122220_)
                                                         (##values-length
                                                          _g122220_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g122221_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g122221_)))
                                            (let ((_%tl122144%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g122220_
                                                      0)))
                                                  (_%rh122145%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g122220_
                                                      1))))
                                              (begin
                                                (_%merge-sis!121839%_
                                                 _%tl122144%_)
                                                _%rh122145%_)))))))
                                 (declare (not safe))
                                 (##map __tmp122219 _%pls121833%_)))
                              (_%unsisr-rpl121841%_
                               (lambda (_%rpl122031%_)
                                 (let _%u122033%_ ((_%pl-rhead122035%_
                                                    _%rpl122031%_)
                                                   (_%pl-tail122036%_ '())
                                                   (_%sis-rhead122037%_
                                                    (reverse _%sis121834%_))
                                                   (_%sis-tail122038%_ '()))
                                   (let* ((_%pl-rhead122039122048%_
                                           _%pl-rhead122035%_)
                                          (_%E122042122052%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%pl-rhead122039122048%_
                                                    '([])
                                                    '([c . plrh]))
                                             '#!void)))
                                     (let ((_%K122046122115%_
                                            (lambda () _%pl-tail122036%_))
                                           (_%K122043122099%_
                                            (lambda (_%plrh122056%_
                                                     _%c122057%_)
                                              (if (member _%c122057%_
                                                          _%sis-tail122038%_
                                                          _%eq121796%_)
                                                  (_%err121837%_
                                                   'precedence-list-head:
                                                   (_%get-names121836%_
                                                    (reverse _%pl-rhead122035%_))
                                                   'precedence-list-tail:
                                                   (_%get-names121836%_
                                                    _%pl-tail122036%_)
                                                   'single-inheritance-head:
                                                   (_%get-names121836%_
                                                    (reverse _%sis-rhead122037%_))
                                                   'single-inheritance-tail:
                                                   (_%get-names121836%_
                                                    _%sis-tail122038%_)
                                                   'super-out-of-order-vs-single-inheritance-tail:
                                                   (_%get-name121798%_
                                                    _%c122057%_))
                                                  (let ((_g122222_
                                                         (let* ((_%pred122063%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g122058122060%_)
                           (_%eq121796%_ _%c122057%_ _%g122058122060%_)))
                        (_%rhead122066%_ _%sis-rhead122037%_)
                        (_%tail122069%_ _%sis-tail122038%_)
                        (_%pred122074%_ _%pred122063%_))
                   (declare (not safe))
                   (__append-reverse-until
                    _%pred122074%_
                    _%rhead122066%_
                    _%tail122069%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g122223_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g122222_)
                           (##values-length _g122222_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g122223_ 2)))
                    (error "Context expects 2 values" _g122223_)))
              (let ((_%sis-rh2122096%_
                     (let () (declare (not safe)) (##values-ref _g122222_ 0)))
                    (_%sis-tl2122097%_
                     (let () (declare (not safe)) (##values-ref _g122222_ 1))))
                (if (null? _%sis-rh2122096%_)
                    (_%u122033%_
                     _%plrh122056%_
                     (cons _%c122057%_ _%pl-tail122036%_)
                     '()
                     _%sis-tl2122097%_)
                    (_%u122033%_
                     _%plrh122056%_
                     _%pl-tail122036%_
                     (cdr _%sis-rh2122096%_)
                     _%sis-tl2122097%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%try-match122041122111%_
                                              (lambda ()
                                                (if (pair? _%pl-rhead122039122048%_)
                                                    (let ((_%tl122045122104%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%pl-rhead122039122048%_)))
                                                          (_%hd122044122102%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%pl-rhead122039122048%_))))
                                                      (let ((_%c122107%_
                                                             _%hd122044122102%_)
                                                            (_%plrh122109%_
                                                             _%tl122045122104%_))
                                                        (_%K122043122099%_
                                                         _%plrh122109%_
                                                         _%c122107%_)))
                                                    (_%E122042122052%_)))))
                                         (if (null? _%pl-rhead122039122048%_)
                                             (_%K122046122115%_)
                                             (_%try-match122041122111%_))))))))
                              (_g122224_
                               (let ((_g122225_
                                      (let ((__tmp122227
                                             (reverse _%supers121790%_)))
                                        (declare (not safe))
                                        (append1!
                                         _%rpls121840%_
                                         __tmp122227))))
                                 #!void
                                 _g122225_))
                              (_%hpls121842%_
                               (let ()
                                 (declare (not safe))
                                 (##map _%unsisr-rpl121841%_ _%rpls121840%_)))
                              (_%c3-select-next121843%_
                               (lambda (_%tails121981%_)
                                 (let ((_%candidate?121987%_
                                        (lambda (_%c121983%_)
                                          (let ((__tmp122228
                                                 (lambda (_%tail121985%_)
                                                   (not (member _%c121983%_
                                                                (cdr _%tail121985%_)
                                                                _%eq121796%_)))))
                                            (declare (not safe))
                                            (andmap__0
                                             __tmp122228
                                             _%tails121981%_)))))
                                   (let _%loop121989%_ ((_%ts121991%_
                                                         _%tails121981%_))
                                     (let* ((_%ts121992122002%_ _%ts121991%_)
                                            (_%else121994122010%_
                                             (lambda () (_%err121837%_)))
                                            (_%K121996122016%_
                                             (lambda (_%rts122013%_
                                                      _%c122014%_)
                                               (if (_%candidate?121987%_
                                                    _%c122014%_)
                                                   _%c122014%_
                                                   (_%loop121989%_
                                                    _%rts122013%_)))))
                                       (if (pair? _%ts121992122002%_)
                                           (let ((_%hd121997122019%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%ts121992122002%_)))
                                                 (_%tl121998122021%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%ts121992122002%_))))
                                             (if (pair? _%hd121997122019%_)
                                                 (let* ((_%hd121999122024%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%hd121997122019%_)))
                                                        (_%c122027%_
                                                         _%hd121999122024%_)
                                                        (_%rts122029%_
                                                         _%tl121998122021%_))
                                                   (_%K121996122016%_
                                                    _%rts122029%_
                                                    _%c122027%_))
                                                 (_%err121837%_)))
                                           (_%err121837%_)))))))
                              (_%remove-next!121844%_
                               (lambda (_%next121926%_ _%tails121927%_)
                                 (let _%loop121929%_ ((_%t121931%_
                                                       _%tails121927%_))
                                   (let* ((_%t121932121943%_ _%t121931%_)
                                          (_%E121935121947%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%t121932121943%_
                                                    '([])
                                                    '([[head . tail] . more]))
                                             '#!void)))
                                     (let ((_%K121941121978%_
                                            (lambda () _%tails121927%_))
                                           (_%K121936121955%_
                                            (lambda (_%more121951%_
                                                     _%tail121952%_
                                                     _%head121953%_)
                                              (if (_%eq121796%_
                                                   _%head121953%_
                                                   _%next121926%_)
                                                  (set-car!
                                                   _%t121931%_
                                                   _%tail121952%_)
                                                  '#!void)
                                              (_%loop121929%_
                                               _%more121951%_))))
                                       (let ((_%try-match121934121974%_
                                              (lambda ()
                                                (if (pair? _%t121932121943%_)
                                                    (let ((_%tl121938121960%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%t121932121943%_)))
                                                          (_%hd121937121958%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%t121932121943%_))))
                                                      (if (pair? _%hd121937121958%_)
                                                          (let ((_%tl121940121965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd121937121958%_)))
                        (_%hd121939121963%_
                         (let ()
                           (declare (not safe))
                           (##car _%hd121937121958%_))))
                    (let ((_%head121968%_ _%hd121939121963%_)
                          (_%tail121970%_ _%tl121940121965%_)
                          (_%more121972%_ _%tl121938121960%_))
                      (_%K121936121955%_
                       _%more121972%_
                       _%tail121970%_
                       _%head121968%_)))
                  (_%E121935121947%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121935121947%_)))))
                                         (if (null? _%t121932121943%_)
                                             (_%K121941121978%_)
                                             (_%try-match121934121974%_))))))))
                              (_%precedence-list121845%_
                               (let _%c3loop121876%_ ((_%rhead121878%_
                                                       _%rhead121789%_)
                                                      (_%tails121879%_
                                                       _%hpls121842%_))
                                 (let* ((_%tails121881%_
                                         (let ()
                                           (declare (not safe))
                                           (remove-nulls! _%tails121879%_)))
                                        (_%tails121882121892%_ _%tails121881%_)
                                        (_%else121885121903%_
                                         (lambda ()
                                           (let ((_%next121900%_
                                                  (_%c3-select-next121843%_
                                                   _%tails121881%_)))
                                             (_%c3loop121876%_
                                              (cons _%next121900%_
                                                    _%rhead121878%_)
                                              (_%remove-next!121844%_
                                               _%next121900%_
                                               _%tails121881%_))))))
                                   (let ((_%K121890121923%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead121878%_
                                             _%sis121834%_)))
                                         (_%K121887121909%_
                                          (lambda (_%tail121907%_)
                                            (append-reverse
                                             _%rhead121878%_
                                             (append _%tail121907%_
                                                     _%sis121834%_)))))
                                     (let ((_%try-match121884121919%_
                                            (lambda ()
                                              (if (pair? _%tails121882121892%_)
                                                  (let ((_%tl121889121914%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tails121882121892%_)))
                                                        (_%hd121888121912%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tails121882121892%_))))
                                                    (if (null? _%tl121889121914%_)
                                                        (let ((_%tail121917%_
                                                               _%hd121888121912%_))
                                                          (_%K121887121909%_
                                                           _%tail121917%_))
                                                        (_%else121885121903%_)))
                                                  (_%else121885121903%_)))))
                                       (if (null? _%tails121882121892%_)
                                           (_%K121890121923%_)
                                           (_%try-match121884121919%_)))))))
                              (_%super-struct121846%_
                               (let* ((_%sis121847121855%_ _%sis121834%_)
                                      (_%else121849121863%_ (lambda () '#f))
                                      (_%K121851121868%_
                                       (lambda (_%s121866%_) _%s121866%_)))
                                 (if (pair? _%sis121847121855%_)
                                     (let* ((_%hd121852121871%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%sis121847121855%_)))
                                            (_%s121874%_ _%hd121852121871%_))
                                       (_%K121851121868%_ _%s121874%_))
                                     (_%else121849121863%_)))))
                      (values _%precedence-list121845%_
                              _%super-struct121846%_))))))))
    (define c4-linearize__@
      (lambda (_%@@keywords122175%_ . _%args122176%_)
        (apply c4-linearize__%
               _%@@keywords122175%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords122175%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords122175%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords122175%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords122175%_
                  'get-name:
                  absent-value))
               _%args122176%_)))
    (define c4-linearize
      (lambda _%args121782122182%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args121782122182%_)))
    (define c4-compute-class-slots
      (lambda (_%precedence-list121732%_
               _%direct-slot-list121733%_
               _%mixin-slot-names121734%_
               _%result121735%_)
        (let* ((_%next-slot121737%_ '1)
               (_%slot-table121739%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots121741%_ (cons 'class '()))
               (_%process-slot121766%_
                (lambda (_%slot121743%_)
                  (if (symbol? _%slot121743%_)
                      '#!void
                      (error '"invalid slot name" _%slot121743%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table121739%_
                              _%slot121743%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table121739%_
                           _%slot121743%_
                           _%next-slot121737%_))
                        (let ((__tmp122229
                               (let ((_%sym121745%_ _%slot121743%_))
                                 (if (symbol? _%sym121745%_)
                                     (let ((_%sym121750%_ _%sym121745%_))
                                       (declare (not safe))
                                       (__symbol->keyword _%sym121750%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/c3
                                        'contract:
                                        'symbol?
                                        'value:
                                        _%sym121745%_)
                                       '#!void)))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table121739%_
                           __tmp122229
                           _%next-slot121737%_))
                        (set! _%r-slots121741%_
                              (cons _%slot121743%_ _%r-slots121741%_))
                        (set! _%next-slot121737%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot121737%_ '1))))
                      '#!void)))
               (_%process-slots121772%_
                (lambda (_%g121767121769%_)
                  (for-each _%process-slot121766%_ _%g121767121769%_))))
          (let ((__tmp122231
                 (lambda (_%mixin121775%_)
                   (_%process-slots121772%_
                    (_%mixin-slot-names121734%_ _%mixin121775%_))))
                (__tmp122230 (reverse _%precedence-list121732%_)))
            (declare (not safe))
            (##for-each __tmp122231 __tmp122230))
          (_%process-slots121772%_ _%direct-slot-list121733%_)
          (_%result121735%_
           (reverse! _%r-slots121741%_)
           _%slot-table121739%_))))))
