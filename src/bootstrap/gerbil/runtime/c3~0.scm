(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1771092625)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords120612%_
               _%get-precedence-list120606120613%_
               _%struct?120607120614%_
               _%eq120608120615%_
               _%get-name120609120616%_
               _%rhead120617%_
               _%supers120618%_)
        (let* ((_%get-precedence-list120620%_
                (if (eq? _%get-precedence-list120606120613%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list120606120613%_))
               (_%struct?120622%_
                (if (eq? _%struct?120607120614%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?120607120614%_))
               (_%eq120624%_
                (if (eq? _%eq120608120615%_ absent-value)
                    eq?
                    _%eq120608120615%_))
               (_%get-name120626%_
                (if (eq? _%get-name120609120616%_ absent-value)
                    identity
                    _%get-name120609120616%_)))
          (if (null? _%supers120618%_)
              (values (reverse _%rhead120617%_) '#f)
              (if (null? (cdr _%supers120618%_))
                  (let ((_%pl120631%_
                         (_%get-precedence-list120620%_
                          (car _%supers120618%_))))
                    (values (append-reverse _%rhead120617%_ _%pl120631%_)
                            (let* ((_%pred120633%_ _%struct?120622%_)
                                   (_%lst120636%_ _%pl120631%_))
                              (if (procedure? _%pred120633%_)
                                  (let ((_%pred120641%_ _%pred120633%_))
                                    (declare (not safe))
                                    (__find _%pred120641%_ _%lst120636%_))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/c3
                                     'contract:
                                     'procedure?
                                     'value:
                                     _%pred120633%_)
                                    '#!void)))))
                  (let ((_%pls120662%_
                         (map _%get-precedence-list120620%_ _%supers120618%_))
                        (_%sis120663%_ '()))
                    (letrec* ((_%get-names120665%_
                               (lambda (_%lst120999%_)
                                 (map _%get-name120626%_ _%lst120999%_)))
                              (_%err120666%_
                               (lambda _%a120997%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names120665%_
                                         (reverse _%rhead120617%_))
                                        'precedence-lists:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names120665%_
                                                 _%pls120662%_))
                                        'single-inheritance-suffix:
                                        (_%get-names120665%_ _%sis120663%_)
                                        _%a120997%_)))
                              (_%eqlist?120667%_
                               (lambda (_%l1120991%_ _%l2120992%_)
                                 (let ((_%$e120994%_
                                        (eq? _%l1120991%_ _%l2120992%_)))
                                   (if _%$e120994%_
                                       _%$e120994%_
                                       (if (let ()
                                             (declare (not safe))
                                             (andmap__1
                                              _%eq120624%_
                                              _%l1120991%_
                                              _%l2120992%_))
                                           (let ((__tmp121047
                                                  (length _%l1120991%_))
                                                 (__tmp121046
                                                  (length _%l2120992%_)))
                                             (declare (not safe))
                                             (##fx= __tmp121047 __tmp121046))
                                           '#f)))))
                              (_%merge-sis!120668%_
                               (lambda (_%sis2120976%_)
                                 (if (null? _%sis2120976%_)
                                     '#!void
                                     (if (null? _%sis120663%_)
                                         (set! _%sis120663%_ _%sis2120976%_)
                                         (let _%loop120981%_ ((_%t1120983%_
                                                               _%sis120663%_)
                                                              (_%t2120984%_
                                                               _%sis2120976%_))
                                           (if (_%eqlist?120667%_
                                                _%t1120983%_
                                                _%sis2120976%_)
                                               '#!void
                                               (if (_%eqlist?120667%_
                                                    _%t2120984%_
                                                    _%sis120663%_)
                                                   (set! _%sis120663%_
                                                         _%sis2120976%_)
                                                   (if (null? _%t1120983%_)
                                                       (if (member (car _%sis120663%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%t2120984%_
                           _%eq120624%_)
                   (set! _%sis120663%_ _%sis2120976%_)
                   (_%err120666%_
                    'struct-incompatibility:
                    (cons (_%get-names120665%_ _%sis120663%_)
                          (cons (_%get-names120665%_ _%sis2120976%_) '()))))
               (if (null? _%t2120984%_)
                   (if (member (car _%sis2120976%_) _%t1120983%_ _%eq120624%_)
                       '#!void
                       (_%err120666%_
                        'struct-incompatibility:
                        (cons (_%get-names120665%_ _%sis120663%_)
                              (cons (_%get-names120665%_ _%sis2120976%_)
                                    '()))))
                   (_%loop120981%_
                    (cdr _%t1120983%_)
                    (cdr _%t2120984%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%rpls120669%_
                               (let ((__tmp121048
                                      (lambda (_%pl120947%_)
                                        (let ((_g121049_
                                               (let* ((_%pred120949%_
                                                       _%struct?120622%_)
                                                      (_%rhead120952%_
                                                       _%pl120947%_)
                                                      (_%tail120955%_ '()))
                                                 (if (procedure?
                                                      _%pred120949%_)
                                                     (let ((_%pred120960%_
                                                            _%pred120949%_))
                                                       (declare (not safe))
                                                       (__append-reverse-until
                                                        _%pred120960%_
                                                        _%rhead120952%_
                                                        _%tail120955%_))
                                                     (begin
                                                       (raise-contract-violation-error
                                                        '"contract violation"
                                                        'context:
                                                        'gerbil/runtime/c3
                                                        'contract:
                                                        'procedure?
                                                        'value:
                                                        _%pred120949%_)
                                                       '#!void)))))
                                          (begin
                                            (let ((_g121050_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g121049_)
                                                         (##values-length
                                                          _g121049_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g121050_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g121050_)))
                                            (let ((_%tl120973%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g121049_
                                                      0)))
                                                  (_%rh120974%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g121049_
                                                      1))))
                                              (begin
                                                (_%merge-sis!120668%_
                                                 _%tl120973%_)
                                                _%rh120974%_)))))))
                                 (declare (not safe))
                                 (##map __tmp121048 _%pls120662%_)))
                              (_%unsisr-rpl120670%_
                               (lambda (_%rpl120860%_)
                                 (let _%u120862%_ ((_%pl-rhead120864%_
                                                    _%rpl120860%_)
                                                   (_%pl-tail120865%_ '())
                                                   (_%sis-rhead120866%_
                                                    (reverse _%sis120663%_))
                                                   (_%sis-tail120867%_ '()))
                                   (let* ((_%pl-rhead120868120877%_
                                           _%pl-rhead120864%_)
                                          (_%E120871120881%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%pl-rhead120868120877%_
                                                    '([])
                                                    '([c . plrh]))
                                             '#!void)))
                                     (let ((_%K120875120944%_
                                            (lambda () _%pl-tail120865%_))
                                           (_%K120872120928%_
                                            (lambda (_%plrh120885%_
                                                     _%c120886%_)
                                              (if (member _%c120886%_
                                                          _%sis-tail120867%_
                                                          _%eq120624%_)
                                                  (_%err120666%_
                                                   'precedence-list-head:
                                                   (_%get-names120665%_
                                                    (reverse _%pl-rhead120864%_))
                                                   'precedence-list-tail:
                                                   (_%get-names120665%_
                                                    _%pl-tail120865%_)
                                                   'single-inheritance-head:
                                                   (_%get-names120665%_
                                                    (reverse _%sis-rhead120866%_))
                                                   'single-inheritance-tail:
                                                   (_%get-names120665%_
                                                    _%sis-tail120867%_)
                                                   'super-out-of-order-vs-single-inheritance-tail:
                                                   (_%get-name120626%_
                                                    _%c120886%_))
                                                  (let ((_g121051_
                                                         (let* ((_%pred120892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g120887120889%_)
                           (_%eq120624%_ _%c120886%_ _%g120887120889%_)))
                        (_%rhead120895%_ _%sis-rhead120866%_)
                        (_%tail120898%_ _%sis-tail120867%_)
                        (_%pred120903%_ _%pred120892%_))
                   (declare (not safe))
                   (__append-reverse-until
                    _%pred120903%_
                    _%rhead120895%_
                    _%tail120898%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g121052_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g121051_)
                           (##values-length _g121051_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g121052_ 2)))
                    (error "Context expects 2 values" _g121052_)))
              (let ((_%sis-rh2120925%_
                     (let () (declare (not safe)) (##values-ref _g121051_ 0)))
                    (_%sis-tl2120926%_
                     (let () (declare (not safe)) (##values-ref _g121051_ 1))))
                (if (null? _%sis-rh2120925%_)
                    (_%u120862%_
                     _%plrh120885%_
                     (cons _%c120886%_ _%pl-tail120865%_)
                     '()
                     _%sis-tl2120926%_)
                    (_%u120862%_
                     _%plrh120885%_
                     _%pl-tail120865%_
                     (cdr _%sis-rh2120925%_)
                     _%sis-tl2120926%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%try-match120870120940%_
                                              (lambda ()
                                                (if (pair? _%pl-rhead120868120877%_)
                                                    (let ((_%tl120874120933%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%pl-rhead120868120877%_)))
                                                          (_%hd120873120931%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%pl-rhead120868120877%_))))
                                                      (let ((_%c120936%_
                                                             _%hd120873120931%_)
                                                            (_%plrh120938%_
                                                             _%tl120874120933%_))
                                                        (_%K120872120928%_
                                                         _%plrh120938%_
                                                         _%c120936%_)))
                                                    (_%E120871120881%_)))))
                                         (if (null? _%pl-rhead120868120877%_)
                                             (_%K120875120944%_)
                                             (_%try-match120870120940%_))))))))
                              (_g121053_
                               (let ((_g121054_
                                      (let ((__tmp121056
                                             (reverse _%supers120618%_)))
                                        (declare (not safe))
                                        (append1!
                                         _%rpls120669%_
                                         __tmp121056))))
                                 #!void
                                 _g121054_))
                              (_%hpls120671%_
                               (let ()
                                 (declare (not safe))
                                 (##map _%unsisr-rpl120670%_ _%rpls120669%_)))
                              (_%c3-select-next120672%_
                               (lambda (_%tails120810%_)
                                 (let ((_%candidate?120816%_
                                        (lambda (_%c120812%_)
                                          (let ((__tmp121057
                                                 (lambda (_%tail120814%_)
                                                   (not (member _%c120812%_
                                                                (cdr _%tail120814%_)
                                                                _%eq120624%_)))))
                                            (declare (not safe))
                                            (andmap__0
                                             __tmp121057
                                             _%tails120810%_)))))
                                   (let _%loop120818%_ ((_%ts120820%_
                                                         _%tails120810%_))
                                     (let* ((_%ts120821120831%_ _%ts120820%_)
                                            (_%else120823120839%_
                                             (lambda () (_%err120666%_)))
                                            (_%K120825120845%_
                                             (lambda (_%rts120842%_
                                                      _%c120843%_)
                                               (if (_%candidate?120816%_
                                                    _%c120843%_)
                                                   _%c120843%_
                                                   (_%loop120818%_
                                                    _%rts120842%_)))))
                                       (if (pair? _%ts120821120831%_)
                                           (let ((_%hd120826120848%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%ts120821120831%_)))
                                                 (_%tl120827120850%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%ts120821120831%_))))
                                             (if (pair? _%hd120826120848%_)
                                                 (let* ((_%hd120828120853%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%hd120826120848%_)))
                                                        (_%c120856%_
                                                         _%hd120828120853%_)
                                                        (_%rts120858%_
                                                         _%tl120827120850%_))
                                                   (_%K120825120845%_
                                                    _%rts120858%_
                                                    _%c120856%_))
                                                 (_%err120666%_)))
                                           (_%err120666%_)))))))
                              (_%remove-next!120673%_
                               (lambda (_%next120755%_ _%tails120756%_)
                                 (let _%loop120758%_ ((_%t120760%_
                                                       _%tails120756%_))
                                   (let* ((_%t120761120772%_ _%t120760%_)
                                          (_%E120764120776%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%t120761120772%_
                                                    '([])
                                                    '([[head . tail] . more]))
                                             '#!void)))
                                     (let ((_%K120770120807%_
                                            (lambda () _%tails120756%_))
                                           (_%K120765120784%_
                                            (lambda (_%more120780%_
                                                     _%tail120781%_
                                                     _%head120782%_)
                                              (if (_%eq120624%_
                                                   _%head120782%_
                                                   _%next120755%_)
                                                  (set-car!
                                                   _%t120760%_
                                                   _%tail120781%_)
                                                  '#!void)
                                              (_%loop120758%_
                                               _%more120780%_))))
                                       (let ((_%try-match120763120803%_
                                              (lambda ()
                                                (if (pair? _%t120761120772%_)
                                                    (let ((_%tl120767120789%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%t120761120772%_)))
                                                          (_%hd120766120787%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%t120761120772%_))))
                                                      (if (pair? _%hd120766120787%_)
                                                          (let ((_%tl120769120794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd120766120787%_)))
                        (_%hd120768120792%_
                         (let ()
                           (declare (not safe))
                           (##car _%hd120766120787%_))))
                    (let ((_%head120797%_ _%hd120768120792%_)
                          (_%tail120799%_ _%tl120769120794%_)
                          (_%more120801%_ _%tl120767120789%_))
                      (_%K120765120784%_
                       _%more120801%_
                       _%tail120799%_
                       _%head120797%_)))
                  (_%E120764120776%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120764120776%_)))))
                                         (if (null? _%t120761120772%_)
                                             (_%K120770120807%_)
                                             (_%try-match120763120803%_))))))))
                              (_%precedence-list120674%_
                               (let _%c3loop120705%_ ((_%rhead120707%_
                                                       _%rhead120617%_)
                                                      (_%tails120708%_
                                                       _%hpls120671%_))
                                 (let* ((_%tails120710%_
                                         (let ()
                                           (declare (not safe))
                                           (remove-nulls! _%tails120708%_)))
                                        (_%tails120711120721%_ _%tails120710%_)
                                        (_%else120714120732%_
                                         (lambda ()
                                           (let ((_%next120729%_
                                                  (_%c3-select-next120672%_
                                                   _%tails120710%_)))
                                             (_%c3loop120705%_
                                              (cons _%next120729%_
                                                    _%rhead120707%_)
                                              (_%remove-next!120673%_
                                               _%next120729%_
                                               _%tails120710%_))))))
                                   (let ((_%K120719120752%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead120707%_
                                             _%sis120663%_)))
                                         (_%K120716120738%_
                                          (lambda (_%tail120736%_)
                                            (append-reverse
                                             _%rhead120707%_
                                             (append _%tail120736%_
                                                     _%sis120663%_)))))
                                     (let ((_%try-match120713120748%_
                                            (lambda ()
                                              (if (pair? _%tails120711120721%_)
                                                  (let ((_%tl120718120743%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tails120711120721%_)))
                                                        (_%hd120717120741%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tails120711120721%_))))
                                                    (if (null? _%tl120718120743%_)
                                                        (let ((_%tail120746%_
                                                               _%hd120717120741%_))
                                                          (_%K120716120738%_
                                                           _%tail120746%_))
                                                        (_%else120714120732%_)))
                                                  (_%else120714120732%_)))))
                                       (if (null? _%tails120711120721%_)
                                           (_%K120719120752%_)
                                           (_%try-match120713120748%_)))))))
                              (_%super-struct120675%_
                               (let* ((_%sis120676120684%_ _%sis120663%_)
                                      (_%else120678120692%_ (lambda () '#f))
                                      (_%K120680120697%_
                                       (lambda (_%s120695%_) _%s120695%_)))
                                 (if (pair? _%sis120676120684%_)
                                     (let* ((_%hd120681120700%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%sis120676120684%_)))
                                            (_%s120703%_ _%hd120681120700%_))
                                       (_%K120680120697%_ _%s120703%_))
                                     (_%else120678120692%_)))))
                      (values _%precedence-list120674%_
                              _%super-struct120675%_))))))))
    (define c4-linearize__@
      (lambda (_%@@keywords121004%_ . _%args121005%_)
        (apply c4-linearize__%
               _%@@keywords121004%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords121004%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords121004%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords121004%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords121004%_
                  'get-name:
                  absent-value))
               _%args121005%_)))
    (define c4-linearize
      (lambda _%args120610121011%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args120610121011%_)))))
