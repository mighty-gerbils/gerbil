(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1779274767)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords121290%_
               _%get-precedence-list121284121291%_
               _%struct?121285121292%_
               _%eq121286121293%_
               _%get-name121287121294%_
               _%rhead121295%_
               _%supers121296%_)
        (let* ((_%get-precedence-list121298%_
                (if (eq? _%get-precedence-list121284121291%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list121284121291%_))
               (_%struct?121300%_
                (if (eq? _%struct?121285121292%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?121285121292%_))
               (_%eq121302%_
                (if (eq? _%eq121286121293%_ absent-value)
                    eq?
                    _%eq121286121293%_))
               (_%get-name121304%_
                (if (eq? _%get-name121287121294%_ absent-value)
                    identity
                    _%get-name121287121294%_)))
          (if (null? _%supers121296%_)
              (values (reverse _%rhead121295%_) '#f)
              (if (null? (cdr _%supers121296%_))
                  (let ((_%pl121309%_
                         (_%get-precedence-list121298%_
                          (car _%supers121296%_))))
                    (values (append-reverse _%rhead121295%_ _%pl121309%_)
                            (let* ((_%pred121311%_ _%struct?121300%_)
                                   (_%lst121314%_ _%pl121309%_))
                              (if (procedure? _%pred121311%_)
                                  (let ((_%pred121319%_ _%pred121311%_))
                                    (declare (not safe))
                                    (__find _%pred121319%_ _%lst121314%_))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/c3
                                     'contract:
                                     'procedure?
                                     'value:
                                     _%pred121311%_)
                                    '#!void)))))
                  (let ((_%pls121339%_
                         (map _%get-precedence-list121298%_ _%supers121296%_))
                        (_%sis121340%_ '()))
                    (letrec* ((_%get-names121342%_
                               (lambda (_%lst121676%_)
                                 (map _%get-name121304%_ _%lst121676%_)))
                              (_%err121343%_
                               (lambda _%a121674%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names121342%_
                                         (reverse _%rhead121295%_))
                                        'precedence-lists:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names121342%_
                                                 _%pls121339%_))
                                        'single-inheritance-suffix:
                                        (_%get-names121342%_ _%sis121340%_)
                                        _%a121674%_)))
                              (_%eqlist?121344%_
                               (lambda (_%l1121668%_ _%l2121669%_)
                                 (let ((_%$e121671%_
                                        (eq? _%l1121668%_ _%l2121669%_)))
                                   (if _%$e121671%_
                                       _%$e121671%_
                                       (if (let ()
                                             (declare (not safe))
                                             (andmap__1
                                              _%eq121302%_
                                              _%l1121668%_
                                              _%l2121669%_))
                                           (let ((__tmp121724
                                                  (length _%l1121668%_))
                                                 (__tmp121723
                                                  (length _%l2121669%_)))
                                             (declare (not safe))
                                             (##fx= __tmp121724 __tmp121723))
                                           '#f)))))
                              (_%merge-sis!121345%_
                               (lambda (_%sis2121653%_)
                                 (if (null? _%sis2121653%_)
                                     '#!void
                                     (if (null? _%sis121340%_)
                                         (set! _%sis121340%_ _%sis2121653%_)
                                         (let _%loop121658%_ ((_%t1121660%_
                                                               _%sis121340%_)
                                                              (_%t2121661%_
                                                               _%sis2121653%_))
                                           (if (_%eqlist?121344%_
                                                _%t1121660%_
                                                _%sis2121653%_)
                                               '#!void
                                               (if (_%eqlist?121344%_
                                                    _%t2121661%_
                                                    _%sis121340%_)
                                                   (set! _%sis121340%_
                                                         _%sis2121653%_)
                                                   (if (null? _%t1121660%_)
                                                       (if (member (car _%sis121340%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%t2121661%_
                           _%eq121302%_)
                   (set! _%sis121340%_ _%sis2121653%_)
                   (_%err121343%_
                    'struct-incompatibility:
                    (cons (_%get-names121342%_ _%sis121340%_)
                          (cons (_%get-names121342%_ _%sis2121653%_) '()))))
               (if (null? _%t2121661%_)
                   (if (member (car _%sis2121653%_) _%t1121660%_ _%eq121302%_)
                       '#!void
                       (_%err121343%_
                        'struct-incompatibility:
                        (cons (_%get-names121342%_ _%sis121340%_)
                              (cons (_%get-names121342%_ _%sis2121653%_)
                                    '()))))
                   (_%loop121658%_
                    (cdr _%t1121660%_)
                    (cdr _%t2121661%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%rpls121346%_
                               (let ((__tmp121725
                                      (lambda (_%pl121624%_)
                                        (let ((_g121726_
                                               (let* ((_%pred121626%_
                                                       _%struct?121300%_)
                                                      (_%rhead121629%_
                                                       _%pl121624%_)
                                                      (_%tail121632%_ '()))
                                                 (if (procedure?
                                                      _%pred121626%_)
                                                     (let ((_%pred121637%_
                                                            _%pred121626%_))
                                                       (declare (not safe))
                                                       (__append-reverse-until
                                                        _%pred121637%_
                                                        _%rhead121629%_
                                                        _%tail121632%_))
                                                     (begin
                                                       (raise-contract-violation-error
                                                        '"contract violation"
                                                        'context:
                                                        'gerbil/runtime/c3
                                                        'contract:
                                                        'procedure?
                                                        'value:
                                                        _%pred121626%_)
                                                       '#!void)))))
                                          (begin
                                            (let ((_g121727_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g121726_)
                                                         (##values-length
                                                          _g121726_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g121727_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g121727_)))
                                            (let ((_%tl121650%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g121726_
                                                      0)))
                                                  (_%rh121651%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g121726_
                                                      1))))
                                              (begin
                                                (_%merge-sis!121345%_
                                                 _%tl121650%_)
                                                _%rh121651%_)))))))
                                 (declare (not safe))
                                 (##map __tmp121725 _%pls121339%_)))
                              (_%unsisr-rpl121347%_
                               (lambda (_%rpl121537%_)
                                 (let _%u121539%_ ((_%pl-rhead121541%_
                                                    _%rpl121537%_)
                                                   (_%pl-tail121542%_ '())
                                                   (_%sis-rhead121543%_
                                                    (reverse _%sis121340%_))
                                                   (_%sis-tail121544%_ '()))
                                   (let* ((_%pl-rhead121545121554%_
                                           _%pl-rhead121541%_)
                                          (_%E121548121558%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%pl-rhead121545121554%_
                                                    '([])
                                                    '([c . plrh]))
                                             '#!void)))
                                     (let ((_%K121552121621%_
                                            (lambda () _%pl-tail121542%_))
                                           (_%K121549121605%_
                                            (lambda (_%plrh121562%_
                                                     _%c121563%_)
                                              (if (member _%c121563%_
                                                          _%sis-tail121544%_
                                                          _%eq121302%_)
                                                  (_%err121343%_
                                                   'precedence-list-head:
                                                   (_%get-names121342%_
                                                    (reverse _%pl-rhead121541%_))
                                                   'precedence-list-tail:
                                                   (_%get-names121342%_
                                                    _%pl-tail121542%_)
                                                   'single-inheritance-head:
                                                   (_%get-names121342%_
                                                    (reverse _%sis-rhead121543%_))
                                                   'single-inheritance-tail:
                                                   (_%get-names121342%_
                                                    _%sis-tail121544%_)
                                                   'super-out-of-order-vs-single-inheritance-tail:
                                                   (_%get-name121304%_
                                                    _%c121563%_))
                                                  (let ((_g121728_
                                                         (let* ((_%pred121569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g121564121566%_)
                           (_%eq121302%_ _%c121563%_ _%g121564121566%_)))
                        (_%rhead121572%_ _%sis-rhead121543%_)
                        (_%tail121575%_ _%sis-tail121544%_)
                        (_%pred121580%_ _%pred121569%_))
                   (declare (not safe))
                   (__append-reverse-until
                    _%pred121580%_
                    _%rhead121572%_
                    _%tail121575%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g121729_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g121728_)
                           (##values-length _g121728_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g121729_ 2)))
                    (error "Context expects 2 values" _g121729_)))
              (let ((_%sis-rh2121602%_
                     (let () (declare (not safe)) (##values-ref _g121728_ 0)))
                    (_%sis-tl2121603%_
                     (let () (declare (not safe)) (##values-ref _g121728_ 1))))
                (if (null? _%sis-rh2121602%_)
                    (_%u121539%_
                     _%plrh121562%_
                     (cons _%c121563%_ _%pl-tail121542%_)
                     '()
                     _%sis-tl2121603%_)
                    (_%u121539%_
                     _%plrh121562%_
                     _%pl-tail121542%_
                     (cdr _%sis-rh2121602%_)
                     _%sis-tl2121603%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%try-match121547121617%_
                                              (lambda ()
                                                (if (pair? _%pl-rhead121545121554%_)
                                                    (let ((_%tl121551121610%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%pl-rhead121545121554%_)))
                                                          (_%hd121550121608%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%pl-rhead121545121554%_))))
                                                      (let ((_%c121613%_
                                                             _%hd121550121608%_)
                                                            (_%plrh121615%_
                                                             _%tl121551121610%_))
                                                        (_%K121549121605%_
                                                         _%plrh121615%_
                                                         _%c121613%_)))
                                                    (_%E121548121558%_)))))
                                         (if (null? _%pl-rhead121545121554%_)
                                             (_%K121552121621%_)
                                             (_%try-match121547121617%_))))))))
                              (_g121730_
                               (let ((_g121731_
                                      (let ((__tmp121733
                                             (reverse _%supers121296%_)))
                                        (declare (not safe))
                                        (append1!
                                         _%rpls121346%_
                                         __tmp121733))))
                                 #!void
                                 _g121731_))
                              (_%hpls121348%_
                               (let ()
                                 (declare (not safe))
                                 (##map _%unsisr-rpl121347%_ _%rpls121346%_)))
                              (_%c3-select-next121349%_
                               (lambda (_%tails121487%_)
                                 (let ((_%candidate?121493%_
                                        (lambda (_%c121489%_)
                                          (let ((__tmp121734
                                                 (lambda (_%tail121491%_)
                                                   (not (member _%c121489%_
                                                                (cdr _%tail121491%_)
                                                                _%eq121302%_)))))
                                            (declare (not safe))
                                            (andmap__0
                                             __tmp121734
                                             _%tails121487%_)))))
                                   (let _%loop121495%_ ((_%ts121497%_
                                                         _%tails121487%_))
                                     (let* ((_%ts121498121508%_ _%ts121497%_)
                                            (_%else121500121516%_
                                             (lambda () (_%err121343%_)))
                                            (_%K121502121522%_
                                             (lambda (_%rts121519%_
                                                      _%c121520%_)
                                               (if (_%candidate?121493%_
                                                    _%c121520%_)
                                                   _%c121520%_
                                                   (_%loop121495%_
                                                    _%rts121519%_)))))
                                       (if (pair? _%ts121498121508%_)
                                           (let ((_%hd121503121525%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%ts121498121508%_)))
                                                 (_%tl121504121527%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%ts121498121508%_))))
                                             (if (pair? _%hd121503121525%_)
                                                 (let* ((_%hd121505121530%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%hd121503121525%_)))
                                                        (_%c121533%_
                                                         _%hd121505121530%_)
                                                        (_%rts121535%_
                                                         _%tl121504121527%_))
                                                   (_%K121502121522%_
                                                    _%rts121535%_
                                                    _%c121533%_))
                                                 (_%err121343%_)))
                                           (_%err121343%_)))))))
                              (_%remove-next!121350%_
                               (lambda (_%next121432%_ _%tails121433%_)
                                 (let _%loop121435%_ ((_%t121437%_
                                                       _%tails121433%_))
                                   (let* ((_%t121438121449%_ _%t121437%_)
                                          (_%E121441121453%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%t121438121449%_
                                                    '([])
                                                    '([[head . tail] . more]))
                                             '#!void)))
                                     (let ((_%K121447121484%_
                                            (lambda () _%tails121433%_))
                                           (_%K121442121461%_
                                            (lambda (_%more121457%_
                                                     _%tail121458%_
                                                     _%head121459%_)
                                              (if (_%eq121302%_
                                                   _%head121459%_
                                                   _%next121432%_)
                                                  (set-car!
                                                   _%t121437%_
                                                   _%tail121458%_)
                                                  '#!void)
                                              (_%loop121435%_
                                               _%more121457%_))))
                                       (let ((_%try-match121440121480%_
                                              (lambda ()
                                                (if (pair? _%t121438121449%_)
                                                    (let ((_%tl121444121466%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%t121438121449%_)))
                                                          (_%hd121443121464%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%t121438121449%_))))
                                                      (if (pair? _%hd121443121464%_)
                                                          (let ((_%tl121446121471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd121443121464%_)))
                        (_%hd121445121469%_
                         (let ()
                           (declare (not safe))
                           (##car _%hd121443121464%_))))
                    (let ((_%head121474%_ _%hd121445121469%_)
                          (_%tail121476%_ _%tl121446121471%_)
                          (_%more121478%_ _%tl121444121466%_))
                      (_%K121442121461%_
                       _%more121478%_
                       _%tail121476%_
                       _%head121474%_)))
                  (_%E121441121453%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121441121453%_)))))
                                         (if (null? _%t121438121449%_)
                                             (_%K121447121484%_)
                                             (_%try-match121440121480%_))))))))
                              (_%precedence-list121351%_
                               (let _%c3loop121382%_ ((_%rhead121384%_
                                                       _%rhead121295%_)
                                                      (_%tails121385%_
                                                       _%hpls121348%_))
                                 (let* ((_%tails121387%_
                                         (let ()
                                           (declare (not safe))
                                           (remove-nulls! _%tails121385%_)))
                                        (_%tails121388121398%_ _%tails121387%_)
                                        (_%else121391121409%_
                                         (lambda ()
                                           (let ((_%next121406%_
                                                  (_%c3-select-next121349%_
                                                   _%tails121387%_)))
                                             (_%c3loop121382%_
                                              (cons _%next121406%_
                                                    _%rhead121384%_)
                                              (_%remove-next!121350%_
                                               _%next121406%_
                                               _%tails121387%_))))))
                                   (let ((_%K121396121429%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead121384%_
                                             _%sis121340%_)))
                                         (_%K121393121415%_
                                          (lambda (_%tail121413%_)
                                            (append-reverse
                                             _%rhead121384%_
                                             (append _%tail121413%_
                                                     _%sis121340%_)))))
                                     (let ((_%try-match121390121425%_
                                            (lambda ()
                                              (if (pair? _%tails121388121398%_)
                                                  (let ((_%tl121395121420%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tails121388121398%_)))
                                                        (_%hd121394121418%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tails121388121398%_))))
                                                    (if (null? _%tl121395121420%_)
                                                        (let ((_%tail121423%_
                                                               _%hd121394121418%_))
                                                          (_%K121393121415%_
                                                           _%tail121423%_))
                                                        (_%else121391121409%_)))
                                                  (_%else121391121409%_)))))
                                       (if (null? _%tails121388121398%_)
                                           (_%K121396121429%_)
                                           (_%try-match121390121425%_)))))))
                              (_%super-struct121352%_
                               (let* ((_%sis121353121361%_ _%sis121340%_)
                                      (_%else121355121369%_ (lambda () '#f))
                                      (_%K121357121374%_
                                       (lambda (_%s121372%_) _%s121372%_)))
                                 (if (pair? _%sis121353121361%_)
                                     (let* ((_%hd121358121377%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%sis121353121361%_)))
                                            (_%s121380%_ _%hd121358121377%_))
                                       (_%K121357121374%_ _%s121380%_))
                                     (_%else121355121369%_)))))
                      (values _%precedence-list121351%_
                              _%super-struct121352%_))))))))
    (define c4-linearize__@
      (lambda (_%@@keywords121681%_ . _%args121682%_)
        (apply c4-linearize__%
               _%@@keywords121681%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords121681%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords121681%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords121681%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords121681%_
                  'get-name:
                  absent-value))
               _%args121682%_)))
    (define c4-linearize
      (lambda _%args121288121688%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args121288121688%_)))
    (define c4-compute-class-slots
      (lambda (_%precedence-list121238%_
               _%direct-slot-list121239%_
               _%mixin-slot-names121240%_
               _%result121241%_)
        (let* ((_%next-slot121243%_ '1)
               (_%slot-table121245%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots121247%_ (cons 'class '()))
               (_%process-slot121272%_
                (lambda (_%slot121249%_)
                  (if (symbol? _%slot121249%_)
                      '#!void
                      (error '"invalid slot name" _%slot121249%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table121245%_
                              _%slot121249%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table121245%_
                           _%slot121249%_
                           _%next-slot121243%_))
                        (let ((__tmp121735
                               (let ((_%sym121251%_ _%slot121249%_))
                                 (if (symbol? _%sym121251%_)
                                     (let ((_%sym121256%_ _%sym121251%_))
                                       (declare (not safe))
                                       (__symbol->keyword _%sym121256%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/c3
                                        'contract:
                                        'symbol?
                                        'value:
                                        _%sym121251%_)
                                       '#!void)))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table121245%_
                           __tmp121735
                           _%next-slot121243%_))
                        (set! _%r-slots121247%_
                              (cons _%slot121249%_ _%r-slots121247%_))
                        (set! _%next-slot121243%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot121243%_ '1))))
                      '#!void)))
               (_%process-slots121278%_
                (lambda (_%g121273121275%_)
                  (for-each _%process-slot121272%_ _%g121273121275%_))))
          (let ((__tmp121737
                 (lambda (_%mixin121281%_)
                   (_%process-slots121278%_
                    (_%mixin-slot-names121240%_ _%mixin121281%_))))
                (__tmp121736 (reverse _%precedence-list121238%_)))
            (declare (not safe))
            (##for-each __tmp121737 __tmp121736))
          (_%process-slots121278%_ _%direct-slot-list121239%_)
          (_%result121241%_
           (reverse! _%r-slots121247%_)
           _%slot-table121245%_))))))
