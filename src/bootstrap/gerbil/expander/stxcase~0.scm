(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1734215270)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp133173 (list gx#expander::t))
            (__tmp133172 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp133173
         '(id depth)
         __tmp133172
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args133169%_
        (apply make-instance gx#syntax-pattern::t _%$args133169%_)))
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
      (lambda (_%self131776133153%_ _%stx133155%_)
        (let* ((_%self133157%_ _%self131776133153%_)
               (_%self133159%_ _%self133157%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx133155%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx132619%_)
        (letrec ((_%generate132621%_
                  (lambda (_%e132861%_)
                    (letrec ((_%BUG132863%_
                              (lambda (_%q133028%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx132619%_
                                         _%e132861%_
                                         _%q133028%_))))
                             (_%local-pattern-e132864%_
                              (lambda (_%pat133026%_)
                                (let ((__tmp133174
                                       (##structure-ref
                                        _%pat133026%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp133174))))
                             (_%getvar132865%_
                              (lambda (_%q133023%_ _%vars133024%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q133023%_
                                   _%vars133024%_
                                   _%BUG132863%_))))
                             (_%getarg132866%_
                              (lambda (_%arg132989%_ _%vars132990%_)
                                (let* ((_%arg132991132998%_ _%arg132989%_)
                                       (_%E132993133002%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg132991132998%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K132994133011%_
                                        (lambda (_%e133005%_ _%tag133006%_)
                                          (let ((_%$e133008%_ _%tag133006%_))
                                            (if (eq? 'ref _%$e133008%_)
                                                (_%getvar132865%_
                                                 _%e133005%_
                                                 _%vars132990%_)
                                                (if (eq? 'pattern _%$e133008%_)
                                                    (_%local-pattern-e132864%_
                                                     _%e133005%_)
                                                    (_%BUG132863%_
                                                     _%arg132989%_)))))))
                                  (if (pair? _%arg132991132998%_)
                                      (let ((_%hd132995133014%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg132991132998%_)))
                                            (_%tl132996133016%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg132991132998%_))))
                                        (let* ((_%tag133019%_
                                                _%hd132995133014%_)
                                               (_%e133021%_
                                                _%tl132996133016%_))
                                          (_%K132994133011%_
                                           _%e133021%_
                                           _%tag133019%_)))
                                      (_%E132993133002%_))))))
                      (let _%recur132868%_ ((_%e132870%_ _%e132861%_)
                                            (_%vars132871%_ '()))
                        (let* ((_%e132872132879%_ _%e132870%_)
                               (_%E132874132883%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e132872132879%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K132875132977%_
                                (lambda (_%body132886%_ _%tag132887%_)
                                  (let ((_%$e132889%_ _%tag132887%_))
                                    (if (eq? 'datum _%$e132889%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body132886%_))
                                        (if (eq? 'term _%$e132889%_)
                                            (let ((_%id132892%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body132886%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id132892%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks132895%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id132892%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks132895%_)
                                                        (let ((__tmp133175
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body132886%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp133175))
                (let ((__tmp133177
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body132886%_)))
                      (__tmp133176
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body132886%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp133177
                   __tmp133176
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id132892%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body132886%_))
                                                      (_%BUG132863%_
                                                       _%e132870%_))))
                                            (if (eq? 'pattern _%$e132889%_)
                                                (_%local-pattern-e132864%_
                                                 _%body132886%_)
                                                (if (eq? 'ref _%$e132889%_)
                                                    (_%getvar132865%_
                                                     _%body132886%_
                                                     _%vars132871%_)
                                                    (if (eq? 'cons
                                                             _%$e132889%_)
                                                        (let ((__tmp133179
                                                               (_%recur132868%_
                                                                (car _%body132886%_)
                                                                _%vars132871%_))
                                                              (__tmp133178
                                                               (_%recur132868%_
                                                                (cdr _%body132886%_)
                                                                _%vars132871%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp133179
                                                           __tmp133178))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e132889%_)
                    (let ((__tmp133180
                           (_%recur132868%_ _%body132886%_ _%vars132871%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp133180))
                    (if (eq? 'box _%$e132889%_)
                        (let ((__tmp133181
                               (_%recur132868%_
                                _%body132886%_
                                _%vars132871%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp133181))
                        (if (eq? 'splice _%$e132889%_)
                            (let* ((_%body132898132909%_ _%body132886%_)
                                   (_%E132900132913%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body132898132909%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K132901132951%_
                                    (lambda (_%args132916%_
                                             _%iv132917%_
                                             _%hd132918%_
                                             _%depth132919%_)
                                      (let* ((_%targets132925%_
                                              (map (lambda (_%g132920132922%_)
                                                     (_%getarg132866%_
                                                      _%g132920132922%_
                                                      _%vars132871%_))
                                                   _%args132916%_))
                                             (_%fold-in132927%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args132916%_)))
                                             (_%fold-out132929%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args132931%_
                                              (let ((__tmp133182
                                                     (cons _%fold-out132929%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp133182
                                                 _%fold-in132927%_)))
                                             (_%lambda-body132948%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth132919%_ '1))
                                                  (let ((_%r-args132939%_
                                                         (map (lambda (_%arg132933%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg132933%_)))
                      _%args132916%_))
                (_%r-vars132940%_
                 (let ((__tmp133183
                        (lambda (_%arg132935%_ _%var132936%_ _%r132937%_)
                          (cons (cons (cdr _%arg132935%_) _%var132936%_)
                                _%r132937%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp133183
                    _%vars132871%_
                    _%args132916%_
                    _%fold-in132927%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur132868%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth132919%_ '1))
                         (cons _%hd132918%_
                               (cons (cons 'var _%fold-out132929%_)
                                     _%r-args132939%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars132940%_))
                                                  (let* ((_%hd-vars132946%_
                                                          (let ((__tmp133184
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg132942%_ _%var132943%_ _%r132944%_)
                           (cons (cons (cdr _%arg132942%_) _%var132943%_)
                                 _%r132944%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp133184
                     _%vars132871%_
                     _%args132916%_
                     _%fold-in132927%_)))
                 (__tmp133185
                  (_%recur132868%_ _%hd132918%_ _%hd-vars132946%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp133185
                                                     _%fold-out132929%_)))))
                                        (let ((__tmp133189
                                               (if (let ((__tmp133190
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets132925%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp133190 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets132925%_))
                                                   '#!void))
                                              (__tmp133186
                                               (let ((__tmp133188
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args132931%_
                                                         _%lambda-body132948%_)))
                                                     (__tmp133187
                                                      (_%recur132868%_
                                                       _%iv132917%_
                                                       _%vars132871%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp133188
                                                  __tmp133187
                                                  _%targets132925%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp133189
                                           __tmp133186))))))
                              (if (pair? _%body132898132909%_)
                                  (let ((_%hd132902132954%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body132898132909%_)))
                                        (_%tl132903132956%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body132898132909%_))))
                                    (let ((_%depth132959%_ _%hd132902132954%_))
                                      (if (pair? _%tl132903132956%_)
                                          (let ((_%hd132904132961%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl132903132956%_)))
                                                (_%tl132905132963%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl132903132956%_))))
                                            (let ((_%hd132966%_
                                                   _%hd132904132961%_))
                                              (if (pair? _%tl132905132963%_)
                                                  (let ((_%hd132906132968%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl132905132963%_)))
                                                        (_%tl132907132970%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl132905132963%_))))
                                                    (let* ((_%iv132973%_
                                                            _%hd132906132968%_)
                                                           (_%args132975%_
                                                            _%tl132907132970%_))
                                                      (_%K132901132951%_
                                                       _%args132975%_
                                                       _%iv132973%_
                                                       _%hd132966%_
                                                       _%depth132959%_)))
                                                  (_%E132900132913%_))))
                                          (_%E132900132913%_))))
                                  (_%E132900132913%_)))
                            (if (eq? 'var _%$e132889%_)
                                _%body132886%_
                                (_%BUG132863%_ _%e132870%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e132872132879%_)
                              (let ((_%hd132876132980%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e132872132879%_)))
                                    (_%tl132877132982%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e132872132879%_))))
                                (let* ((_%tag132985%_ _%hd132876132980%_)
                                       (_%body132987%_ _%tl132877132982%_))
                                  (_%K132875132977%_
                                   _%body132987%_
                                   _%tag132985%_)))
                              (_%E132874132883%_)))))))
                 (_%parse132622%_
                  (lambda (_%e132663%_)
                    (letrec ((_%make-cons132665%_
                              (lambda (_%hd132853%_ _%tl132854%_)
                                (let ((_g133191_ _%hd132853%_)
                                      (_g133193_ _%tl132854%_))
                                  (begin
                                    (let ((_g133192_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g133191_)
                                                 (##values-length _g133191_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g133192_ 2)))
                                          (error "Context expects 2 values"
                                                 _g133192_)))
                                    (let ((_g133194_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g133193_)
                                                 (##values-length _g133193_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g133194_ 2)))
                                          (error "Context expects 2 values"
                                                 _g133194_)))
                                    (let ((_%hd-e132856%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g133191_ 0)))
                                          (_%hd-vars132857%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g133191_ 1))))
                                      (let ((_%tl-e132858%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g133193_ 0)))
                                            (_%tl-vars132859%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g133193_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e132856%_
                                                            _%tl-e132858%_))
                                                (append _%hd-vars132857%_
                                                        _%tl-vars132859%_))))))))
                             (_%make-splice132666%_
                              (lambda (_%where132789%_
                                       _%depth132790%_
                                       _%hd132791%_
                                       _%tl132792%_)
                                (let ((_g133195_ _%hd132791%_)
                                      (_g133197_ _%tl132792%_))
                                  (begin
                                    (let ((_g133196_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g133195_)
                                                 (##values-length _g133195_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g133196_ 2)))
                                          (error "Context expects 2 values"
                                                 _g133196_)))
                                    (let ((_g133198_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g133197_)
                                                 (##values-length _g133197_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g133198_ 2)))
                                          (error "Context expects 2 values"
                                                 _g133198_)))
                                    (let ((_%hd-e132794%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g133195_ 0)))
                                          (_%hd-vars132795%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g133195_ 1))))
                                      (let ((_%tl-e132796%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g133197_ 0)))
                                            (_%tl-vars132797%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g133197_ 1))))
                                        (let _%lp132799%_ ((_%rest132801%_
                                                            _%hd-vars132795%_)
                                                           (_%targets132802%_
                                                            '())
                                                           (_%vars132803%_
                                                            _%tl-vars132797%_))
                                          (let* ((_%rest132804132814%_
                                                  _%rest132801%_)
                                                 (_%else132806132822%_
                                                  (lambda ()
                                                    (if (null? _%targets132802%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx132619%_
                                                           _%where132789%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth132790%_
                                    (cons _%hd-e132794%_
                                          (cons _%tl-e132796%_
                                                _%targets132802%_))))
                        _%vars132803%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K132808132834%_
                                                  (lambda (_%rest132825%_
                                                           _%hd-pat132826%_
                                                           _%hd-depth*132827%_)
                                                    (let ((_%hd-depth132829%_
                                                           (fx- _%hd-depth*132827%_
                                                                _%depth132790%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth132829%_))
                                                          (_%lp132799%_
                                                           _%rest132825%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat132826%_)
                         _%targets132802%_)
                   (cons (cons _%hd-depth132829%_ _%hd-pat132826%_)
                         _%vars132803%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth132829%_))
                      (_%lp132799%_
                       _%rest132825%_
                       (cons (cons 'pattern _%hd-pat132826%_)
                             _%targets132802%_)
                       _%vars132803%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx132619%_
                         _%where132789%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest132804132814%_)
                                                (let ((_%hd132809132837%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest132804132814%_)))
                                                      (_%tl132810132839%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest132804132814%_))))
                                                  (if (pair? _%hd132809132837%_)
                                                      (let ((_%hd132811132842%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd132809132837%_)))
                    (_%tl132812132844%_
                     (let () (declare (not safe)) (##cdr _%hd132809132837%_))))
                (let* ((_%hd-depth*132847%_ _%hd132811132842%_)
                       (_%hd-pat132849%_ _%tl132812132844%_)
                       (_%rest132851%_ _%tl132810132839%_))
                  (_%K132808132834%_
                   _%rest132851%_
                   _%hd-pat132849%_
                   _%hd-depth*132847%_)))
              (_%else132806132822%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else132806132822%_))))))))))
                             (_%recur132667%_
                              (lambda (_%e132672%_ _%is-e?132673%_)
                                (if (_%is-e?132673%_ _%e132672%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx132619%_))
                                    (if (gx#syntax-local-pattern? _%e132672%_)
                                        (let* ((_%pat132677%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e132672%_)))
                                               (_%depth132679%_
                                                (##structure-ref
                                                 _%pat132677%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth132679%_)
                                              (values (cons 'ref _%pat132677%_)
                                                      (cons (cons _%depth132679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat132677%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat132677%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e132672%_))
                                            (values (cons 'term _%e132672%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e132672%_))
                                                (let* ((_%e132683132690%_
                                                        _%e132672%_)
                                                       (_%E132685132694%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e132683132690%_))))
                                                       (_%E132684132776%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e132683132690%_))
                      (let ((_%e132686132698%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e132683132690%_))))
                        (let ((_%hd132687132701%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132686132698%_)))
                              (_%tl132688132703%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132686132698%_))))
                          (let* ((_%hd132706%_ _%hd132687132701%_)
                                 (_%rest132708%_ _%tl132688132703%_))
                            (if (_%is-e?132673%_ _%hd132706%_)
                                (let* ((_%e132709132716%_ _%rest132708%_)
                                       (_%E132711132720%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx132619%_
                                             _%e132672%_))))
                                       (_%E132710132734%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e132709132716%_))
                                              (let ((_%e132712132724%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e132709132716%_))))
                                                (let ((_%hd132713132727%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e132712132724%_)))
                                                      (_%tl132714132729%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e132712132724%_))))
                                                  (let ((_%rest132732%_
                                                         _%hd132713132727%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl132714132729%_))
                                                        (_%recur132667%_
                                                         _%rest132732%_
                                                         false)
                                                        (_%E132711132720%_)))))
                                              (_%E132711132720%_)))))
                                  (_%E132710132734%_))
                                (let _%lp132738%_ ((_%rest132740%_
                                                    _%rest132708%_)
                                                   (_%depth132741%_ '0))
                                  (let* ((_%e132742132749%_ _%rest132740%_)
                                         (_%E132744132753%_
                                          (lambda ()
                                            (if (fxpositive? _%depth132741%_)
                                                (_%make-splice132666%_
                                                 _%e132672%_
                                                 _%depth132741%_
                                                 (_%recur132667%_
                                                  _%hd132706%_
                                                  _%is-e?132673%_)
                                                 (_%recur132667%_
                                                  _%rest132740%_
                                                  _%is-e?132673%_))
                                                (_%make-cons132665%_
                                                 (_%recur132667%_
                                                  _%hd132706%_
                                                  _%is-e?132673%_)
                                                 (_%recur132667%_
                                                  _%rest132740%_
                                                  _%is-e?132673%_)))))
                                         (_%E132743132772%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e132742132749%_))
                                                (let ((_%e132745132757%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e132742132749%_))))
                                                  (let ((_%hd132746132760%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e132745132757%_)))
                                                        (_%tl132747132762%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e132745132757%_))))
                                                    (let* ((_%rest-hd132765%_
                                                            _%hd132746132760%_)
                                                           (_%rest-tl132767%_
                                                            _%tl132747132762%_))
                                                      (if (_%is-e?132673%_
                                                           _%rest-hd132765%_)
                                                          (_%lp132738%_
                                                           _%rest-tl132767%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth132741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth132741%_)
                      (_%make-splice132666%_
                       _%e132672%_
                       _%depth132741%_
                       (_%recur132667%_ _%hd132706%_ _%is-e?132673%_)
                       (_%recur132667%_ _%rest132740%_ _%is-e?132673%_))
                      (_%make-cons132665%_
                       (_%recur132667%_ _%hd132706%_ _%is-e?132673%_)
                       (_%recur132667%_ _%rest132740%_ _%is-e?132673%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E132744132753%_)))))
                                    (_%E132743132772%_)))))))
                      (_%E132685132694%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E132684132776%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e132672%_))
                                                    (let ((_g133199_
                                                           (_%recur132667%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e132672%_)))
                    _%is-e?132673%_)))
              (begin
                (let ((_g133200_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g133199_)
                             (##values-length _g133199_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g133200_ 2)))
                      (error "Context expects 2 values" _g133200_)))
                (let ((_%e132781%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g133199_ 0)))
                      (_%vars132782%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g133199_ 1))))
                  (values (cons 'vector _%e132781%_) _%vars132782%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e132672%_))
                                                        (let ((_g133201_
                                                               (_%recur132667%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e132672%_)))
                        _%is-e?132673%_)))
                  (begin
                    (let ((_g133202_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g133201_)
                                 (##values-length _g133201_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g133202_ 2)))
                          (error "Context expects 2 values" _g133202_)))
                    (let ((_%e132785%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g133201_ 0)))
                          (_%vars132786%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g133201_ 1))))
                      (values (cons 'box _%e132785%_) _%vars132786%_))))
                (values (cons 'datum _%e132672%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g133203_
                             (_%recur132667%_ _%e132663%_ gx#ellipsis?)))
                        (begin
                          (let ((_g133204_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g133203_)
                                       (##values-length _g133203_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g133204_ 2)))
                                (error "Context expects 2 values" _g133204_)))
                          (let ((_%tree132669%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g133203_ 0)))
                                (_%vars132670%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g133203_ 1))))
                            (if (null? _%vars132670%_)
                                _%tree132669%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx132619%_
                                   _%vars132670%_))))))))))
          (let* ((_%e132623132633%_ _%stx132619%_)
                 (_%E132625132637%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx132619%_))))
                 (_%E132624132659%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e132623132633%_))
                        (let ((_%e132626132641%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e132623132633%_))))
                          (let ((_%hd132627132644%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132626132641%_)))
                                (_%tl132628132646%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132626132641%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl132628132646%_))
                                (let ((_%e132629132649%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl132628132646%_))))
                                  (let ((_%hd132630132652%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132629132649%_)))
                                        (_%tl132631132654%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132629132649%_))))
                                    (let ((_%form132657%_ _%hd132630132652%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl132631132654%_))
                                          (let ((__tmp133206
                                                 (_%generate132621%_
                                                  (_%parse132622%_
                                                   _%form132657%_)))
                                                (__tmp133205
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx132619%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp133206
                                             __tmp133205))
                                          (_%E132625132637%_)))))
                                (_%E132625132637%_))))
                        (_%E132625132637%_)))))
            (_%E132624132659%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx131868%_
               _%identifier=?131869%_
               _%unwrap-e131870%_
               _%wrap-e131871%_)
        (letrec ((_%generate-bindings131873%_
                  (lambda (_%target132483%_
                           _%ids132484%_
                           _%clauses132485%_
                           _%clause-ids132486%_
                           _%E132487%_)
                    (letrec ((_%generate1132489%_
                              (lambda (_%clause132586%_
                                       _%clause-id132587%_
                                       _%E132588%_)
                                (cons (cons _%clause-id132587%_ '())
                                      (cons (let ((__tmp133208
                                                   (cons _%target132483%_ '()))
                                                  (__tmp133207
                                                   (_%generate-clause131875%_
                                                    _%target132483%_
                                                    _%ids132484%_
                                                    _%clause132586%_
                                                    _%E132588%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp133208
                                               __tmp133207))
                                            '())))))
                      (let _%lp132491%_ ((_%rest132493%_ _%clauses132485%_)
                                         (_%rest-ids132494%_
                                          _%clause-ids132486%_)
                                         (_%bindings132495%_ '()))
                        (let* ((_%rest132496132504%_ _%rest132493%_)
                               (_%else132498132512%_
                                (lambda () _%bindings132495%_))
                               (_%K132500132574%_
                                (lambda (_%rest132515%_ _%clause132516%_)
                                  (let* ((_%rest-ids132517132524%_
                                          _%rest-ids132494%_)
                                         (_%E132519132528%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids132517132524%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K132520132562%_
                                          (lambda (_%rest-ids132531%_
                                                   _%clause-id132532%_)
                                            (let* ((_%rest-ids132533132541%_
                                                    _%rest-ids132531%_)
                                                   (_%else132535132549%_
                                                    (lambda ()
                                                      (cons (_%generate1132489%_
                                                             _%clause132516%_
                                                             _%clause-id132532%_
                                                             _%E132487%_)
                                                            _%bindings132495%_)))
                                                   (_%K132537132554%_
                                                    (lambda (_%next-clause-id132552%_)
                                                      (_%lp132491%_
                                                       _%rest132515%_
                                                       _%rest-ids132531%_
                                                       (cons (_%generate1132489%_
                                                              _%clause132516%_
                                                              _%clause-id132532%_
                                                              _%next-clause-id132552%_)
                                                             _%bindings132495%_)))))
                                              (if (pair? _%rest-ids132533132541%_)
                                                  (let* ((_%hd132538132557%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids132533132541%_)))
                                                         (_%next-clause-id132560%_
                                                          _%hd132538132557%_))
                                                    (_%K132537132554%_
                                                     _%next-clause-id132560%_))
                                                  (_%else132535132549%_))))))
                                    (if (pair? _%rest-ids132517132524%_)
                                        (let ((_%hd132521132565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids132517132524%_)))
                                              (_%tl132522132567%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids132517132524%_))))
                                          (let* ((_%clause-id132570%_
                                                  _%hd132521132565%_)
                                                 (_%rest-ids132572%_
                                                  _%tl132522132567%_))
                                            (_%K132520132562%_
                                             _%rest-ids132572%_
                                             _%clause-id132570%_)))
                                        (_%E132519132528%_))))))
                          (if (pair? _%rest132496132504%_)
                              (let ((_%hd132501132577%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest132496132504%_)))
                                    (_%tl132502132579%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest132496132504%_))))
                                (let* ((_%clause132582%_ _%hd132501132577%_)
                                       (_%rest132584%_ _%tl132502132579%_))
                                  (_%K132500132574%_
                                   _%rest132584%_
                                   _%clause132582%_)))
                              (_%else132498132512%_)))))))
                 (_%generate-body131874%_
                  (lambda (_%bindings132443%_ _%body132444%_)
                    (let _%recur132446%_ ((_%rest132448%_ _%bindings132443%_))
                      (let* ((_%rest132449132457%_ _%rest132448%_)
                             (_%else132451132465%_ (lambda () _%body132444%_))
                             (_%K132453132471%_
                              (lambda (_%rest132468%_ _%hd132469%_)
                                (let ((__tmp133210 (cons _%hd132469%_ '()))
                                      (__tmp133209
                                       (_%recur132446%_ _%rest132468%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp133210
                                   __tmp133209)))))
                        (if (pair? _%rest132449132457%_)
                            (let ((_%hd132454132474%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest132449132457%_)))
                                  (_%tl132455132476%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest132449132457%_))))
                              (let* ((_%hd132479%_ _%hd132454132474%_)
                                     (_%rest132481%_ _%tl132455132476%_))
                                (_%K132453132471%_
                                 _%rest132481%_
                                 _%hd132479%_)))
                            (_%else132451132465%_))))))
                 (_%generate-clause131875%_
                  (lambda (_%target132306%_
                           _%ids132307%_
                           _%clause132308%_
                           _%E132309%_)
                    (letrec ((_%generate1132311%_
                              (lambda (_%hd132398%_
                                       _%fender132399%_
                                       _%body132400%_)
                                (let ((_g133211_
                                       (_%parse-clause131877%_
                                        _%hd132398%_
                                        _%ids132307%_)))
                                  (begin
                                    (let ((_g133212_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g133211_)
                                                 (##values-length _g133211_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g133212_ 2)))
                                          (error "Context expects 2 values"
                                                 _g133212_)))
                                    (let ((_%e132402%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g133211_ 0)))
                                          (_%mvars132403%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g133211_ 1))))
                                      (let* ((_%pvars132405%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars132403%_))))
                                             (_%E132407%_
                                              (cons _%E132309%_
                                                    (cons _%target132306%_
                                                          '())))
                                             (_%K132440%_
                                              (let ((__tmp133213
                                                     (let ((__tmp133215
                                                            (map (lambda (_%mvar132409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar132410%_)
                           (let* ((_%mvar132411132418%_ _%mvar132409%_)
                                  (_%E132413132422%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar132411132418%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K132414132428%_
                                   (lambda (_%depth132425%_ _%id132426%_)
                                     (cons _%id132426%_
                                           (cons (let ((__tmp133217
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id132426%_)))
                                                       (__tmp133216
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar132410%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp133217
                                                    __tmp133216
                                                    _%depth132425%_))
                                                 '())))))
                             (if (pair? _%mvar132411132418%_)
                                 (let ((_%hd132415132431%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar132411132418%_)))
                                       (_%tl132416132433%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar132411132418%_))))
                                   (let* ((_%id132436%_ _%hd132415132431%_)
                                          (_%depth132438%_ _%tl132416132433%_))
                                     (_%K132414132428%_
                                      _%depth132438%_
                                      _%id132436%_)))
                                 (_%E132413132422%_))))
                         _%mvars132403%_
                         _%pvars132405%_))
                   (__tmp133214
                    (if (eq? _%fender132399%_ '#t)
                        _%body132400%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender132399%_
                           _%body132400%_
                           _%E132407%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp133215 __tmp133214))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars132405%_
                                                 __tmp133213))))
                                        (_%generate-match131876%_
                                         _%hd132398%_
                                         _%target132306%_
                                         _%e132402%_
                                         _%mvars132403%_
                                         _%K132440%_
                                         _%E132407%_))))))))
                      (let* ((_%e132312132332%_ _%clause132308%_)
                             (_%E132321132336%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e132312132332%_))))
                             (_%E132314132370%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e132312132332%_))
                                    (let ((_%e132322132340%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e132312132332%_))))
                                      (let ((_%hd132323132343%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e132322132340%_)))
                                            (_%tl132324132345%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e132322132340%_))))
                                        (let ((_%hd132348%_
                                               _%hd132323132343%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl132324132345%_))
                                              (let ((_%e132325132350%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl132324132345%_))))
                                                (let ((_%hd132326132353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e132325132350%_)))
                                                      (_%tl132327132355%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e132325132350%_))))
                                                  (let ((_%fender132358%_
                                                         _%hd132326132353%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl132327132355%_))
                                                        (let ((_%e132328132360%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl132327132355%_))))
                  (let ((_%hd132329132363%_
                         (let ()
                           (declare (not safe))
                           (##car _%e132328132360%_)))
                        (_%tl132330132365%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e132328132360%_))))
                    (let ((_%body132368%_ _%hd132329132363%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl132330132365%_))
                          (_%generate1132311%_
                           _%hd132348%_
                           _%fender132358%_
                           _%body132368%_)
                          (_%E132321132336%_)))))
                (_%E132321132336%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E132321132336%_)))))
                                    (_%E132321132336%_))))
                             (_%E132313132394%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e132312132332%_))
                                    (let ((_%e132315132374%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e132312132332%_))))
                                      (let ((_%hd132316132377%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e132315132374%_)))
                                            (_%tl132317132379%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e132315132374%_))))
                                        (let ((_%hd132382%_
                                               _%hd132316132377%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl132317132379%_))
                                              (let ((_%e132318132384%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl132317132379%_))))
                                                (let ((_%hd132319132387%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e132318132384%_)))
                                                      (_%tl132320132389%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e132318132384%_))))
                                                  (let ((_%body132392%_
                                                         _%hd132319132387%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl132320132389%_))
                                                        (_%generate1132311%_
                                                         _%hd132382%_
                                                         '#t
                                                         _%body132392%_)
                                                        (_%E132314132370%_)))))
                                              (_%E132314132370%_)))))
                                    (_%E132314132370%_)))))
                        (_%E132313132394%_)))))
                 (_%generate-match131876%_
                  (lambda (_%where132055%_
                           _%target132056%_
                           _%hd132057%_
                           _%mvars132058%_
                           _%K132059%_
                           _%E132060%_)
                    (letrec ((_%BUG132062%_
                              (lambda (_%q132304%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx131868%_
                                         _%hd132057%_
                                         _%q132304%_))))
                             (_%recur132063%_
                              (lambda (_%e132154%_
                                       _%vars132155%_
                                       _%target132156%_
                                       _%E132157%_
                                       _%k132158%_)
                                (let* ((_%e132159132166%_ _%e132154%_)
                                       (_%E132161132170%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e132159132166%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K132162132292%_
                                        (lambda (_%body132173%_ _%tag132174%_)
                                          (let ((_%$e132176%_ _%tag132174%_))
                                            (if (eq? 'any _%$e132176%_)
                                                (_%k132158%_ _%vars132155%_)
                                                (if (eq? 'id _%$e132176%_)
                                                    (let ((__tmp133222
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target132156%_)))
                                                          (__tmp133218
                                                           (let ((__tmp133220
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp133221
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e131871%_
                                    _%body132173%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?131869%_
                             __tmp133221
                             _%target132156%_)))
                         (__tmp133219 (_%k132158%_ _%vars132155%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp133220 __tmp133219 _%E132157%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp133222 __tmp133218 _%E132157%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e132176%_)
                                                        (_%k132158%_
                                                         (cons (cons _%body132173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target132156%_)
                       _%vars132155%_))
                (if (eq? 'cons _%$e132176%_)
                    (let ((_%$e132179%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd132180%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl132181%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp133228
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target132156%_)))
                            (__tmp133223
                             (let ((__tmp133227
                                    (cons (cons (cons _%$e132179%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e131870%_
                                                         _%target132156%_))
                                                      '()))
                                          '()))
                                   (__tmp133224
                                    (let ((__tmp133226
                                           (cons (cons (cons _%$hd132180%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e132179%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl132181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e132179%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp133225
                                           (let* ((_%body132182132189%_
                                                   _%body132173%_)
                                                  (_%E132184132193%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body132182132189%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K132185132201%_
                                                   (lambda (_%tl132196%_
                                                            _%hd132197%_)
                                                     (_%recur132063%_
                                                      _%hd132197%_
                                                      _%vars132155%_
                                                      _%$hd132180%_
                                                      _%E132157%_
                                                      (lambda (_%vars132199%_)
                                                        (_%recur132063%_
                                                         _%tl132196%_
                                                         _%vars132199%_
                                                         _%$tl132181%_
                                                         _%E132157%_
                                                         _%k132158%_))))))
                                             (if (pair? _%body132182132189%_)
                                                 (let ((_%hd132186132204%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body132182132189%_)))
                                                       (_%tl132187132206%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body132182132189%_))))
                                                   (let* ((_%hd132209%_
                                                           _%hd132186132204%_)
                                                          (_%tl132211%_
                                                           _%tl132187132206%_))
                                                     (_%K132185132201%_
                                                      _%tl132211%_
                                                      _%hd132209%_)))
                                                 (_%E132184132193%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp133226
                                       __tmp133225))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp133227
                                __tmp133224))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp133228
                         __tmp133223
                         _%E132157%_)))
                    (if (eq? 'splice _%$e132176%_)
                        (let* ((_%body132212132219%_ _%body132173%_)
                               (_%E132214132223%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body132212132219%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K132215132274%_
                                (lambda (_%tl132226%_ _%hd132227%_)
                                  (let* ((_%rlen132229%_
                                          (_%splice-rlen132064%_ _%tl132226%_))
                                         (_%$target132231%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd132233%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl132235%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp132237%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e132239%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd132241%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl132243%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars132245%_
                                          (_%splice-vars132065%_ _%hd132227%_))
                                         (_%lvars132247%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars132245%_)))
                                         (_%tlvars132249%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars132245%_)))
                                         (_%linit132253%_
                                          (map (lambda (_%var132251%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars132247%_)))
                                    (letrec ((_%make-loop132256%_
                                              (lambda (_%vars132260%_)
                                                (let ((__tmp133230
                                                       (cons (cons (cons _%$lp132237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp133243
                                        (cons _%$hd132233%_ _%lvars132247%_))
                                       (__tmp133231
                                        (let ((__tmp133242
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd132233%_)))
                                              (__tmp133236
                                               (let ((__tmp133241
                                                      (cons (cons (cons _%$lp-e132239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e131870%_
                                   _%$hd132233%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp133237
                                                      (let ((__tmp133240
                                                             (cons (cons (cons _%$lp-hd132241%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e132239%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl132243%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e132239%_))
                                             '()))
                                 '())))
                    (__tmp133238
                     (_%recur132063%_
                      _%hd132227%_
                      '()
                      _%$lp-hd132241%_
                      _%E132157%_
                      (lambda (_%hdvars132262%_)
                        (cons _%$lp132237%_
                              (cons _%$lp-tl132243%_
                                    (map (lambda (_%svar132264%_
                                                  _%lvar132265%_)
                                           (let ((__tmp133239
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar132264%_
                                                     _%hdvars132262%_
                                                     _%BUG132062%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp133239
                                              _%lvar132265%_)))
                                         _%svars132245%_
                                         _%lvars132247%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp133240 __tmp133238))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp133241
                                                  __tmp133237)))
                                              (__tmp133232
                                               (let ((__tmp133235
                                                      (map (lambda (_%lvar132267%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar132268%_)
                     (cons (cons _%tlvar132268%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar132267%_))
                                 '())))
                   _%lvars132247%_
                   _%tlvars132249%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp133233
                                                      (_%k132158%_
                                                       (let ((__tmp133234
                                                              (lambda (_%svar132270%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar132271%_
                               _%r132272%_)
                        (cons (cons _%svar132270%_ _%tlvar132271%_)
                              _%r132272%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp133234
                  _%vars132260%_
                  _%svars132245%_
                  _%tlvars132249%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp133235
                                                  __tmp133233))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp133242
                                           __tmp133236
                                           __tmp133232))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp133243
                                    __tmp133231))
                                 '()))
                     '()))
              (__tmp133229
               (cons _%$lp132237%_ (cons _%$target132231%_ _%linit132253%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp133230
                                                   __tmp133229)))))
                                      (let ((_%body132258%_
                                             (let ((__tmp133245
                                                    (cons (cons (cons _%$target132231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl132235%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target132156%_
                                 _%rlen132229%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp133244
                                                    (_%recur132063%_
                                                     _%tl132226%_
                                                     _%vars132155%_
                                                     _%$tl132235%_
                                                     _%E132157%_
                                                     _%make-loop132256%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp133245
                                                __tmp133244))))
                                        (let ((__tmp133249
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target132156%_)))
                                              (__tmp133246
                                               (if (zero? _%rlen132229%_)
                                                   _%body132258%_
                                                   (let ((__tmp133247
                                                          (let ((__tmp133248
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target132156%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp133248 _%rlen132229%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp133247
                                                      _%body132258%_
                                                      _%E132157%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp133249
                                           __tmp133246
                                           _%E132157%_))))))))
                          (if (pair? _%body132212132219%_)
                              (let ((_%hd132216132277%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body132212132219%_)))
                                    (_%tl132217132279%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body132212132219%_))))
                                (let* ((_%hd132282%_ _%hd132216132277%_)
                                       (_%tl132284%_ _%tl132217132279%_))
                                  (_%K132215132274%_
                                   _%tl132284%_
                                   _%hd132282%_)))
                              (_%E132214132223%_)))
                        (if (eq? 'null _%$e132176%_)
                            (let ((__tmp133251
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target132156%_)))
                                  (__tmp133250 (_%k132158%_ _%vars132155%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp133251
                               __tmp133250
                               _%E132157%_))
                            (if (eq? 'vector _%$e132176%_)
                                (let ((_%$e132286%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp133256
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target132156%_)))
                                        (__tmp133252
                                         (let ((__tmp133254
                                                (cons (cons (cons _%$e132286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp133255
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e131870%_
                                    _%target132156%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp133255))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp133253
                                                (_%recur132063%_
                                                 _%body132173%_
                                                 _%vars132155%_
                                                 _%$e132286%_
                                                 _%E132157%_
                                                 _%k132158%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp133254
                                            __tmp133253))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp133256
                                     __tmp133252
                                     _%E132157%_)))
                                (if (eq? 'box _%$e132176%_)
                                    (let ((_%$e132288%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp133261
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target132156%_)))
                                            (__tmp133257
                                             (let ((__tmp133259
                                                    (cons (cons (cons _%$e132288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp133260
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e131870%_
                                        _%target132156%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp133260))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp133258
                                                    (_%recur132063%_
                                                     _%body132173%_
                                                     _%vars132155%_
                                                     _%$e132288%_
                                                     _%E132157%_
                                                     _%k132158%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp133259
                                                __tmp133258))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp133261
                                         __tmp133257
                                         _%E132157%_)))
                                    (if (eq? 'datum _%$e132176%_)
                                        (let ((_%$e132290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp133267
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target132156%_)))
                                                (__tmp133262
                                                 (let ((__tmp133266
                                                        (cons (cons (cons _%$e132290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target132156%_))
                                  '()))
                      '()))
               (__tmp133263
                (let ((__tmp133265
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e132290%_ _%body132173%_)))
                      (__tmp133264 (_%k132158%_ _%vars132155%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp133265 __tmp133264 _%E132157%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp133266
                                                    __tmp133263))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp133267
                                             __tmp133262
                                             _%E132157%_)))
                                        (_%BUG132062%_
                                         _%e132154%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e132159132166%_)
                                      (let ((_%hd132163132295%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e132159132166%_)))
                                            (_%tl132164132297%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e132159132166%_))))
                                        (let* ((_%tag132300%_
                                                _%hd132163132295%_)
                                               (_%body132302%_
                                                _%tl132164132297%_))
                                          (_%K132162132292%_
                                           _%body132302%_
                                           _%tag132300%_)))
                                      (_%E132161132170%_)))))
                             (_%splice-rlen132064%_
                              (lambda (_%e132116%_)
                                (let _%lp132118%_ ((_%e132120%_ _%e132116%_)
                                                   (_%n132121%_ '0))
                                  (let* ((_%e132122132129%_ _%e132120%_)
                                         (_%E132124132133%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e132122132129%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K132125132142%_
                                          (lambda (_%body132136%_
                                                   _%tag132137%_)
                                            (let ((_%$e132139%_ _%tag132137%_))
                                              (if (eq? 'splice _%$e132139%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx131868%_
                                                     _%where132055%_))
                                                  (if (eq? 'cons _%$e132139%_)
                                                      (_%lp132118%_
                                                       (cdr _%body132136%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n132121%_
                                                                '1)))
                                                      _%n132121%_))))))
                                    (if (pair? _%e132122132129%_)
                                        (let ((_%hd132126132145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132122132129%_)))
                                              (_%tl132127132147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132122132129%_))))
                                          (let* ((_%tag132150%_
                                                  _%hd132126132145%_)
                                                 (_%body132152%_
                                                  _%tl132127132147%_))
                                            (_%K132125132142%_
                                             _%body132152%_
                                             _%tag132150%_)))
                                        (_%E132124132133%_))))))
                             (_%splice-vars132065%_
                              (lambda (_%e132072%_)
                                (let _%recur132074%_ ((_%e132076%_ _%e132072%_)
                                                      (_%vars132077%_ '()))
                                  (let* ((_%e132078132085%_ _%e132076%_)
                                         (_%E132080132089%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e132078132085%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K132081132104%_
                                          (lambda (_%body132092%_
                                                   _%tag132093%_)
                                            (let ((_%$e132095%_ _%tag132093%_))
                                              (if (eq? 'var _%$e132095%_)
                                                  (cons _%body132092%_
                                                        _%vars132077%_)
                                                  (if (or (eq? 'cons
                                                               _%$e132095%_)
                                                          (eq? 'splice
                                                               _%$e132095%_))
                                                      (_%recur132074%_
                                                       (cdr _%body132092%_)
                                                       (_%recur132074%_
                                                        (car _%body132092%_)
                                                        _%vars132077%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e132095%_)
                      (eq? 'box _%$e132095%_))
                  (_%recur132074%_ _%body132092%_ _%vars132077%_)
                  _%vars132077%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e132078132085%_)
                                        (let ((_%hd132082132107%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132078132085%_)))
                                              (_%tl132083132109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132078132085%_))))
                                          (let* ((_%tag132112%_
                                                  _%hd132082132107%_)
                                                 (_%body132114%_
                                                  _%tl132083132109%_))
                                            (_%K132081132104%_
                                             _%body132114%_
                                             _%tag132112%_)))
                                        (_%E132080132089%_))))))
                             (_%make-body132066%_
                              (lambda (_%vars132068%_)
                                (cons _%K132059%_
                                      (map (lambda (_%mvar132070%_)
                                             (let ((__tmp133268
                                                    (car _%mvar132070%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp133268
                                                _%vars132068%_
                                                _%BUG132062%_)))
                                           _%mvars132058%_)))))
                      (_%recur132063%_
                       _%hd132057%_
                       '()
                       _%target132056%_
                       _%E132060%_
                       _%make-body132066%_))))
                 (_%parse-clause131877%_
                  (lambda (_%hd131949%_ _%ids131950%_)
                    (let _%recur131952%_ ((_%e131954%_ _%hd131949%_)
                                          (_%vars131955%_ '())
                                          (_%depth131956%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e131954%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e131954%_))
                              (values '(any) _%vars131955%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e131954%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx131868%_
                                     _%hd131949%_))
                                  (if (let ((__tmp133269
                                             (lambda (_%id131961%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e131954%_
                                                  _%id131961%_)))))
                                        (declare (not safe))
                                        (__find __tmp133269 _%ids131950%_))
                                      (values (cons 'id _%e131954%_)
                                              _%vars131955%_)
                                      (if (let ((__tmp133270
                                                 (lambda (_%var131964%_)
                                                   (let ((__tmp133271
                                                          (car _%var131964%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e131954%_
                                                      __tmp133271)))))
                                            (declare (not safe))
                                            (__find __tmp133270
                                                    _%vars131955%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx131868%_
                                             _%e131954%_))
                                          (values (cons 'var _%e131954%_)
                                                  (cons (cons _%e131954%_
                                                              _%depth131956%_)
                                                        _%vars131955%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e131954%_))
                              (let* ((_%e131968131975%_ _%e131954%_)
                                     (_%E131970131979%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e131968131975%_))))
                                     (_%E131969132040%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e131968131975%_))
                                            (let ((_%e131971131983%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e131968131975%_))))
                                              (let ((_%hd131972131986%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e131971131983%_)))
                                                    (_%tl131973131988%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e131971131983%_))))
                                                (let* ((_%hd131991%_
                                                        _%hd131972131986%_)
                                                       (_%rest131993%_
                                                        _%tl131973131988%_)
                                                       (_%make-pair132008%_
                                                        (lambda (_%tag131995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd131996%_
                         _%tl131997%_)
                  (let* ((_%hd-depth131999%_
                          (if (eq? _%tag131995%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth131956%_ '1))
                              _%depth131956%_))
                         (_g133272_
                          (_%recur131952%_
                           _%hd131996%_
                           _%vars131955%_
                           _%hd-depth131999%_)))
                    (begin
                      (let ((_g133273_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g133272_)
                                   (##values-length _g133272_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g133273_ 2)))
                            (error "Context expects 2 values" _g133273_)))
                      (let ((_%hd132001%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g133272_ 0)))
                            (_%vars132002%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g133272_ 1))))
                        (let ((_g133274_
                               (_%recur131952%_
                                _%tl131997%_
                                _%vars132002%_
                                _%depth131956%_)))
                          (begin
                            (let ((_g133275_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g133274_)
                                         (##values-length _g133274_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g133275_ 2)))
                                  (error "Context expects 2 values"
                                         _g133275_)))
                            (let ((_%tl132004%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g133274_ 0)))
                                  (_%vars132005%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g133274_ 1))))
                              (values (cons _%tag131995%_
                                            (cons _%hd132001%_ _%tl132004%_))
                                      _%vars132005%_)))))))))
               (_%e132009132016%_ _%rest131993%_)
               (_%E132011132020%_
                (lambda ()
                  (_%make-pair132008%_ 'cons _%hd131991%_ _%rest131993%_)))
               (_%E132010132036%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e132009132016%_))
                      (let ((_%e132012132024%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e132009132016%_))))
                        (let ((_%hd132013132027%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132012132024%_)))
                              (_%tl132014132029%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132012132024%_))))
                          (let* ((_%rest-hd132032%_ _%hd132013132027%_)
                                 (_%rest-tl132034%_ _%tl132014132029%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd132032%_))
                                (_%make-pair132008%_
                                 'splice
                                 _%hd131991%_
                                 _%rest-tl132034%_)
                                (_%make-pair132008%_
                                 'cons
                                 _%hd131991%_
                                 _%rest131993%_)))))
                      (_%E132011132020%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E132010132036%_))))
                                            (_%E131970131979%_)))))
                                (_%E131969132040%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e131954%_))
                                  (values '(null) _%vars131955%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e131954%_))
                                      (let ((_g133276_
                                             (_%recur131952%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e131954%_)))
                                              _%vars131955%_
                                              _%depth131956%_)))
                                        (begin
                                          (let ((_g133277_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g133276_)
                                                       (##values-length
                                                        _g133276_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g133277_ 2)))
                                                (error "Context expects 2 values"
                                                       _g133277_)))
                                          (let ((_%e132046%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g133276_ 0)))
                                                (_%vars132047%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g133276_
                                                    1))))
                                            (values (cons 'vector _%e132046%_)
                                                    _%vars132047%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e131954%_))
                                          (let ((_g133278_
                                                 (_%recur131952%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e131954%_)))
                                                  _%vars131955%_
                                                  _%depth131956%_)))
                                            (begin
                                              (let ((_g133279_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g133278_)
                                                           (##values-length
                                                            _g133278_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g133279_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g133279_)))
                                              (let ((_%e132050%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g133278_
                                                        0)))
                                                    (_%vars132051%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g133278_
                                                        1))))
                                                (values (cons 'box _%e132050%_)
                                                        _%vars132051%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e131954%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e131954%_)))
                                                      _%vars131955%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx131868%_
                                                 _%e131954%_))))))))))))
          (let* ((_%e131878131891%_ _%stx131868%_)
                 (_%E131880131895%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e131878131891%_))))
                 (_%E131879131945%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e131878131891%_))
                        (let ((_%e131881131899%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e131878131891%_))))
                          (let ((_%hd131882131902%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131881131899%_)))
                                (_%tl131883131904%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131881131899%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl131883131904%_))
                                (let ((_%e131884131907%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl131883131904%_))))
                                  (let ((_%hd131885131910%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e131884131907%_)))
                                        (_%tl131886131912%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e131884131907%_))))
                                    (let ((_%expr131915%_ _%hd131885131910%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl131886131912%_))
                                          (let ((_%e131887131917%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl131886131912%_))))
                                            (let ((_%hd131888131920%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e131887131917%_)))
                                                  (_%tl131889131922%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e131887131917%_))))
                                              (let* ((_%ids131925%_
                                                      _%hd131888131920%_)
                                                     (_%clauses131927%_
                                                      _%tl131889131922%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids131925%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses131927%_))
                                                        (let* ((_%ids131932%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids131925%_)))
                       (_%clauses131934%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses131927%_)))
                       (_%clause-ids131936%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses131934%_)))
                       (_%E131938%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target131940%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first131942%_
                        (if (null? _%clauses131934%_)
                            _%E131938%_
                            (car _%clause-ids131936%_))))
                  (let ((__tmp133281
                         (let ((__tmp133282
                                (let ((__tmp133284
                                       (let ((__tmp133286
                                              (cons (cons (cons _%E131938%_
                                                                '())
                                                          (cons (let ((__tmp133288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target131940%_ '()))
                              (__tmp133287
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target131940%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp133288 __tmp133287))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp133285
                                              (_%generate-body131874%_
                                               (_%generate-bindings131873%_
                                                _%target131940%_
                                                _%ids131932%_
                                                _%clauses131934%_
                                                _%clause-ids131936%_
                                                _%E131938%_)
                                               (cons _%first131942%_
                                                     (cons _%expr131915%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp133286
                                          __tmp133285)))
                                      (__tmp133283
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx131868%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp133284
                                   __tmp133283))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp133282)))
                        (__tmp133280
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx131868%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp133281 __tmp133280)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx131868%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx131868%_
                                                       _%ids131925%_))))))
                                          (_%E131880131895%_)))))
                                (_%E131880131895%_))))
                        (_%E131880131895%_)))))
            (_%E131879131945%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx132593%_)
        (let* ((_%identifier=?132595%_ 'free-identifier=?)
               (_%unwrap-e132597%_ 'syntax-e)
               (_%wrap-e132599%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx132593%_
           _%identifier=?132595%_
           _%unwrap-e132597%_
           _%wrap-e132599%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx132601%_ _%identifier=?132602%_)
        (let* ((_%unwrap-e132604%_ 'syntax-e) (_%wrap-e132606%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx132601%_
           _%identifier=?132602%_
           _%unwrap-e132604%_
           _%wrap-e132606%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx132608%_ _%identifier=?132609%_ _%unwrap-e132610%_)
        (let ((_%wrap-e132612%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx132608%_
           _%identifier=?132609%_
           _%unwrap-e132610%_
           _%wrap-e132612%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g133290_
        (let ((_g133289_ (let () (declare (not safe)) (##length _g133290_))))
          (cond ((let () (declare (not safe)) (##fx= _g133289_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g133290_))
                ((let () (declare (not safe)) (##fx= _g133289_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g133290_))
                ((let () (declare (not safe)) (##fx= _g133289_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g133290_))
                ((let () (declare (not safe)) (##fx= _g133289_ 4))
                 (apply gx#macro-expand-syntax-case__% _g133290_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g133290_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx131865%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx131865%_))
            (let ((__tmp133291
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx131865%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp133291 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd131823%_ . _%rest131824%_)
        (let ((_%len131826%_ (length _%hd131823%_)))
          (let _%lp131828%_ ((_%rest131830%_ _%rest131824%_))
            (let* ((_%rest131831131839%_ _%rest131830%_)
                   (_%else131833131847%_ (lambda () '#!void))
                   (_%K131835131853%_
                    (lambda (_%rest131850%_ _%hd131851%_)
                      (if (let ((__tmp133292 (length _%hd131851%_)))
                            (declare (not safe))
                            (##fx= _%len131826%_ __tmp133292))
                          (_%lp131828%_ _%rest131850%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd131851%_))))))
              (if (pair? _%rest131831131839%_)
                  (let ((_%hd131836131856%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest131831131839%_)))
                        (_%tl131837131858%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest131831131839%_))))
                    (let* ((_%hd131861%_ _%hd131836131856%_)
                           (_%rest131863%_ _%tl131837131858%_))
                      (_%K131835131853%_ _%rest131863%_ _%hd131861%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx131778%_ _%n131779%_)
        (let _%lp131781%_ ((_%rest131783%_ _%stx131778%_) (_%r131784%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest131783%_))
              (let* ((_%g131785131792%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest131783%_)))
                     (_%E131787131796%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g131785131792%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K131788131802%_
                      (lambda (_%rest131799%_ _%hd131800%_)
                        (_%lp131781%_
                         _%rest131799%_
                         (cons _%hd131800%_ _%r131784%_)))))
                (if (pair? _%g131785131792%_)
                    (let ((_%hd131789131805%_
                           (let ()
                             (declare (not safe))
                             (##car _%g131785131792%_)))
                          (_%tl131790131807%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g131785131792%_))))
                      (let* ((_%hd131810%_ _%hd131789131805%_)
                             (_%rest131812%_ _%tl131790131807%_))
                        (_%K131788131802%_ _%rest131812%_ _%hd131810%_)))
                    (_%E131787131796%_)))
              (let _%lp131814%_ ((_%n131816%_ _%n131779%_)
                                 (_%l131817%_ _%r131784%_)
                                 (_%r131818%_ _%rest131783%_))
                (if (null? _%l131817%_)
                    (values _%l131817%_ _%r131818%_)
                    (if (fxpositive? _%n131816%_)
                        (_%lp131814%_
                         (let () (declare (not safe)) (##fx- _%n131816%_ '1))
                         (cdr _%l131817%_)
                         (cons (car _%l131817%_) _%r131818%_))
                        (values (reverse _%l131817%_) _%r131818%_))))))))))
