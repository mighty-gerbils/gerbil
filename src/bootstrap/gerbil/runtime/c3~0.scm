(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1771178561)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords120631%_
               _%get-precedence-list120625120632%_
               _%struct?120626120633%_
               _%eq120627120634%_
               _%get-name120628120635%_
               _%rhead120636%_
               _%supers120637%_)
        (let* ((_%get-precedence-list120639%_
                (if (eq? _%get-precedence-list120625120632%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list120625120632%_))
               (_%struct?120641%_
                (if (eq? _%struct?120626120633%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?120626120633%_))
               (_%eq120643%_
                (if (eq? _%eq120627120634%_ absent-value)
                    eq?
                    _%eq120627120634%_))
               (_%get-name120645%_
                (if (eq? _%get-name120628120635%_ absent-value)
                    identity
                    _%get-name120628120635%_)))
          (if (null? _%supers120637%_)
              (values (reverse _%rhead120636%_) '#f)
              (if (null? (cdr _%supers120637%_))
                  (let ((_%pl120650%_
                         (_%get-precedence-list120639%_
                          (car _%supers120637%_))))
                    (values (append-reverse _%rhead120636%_ _%pl120650%_)
                            (let* ((_%pred120652%_ _%struct?120641%_)
                                   (_%lst120655%_ _%pl120650%_))
                              (if (procedure? _%pred120652%_)
                                  (let ((_%pred120660%_ _%pred120652%_))
                                    (declare (not safe))
                                    (__find _%pred120660%_ _%lst120655%_))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/c3
                                     'contract:
                                     'procedure?
                                     'value:
                                     _%pred120652%_)
                                    '#!void)))))
                  (let ((_%pls120681%_
                         (map _%get-precedence-list120639%_ _%supers120637%_))
                        (_%sis120682%_ '()))
                    (letrec* ((_%get-names120684%_
                               (lambda (_%lst121018%_)
                                 (map _%get-name120645%_ _%lst121018%_)))
                              (_%err120685%_
                               (lambda _%a121016%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names120684%_
                                         (reverse _%rhead120636%_))
                                        'precedence-lists:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names120684%_
                                                 _%pls120681%_))
                                        'single-inheritance-suffix:
                                        (_%get-names120684%_ _%sis120682%_)
                                        _%a121016%_)))
                              (_%eqlist?120686%_
                               (lambda (_%l1121010%_ _%l2121011%_)
                                 (let ((_%$e121013%_
                                        (eq? _%l1121010%_ _%l2121011%_)))
                                   (if _%$e121013%_
                                       _%$e121013%_
                                       (if (let ()
                                             (declare (not safe))
                                             (andmap__1
                                              _%eq120643%_
                                              _%l1121010%_
                                              _%l2121011%_))
                                           (let ((__tmp121066
                                                  (length _%l1121010%_))
                                                 (__tmp121065
                                                  (length _%l2121011%_)))
                                             (declare (not safe))
                                             (##fx= __tmp121066 __tmp121065))
                                           '#f)))))
                              (_%merge-sis!120687%_
                               (lambda (_%sis2120995%_)
                                 (if (null? _%sis2120995%_)
                                     '#!void
                                     (if (null? _%sis120682%_)
                                         (set! _%sis120682%_ _%sis2120995%_)
                                         (let _%loop121000%_ ((_%t1121002%_
                                                               _%sis120682%_)
                                                              (_%t2121003%_
                                                               _%sis2120995%_))
                                           (if (_%eqlist?120686%_
                                                _%t1121002%_
                                                _%sis2120995%_)
                                               '#!void
                                               (if (_%eqlist?120686%_
                                                    _%t2121003%_
                                                    _%sis120682%_)
                                                   (set! _%sis120682%_
                                                         _%sis2120995%_)
                                                   (if (null? _%t1121002%_)
                                                       (if (member (car _%sis120682%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%t2121003%_
                           _%eq120643%_)
                   (set! _%sis120682%_ _%sis2120995%_)
                   (_%err120685%_
                    'struct-incompatibility:
                    (cons (_%get-names120684%_ _%sis120682%_)
                          (cons (_%get-names120684%_ _%sis2120995%_) '()))))
               (if (null? _%t2121003%_)
                   (if (member (car _%sis2120995%_) _%t1121002%_ _%eq120643%_)
                       '#!void
                       (_%err120685%_
                        'struct-incompatibility:
                        (cons (_%get-names120684%_ _%sis120682%_)
                              (cons (_%get-names120684%_ _%sis2120995%_)
                                    '()))))
                   (_%loop121000%_
                    (cdr _%t1121002%_)
                    (cdr _%t2121003%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%rpls120688%_
                               (let ((__tmp121067
                                      (lambda (_%pl120966%_)
                                        (let ((_g121068_
                                               (let* ((_%pred120968%_
                                                       _%struct?120641%_)
                                                      (_%rhead120971%_
                                                       _%pl120966%_)
                                                      (_%tail120974%_ '()))
                                                 (if (procedure?
                                                      _%pred120968%_)
                                                     (let ((_%pred120979%_
                                                            _%pred120968%_))
                                                       (declare (not safe))
                                                       (__append-reverse-until
                                                        _%pred120979%_
                                                        _%rhead120971%_
                                                        _%tail120974%_))
                                                     (begin
                                                       (raise-contract-violation-error
                                                        '"contract violation"
                                                        'context:
                                                        'gerbil/runtime/c3
                                                        'contract:
                                                        'procedure?
                                                        'value:
                                                        _%pred120968%_)
                                                       '#!void)))))
                                          (begin
                                            (let ((_g121069_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g121068_)
                                                         (##values-length
                                                          _g121068_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g121069_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g121069_)))
                                            (let ((_%tl120992%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g121068_
                                                      0)))
                                                  (_%rh120993%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g121068_
                                                      1))))
                                              (begin
                                                (_%merge-sis!120687%_
                                                 _%tl120992%_)
                                                _%rh120993%_)))))))
                                 (declare (not safe))
                                 (##map __tmp121067 _%pls120681%_)))
                              (_%unsisr-rpl120689%_
                               (lambda (_%rpl120879%_)
                                 (let _%u120881%_ ((_%pl-rhead120883%_
                                                    _%rpl120879%_)
                                                   (_%pl-tail120884%_ '())
                                                   (_%sis-rhead120885%_
                                                    (reverse _%sis120682%_))
                                                   (_%sis-tail120886%_ '()))
                                   (let* ((_%pl-rhead120887120896%_
                                           _%pl-rhead120883%_)
                                          (_%E120890120900%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%pl-rhead120887120896%_
                                                    '([])
                                                    '([c . plrh]))
                                             '#!void)))
                                     (let ((_%K120894120963%_
                                            (lambda () _%pl-tail120884%_))
                                           (_%K120891120947%_
                                            (lambda (_%plrh120904%_
                                                     _%c120905%_)
                                              (if (member _%c120905%_
                                                          _%sis-tail120886%_
                                                          _%eq120643%_)
                                                  (_%err120685%_
                                                   'precedence-list-head:
                                                   (_%get-names120684%_
                                                    (reverse _%pl-rhead120883%_))
                                                   'precedence-list-tail:
                                                   (_%get-names120684%_
                                                    _%pl-tail120884%_)
                                                   'single-inheritance-head:
                                                   (_%get-names120684%_
                                                    (reverse _%sis-rhead120885%_))
                                                   'single-inheritance-tail:
                                                   (_%get-names120684%_
                                                    _%sis-tail120886%_)
                                                   'super-out-of-order-vs-single-inheritance-tail:
                                                   (_%get-name120645%_
                                                    _%c120905%_))
                                                  (let ((_g121070_
                                                         (let* ((_%pred120911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g120906120908%_)
                           (_%eq120643%_ _%c120905%_ _%g120906120908%_)))
                        (_%rhead120914%_ _%sis-rhead120885%_)
                        (_%tail120917%_ _%sis-tail120886%_)
                        (_%pred120922%_ _%pred120911%_))
                   (declare (not safe))
                   (__append-reverse-until
                    _%pred120922%_
                    _%rhead120914%_
                    _%tail120917%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g121071_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g121070_)
                           (##values-length _g121070_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g121071_ 2)))
                    (error "Context expects 2 values" _g121071_)))
              (let ((_%sis-rh2120944%_
                     (let () (declare (not safe)) (##values-ref _g121070_ 0)))
                    (_%sis-tl2120945%_
                     (let () (declare (not safe)) (##values-ref _g121070_ 1))))
                (if (null? _%sis-rh2120944%_)
                    (_%u120881%_
                     _%plrh120904%_
                     (cons _%c120905%_ _%pl-tail120884%_)
                     '()
                     _%sis-tl2120945%_)
                    (_%u120881%_
                     _%plrh120904%_
                     _%pl-tail120884%_
                     (cdr _%sis-rh2120944%_)
                     _%sis-tl2120945%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%try-match120889120959%_
                                              (lambda ()
                                                (if (pair? _%pl-rhead120887120896%_)
                                                    (let ((_%tl120893120952%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%pl-rhead120887120896%_)))
                                                          (_%hd120892120950%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%pl-rhead120887120896%_))))
                                                      (let ((_%c120955%_
                                                             _%hd120892120950%_)
                                                            (_%plrh120957%_
                                                             _%tl120893120952%_))
                                                        (_%K120891120947%_
                                                         _%plrh120957%_
                                                         _%c120955%_)))
                                                    (_%E120890120900%_)))))
                                         (if (null? _%pl-rhead120887120896%_)
                                             (_%K120894120963%_)
                                             (_%try-match120889120959%_))))))))
                              (_g121072_
                               (let ((_g121073_
                                      (let ((__tmp121075
                                             (reverse _%supers120637%_)))
                                        (declare (not safe))
                                        (append1!
                                         _%rpls120688%_
                                         __tmp121075))))
                                 #!void
                                 _g121073_))
                              (_%hpls120690%_
                               (let ()
                                 (declare (not safe))
                                 (##map _%unsisr-rpl120689%_ _%rpls120688%_)))
                              (_%c3-select-next120691%_
                               (lambda (_%tails120829%_)
                                 (let ((_%candidate?120835%_
                                        (lambda (_%c120831%_)
                                          (let ((__tmp121076
                                                 (lambda (_%tail120833%_)
                                                   (not (member _%c120831%_
                                                                (cdr _%tail120833%_)
                                                                _%eq120643%_)))))
                                            (declare (not safe))
                                            (andmap__0
                                             __tmp121076
                                             _%tails120829%_)))))
                                   (let _%loop120837%_ ((_%ts120839%_
                                                         _%tails120829%_))
                                     (let* ((_%ts120840120850%_ _%ts120839%_)
                                            (_%else120842120858%_
                                             (lambda () (_%err120685%_)))
                                            (_%K120844120864%_
                                             (lambda (_%rts120861%_
                                                      _%c120862%_)
                                               (if (_%candidate?120835%_
                                                    _%c120862%_)
                                                   _%c120862%_
                                                   (_%loop120837%_
                                                    _%rts120861%_)))))
                                       (if (pair? _%ts120840120850%_)
                                           (let ((_%hd120845120867%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%ts120840120850%_)))
                                                 (_%tl120846120869%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%ts120840120850%_))))
                                             (if (pair? _%hd120845120867%_)
                                                 (let* ((_%hd120847120872%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%hd120845120867%_)))
                                                        (_%c120875%_
                                                         _%hd120847120872%_)
                                                        (_%rts120877%_
                                                         _%tl120846120869%_))
                                                   (_%K120844120864%_
                                                    _%rts120877%_
                                                    _%c120875%_))
                                                 (_%err120685%_)))
                                           (_%err120685%_)))))))
                              (_%remove-next!120692%_
                               (lambda (_%next120774%_ _%tails120775%_)
                                 (let _%loop120777%_ ((_%t120779%_
                                                       _%tails120775%_))
                                   (let* ((_%t120780120791%_ _%t120779%_)
                                          (_%E120783120795%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%t120780120791%_
                                                    '([])
                                                    '([[head . tail] . more]))
                                             '#!void)))
                                     (let ((_%K120789120826%_
                                            (lambda () _%tails120775%_))
                                           (_%K120784120803%_
                                            (lambda (_%more120799%_
                                                     _%tail120800%_
                                                     _%head120801%_)
                                              (if (_%eq120643%_
                                                   _%head120801%_
                                                   _%next120774%_)
                                                  (set-car!
                                                   _%t120779%_
                                                   _%tail120800%_)
                                                  '#!void)
                                              (_%loop120777%_
                                               _%more120799%_))))
                                       (let ((_%try-match120782120822%_
                                              (lambda ()
                                                (if (pair? _%t120780120791%_)
                                                    (let ((_%tl120786120808%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%t120780120791%_)))
                                                          (_%hd120785120806%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%t120780120791%_))))
                                                      (if (pair? _%hd120785120806%_)
                                                          (let ((_%tl120788120813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd120785120806%_)))
                        (_%hd120787120811%_
                         (let ()
                           (declare (not safe))
                           (##car _%hd120785120806%_))))
                    (let ((_%head120816%_ _%hd120787120811%_)
                          (_%tail120818%_ _%tl120788120813%_)
                          (_%more120820%_ _%tl120786120808%_))
                      (_%K120784120803%_
                       _%more120820%_
                       _%tail120818%_
                       _%head120816%_)))
                  (_%E120783120795%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120783120795%_)))))
                                         (if (null? _%t120780120791%_)
                                             (_%K120789120826%_)
                                             (_%try-match120782120822%_))))))))
                              (_%precedence-list120693%_
                               (let _%c3loop120724%_ ((_%rhead120726%_
                                                       _%rhead120636%_)
                                                      (_%tails120727%_
                                                       _%hpls120690%_))
                                 (let* ((_%tails120729%_
                                         (let ()
                                           (declare (not safe))
                                           (remove-nulls! _%tails120727%_)))
                                        (_%tails120730120740%_ _%tails120729%_)
                                        (_%else120733120751%_
                                         (lambda ()
                                           (let ((_%next120748%_
                                                  (_%c3-select-next120691%_
                                                   _%tails120729%_)))
                                             (_%c3loop120724%_
                                              (cons _%next120748%_
                                                    _%rhead120726%_)
                                              (_%remove-next!120692%_
                                               _%next120748%_
                                               _%tails120729%_))))))
                                   (let ((_%K120738120771%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead120726%_
                                             _%sis120682%_)))
                                         (_%K120735120757%_
                                          (lambda (_%tail120755%_)
                                            (append-reverse
                                             _%rhead120726%_
                                             (append _%tail120755%_
                                                     _%sis120682%_)))))
                                     (let ((_%try-match120732120767%_
                                            (lambda ()
                                              (if (pair? _%tails120730120740%_)
                                                  (let ((_%tl120737120762%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tails120730120740%_)))
                                                        (_%hd120736120760%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tails120730120740%_))))
                                                    (if (null? _%tl120737120762%_)
                                                        (let ((_%tail120765%_
                                                               _%hd120736120760%_))
                                                          (_%K120735120757%_
                                                           _%tail120765%_))
                                                        (_%else120733120751%_)))
                                                  (_%else120733120751%_)))))
                                       (if (null? _%tails120730120740%_)
                                           (_%K120738120771%_)
                                           (_%try-match120732120767%_)))))))
                              (_%super-struct120694%_
                               (let* ((_%sis120695120703%_ _%sis120682%_)
                                      (_%else120697120711%_ (lambda () '#f))
                                      (_%K120699120716%_
                                       (lambda (_%s120714%_) _%s120714%_)))
                                 (if (pair? _%sis120695120703%_)
                                     (let* ((_%hd120700120719%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%sis120695120703%_)))
                                            (_%s120722%_ _%hd120700120719%_))
                                       (_%K120699120716%_ _%s120722%_))
                                     (_%else120697120711%_)))))
                      (values _%precedence-list120693%_
                              _%super-struct120694%_))))))))
    (define c4-linearize__@
      (lambda (_%@@keywords121023%_ . _%args121024%_)
        (apply c4-linearize__%
               _%@@keywords121023%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords121023%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords121023%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords121023%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords121023%_
                  'get-name:
                  absent-value))
               _%args121024%_)))
    (define c4-linearize
      (lambda _%args120629121030%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args120629121030%_)))))
