(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1771104509)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp190098 (list gx#expander::t))
            (__tmp190097 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp190098
         '(id depth)
         __tmp190097
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args190094%_
        (apply make-instance gx#syntax-pattern::t _%$args190094%_)))
    (define gx#syntax-pattern-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern::apply-macro-expander
      (lambda (_%self190080%_ _%stx190081%_)
        (let ((_%self190084%_ _%self190080%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx190081%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx189547%_)
        (letrec ((_%generate189549%_
                  (lambda (_%e189789%_)
                    (letrec ((_%BUG189791%_
                              (lambda (_%q189956%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx189547%_
                                         _%e189789%_
                                         _%q189956%_))))
                             (_%local-pattern-e189792%_
                              (lambda (_%pat189954%_)
                                (let ((__tmp190099
                                       (##structure-ref
                                        _%pat189954%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp190099))))
                             (_%getvar189793%_
                              (lambda (_%q189951%_ _%vars189952%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q189951%_
                                   _%vars189952%_
                                   _%BUG189791%_))))
                             (_%getarg189794%_
                              (lambda (_%arg189917%_ _%vars189918%_)
                                (let* ((_%arg189919189926%_ _%arg189917%_)
                                       (_%E189921189930%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg189919189926%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K189922189939%_
                                        (lambda (_%e189933%_ _%tag189934%_)
                                          (let ((_%$e189936%_ _%tag189934%_))
                                            (if (eq? 'ref _%$e189936%_)
                                                (_%getvar189793%_
                                                 _%e189933%_
                                                 _%vars189918%_)
                                                (if (eq? 'pattern _%$e189936%_)
                                                    (_%local-pattern-e189792%_
                                                     _%e189933%_)
                                                    (_%BUG189791%_
                                                     _%arg189917%_)))))))
                                  (if (pair? _%arg189919189926%_)
                                      (let ((_%hd189923189942%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg189919189926%_)))
                                            (_%tl189924189944%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg189919189926%_))))
                                        (let* ((_%tag189947%_
                                                _%hd189923189942%_)
                                               (_%e189949%_
                                                _%tl189924189944%_))
                                          (_%K189922189939%_
                                           _%e189949%_
                                           _%tag189947%_)))
                                      (_%E189921189930%_))))))
                      (let _%recur189796%_ ((_%e189798%_ _%e189789%_)
                                            (_%vars189799%_ '()))
                        (let* ((_%e189800189807%_ _%e189798%_)
                               (_%E189802189811%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e189800189807%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K189803189905%_
                                (lambda (_%body189814%_ _%tag189815%_)
                                  (let ((_%$e189817%_ _%tag189815%_))
                                    (if (eq? 'datum _%$e189817%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body189814%_))
                                        (if (eq? 'term _%$e189817%_)
                                            (let ((_%id189820%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body189814%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id189820%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks189823%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id189820%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks189823%_)
                                                        (let ((__tmp190100
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body189814%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp190100))
                (let ((__tmp190102
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body189814%_)))
                      (__tmp190101
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body189814%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp190102
                   __tmp190101
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id189820%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body189814%_))
                                                      (_%BUG189791%_
                                                       _%e189798%_))))
                                            (if (eq? 'pattern _%$e189817%_)
                                                (_%local-pattern-e189792%_
                                                 _%body189814%_)
                                                (if (eq? 'ref _%$e189817%_)
                                                    (_%getvar189793%_
                                                     _%body189814%_
                                                     _%vars189799%_)
                                                    (if (eq? 'cons
                                                             _%$e189817%_)
                                                        (let ((__tmp190104
                                                               (_%recur189796%_
                                                                (car _%body189814%_)
                                                                _%vars189799%_))
                                                              (__tmp190103
                                                               (_%recur189796%_
                                                                (cdr _%body189814%_)
                                                                _%vars189799%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp190104
                                                           __tmp190103))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e189817%_)
                    (let ((__tmp190105
                           (_%recur189796%_ _%body189814%_ _%vars189799%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp190105))
                    (if (eq? 'box _%$e189817%_)
                        (let ((__tmp190106
                               (_%recur189796%_
                                _%body189814%_
                                _%vars189799%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp190106))
                        (if (eq? 'splice _%$e189817%_)
                            (let* ((_%body189826189837%_ _%body189814%_)
                                   (_%E189828189841%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body189826189837%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K189829189879%_
                                    (lambda (_%args189844%_
                                             _%iv189845%_
                                             _%hd189846%_
                                             _%depth189847%_)
                                      (let* ((_%targets189853%_
                                              (map (lambda (_%g189848189850%_)
                                                     (_%getarg189794%_
                                                      _%g189848189850%_
                                                      _%vars189799%_))
                                                   _%args189844%_))
                                             (_%fold-in189855%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args189844%_)))
                                             (_%fold-out189857%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args189859%_
                                              (let ((__tmp190107
                                                     (cons _%fold-out189857%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp190107
                                                 _%fold-in189855%_)))
                                             (_%lambda-body189876%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth189847%_ '1))
                                                  (let ((_%r-args189867%_
                                                         (map (lambda (_%arg189861%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg189861%_)))
                      _%args189844%_))
                (_%r-vars189868%_
                 (let ((__tmp190108
                        (lambda (_%arg189863%_ _%var189864%_ _%r189865%_)
                          (cons (cons (cdr _%arg189863%_) _%var189864%_)
                                _%r189865%_))))
                   (declare (not safe))
                   (foldr__1
                    __tmp190108
                    _%vars189799%_
                    _%args189844%_
                    _%fold-in189855%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur189796%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth189847%_ '1))
                         (cons _%hd189846%_
                               (cons (cons 'var _%fold-out189857%_)
                                     _%r-args189867%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars189868%_))
                                                  (let* ((_%hd-vars189874%_
                                                          (let ((__tmp190109
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg189870%_ _%var189871%_ _%r189872%_)
                           (cons (cons (cdr _%arg189870%_) _%var189871%_)
                                 _%r189872%_))))
                    (declare (not safe))
                    (foldr__1
                     __tmp190109
                     _%vars189799%_
                     _%args189844%_
                     _%fold-in189855%_)))
                 (__tmp190110
                  (_%recur189796%_ _%hd189846%_ _%hd-vars189874%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp190110
                                                     _%fold-out189857%_)))))
                                        (let ((__tmp190114
                                               (if (let ((__tmp190115
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets189853%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp190115 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets189853%_))
                                                   '#!void))
                                              (__tmp190111
                                               (let ((__tmp190113
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args189859%_
                                                         _%lambda-body189876%_)))
                                                     (__tmp190112
                                                      (_%recur189796%_
                                                       _%iv189845%_
                                                       _%vars189799%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp190113
                                                  __tmp190112
                                                  _%targets189853%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp190114
                                           __tmp190111))))))
                              (if (pair? _%body189826189837%_)
                                  (let ((_%hd189830189882%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body189826189837%_)))
                                        (_%tl189831189884%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body189826189837%_))))
                                    (let ((_%depth189887%_ _%hd189830189882%_))
                                      (if (pair? _%tl189831189884%_)
                                          (let ((_%hd189832189889%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl189831189884%_)))
                                                (_%tl189833189891%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl189831189884%_))))
                                            (let ((_%hd189894%_
                                                   _%hd189832189889%_))
                                              (if (pair? _%tl189833189891%_)
                                                  (let ((_%hd189834189896%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl189833189891%_)))
                                                        (_%tl189835189898%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl189833189891%_))))
                                                    (let* ((_%iv189901%_
                                                            _%hd189834189896%_)
                                                           (_%args189903%_
                                                            _%tl189835189898%_))
                                                      (_%K189829189879%_
                                                       _%args189903%_
                                                       _%iv189901%_
                                                       _%hd189894%_
                                                       _%depth189887%_)))
                                                  (_%E189828189841%_))))
                                          (_%E189828189841%_))))
                                  (_%E189828189841%_)))
                            (if (eq? 'var _%$e189817%_)
                                _%body189814%_
                                (_%BUG189791%_ _%e189798%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e189800189807%_)
                              (let ((_%hd189804189908%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e189800189807%_)))
                                    (_%tl189805189910%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e189800189807%_))))
                                (let* ((_%tag189913%_ _%hd189804189908%_)
                                       (_%body189915%_ _%tl189805189910%_))
                                  (_%K189803189905%_
                                   _%body189915%_
                                   _%tag189913%_)))
                              (_%E189802189811%_)))))))
                 (_%parse189550%_
                  (lambda (_%e189591%_)
                    (letrec ((_%make-cons189593%_
                              (lambda (_%hd189781%_ _%tl189782%_)
                                (let ((_g190116_ _%hd189781%_)
                                      (_g190118_ _%tl189782%_))
                                  (begin
                                    (let ((_g190117_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190116_)
                                                 (##values-length _g190116_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190117_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190117_)))
                                    (let ((_g190119_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190118_)
                                                 (##values-length _g190118_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190119_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190119_)))
                                    (let ((_%hd-e189784%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190116_ 0)))
                                          (_%hd-vars189785%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190116_ 1))))
                                      (let ((_%tl-e189786%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g190118_ 0)))
                                            (_%tl-vars189787%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g190118_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e189784%_
                                                            _%tl-e189786%_))
                                                (append _%hd-vars189785%_
                                                        _%tl-vars189787%_))))))))
                             (_%make-splice189594%_
                              (lambda (_%where189717%_
                                       _%depth189718%_
                                       _%hd189719%_
                                       _%tl189720%_)
                                (let ((_g190120_ _%hd189719%_)
                                      (_g190122_ _%tl189720%_))
                                  (begin
                                    (let ((_g190121_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190120_)
                                                 (##values-length _g190120_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190121_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190121_)))
                                    (let ((_g190123_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190122_)
                                                 (##values-length _g190122_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190123_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190123_)))
                                    (let ((_%hd-e189722%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190120_ 0)))
                                          (_%hd-vars189723%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190120_ 1))))
                                      (let ((_%tl-e189724%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g190122_ 0)))
                                            (_%tl-vars189725%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g190122_ 1))))
                                        (let _%lp189727%_ ((_%rest189729%_
                                                            _%hd-vars189723%_)
                                                           (_%targets189730%_
                                                            '())
                                                           (_%vars189731%_
                                                            _%tl-vars189725%_))
                                          (let* ((_%rest189732189742%_
                                                  _%rest189729%_)
                                                 (_%else189734189750%_
                                                  (lambda ()
                                                    (if (null? _%targets189730%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx189547%_
                                                           _%where189717%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth189718%_
                                    (cons _%hd-e189722%_
                                          (cons _%tl-e189724%_
                                                _%targets189730%_))))
                        _%vars189731%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K189736189762%_
                                                  (lambda (_%rest189753%_
                                                           _%hd-pat189754%_
                                                           _%hd-depth*189755%_)
                                                    (let ((_%hd-depth189757%_
                                                           (fx- _%hd-depth*189755%_
                                                                _%depth189718%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth189757%_))
                                                          (_%lp189727%_
                                                           _%rest189753%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat189754%_)
                         _%targets189730%_)
                   (cons (cons _%hd-depth189757%_ _%hd-pat189754%_)
                         _%vars189731%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth189757%_))
                      (_%lp189727%_
                       _%rest189753%_
                       (cons (cons 'pattern _%hd-pat189754%_)
                             _%targets189730%_)
                       _%vars189731%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx189547%_
                         _%where189717%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest189732189742%_)
                                                (let ((_%hd189737189765%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest189732189742%_)))
                                                      (_%tl189738189767%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest189732189742%_))))
                                                  (if (pair? _%hd189737189765%_)
                                                      (let ((_%hd189739189770%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd189737189765%_)))
                    (_%tl189740189772%_
                     (let () (declare (not safe)) (##cdr _%hd189737189765%_))))
                (let* ((_%hd-depth*189775%_ _%hd189739189770%_)
                       (_%hd-pat189777%_ _%tl189740189772%_)
                       (_%rest189779%_ _%tl189738189767%_))
                  (_%K189736189762%_
                   _%rest189779%_
                   _%hd-pat189777%_
                   _%hd-depth*189775%_)))
              (_%else189734189750%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else189734189750%_))))))))))
                             (_%recur189595%_
                              (lambda (_%e189600%_ _%is-e?189601%_)
                                (if (_%is-e?189601%_ _%e189600%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx189547%_))
                                    (if (gx#syntax-local-pattern? _%e189600%_)
                                        (let* ((_%pat189605%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e189600%_)))
                                               (_%depth189607%_
                                                (##structure-ref
                                                 _%pat189605%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth189607%_)
                                              (values (cons 'ref _%pat189605%_)
                                                      (cons (cons _%depth189607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat189605%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat189605%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e189600%_))
                                            (values (cons 'term _%e189600%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e189600%_))
                                                (let* ((_%e189611189618%_
                                                        _%e189600%_)
                                                       (_%E189613189622%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e189611189618%_))))
                                                       (_%E189612189704%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e189611189618%_))
                      (let ((_%e189614189626%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e189611189618%_))))
                        (let ((_%hd189615189629%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189614189626%_)))
                              (_%tl189616189631%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189614189626%_))))
                          (let* ((_%hd189634%_ _%hd189615189629%_)
                                 (_%rest189636%_ _%tl189616189631%_))
                            (if (_%is-e?189601%_ _%hd189634%_)
                                (let* ((_%e189637189644%_ _%rest189636%_)
                                       (_%E189639189648%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx189547%_
                                             _%e189600%_))))
                                       (_%E189638189662%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e189637189644%_))
                                              (let ((_%e189640189652%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e189637189644%_))))
                                                (let ((_%hd189641189655%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e189640189652%_)))
                                                      (_%tl189642189657%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e189640189652%_))))
                                                  (let ((_%rest189660%_
                                                         _%hd189641189655%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl189642189657%_))
                                                        (_%recur189595%_
                                                         _%rest189660%_
                                                         false)
                                                        (_%E189639189648%_)))))
                                              (_%E189639189648%_)))))
                                  (_%E189638189662%_))
                                (let _%lp189666%_ ((_%rest189668%_
                                                    _%rest189636%_)
                                                   (_%depth189669%_ '0))
                                  (let* ((_%e189670189677%_ _%rest189668%_)
                                         (_%E189672189681%_
                                          (lambda ()
                                            (if (fxpositive? _%depth189669%_)
                                                (_%make-splice189594%_
                                                 _%e189600%_
                                                 _%depth189669%_
                                                 (_%recur189595%_
                                                  _%hd189634%_
                                                  _%is-e?189601%_)
                                                 (_%recur189595%_
                                                  _%rest189668%_
                                                  _%is-e?189601%_))
                                                (_%make-cons189593%_
                                                 (_%recur189595%_
                                                  _%hd189634%_
                                                  _%is-e?189601%_)
                                                 (_%recur189595%_
                                                  _%rest189668%_
                                                  _%is-e?189601%_)))))
                                         (_%E189671189700%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e189670189677%_))
                                                (let ((_%e189673189685%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e189670189677%_))))
                                                  (let ((_%hd189674189688%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e189673189685%_)))
                                                        (_%tl189675189690%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e189673189685%_))))
                                                    (let* ((_%rest-hd189693%_
                                                            _%hd189674189688%_)
                                                           (_%rest-tl189695%_
                                                            _%tl189675189690%_))
                                                      (if (_%is-e?189601%_
                                                           _%rest-hd189693%_)
                                                          (_%lp189666%_
                                                           _%rest-tl189695%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth189669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth189669%_)
                      (_%make-splice189594%_
                       _%e189600%_
                       _%depth189669%_
                       (_%recur189595%_ _%hd189634%_ _%is-e?189601%_)
                       (_%recur189595%_ _%rest189668%_ _%is-e?189601%_))
                      (_%make-cons189593%_
                       (_%recur189595%_ _%hd189634%_ _%is-e?189601%_)
                       (_%recur189595%_ _%rest189668%_ _%is-e?189601%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E189672189681%_)))))
                                    (_%E189671189700%_)))))))
                      (_%E189613189622%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E189612189704%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e189600%_))
                                                    (let ((_g190124_
                                                           (_%recur189595%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e189600%_)))
                    _%is-e?189601%_)))
              (begin
                (let ((_g190125_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g190124_)
                             (##values-length _g190124_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g190125_ 2)))
                      (error "Context expects 2 values" _g190125_)))
                (let ((_%e189709%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g190124_ 0)))
                      (_%vars189710%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g190124_ 1))))
                  (values (cons 'vector _%e189709%_) _%vars189710%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e189600%_))
                                                        (let ((_g190126_
                                                               (_%recur189595%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e189600%_)))
                        _%is-e?189601%_)))
                  (begin
                    (let ((_g190127_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g190126_)
                                 (##values-length _g190126_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g190127_ 2)))
                          (error "Context expects 2 values" _g190127_)))
                    (let ((_%e189713%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g190126_ 0)))
                          (_%vars189714%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g190126_ 1))))
                      (values (cons 'box _%e189713%_) _%vars189714%_))))
                (values (cons 'datum _%e189600%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g190128_
                             (_%recur189595%_ _%e189591%_ gx#ellipsis?)))
                        (begin
                          (let ((_g190129_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g190128_)
                                       (##values-length _g190128_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g190129_ 2)))
                                (error "Context expects 2 values" _g190129_)))
                          (let ((_%tree189597%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g190128_ 0)))
                                (_%vars189598%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g190128_ 1))))
                            (if (null? _%vars189598%_)
                                _%tree189597%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx189547%_
                                   _%vars189598%_))))))))))
          (let* ((_%e189551189561%_ _%stx189547%_)
                 (_%E189553189565%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx189547%_))))
                 (_%E189552189587%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e189551189561%_))
                        (let ((_%e189554189569%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e189551189561%_))))
                          (let ((_%hd189555189572%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189554189569%_)))
                                (_%tl189556189574%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189554189569%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl189556189574%_))
                                (let ((_%e189557189577%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl189556189574%_))))
                                  (let ((_%hd189558189580%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e189557189577%_)))
                                        (_%tl189559189582%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e189557189577%_))))
                                    (let ((_%form189585%_ _%hd189558189580%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl189559189582%_))
                                          (let ((__tmp190131
                                                 (_%generate189549%_
                                                  (_%parse189550%_
                                                   _%form189585%_)))
                                                (__tmp190130
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx189547%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp190131
                                             __tmp190130))
                                          (_%E189553189565%_)))))
                                (_%E189553189565%_))))
                        (_%E189553189565%_)))))
            (_%E189552189587%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx188796%_
               _%identifier=?188797%_
               _%unwrap-e188798%_
               _%wrap-e188799%_)
        (letrec ((_%generate-bindings188801%_
                  (lambda (_%target189411%_
                           _%ids189412%_
                           _%clauses189413%_
                           _%clause-ids189414%_
                           _%E189415%_)
                    (letrec ((_%generate1189417%_
                              (lambda (_%clause189514%_
                                       _%clause-id189515%_
                                       _%E189516%_)
                                (cons (cons _%clause-id189515%_ '())
                                      (cons (let ((__tmp190133
                                                   (cons _%target189411%_ '()))
                                                  (__tmp190132
                                                   (_%generate-clause188803%_
                                                    _%target189411%_
                                                    _%ids189412%_
                                                    _%clause189514%_
                                                    _%E189516%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp190133
                                               __tmp190132))
                                            '())))))
                      (let _%lp189419%_ ((_%rest189421%_ _%clauses189413%_)
                                         (_%rest-ids189422%_
                                          _%clause-ids189414%_)
                                         (_%bindings189423%_ '()))
                        (let* ((_%rest189424189432%_ _%rest189421%_)
                               (_%else189426189440%_
                                (lambda () _%bindings189423%_))
                               (_%K189428189502%_
                                (lambda (_%rest189443%_ _%clause189444%_)
                                  (let* ((_%rest-ids189445189452%_
                                          _%rest-ids189422%_)
                                         (_%E189447189456%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids189445189452%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K189448189490%_
                                          (lambda (_%rest-ids189459%_
                                                   _%clause-id189460%_)
                                            (let* ((_%rest-ids189461189469%_
                                                    _%rest-ids189459%_)
                                                   (_%else189463189477%_
                                                    (lambda ()
                                                      (cons (_%generate1189417%_
                                                             _%clause189444%_
                                                             _%clause-id189460%_
                                                             _%E189415%_)
                                                            _%bindings189423%_)))
                                                   (_%K189465189482%_
                                                    (lambda (_%next-clause-id189480%_)
                                                      (_%lp189419%_
                                                       _%rest189443%_
                                                       _%rest-ids189459%_
                                                       (cons (_%generate1189417%_
                                                              _%clause189444%_
                                                              _%clause-id189460%_
                                                              _%next-clause-id189480%_)
                                                             _%bindings189423%_)))))
                                              (if (pair? _%rest-ids189461189469%_)
                                                  (let* ((_%hd189466189485%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids189461189469%_)))
                                                         (_%next-clause-id189488%_
                                                          _%hd189466189485%_))
                                                    (_%K189465189482%_
                                                     _%next-clause-id189488%_))
                                                  (_%else189463189477%_))))))
                                    (if (pair? _%rest-ids189445189452%_)
                                        (let ((_%hd189449189493%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids189445189452%_)))
                                              (_%tl189450189495%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids189445189452%_))))
                                          (let* ((_%clause-id189498%_
                                                  _%hd189449189493%_)
                                                 (_%rest-ids189500%_
                                                  _%tl189450189495%_))
                                            (_%K189448189490%_
                                             _%rest-ids189500%_
                                             _%clause-id189498%_)))
                                        (_%E189447189456%_))))))
                          (if (pair? _%rest189424189432%_)
                              (let ((_%hd189429189505%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest189424189432%_)))
                                    (_%tl189430189507%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest189424189432%_))))
                                (let* ((_%clause189510%_ _%hd189429189505%_)
                                       (_%rest189512%_ _%tl189430189507%_))
                                  (_%K189428189502%_
                                   _%rest189512%_
                                   _%clause189510%_)))
                              (_%else189426189440%_)))))))
                 (_%generate-body188802%_
                  (lambda (_%bindings189371%_ _%body189372%_)
                    (let _%recur189374%_ ((_%rest189376%_ _%bindings189371%_))
                      (let* ((_%rest189377189385%_ _%rest189376%_)
                             (_%else189379189393%_ (lambda () _%body189372%_))
                             (_%K189381189399%_
                              (lambda (_%rest189396%_ _%hd189397%_)
                                (let ((__tmp190135 (cons _%hd189397%_ '()))
                                      (__tmp190134
                                       (_%recur189374%_ _%rest189396%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp190135
                                   __tmp190134)))))
                        (if (pair? _%rest189377189385%_)
                            (let ((_%hd189382189402%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest189377189385%_)))
                                  (_%tl189383189404%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest189377189385%_))))
                              (let* ((_%hd189407%_ _%hd189382189402%_)
                                     (_%rest189409%_ _%tl189383189404%_))
                                (_%K189381189399%_
                                 _%rest189409%_
                                 _%hd189407%_)))
                            (_%else189379189393%_))))))
                 (_%generate-clause188803%_
                  (lambda (_%target189234%_
                           _%ids189235%_
                           _%clause189236%_
                           _%E189237%_)
                    (letrec ((_%generate1189239%_
                              (lambda (_%hd189326%_
                                       _%fender189327%_
                                       _%body189328%_)
                                (let ((_g190136_
                                       (_%parse-clause188805%_
                                        _%hd189326%_
                                        _%ids189235%_)))
                                  (begin
                                    (let ((_g190137_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190136_)
                                                 (##values-length _g190136_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190137_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190137_)))
                                    (let ((_%e189330%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190136_ 0)))
                                          (_%mvars189331%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190136_ 1))))
                                      (let* ((_%pvars189333%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars189331%_))))
                                             (_%E189335%_
                                              (cons _%E189237%_
                                                    (cons _%target189234%_
                                                          '())))
                                             (_%K189368%_
                                              (let ((__tmp190138
                                                     (let ((__tmp190140
                                                            (map (lambda (_%mvar189337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar189338%_)
                           (let* ((_%mvar189339189346%_ _%mvar189337%_)
                                  (_%E189341189350%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar189339189346%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K189342189356%_
                                   (lambda (_%depth189353%_ _%id189354%_)
                                     (cons _%id189354%_
                                           (cons (let ((__tmp190142
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id189354%_)))
                                                       (__tmp190141
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar189338%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp190142
                                                    __tmp190141
                                                    _%depth189353%_))
                                                 '())))))
                             (if (pair? _%mvar189339189346%_)
                                 (let ((_%hd189343189359%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar189339189346%_)))
                                       (_%tl189344189361%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar189339189346%_))))
                                   (let* ((_%id189364%_ _%hd189343189359%_)
                                          (_%depth189366%_ _%tl189344189361%_))
                                     (_%K189342189356%_
                                      _%depth189366%_
                                      _%id189364%_)))
                                 (_%E189341189350%_))))
                         _%mvars189331%_
                         _%pvars189333%_))
                   (__tmp190139
                    (if (eq? _%fender189327%_ '#t)
                        _%body189328%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender189327%_
                           _%body189328%_
                           _%E189335%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp190140 __tmp190139))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars189333%_
                                                 __tmp190138))))
                                        (_%generate-match188804%_
                                         _%hd189326%_
                                         _%target189234%_
                                         _%e189330%_
                                         _%mvars189331%_
                                         _%K189368%_
                                         _%E189335%_))))))))
                      (let* ((_%e189240189260%_ _%clause189236%_)
                             (_%E189249189264%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e189240189260%_))))
                             (_%E189242189298%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e189240189260%_))
                                    (let ((_%e189250189268%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e189240189260%_))))
                                      (let ((_%hd189251189271%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e189250189268%_)))
                                            (_%tl189252189273%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e189250189268%_))))
                                        (let ((_%hd189276%_
                                               _%hd189251189271%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl189252189273%_))
                                              (let ((_%e189253189278%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl189252189273%_))))
                                                (let ((_%hd189254189281%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e189253189278%_)))
                                                      (_%tl189255189283%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e189253189278%_))))
                                                  (let ((_%fender189286%_
                                                         _%hd189254189281%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl189255189283%_))
                                                        (let ((_%e189256189288%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl189255189283%_))))
                  (let ((_%hd189257189291%_
                         (let ()
                           (declare (not safe))
                           (##car _%e189256189288%_)))
                        (_%tl189258189293%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e189256189288%_))))
                    (let ((_%body189296%_ _%hd189257189291%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl189258189293%_))
                          (_%generate1189239%_
                           _%hd189276%_
                           _%fender189286%_
                           _%body189296%_)
                          (_%E189249189264%_)))))
                (_%E189249189264%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E189249189264%_)))))
                                    (_%E189249189264%_))))
                             (_%E189241189322%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e189240189260%_))
                                    (let ((_%e189243189302%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e189240189260%_))))
                                      (let ((_%hd189244189305%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e189243189302%_)))
                                            (_%tl189245189307%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e189243189302%_))))
                                        (let ((_%hd189310%_
                                               _%hd189244189305%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl189245189307%_))
                                              (let ((_%e189246189312%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl189245189307%_))))
                                                (let ((_%hd189247189315%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e189246189312%_)))
                                                      (_%tl189248189317%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e189246189312%_))))
                                                  (let ((_%body189320%_
                                                         _%hd189247189315%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl189248189317%_))
                                                        (_%generate1189239%_
                                                         _%hd189310%_
                                                         '#t
                                                         _%body189320%_)
                                                        (_%E189242189298%_)))))
                                              (_%E189242189298%_)))))
                                    (_%E189242189298%_)))))
                        (_%E189241189322%_)))))
                 (_%generate-match188804%_
                  (lambda (_%where188983%_
                           _%target188984%_
                           _%hd188985%_
                           _%mvars188986%_
                           _%K188987%_
                           _%E188988%_)
                    (letrec ((_%BUG188990%_
                              (lambda (_%q189232%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx188796%_
                                         _%hd188985%_
                                         _%q189232%_))))
                             (_%recur188991%_
                              (lambda (_%e189082%_
                                       _%vars189083%_
                                       _%target189084%_
                                       _%E189085%_
                                       _%k189086%_)
                                (let* ((_%e189087189094%_ _%e189082%_)
                                       (_%E189089189098%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e189087189094%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K189090189220%_
                                        (lambda (_%body189101%_ _%tag189102%_)
                                          (let ((_%$e189104%_ _%tag189102%_))
                                            (if (eq? 'any _%$e189104%_)
                                                (_%k189086%_ _%vars189083%_)
                                                (if (eq? 'id _%$e189104%_)
                                                    (let ((__tmp190147
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target189084%_)))
                                                          (__tmp190143
                                                           (let ((__tmp190145
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp190146
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e188799%_
                                    _%body189101%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?188797%_
                             __tmp190146
                             _%target189084%_)))
                         (__tmp190144 (_%k189086%_ _%vars189083%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp190145 __tmp190144 _%E189085%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp190147 __tmp190143 _%E189085%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e189104%_)
                                                        (_%k189086%_
                                                         (cons (cons _%body189101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target189084%_)
                       _%vars189083%_))
                (if (eq? 'cons _%$e189104%_)
                    (let ((_%$e189107%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd189108%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl189109%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp190153
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target189084%_)))
                            (__tmp190148
                             (let ((__tmp190152
                                    (cons (cons (cons _%$e189107%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e188798%_
                                                         _%target189084%_))
                                                      '()))
                                          '()))
                                   (__tmp190149
                                    (let ((__tmp190151
                                           (cons (cons (cons _%$hd189108%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e189107%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl189109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e189107%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp190150
                                           (let* ((_%body189110189117%_
                                                   _%body189101%_)
                                                  (_%E189112189121%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body189110189117%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K189113189129%_
                                                   (lambda (_%tl189124%_
                                                            _%hd189125%_)
                                                     (_%recur188991%_
                                                      _%hd189125%_
                                                      _%vars189083%_
                                                      _%$hd189108%_
                                                      _%E189085%_
                                                      (lambda (_%vars189127%_)
                                                        (_%recur188991%_
                                                         _%tl189124%_
                                                         _%vars189127%_
                                                         _%$tl189109%_
                                                         _%E189085%_
                                                         _%k189086%_))))))
                                             (if (pair? _%body189110189117%_)
                                                 (let ((_%hd189114189132%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body189110189117%_)))
                                                       (_%tl189115189134%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body189110189117%_))))
                                                   (let* ((_%hd189137%_
                                                           _%hd189114189132%_)
                                                          (_%tl189139%_
                                                           _%tl189115189134%_))
                                                     (_%K189113189129%_
                                                      _%tl189139%_
                                                      _%hd189137%_)))
                                                 (_%E189112189121%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp190151
                                       __tmp190150))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp190152
                                __tmp190149))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp190153
                         __tmp190148
                         _%E189085%_)))
                    (if (eq? 'splice _%$e189104%_)
                        (let* ((_%body189140189147%_ _%body189101%_)
                               (_%E189142189151%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body189140189147%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K189143189202%_
                                (lambda (_%tl189154%_ _%hd189155%_)
                                  (let* ((_%rlen189157%_
                                          (_%splice-rlen188992%_ _%tl189154%_))
                                         (_%$target189159%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd189161%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl189163%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp189165%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e189167%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd189169%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl189171%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars189173%_
                                          (_%splice-vars188993%_ _%hd189155%_))
                                         (_%lvars189175%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars189173%_)))
                                         (_%tlvars189177%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars189173%_)))
                                         (_%linit189181%_
                                          (map (lambda (_%var189179%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars189175%_)))
                                    (letrec ((_%make-loop189184%_
                                              (lambda (_%vars189188%_)
                                                (let ((__tmp190155
                                                       (cons (cons (cons _%$lp189165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp190168
                                        (cons _%$hd189161%_ _%lvars189175%_))
                                       (__tmp190156
                                        (let ((__tmp190167
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd189161%_)))
                                              (__tmp190161
                                               (let ((__tmp190166
                                                      (cons (cons (cons _%$lp-e189167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e188798%_
                                   _%$hd189161%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp190162
                                                      (let ((__tmp190165
                                                             (cons (cons (cons _%$lp-hd189169%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e189167%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl189171%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e189167%_))
                                             '()))
                                 '())))
                    (__tmp190163
                     (_%recur188991%_
                      _%hd189155%_
                      '()
                      _%$lp-hd189169%_
                      _%E189085%_
                      (lambda (_%hdvars189190%_)
                        (cons _%$lp189165%_
                              (cons _%$lp-tl189171%_
                                    (map (lambda (_%svar189192%_
                                                  _%lvar189193%_)
                                           (let ((__tmp190164
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar189192%_
                                                     _%hdvars189190%_
                                                     _%BUG188990%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp190164
                                              _%lvar189193%_)))
                                         _%svars189173%_
                                         _%lvars189175%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp190165 __tmp190163))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp190166
                                                  __tmp190162)))
                                              (__tmp190157
                                               (let ((__tmp190160
                                                      (map (lambda (_%lvar189195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar189196%_)
                     (cons (cons _%tlvar189196%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar189195%_))
                                 '())))
                   _%lvars189175%_
                   _%tlvars189177%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp190158
                                                      (_%k189086%_
                                                       (let ((__tmp190159
                                                              (lambda (_%svar189198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar189199%_
                               _%r189200%_)
                        (cons (cons _%svar189198%_ _%tlvar189199%_)
                              _%r189200%_))))
                 (declare (not safe))
                 (foldl__1
                  __tmp190159
                  _%vars189188%_
                  _%svars189173%_
                  _%tlvars189177%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp190160
                                                  __tmp190158))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp190167
                                           __tmp190161
                                           __tmp190157))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp190168
                                    __tmp190156))
                                 '()))
                     '()))
              (__tmp190154
               (cons _%$lp189165%_ (cons _%$target189159%_ _%linit189181%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp190155
                                                   __tmp190154)))))
                                      (let ((_%body189186%_
                                             (let ((__tmp190170
                                                    (cons (cons (cons _%$target189159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl189163%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target189084%_
                                 _%rlen189157%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp190169
                                                    (_%recur188991%_
                                                     _%tl189154%_
                                                     _%vars189083%_
                                                     _%$tl189163%_
                                                     _%E189085%_
                                                     _%make-loop189184%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp190170
                                                __tmp190169))))
                                        (let ((__tmp190174
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target189084%_)))
                                              (__tmp190171
                                               (if (zero? _%rlen189157%_)
                                                   _%body189186%_
                                                   (let ((__tmp190172
                                                          (let ((__tmp190173
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target189084%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp190173 _%rlen189157%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp190172
                                                      _%body189186%_
                                                      _%E189085%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp190174
                                           __tmp190171
                                           _%E189085%_))))))))
                          (if (pair? _%body189140189147%_)
                              (let ((_%hd189144189205%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body189140189147%_)))
                                    (_%tl189145189207%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body189140189147%_))))
                                (let* ((_%hd189210%_ _%hd189144189205%_)
                                       (_%tl189212%_ _%tl189145189207%_))
                                  (_%K189143189202%_
                                   _%tl189212%_
                                   _%hd189210%_)))
                              (_%E189142189151%_)))
                        (if (eq? 'null _%$e189104%_)
                            (let ((__tmp190176
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target189084%_)))
                                  (__tmp190175 (_%k189086%_ _%vars189083%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp190176
                               __tmp190175
                               _%E189085%_))
                            (if (eq? 'vector _%$e189104%_)
                                (let ((_%$e189214%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp190181
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target189084%_)))
                                        (__tmp190177
                                         (let ((__tmp190179
                                                (cons (cons (cons _%$e189214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp190180
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e188798%_
                                    _%target189084%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp190180))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp190178
                                                (_%recur188991%_
                                                 _%body189101%_
                                                 _%vars189083%_
                                                 _%$e189214%_
                                                 _%E189085%_
                                                 _%k189086%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp190179
                                            __tmp190178))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp190181
                                     __tmp190177
                                     _%E189085%_)))
                                (if (eq? 'box _%$e189104%_)
                                    (let ((_%$e189216%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp190186
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target189084%_)))
                                            (__tmp190182
                                             (let ((__tmp190184
                                                    (cons (cons (cons _%$e189216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp190185
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e188798%_
                                        _%target189084%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp190185))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp190183
                                                    (_%recur188991%_
                                                     _%body189101%_
                                                     _%vars189083%_
                                                     _%$e189216%_
                                                     _%E189085%_
                                                     _%k189086%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp190184
                                                __tmp190183))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp190186
                                         __tmp190182
                                         _%E189085%_)))
                                    (if (eq? 'datum _%$e189104%_)
                                        (let ((_%$e189218%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp190192
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target189084%_)))
                                                (__tmp190187
                                                 (let ((__tmp190191
                                                        (cons (cons (cons _%$e189218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target189084%_))
                                  '()))
                      '()))
               (__tmp190188
                (let ((__tmp190190
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e189218%_ _%body189101%_)))
                      (__tmp190189 (_%k189086%_ _%vars189083%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp190190 __tmp190189 _%E189085%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp190191
                                                    __tmp190188))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp190192
                                             __tmp190187
                                             _%E189085%_)))
                                        (_%BUG188990%_
                                         _%e189082%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e189087189094%_)
                                      (let ((_%hd189091189223%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e189087189094%_)))
                                            (_%tl189092189225%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e189087189094%_))))
                                        (let* ((_%tag189228%_
                                                _%hd189091189223%_)
                                               (_%body189230%_
                                                _%tl189092189225%_))
                                          (_%K189090189220%_
                                           _%body189230%_
                                           _%tag189228%_)))
                                      (_%E189089189098%_)))))
                             (_%splice-rlen188992%_
                              (lambda (_%e189044%_)
                                (let _%lp189046%_ ((_%e189048%_ _%e189044%_)
                                                   (_%n189049%_ '0))
                                  (let* ((_%e189050189057%_ _%e189048%_)
                                         (_%E189052189061%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e189050189057%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K189053189070%_
                                          (lambda (_%body189064%_
                                                   _%tag189065%_)
                                            (let ((_%$e189067%_ _%tag189065%_))
                                              (if (eq? 'splice _%$e189067%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx188796%_
                                                     _%where188983%_))
                                                  (if (eq? 'cons _%$e189067%_)
                                                      (_%lp189046%_
                                                       (cdr _%body189064%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n189049%_
                                                                '1)))
                                                      _%n189049%_))))))
                                    (if (pair? _%e189050189057%_)
                                        (let ((_%hd189054189073%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189050189057%_)))
                                              (_%tl189055189075%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189050189057%_))))
                                          (let* ((_%tag189078%_
                                                  _%hd189054189073%_)
                                                 (_%body189080%_
                                                  _%tl189055189075%_))
                                            (_%K189053189070%_
                                             _%body189080%_
                                             _%tag189078%_)))
                                        (_%E189052189061%_))))))
                             (_%splice-vars188993%_
                              (lambda (_%e189000%_)
                                (let _%recur189002%_ ((_%e189004%_ _%e189000%_)
                                                      (_%vars189005%_ '()))
                                  (let* ((_%e189006189013%_ _%e189004%_)
                                         (_%E189008189017%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e189006189013%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K189009189032%_
                                          (lambda (_%body189020%_
                                                   _%tag189021%_)
                                            (let ((_%$e189023%_ _%tag189021%_))
                                              (if (eq? 'var _%$e189023%_)
                                                  (cons _%body189020%_
                                                        _%vars189005%_)
                                                  (if (or (eq? 'cons
                                                               _%$e189023%_)
                                                          (eq? 'splice
                                                               _%$e189023%_))
                                                      (_%recur189002%_
                                                       (cdr _%body189020%_)
                                                       (_%recur189002%_
                                                        (car _%body189020%_)
                                                        _%vars189005%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e189023%_)
                      (eq? 'box _%$e189023%_))
                  (_%recur189002%_ _%body189020%_ _%vars189005%_)
                  _%vars189005%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e189006189013%_)
                                        (let ((_%hd189010189035%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189006189013%_)))
                                              (_%tl189011189037%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189006189013%_))))
                                          (let* ((_%tag189040%_
                                                  _%hd189010189035%_)
                                                 (_%body189042%_
                                                  _%tl189011189037%_))
                                            (_%K189009189032%_
                                             _%body189042%_
                                             _%tag189040%_)))
                                        (_%E189008189017%_))))))
                             (_%make-body188994%_
                              (lambda (_%vars188996%_)
                                (cons _%K188987%_
                                      (map (lambda (_%mvar188998%_)
                                             (let ((__tmp190193
                                                    (car _%mvar188998%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp190193
                                                _%vars188996%_
                                                _%BUG188990%_)))
                                           _%mvars188986%_)))))
                      (_%recur188991%_
                       _%hd188985%_
                       '()
                       _%target188984%_
                       _%E188988%_
                       _%make-body188994%_))))
                 (_%parse-clause188805%_
                  (lambda (_%hd188877%_ _%ids188878%_)
                    (let _%recur188880%_ ((_%e188882%_ _%hd188877%_)
                                          (_%vars188883%_ '())
                                          (_%depth188884%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e188882%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e188882%_))
                              (values '(any) _%vars188883%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e188882%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx188796%_
                                     _%hd188877%_))
                                  (if (let ((__tmp190194
                                             (lambda (_%id188889%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e188882%_
                                                  _%id188889%_)))))
                                        (declare (not safe))
                                        (__find __tmp190194 _%ids188878%_))
                                      (values (cons 'id _%e188882%_)
                                              _%vars188883%_)
                                      (if (let ((__tmp190195
                                                 (lambda (_%var188892%_)
                                                   (let ((__tmp190196
                                                          (car _%var188892%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e188882%_
                                                      __tmp190196)))))
                                            (declare (not safe))
                                            (__find __tmp190195
                                                    _%vars188883%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx188796%_
                                             _%e188882%_))
                                          (values (cons 'var _%e188882%_)
                                                  (cons (cons _%e188882%_
                                                              _%depth188884%_)
                                                        _%vars188883%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e188882%_))
                              (let* ((_%e188896188903%_ _%e188882%_)
                                     (_%E188898188907%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e188896188903%_))))
                                     (_%E188897188968%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e188896188903%_))
                                            (let ((_%e188899188911%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e188896188903%_))))
                                              (let ((_%hd188900188914%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e188899188911%_)))
                                                    (_%tl188901188916%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e188899188911%_))))
                                                (let* ((_%hd188919%_
                                                        _%hd188900188914%_)
                                                       (_%rest188921%_
                                                        _%tl188901188916%_)
                                                       (_%make-pair188936%_
                                                        (lambda (_%tag188923%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd188924%_
                         _%tl188925%_)
                  (let* ((_%hd-depth188927%_
                          (if (eq? _%tag188923%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth188884%_ '1))
                              _%depth188884%_))
                         (_g190197_
                          (_%recur188880%_
                           _%hd188924%_
                           _%vars188883%_
                           _%hd-depth188927%_)))
                    (begin
                      (let ((_g190198_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g190197_)
                                   (##values-length _g190197_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g190198_ 2)))
                            (error "Context expects 2 values" _g190198_)))
                      (let ((_%hd188929%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g190197_ 0)))
                            (_%vars188930%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g190197_ 1))))
                        (let ((_g190199_
                               (_%recur188880%_
                                _%tl188925%_
                                _%vars188930%_
                                _%depth188884%_)))
                          (begin
                            (let ((_g190200_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g190199_)
                                         (##values-length _g190199_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g190200_ 2)))
                                  (error "Context expects 2 values"
                                         _g190200_)))
                            (let ((_%tl188932%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g190199_ 0)))
                                  (_%vars188933%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g190199_ 1))))
                              (values (cons _%tag188923%_
                                            (cons _%hd188929%_ _%tl188932%_))
                                      _%vars188933%_)))))))))
               (_%e188937188944%_ _%rest188921%_)
               (_%E188939188948%_
                (lambda ()
                  (_%make-pair188936%_ 'cons _%hd188919%_ _%rest188921%_)))
               (_%E188938188964%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e188937188944%_))
                      (let ((_%e188940188952%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e188937188944%_))))
                        (let ((_%hd188941188955%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188940188952%_)))
                              (_%tl188942188957%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188940188952%_))))
                          (let* ((_%rest-hd188960%_ _%hd188941188955%_)
                                 (_%rest-tl188962%_ _%tl188942188957%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd188960%_))
                                (_%make-pair188936%_
                                 'splice
                                 _%hd188919%_
                                 _%rest-tl188962%_)
                                (_%make-pair188936%_
                                 'cons
                                 _%hd188919%_
                                 _%rest188921%_)))))
                      (_%E188939188948%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E188938188964%_))))
                                            (_%E188898188907%_)))))
                                (_%E188897188968%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e188882%_))
                                  (values '(null) _%vars188883%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e188882%_))
                                      (let ((_g190201_
                                             (_%recur188880%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e188882%_)))
                                              _%vars188883%_
                                              _%depth188884%_)))
                                        (begin
                                          (let ((_g190202_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g190201_)
                                                       (##values-length
                                                        _g190201_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g190202_ 2)))
                                                (error "Context expects 2 values"
                                                       _g190202_)))
                                          (let ((_%e188974%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g190201_ 0)))
                                                (_%vars188975%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g190201_
                                                    1))))
                                            (values (cons 'vector _%e188974%_)
                                                    _%vars188975%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e188882%_))
                                          (let ((_g190203_
                                                 (_%recur188880%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e188882%_)))
                                                  _%vars188883%_
                                                  _%depth188884%_)))
                                            (begin
                                              (let ((_g190204_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g190203_)
                                                           (##values-length
                                                            _g190203_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g190204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g190204_)))
                                              (let ((_%e188978%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g190203_
                                                        0)))
                                                    (_%vars188979%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g190203_
                                                        1))))
                                                (values (cons 'box _%e188978%_)
                                                        _%vars188979%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e188882%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e188882%_)))
                                                      _%vars188883%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx188796%_
                                                 _%e188882%_))))))))))))
          (let* ((_%e188806188819%_ _%stx188796%_)
                 (_%E188808188823%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e188806188819%_))))
                 (_%E188807188873%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e188806188819%_))
                        (let ((_%e188809188827%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e188806188819%_))))
                          (let ((_%hd188810188830%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e188809188827%_)))
                                (_%tl188811188832%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e188809188827%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl188811188832%_))
                                (let ((_%e188812188835%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl188811188832%_))))
                                  (let ((_%hd188813188838%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e188812188835%_)))
                                        (_%tl188814188840%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e188812188835%_))))
                                    (let ((_%expr188843%_ _%hd188813188838%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl188814188840%_))
                                          (let ((_%e188815188845%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl188814188840%_))))
                                            (let ((_%hd188816188848%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e188815188845%_)))
                                                  (_%tl188817188850%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e188815188845%_))))
                                              (let* ((_%ids188853%_
                                                      _%hd188816188848%_)
                                                     (_%clauses188855%_
                                                      _%tl188817188850%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids188853%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses188855%_))
                                                        (let* ((_%ids188860%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids188853%_)))
                       (_%clauses188862%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses188855%_)))
                       (_%clause-ids188864%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses188862%_)))
                       (_%E188866%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target188868%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first188870%_
                        (if (null? _%clauses188862%_)
                            _%E188866%_
                            (car _%clause-ids188864%_))))
                  (let ((__tmp190206
                         (let ((__tmp190207
                                (let ((__tmp190209
                                       (let ((__tmp190211
                                              (cons (cons (cons _%E188866%_
                                                                '())
                                                          (cons (let ((__tmp190213
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target188868%_ '()))
                              (__tmp190212
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target188868%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp190213 __tmp190212))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp190210
                                              (_%generate-body188802%_
                                               (_%generate-bindings188801%_
                                                _%target188868%_
                                                _%ids188860%_
                                                _%clauses188862%_
                                                _%clause-ids188864%_
                                                _%E188866%_)
                                               (cons _%first188870%_
                                                     (cons _%expr188843%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp190211
                                          __tmp190210)))
                                      (__tmp190208
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx188796%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp190209
                                   __tmp190208))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp190207)))
                        (__tmp190205
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx188796%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp190206 __tmp190205)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx188796%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx188796%_
                                                       _%ids188853%_))))))
                                          (_%E188808188823%_)))))
                                (_%E188808188823%_))))
                        (_%E188808188823%_)))))
            (_%E188807188873%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx189521%_)
        (let* ((_%identifier=?189523%_ 'free-identifier=?)
               (_%unwrap-e189525%_ 'syntax-e)
               (_%wrap-e189527%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx189521%_
           _%identifier=?189523%_
           _%unwrap-e189525%_
           _%wrap-e189527%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx189529%_ _%identifier=?189530%_)
        (let* ((_%unwrap-e189532%_ 'syntax-e) (_%wrap-e189534%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx189529%_
           _%identifier=?189530%_
           _%unwrap-e189532%_
           _%wrap-e189534%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx189536%_ _%identifier=?189537%_ _%unwrap-e189538%_)
        (let ((_%wrap-e189540%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx189536%_
           _%identifier=?189537%_
           _%unwrap-e189538%_
           _%wrap-e189540%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g190214_
        (let ((_g190215_ (let () (declare (not safe)) (##length _g190214_))))
          (cond ((let () (declare (not safe)) (##fx= _g190215_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g190214_))
                ((let () (declare (not safe)) (##fx= _g190215_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g190214_))
                ((let () (declare (not safe)) (##fx= _g190215_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g190214_))
                ((let () (declare (not safe)) (##fx= _g190215_ 4))
                 (apply gx#macro-expand-syntax-case__% _g190214_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g190214_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx188793%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx188793%_))
            (let ((__tmp190216
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx188793%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp190216 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd188751%_ . _%rest188752%_)
        (let ((_%len188754%_ (length _%hd188751%_)))
          (let _%lp188756%_ ((_%rest188758%_ _%rest188752%_))
            (let* ((_%rest188759188767%_ _%rest188758%_)
                   (_%else188761188775%_ (lambda () '#!void))
                   (_%K188763188781%_
                    (lambda (_%rest188778%_ _%hd188779%_)
                      (if (let ((__tmp190217 (length _%hd188779%_)))
                            (declare (not safe))
                            (##fx= _%len188754%_ __tmp190217))
                          (_%lp188756%_ _%rest188778%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd188779%_))))))
              (if (pair? _%rest188759188767%_)
                  (let ((_%hd188764188784%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest188759188767%_)))
                        (_%tl188765188786%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest188759188767%_))))
                    (let* ((_%hd188789%_ _%hd188764188784%_)
                           (_%rest188791%_ _%tl188765188786%_))
                      (_%K188763188781%_ _%rest188791%_ _%hd188789%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx188701%_ _%n188702%_)
        (let _%lp188704%_ ((_%rest188707%_ _%stx188701%_) (_%r188709%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest188707%_))
              (let* ((_%g188711188718%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest188707%_)))
                     (_%E188713188722%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g188711188718%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K188714188729%_
                      (lambda (_%rest188725%_ _%hd188726%_)
                        (_%lp188704%_
                         _%rest188725%_
                         (cons _%hd188726%_ _%r188709%_)))))
                (if (pair? _%g188711188718%_)
                    (let ((_%hd188715188732%_
                           (let ()
                             (declare (not safe))
                             (##car _%g188711188718%_)))
                          (_%tl188716188734%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g188711188718%_))))
                      (let* ((_%hd188737%_ _%hd188715188732%_)
                             (_%rest188739%_ _%tl188716188734%_))
                        (_%K188714188729%_ _%rest188739%_ _%hd188737%_)))
                    (_%E188713188722%_)))
              (let _%lp188741%_ ((_%n188743%_ _%n188702%_)
                                 (_%l188744%_ _%r188709%_)
                                 (_%r188746%_ _%rest188707%_))
                (if (null? _%l188744%_)
                    (values _%l188744%_ _%r188746%_)
                    (if (fxpositive? _%n188743%_)
                        (_%lp188741%_
                         (let () (declare (not safe)) (##fx- _%n188743%_ '1))
                         (cdr _%l188744%_)
                         (cons (car _%l188744%_) _%r188746%_))
                        (values (reverse! _%l188744%_) _%r188746%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx188651%_ _%n188652%_)
        (let _%lp188654%_ ((_%rest188657%_ _%stx188651%_) (_%r188659%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest188657%_))
              (let* ((_%g188661188668%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest188657%_)))
                     (_%E188663188672%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g188661188668%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K188664188679%_
                      (lambda (_%rest188675%_ _%hd188676%_)
                        (_%lp188654%_
                         _%rest188675%_
                         (cons _%hd188676%_ _%r188659%_)))))
                (if (pair? _%g188661188668%_)
                    (let ((_%hd188665188682%_
                           (let ()
                             (declare (not safe))
                             (##car _%g188661188668%_)))
                          (_%tl188666188684%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g188661188668%_))))
                      (let* ((_%hd188687%_ _%hd188665188682%_)
                             (_%rest188689%_ _%tl188666188684%_))
                        (_%K188664188679%_ _%rest188689%_ _%hd188687%_)))
                    (_%E188663188672%_)))
              (let _%lp188691%_ ((_%n188693%_ _%n188652%_)
                                 (_%l188694%_ _%r188659%_)
                                 (_%r188696%_ _%rest188657%_))
                (if (null? _%l188694%_)
                    (vector _%l188694%_ _%r188696%_)
                    (if (fxpositive? _%n188693%_)
                        (_%lp188691%_
                         (let () (declare (not safe)) (##fx- _%n188693%_ '1))
                         (cdr _%l188694%_)
                         (cons (car _%l188694%_) _%r188696%_))
                        (vector (reverse! _%l188694%_) _%r188696%_))))))))))
