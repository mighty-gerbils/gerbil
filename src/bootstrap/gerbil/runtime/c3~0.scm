(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1756142918)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords101195%_
               _%get-precedence-list101189101196%_
               _%struct?101190101198%_
               _%eq101191101200%_
               _%get-name101192101202%_
               _%rhead101204%_
               _%supers101205%_)
        (let* ((_%get-precedence-list101207%_
                (if (eq? _%get-precedence-list101189101196%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list101189101196%_))
               (_%struct?101209%_
                (if (eq? _%struct?101190101198%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?101190101198%_))
               (_%eq101211%_
                (if (eq? _%eq101191101200%_ absent-value)
                    eq?
                    _%eq101191101200%_))
               (_%get-name101213%_
                (if (eq? _%get-name101192101202%_ absent-value)
                    identity
                    _%get-name101192101202%_)))
          (if (null? _%supers101205%_)
              (values (reverse _%rhead101204%_) '#f)
              (if (null? (cdr _%supers101205%_))
                  (let ((_%pl101218%_
                         (_%get-precedence-list101207%_
                          (car _%supers101205%_))))
                    (values (append-reverse _%rhead101204%_ _%pl101218%_)
                            (let ()
                              (declare (not safe))
                              (find _%struct?101209%_ _%pl101218%_))))
                  (let ((_%pls101221%_
                         (map _%get-precedence-list101207%_ _%supers101205%_))
                        (_%sis101222%_ '()))
                    (letrec* ((_%get-names101224%_
                               (lambda (_%lst101501%_)
                                 (map _%get-name101213%_ _%lst101501%_)))
                              (_%err101225%_
                               (lambda _%a101499%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names101224%_
                                         (reverse _%rhead101204%_))
                                        'precedence-lists:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names101224%_
                                                 _%pls101221%_))
                                        'single-inheritance-suffix:
                                        (_%get-names101224%_ _%sis101222%_)
                                        _%a101499%_)))
                              (_%eqlist?101226%_
                               (lambda (_%l1101493%_ _%l2101494%_)
                                 (let ((_%$e101496%_
                                        (eq? _%l1101493%_ _%l2101494%_)))
                                   (if _%$e101496%_
                                       _%$e101496%_
                                       (if (let ()
                                             (declare (not safe))
                                             (andmap2 _%eq101211%_
                                                      _%l1101493%_
                                                      _%l2101494%_))
                                           (let ((__tmp101549
                                                  (length _%l1101493%_))
                                                 (__tmp101548
                                                  (length _%l2101494%_)))
                                             (declare (not safe))
                                             (##fx= __tmp101549 __tmp101548))
                                           '#f)))))
                              (_%merge-sis!101227%_
                               (lambda (_%sis2101478%_)
                                 (if (null? _%sis2101478%_)
                                     '#!void
                                     (if (null? _%sis101222%_)
                                         (set! _%sis101222%_ _%sis2101478%_)
                                         (let _%loop101483%_ ((_%t1101485%_
                                                               _%sis101222%_)
                                                              (_%t2101486%_
                                                               _%sis2101478%_))
                                           (if (_%eqlist?101226%_
                                                _%t1101485%_
                                                _%sis2101478%_)
                                               '#!void
                                               (if (_%eqlist?101226%_
                                                    _%t2101486%_
                                                    _%sis101222%_)
                                                   (set! _%sis101222%_
                                                         _%sis2101478%_)
                                                   (if (null? _%t1101485%_)
                                                       (if (member (car _%sis101222%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%t2101486%_
                           _%eq101211%_)
                   (set! _%sis101222%_ _%sis2101478%_)
                   (_%err101225%_
                    'struct-incompatibility:
                    (cons (_%get-names101224%_ _%sis101222%_)
                          (cons (_%get-names101224%_ _%sis2101478%_) '()))))
               (if (null? _%t2101486%_)
                   (if (member (car _%sis2101478%_) _%t1101485%_ _%eq101211%_)
                       '#!void
                       (_%err101225%_
                        'struct-incompatibility:
                        (cons (_%get-names101224%_ _%sis101222%_)
                              (cons (_%get-names101224%_ _%sis2101478%_)
                                    '()))))
                   (_%loop101483%_
                    (cdr _%t1101485%_)
                    (cdr _%t2101486%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%rpls101228%_
                               (let ((__tmp101550
                                      (lambda (_%pl101473%_)
                                        (let ((_g101551_
                                               (let ()
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  _%struct?101209%_
                                                  _%pl101473%_
                                                  '()))))
                                          (begin
                                            (let ((_g101552_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g101551_)
                                                         (##values-length
                                                          _g101551_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g101552_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g101552_)))
                                            (let ((_%tl101475%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g101551_
                                                      0)))
                                                  (_%rh101476%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g101551_
                                                      1))))
                                              (begin
                                                (_%merge-sis!101227%_
                                                 _%tl101475%_)
                                                _%rh101476%_)))))))
                                 (declare (not safe))
                                 (##map __tmp101550 _%pls101221%_)))
                              (_%unsisr-rpl101229%_
                               (lambda (_%rpl101419%_)
                                 (let _%u101421%_ ((_%pl-rhead101423%_
                                                    _%rpl101419%_)
                                                   (_%pl-tail101424%_ '())
                                                   (_%sis-rhead101425%_
                                                    (reverse _%sis101222%_))
                                                   (_%sis-tail101426%_ '()))
                                   (let* ((_%pl-rhead101427101436%_
                                           _%pl-rhead101423%_)
                                          (_%E101430101440%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%pl-rhead101427101436%_
                                                    '([])
                                                    '([c . plrh]))
                                             '#!void)))
                                     (let ((_%K101434101470%_
                                            (lambda () _%pl-tail101424%_))
                                           (_%K101431101454%_
                                            (lambda (_%plrh101444%_
                                                     _%c101445%_)
                                              (if (member _%c101445%_
                                                          _%sis-tail101426%_
                                                          _%eq101211%_)
                                                  (_%err101225%_
                                                   'precedence-list-head:
                                                   (_%get-names101224%_
                                                    (reverse _%pl-rhead101423%_))
                                                   'precedence-list-tail:
                                                   (_%get-names101224%_
                                                    _%pl-tail101424%_)
                                                   'single-inheritance-head:
                                                   (_%get-names101224%_
                                                    (reverse _%sis-rhead101425%_))
                                                   'single-inheritance-tail:
                                                   (_%get-names101224%_
                                                    _%sis-tail101426%_)
                                                   'super-out-of-order-vs-single-inheritance-tail:
                                                   (_%get-name101213%_
                                                    _%c101445%_))
                                                  (let ((_g101553_
                                                         (let ((__tmp101555
                                                                (lambda (_%g101446101448%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%eq101211%_ _%c101445%_ _%g101446101448%_))))
                   (declare (not safe))
                   (__append-reverse-until
                    __tmp101555
                    _%sis-rhead101425%_
                    _%sis-tail101426%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g101554_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g101553_)
                           (##values-length _g101553_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g101554_ 2)))
                    (error "Context expects 2 values" _g101554_)))
              (let ((_%sis-rh2101451%_
                     (let () (declare (not safe)) (##values-ref _g101553_ 0)))
                    (_%sis-tl2101452%_
                     (let () (declare (not safe)) (##values-ref _g101553_ 1))))
                (if (null? _%sis-rh2101451%_)
                    (_%u101421%_
                     _%plrh101444%_
                     (cons _%c101445%_ _%pl-tail101424%_)
                     '()
                     _%sis-tl2101452%_)
                    (_%u101421%_
                     _%plrh101444%_
                     _%pl-tail101424%_
                     (cdr _%sis-rh2101451%_)
                     _%sis-tl2101452%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%try-match101429101466%_
                                              (lambda ()
                                                (if (pair? _%pl-rhead101427101436%_)
                                                    (let ((_%tl101433101459%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%pl-rhead101427101436%_)))
                                                          (_%hd101432101457%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%pl-rhead101427101436%_))))
                                                      (let ((_%c101462%_
                                                             _%hd101432101457%_)
                                                            (_%plrh101464%_
                                                             _%tl101433101459%_))
                                                        (_%K101431101454%_
                                                         _%plrh101464%_
                                                         _%c101462%_)))
                                                    (_%E101430101440%_)))))
                                         (if (null? _%pl-rhead101427101436%_)
                                             (_%K101434101470%_)
                                             (_%try-match101429101466%_))))))))
                              (_g101556_
                               (let ((_g101557_
                                      (let ((__tmp101559
                                             (reverse _%supers101205%_)))
                                        (declare (not safe))
                                        (append1!
                                         _%rpls101228%_
                                         __tmp101559))))
                                 #!void
                                 _g101557_))
                              (_%hpls101230%_
                               (let ()
                                 (declare (not safe))
                                 (##map _%unsisr-rpl101229%_ _%rpls101228%_)))
                              (_%c3-select-next101231%_
                               (lambda (_%tails101369%_)
                                 (let ((_%candidate?101375%_
                                        (lambda (_%c101371%_)
                                          (let ((__tmp101560
                                                 (lambda (_%tail101373%_)
                                                   (not (member _%c101371%_
                                                                (cdr _%tail101373%_)
                                                                _%eq101211%_)))))
                                            (declare (not safe))
                                            (__andmap1
                                             __tmp101560
                                             _%tails101369%_)))))
                                   (let _%loop101377%_ ((_%ts101379%_
                                                         _%tails101369%_))
                                     (let* ((_%ts101380101390%_ _%ts101379%_)
                                            (_%else101382101398%_
                                             (lambda () (_%err101225%_)))
                                            (_%K101384101404%_
                                             (lambda (_%rts101401%_
                                                      _%c101402%_)
                                               (if (_%candidate?101375%_
                                                    _%c101402%_)
                                                   _%c101402%_
                                                   (_%loop101377%_
                                                    _%rts101401%_)))))
                                       (if (pair? _%ts101380101390%_)
                                           (let ((_%hd101385101407%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%ts101380101390%_)))
                                                 (_%tl101386101409%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%ts101380101390%_))))
                                             (if (pair? _%hd101385101407%_)
                                                 (let* ((_%hd101387101412%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%hd101385101407%_)))
                                                        (_%c101415%_
                                                         _%hd101387101412%_)
                                                        (_%rts101417%_
                                                         _%tl101386101409%_))
                                                   (_%K101384101404%_
                                                    _%rts101417%_
                                                    _%c101415%_))
                                                 (_%err101225%_)))
                                           (_%err101225%_)))))))
                              (_%remove-next!101232%_
                               (lambda (_%next101314%_ _%tails101315%_)
                                 (let _%loop101317%_ ((_%t101319%_
                                                       _%tails101315%_))
                                   (let* ((_%t101320101331%_ _%t101319%_)
                                          (_%E101323101335%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%t101320101331%_
                                                    '([])
                                                    '([[head . tail] . more]))
                                             '#!void)))
                                     (let ((_%K101329101366%_
                                            (lambda () _%tails101315%_))
                                           (_%K101324101343%_
                                            (lambda (_%more101339%_
                                                     _%tail101340%_
                                                     _%head101341%_)
                                              (if (_%eq101211%_
                                                   _%head101341%_
                                                   _%next101314%_)
                                                  (set-car!
                                                   _%t101319%_
                                                   _%tail101340%_)
                                                  '#!void)
                                              (_%loop101317%_
                                               _%more101339%_))))
                                       (let ((_%try-match101322101362%_
                                              (lambda ()
                                                (if (pair? _%t101320101331%_)
                                                    (let ((_%tl101326101348%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%t101320101331%_)))
                                                          (_%hd101325101346%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%t101320101331%_))))
                                                      (if (pair? _%hd101325101346%_)
                                                          (let ((_%tl101328101353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd101325101346%_)))
                        (_%hd101327101351%_
                         (let ()
                           (declare (not safe))
                           (##car _%hd101325101346%_))))
                    (let ((_%head101356%_ _%hd101327101351%_)
                          (_%tail101358%_ _%tl101328101353%_)
                          (_%more101360%_ _%tl101326101348%_))
                      (_%K101324101343%_
                       _%more101360%_
                       _%tail101358%_
                       _%head101356%_)))
                  (_%E101323101335%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E101323101335%_)))))
                                         (if (null? _%t101320101331%_)
                                             (_%K101329101366%_)
                                             (_%try-match101322101362%_))))))))
                              (_%precedence-list101233%_
                               (let _%c3loop101264%_ ((_%rhead101266%_
                                                       _%rhead101204%_)
                                                      (_%tails101267%_
                                                       _%hpls101230%_))
                                 (let* ((_%tails101269%_
                                         (let ()
                                           (declare (not safe))
                                           (remove-nulls! _%tails101267%_)))
                                        (_%tails101270101280%_ _%tails101269%_)
                                        (_%else101273101291%_
                                         (lambda ()
                                           (let ((_%next101288%_
                                                  (_%c3-select-next101231%_
                                                   _%tails101269%_)))
                                             (_%c3loop101264%_
                                              (cons _%next101288%_
                                                    _%rhead101266%_)
                                              (_%remove-next!101232%_
                                               _%next101288%_
                                               _%tails101269%_))))))
                                   (let ((_%K101278101311%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead101266%_
                                             _%sis101222%_)))
                                         (_%K101275101297%_
                                          (lambda (_%tail101295%_)
                                            (append-reverse
                                             _%rhead101266%_
                                             (append _%tail101295%_
                                                     _%sis101222%_)))))
                                     (let ((_%try-match101272101307%_
                                            (lambda ()
                                              (if (pair? _%tails101270101280%_)
                                                  (let ((_%tl101277101302%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tails101270101280%_)))
                                                        (_%hd101276101300%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tails101270101280%_))))
                                                    (if (null? _%tl101277101302%_)
                                                        (let ((_%tail101305%_
                                                               _%hd101276101300%_))
                                                          (_%K101275101297%_
                                                           _%tail101305%_))
                                                        (_%else101273101291%_)))
                                                  (_%else101273101291%_)))))
                                       (if (null? _%tails101270101280%_)
                                           (_%K101278101311%_)
                                           (_%try-match101272101307%_)))))))
                              (_%super-struct101234%_
                               (let* ((_%sis101235101243%_ _%sis101222%_)
                                      (_%else101237101251%_ (lambda () '#f))
                                      (_%K101239101256%_
                                       (lambda (_%s101254%_) _%s101254%_)))
                                 (if (pair? _%sis101235101243%_)
                                     (let* ((_%hd101240101259%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%sis101235101243%_)))
                                            (_%s101262%_ _%hd101240101259%_))
                                       (_%K101239101256%_ _%s101262%_))
                                     (_%else101237101251%_)))))
                      (values _%precedence-list101233%_
                              _%super-struct101234%_))))))))
    (define c4-linearize__@
      (lambda (_%@@keywords101506%_ . _%args101507%_)
        (apply c4-linearize__%
               _%@@keywords101506%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords101506%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords101506%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords101506%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords101506%_
                  'get-name:
                  absent-value))
               _%args101507%_)))
    (define c4-linearize
      (lambda _%args101193101513%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args101193101513%_)))))
