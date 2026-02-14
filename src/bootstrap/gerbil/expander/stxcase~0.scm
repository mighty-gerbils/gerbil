(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1771101403)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp189994 (list gx#expander::t))
            (__tmp189993 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp189994
         '(id depth)
         __tmp189993
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args189990%_
        (apply make-instance gx#syntax-pattern::t _%$args189990%_)))
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
      (lambda (_%self189976%_ _%stx189977%_)
        (let ((_%self189980%_ _%self189976%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx189977%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx189443%_)
        (letrec ((_%generate189445%_
                  (lambda (_%e189685%_)
                    (letrec ((_%BUG189687%_
                              (lambda (_%q189852%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx189443%_
                                         _%e189685%_
                                         _%q189852%_))))
                             (_%local-pattern-e189688%_
                              (lambda (_%pat189850%_)
                                (let ((__tmp189995
                                       (##structure-ref
                                        _%pat189850%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp189995))))
                             (_%getvar189689%_
                              (lambda (_%q189847%_ _%vars189848%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q189847%_
                                   _%vars189848%_
                                   _%BUG189687%_))))
                             (_%getarg189690%_
                              (lambda (_%arg189813%_ _%vars189814%_)
                                (let* ((_%arg189815189822%_ _%arg189813%_)
                                       (_%E189817189826%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg189815189822%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K189818189835%_
                                        (lambda (_%e189829%_ _%tag189830%_)
                                          (let ((_%$e189832%_ _%tag189830%_))
                                            (if (eq? 'ref _%$e189832%_)
                                                (_%getvar189689%_
                                                 _%e189829%_
                                                 _%vars189814%_)
                                                (if (eq? 'pattern _%$e189832%_)
                                                    (_%local-pattern-e189688%_
                                                     _%e189829%_)
                                                    (_%BUG189687%_
                                                     _%arg189813%_)))))))
                                  (if (pair? _%arg189815189822%_)
                                      (let ((_%hd189819189838%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg189815189822%_)))
                                            (_%tl189820189840%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg189815189822%_))))
                                        (let* ((_%tag189843%_
                                                _%hd189819189838%_)
                                               (_%e189845%_
                                                _%tl189820189840%_))
                                          (_%K189818189835%_
                                           _%e189845%_
                                           _%tag189843%_)))
                                      (_%E189817189826%_))))))
                      (let _%recur189692%_ ((_%e189694%_ _%e189685%_)
                                            (_%vars189695%_ '()))
                        (let* ((_%e189696189703%_ _%e189694%_)
                               (_%E189698189707%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e189696189703%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K189699189801%_
                                (lambda (_%body189710%_ _%tag189711%_)
                                  (let ((_%$e189713%_ _%tag189711%_))
                                    (if (eq? 'datum _%$e189713%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body189710%_))
                                        (if (eq? 'term _%$e189713%_)
                                            (let ((_%id189716%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body189710%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id189716%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks189719%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id189716%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks189719%_)
                                                        (let ((__tmp189996
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body189710%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp189996))
                (let ((__tmp189998
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body189710%_)))
                      (__tmp189997
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body189710%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp189998
                   __tmp189997
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id189716%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body189710%_))
                                                      (_%BUG189687%_
                                                       _%e189694%_))))
                                            (if (eq? 'pattern _%$e189713%_)
                                                (_%local-pattern-e189688%_
                                                 _%body189710%_)
                                                (if (eq? 'ref _%$e189713%_)
                                                    (_%getvar189689%_
                                                     _%body189710%_
                                                     _%vars189695%_)
                                                    (if (eq? 'cons
                                                             _%$e189713%_)
                                                        (let ((__tmp190000
                                                               (_%recur189692%_
                                                                (car _%body189710%_)
                                                                _%vars189695%_))
                                                              (__tmp189999
                                                               (_%recur189692%_
                                                                (cdr _%body189710%_)
                                                                _%vars189695%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp190000
                                                           __tmp189999))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e189713%_)
                    (let ((__tmp190001
                           (_%recur189692%_ _%body189710%_ _%vars189695%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp190001))
                    (if (eq? 'box _%$e189713%_)
                        (let ((__tmp190002
                               (_%recur189692%_
                                _%body189710%_
                                _%vars189695%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp190002))
                        (if (eq? 'splice _%$e189713%_)
                            (let* ((_%body189722189733%_ _%body189710%_)
                                   (_%E189724189737%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body189722189733%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K189725189775%_
                                    (lambda (_%args189740%_
                                             _%iv189741%_
                                             _%hd189742%_
                                             _%depth189743%_)
                                      (let* ((_%targets189749%_
                                              (map (lambda (_%g189744189746%_)
                                                     (_%getarg189690%_
                                                      _%g189744189746%_
                                                      _%vars189695%_))
                                                   _%args189740%_))
                                             (_%fold-in189751%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args189740%_)))
                                             (_%fold-out189753%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args189755%_
                                              (let ((__tmp190003
                                                     (cons _%fold-out189753%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp190003
                                                 _%fold-in189751%_)))
                                             (_%lambda-body189772%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth189743%_ '1))
                                                  (let ((_%r-args189763%_
                                                         (map (lambda (_%arg189757%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg189757%_)))
                      _%args189740%_))
                (_%r-vars189764%_
                 (let ((__tmp190004
                        (lambda (_%arg189759%_ _%var189760%_ _%r189761%_)
                          (cons (cons (cdr _%arg189759%_) _%var189760%_)
                                _%r189761%_))))
                   (declare (not safe))
                   (foldr__1
                    __tmp190004
                    _%vars189695%_
                    _%args189740%_
                    _%fold-in189751%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur189692%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth189743%_ '1))
                         (cons _%hd189742%_
                               (cons (cons 'var _%fold-out189753%_)
                                     _%r-args189763%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars189764%_))
                                                  (let* ((_%hd-vars189770%_
                                                          (let ((__tmp190005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg189766%_ _%var189767%_ _%r189768%_)
                           (cons (cons (cdr _%arg189766%_) _%var189767%_)
                                 _%r189768%_))))
                    (declare (not safe))
                    (foldr__1
                     __tmp190005
                     _%vars189695%_
                     _%args189740%_
                     _%fold-in189751%_)))
                 (__tmp190006
                  (_%recur189692%_ _%hd189742%_ _%hd-vars189770%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp190006
                                                     _%fold-out189753%_)))))
                                        (let ((__tmp190010
                                               (if (let ((__tmp190011
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets189749%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp190011 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets189749%_))
                                                   '#!void))
                                              (__tmp190007
                                               (let ((__tmp190009
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args189755%_
                                                         _%lambda-body189772%_)))
                                                     (__tmp190008
                                                      (_%recur189692%_
                                                       _%iv189741%_
                                                       _%vars189695%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp190009
                                                  __tmp190008
                                                  _%targets189749%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp190010
                                           __tmp190007))))))
                              (if (pair? _%body189722189733%_)
                                  (let ((_%hd189726189778%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body189722189733%_)))
                                        (_%tl189727189780%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body189722189733%_))))
                                    (let ((_%depth189783%_ _%hd189726189778%_))
                                      (if (pair? _%tl189727189780%_)
                                          (let ((_%hd189728189785%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl189727189780%_)))
                                                (_%tl189729189787%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl189727189780%_))))
                                            (let ((_%hd189790%_
                                                   _%hd189728189785%_))
                                              (if (pair? _%tl189729189787%_)
                                                  (let ((_%hd189730189792%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl189729189787%_)))
                                                        (_%tl189731189794%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl189729189787%_))))
                                                    (let* ((_%iv189797%_
                                                            _%hd189730189792%_)
                                                           (_%args189799%_
                                                            _%tl189731189794%_))
                                                      (_%K189725189775%_
                                                       _%args189799%_
                                                       _%iv189797%_
                                                       _%hd189790%_
                                                       _%depth189783%_)))
                                                  (_%E189724189737%_))))
                                          (_%E189724189737%_))))
                                  (_%E189724189737%_)))
                            (if (eq? 'var _%$e189713%_)
                                _%body189710%_
                                (_%BUG189687%_ _%e189694%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e189696189703%_)
                              (let ((_%hd189700189804%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e189696189703%_)))
                                    (_%tl189701189806%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e189696189703%_))))
                                (let* ((_%tag189809%_ _%hd189700189804%_)
                                       (_%body189811%_ _%tl189701189806%_))
                                  (_%K189699189801%_
                                   _%body189811%_
                                   _%tag189809%_)))
                              (_%E189698189707%_)))))))
                 (_%parse189446%_
                  (lambda (_%e189487%_)
                    (letrec ((_%make-cons189489%_
                              (lambda (_%hd189677%_ _%tl189678%_)
                                (let ((_g190012_ _%hd189677%_)
                                      (_g190014_ _%tl189678%_))
                                  (begin
                                    (let ((_g190013_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190012_)
                                                 (##values-length _g190012_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190013_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190013_)))
                                    (let ((_g190015_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190014_)
                                                 (##values-length _g190014_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190015_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190015_)))
                                    (let ((_%hd-e189680%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190012_ 0)))
                                          (_%hd-vars189681%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190012_ 1))))
                                      (let ((_%tl-e189682%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g190014_ 0)))
                                            (_%tl-vars189683%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g190014_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e189680%_
                                                            _%tl-e189682%_))
                                                (append _%hd-vars189681%_
                                                        _%tl-vars189683%_))))))))
                             (_%make-splice189490%_
                              (lambda (_%where189613%_
                                       _%depth189614%_
                                       _%hd189615%_
                                       _%tl189616%_)
                                (let ((_g190016_ _%hd189615%_)
                                      (_g190018_ _%tl189616%_))
                                  (begin
                                    (let ((_g190017_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190016_)
                                                 (##values-length _g190016_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190017_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190017_)))
                                    (let ((_g190019_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190018_)
                                                 (##values-length _g190018_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190019_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190019_)))
                                    (let ((_%hd-e189618%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190016_ 0)))
                                          (_%hd-vars189619%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190016_ 1))))
                                      (let ((_%tl-e189620%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g190018_ 0)))
                                            (_%tl-vars189621%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g190018_ 1))))
                                        (let _%lp189623%_ ((_%rest189625%_
                                                            _%hd-vars189619%_)
                                                           (_%targets189626%_
                                                            '())
                                                           (_%vars189627%_
                                                            _%tl-vars189621%_))
                                          (let* ((_%rest189628189638%_
                                                  _%rest189625%_)
                                                 (_%else189630189646%_
                                                  (lambda ()
                                                    (if (null? _%targets189626%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx189443%_
                                                           _%where189613%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth189614%_
                                    (cons _%hd-e189618%_
                                          (cons _%tl-e189620%_
                                                _%targets189626%_))))
                        _%vars189627%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K189632189658%_
                                                  (lambda (_%rest189649%_
                                                           _%hd-pat189650%_
                                                           _%hd-depth*189651%_)
                                                    (let ((_%hd-depth189653%_
                                                           (fx- _%hd-depth*189651%_
                                                                _%depth189614%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth189653%_))
                                                          (_%lp189623%_
                                                           _%rest189649%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat189650%_)
                         _%targets189626%_)
                   (cons (cons _%hd-depth189653%_ _%hd-pat189650%_)
                         _%vars189627%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth189653%_))
                      (_%lp189623%_
                       _%rest189649%_
                       (cons (cons 'pattern _%hd-pat189650%_)
                             _%targets189626%_)
                       _%vars189627%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx189443%_
                         _%where189613%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest189628189638%_)
                                                (let ((_%hd189633189661%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest189628189638%_)))
                                                      (_%tl189634189663%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest189628189638%_))))
                                                  (if (pair? _%hd189633189661%_)
                                                      (let ((_%hd189635189666%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd189633189661%_)))
                    (_%tl189636189668%_
                     (let () (declare (not safe)) (##cdr _%hd189633189661%_))))
                (let* ((_%hd-depth*189671%_ _%hd189635189666%_)
                       (_%hd-pat189673%_ _%tl189636189668%_)
                       (_%rest189675%_ _%tl189634189663%_))
                  (_%K189632189658%_
                   _%rest189675%_
                   _%hd-pat189673%_
                   _%hd-depth*189671%_)))
              (_%else189630189646%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else189630189646%_))))))))))
                             (_%recur189491%_
                              (lambda (_%e189496%_ _%is-e?189497%_)
                                (if (_%is-e?189497%_ _%e189496%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx189443%_))
                                    (if (gx#syntax-local-pattern? _%e189496%_)
                                        (let* ((_%pat189501%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e189496%_)))
                                               (_%depth189503%_
                                                (##structure-ref
                                                 _%pat189501%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth189503%_)
                                              (values (cons 'ref _%pat189501%_)
                                                      (cons (cons _%depth189503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat189501%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat189501%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e189496%_))
                                            (values (cons 'term _%e189496%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e189496%_))
                                                (let* ((_%e189507189514%_
                                                        _%e189496%_)
                                                       (_%E189509189518%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e189507189514%_))))
                                                       (_%E189508189600%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e189507189514%_))
                      (let ((_%e189510189522%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e189507189514%_))))
                        (let ((_%hd189511189525%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189510189522%_)))
                              (_%tl189512189527%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189510189522%_))))
                          (let* ((_%hd189530%_ _%hd189511189525%_)
                                 (_%rest189532%_ _%tl189512189527%_))
                            (if (_%is-e?189497%_ _%hd189530%_)
                                (let* ((_%e189533189540%_ _%rest189532%_)
                                       (_%E189535189544%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx189443%_
                                             _%e189496%_))))
                                       (_%E189534189558%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e189533189540%_))
                                              (let ((_%e189536189548%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e189533189540%_))))
                                                (let ((_%hd189537189551%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e189536189548%_)))
                                                      (_%tl189538189553%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e189536189548%_))))
                                                  (let ((_%rest189556%_
                                                         _%hd189537189551%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl189538189553%_))
                                                        (_%recur189491%_
                                                         _%rest189556%_
                                                         false)
                                                        (_%E189535189544%_)))))
                                              (_%E189535189544%_)))))
                                  (_%E189534189558%_))
                                (let _%lp189562%_ ((_%rest189564%_
                                                    _%rest189532%_)
                                                   (_%depth189565%_ '0))
                                  (let* ((_%e189566189573%_ _%rest189564%_)
                                         (_%E189568189577%_
                                          (lambda ()
                                            (if (fxpositive? _%depth189565%_)
                                                (_%make-splice189490%_
                                                 _%e189496%_
                                                 _%depth189565%_
                                                 (_%recur189491%_
                                                  _%hd189530%_
                                                  _%is-e?189497%_)
                                                 (_%recur189491%_
                                                  _%rest189564%_
                                                  _%is-e?189497%_))
                                                (_%make-cons189489%_
                                                 (_%recur189491%_
                                                  _%hd189530%_
                                                  _%is-e?189497%_)
                                                 (_%recur189491%_
                                                  _%rest189564%_
                                                  _%is-e?189497%_)))))
                                         (_%E189567189596%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e189566189573%_))
                                                (let ((_%e189569189581%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e189566189573%_))))
                                                  (let ((_%hd189570189584%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e189569189581%_)))
                                                        (_%tl189571189586%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e189569189581%_))))
                                                    (let* ((_%rest-hd189589%_
                                                            _%hd189570189584%_)
                                                           (_%rest-tl189591%_
                                                            _%tl189571189586%_))
                                                      (if (_%is-e?189497%_
                                                           _%rest-hd189589%_)
                                                          (_%lp189562%_
                                                           _%rest-tl189591%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth189565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth189565%_)
                      (_%make-splice189490%_
                       _%e189496%_
                       _%depth189565%_
                       (_%recur189491%_ _%hd189530%_ _%is-e?189497%_)
                       (_%recur189491%_ _%rest189564%_ _%is-e?189497%_))
                      (_%make-cons189489%_
                       (_%recur189491%_ _%hd189530%_ _%is-e?189497%_)
                       (_%recur189491%_ _%rest189564%_ _%is-e?189497%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E189568189577%_)))))
                                    (_%E189567189596%_)))))))
                      (_%E189509189518%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E189508189600%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e189496%_))
                                                    (let ((_g190020_
                                                           (_%recur189491%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e189496%_)))
                    _%is-e?189497%_)))
              (begin
                (let ((_g190021_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g190020_)
                             (##values-length _g190020_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g190021_ 2)))
                      (error "Context expects 2 values" _g190021_)))
                (let ((_%e189605%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g190020_ 0)))
                      (_%vars189606%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g190020_ 1))))
                  (values (cons 'vector _%e189605%_) _%vars189606%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e189496%_))
                                                        (let ((_g190022_
                                                               (_%recur189491%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e189496%_)))
                        _%is-e?189497%_)))
                  (begin
                    (let ((_g190023_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g190022_)
                                 (##values-length _g190022_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g190023_ 2)))
                          (error "Context expects 2 values" _g190023_)))
                    (let ((_%e189609%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g190022_ 0)))
                          (_%vars189610%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g190022_ 1))))
                      (values (cons 'box _%e189609%_) _%vars189610%_))))
                (values (cons 'datum _%e189496%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g190024_
                             (_%recur189491%_ _%e189487%_ gx#ellipsis?)))
                        (begin
                          (let ((_g190025_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g190024_)
                                       (##values-length _g190024_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g190025_ 2)))
                                (error "Context expects 2 values" _g190025_)))
                          (let ((_%tree189493%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g190024_ 0)))
                                (_%vars189494%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g190024_ 1))))
                            (if (null? _%vars189494%_)
                                _%tree189493%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx189443%_
                                   _%vars189494%_))))))))))
          (let* ((_%e189447189457%_ _%stx189443%_)
                 (_%E189449189461%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx189443%_))))
                 (_%E189448189483%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e189447189457%_))
                        (let ((_%e189450189465%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e189447189457%_))))
                          (let ((_%hd189451189468%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189450189465%_)))
                                (_%tl189452189470%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189450189465%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl189452189470%_))
                                (let ((_%e189453189473%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl189452189470%_))))
                                  (let ((_%hd189454189476%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e189453189473%_)))
                                        (_%tl189455189478%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e189453189473%_))))
                                    (let ((_%form189481%_ _%hd189454189476%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl189455189478%_))
                                          (let ((__tmp190027
                                                 (_%generate189445%_
                                                  (_%parse189446%_
                                                   _%form189481%_)))
                                                (__tmp190026
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx189443%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp190027
                                             __tmp190026))
                                          (_%E189449189461%_)))))
                                (_%E189449189461%_))))
                        (_%E189449189461%_)))))
            (_%E189448189483%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx188692%_
               _%identifier=?188693%_
               _%unwrap-e188694%_
               _%wrap-e188695%_)
        (letrec ((_%generate-bindings188697%_
                  (lambda (_%target189307%_
                           _%ids189308%_
                           _%clauses189309%_
                           _%clause-ids189310%_
                           _%E189311%_)
                    (letrec ((_%generate1189313%_
                              (lambda (_%clause189410%_
                                       _%clause-id189411%_
                                       _%E189412%_)
                                (cons (cons _%clause-id189411%_ '())
                                      (cons (let ((__tmp190029
                                                   (cons _%target189307%_ '()))
                                                  (__tmp190028
                                                   (_%generate-clause188699%_
                                                    _%target189307%_
                                                    _%ids189308%_
                                                    _%clause189410%_
                                                    _%E189412%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp190029
                                               __tmp190028))
                                            '())))))
                      (let _%lp189315%_ ((_%rest189317%_ _%clauses189309%_)
                                         (_%rest-ids189318%_
                                          _%clause-ids189310%_)
                                         (_%bindings189319%_ '()))
                        (let* ((_%rest189320189328%_ _%rest189317%_)
                               (_%else189322189336%_
                                (lambda () _%bindings189319%_))
                               (_%K189324189398%_
                                (lambda (_%rest189339%_ _%clause189340%_)
                                  (let* ((_%rest-ids189341189348%_
                                          _%rest-ids189318%_)
                                         (_%E189343189352%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids189341189348%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K189344189386%_
                                          (lambda (_%rest-ids189355%_
                                                   _%clause-id189356%_)
                                            (let* ((_%rest-ids189357189365%_
                                                    _%rest-ids189355%_)
                                                   (_%else189359189373%_
                                                    (lambda ()
                                                      (cons (_%generate1189313%_
                                                             _%clause189340%_
                                                             _%clause-id189356%_
                                                             _%E189311%_)
                                                            _%bindings189319%_)))
                                                   (_%K189361189378%_
                                                    (lambda (_%next-clause-id189376%_)
                                                      (_%lp189315%_
                                                       _%rest189339%_
                                                       _%rest-ids189355%_
                                                       (cons (_%generate1189313%_
                                                              _%clause189340%_
                                                              _%clause-id189356%_
                                                              _%next-clause-id189376%_)
                                                             _%bindings189319%_)))))
                                              (if (pair? _%rest-ids189357189365%_)
                                                  (let* ((_%hd189362189381%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids189357189365%_)))
                                                         (_%next-clause-id189384%_
                                                          _%hd189362189381%_))
                                                    (_%K189361189378%_
                                                     _%next-clause-id189384%_))
                                                  (_%else189359189373%_))))))
                                    (if (pair? _%rest-ids189341189348%_)
                                        (let ((_%hd189345189389%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids189341189348%_)))
                                              (_%tl189346189391%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids189341189348%_))))
                                          (let* ((_%clause-id189394%_
                                                  _%hd189345189389%_)
                                                 (_%rest-ids189396%_
                                                  _%tl189346189391%_))
                                            (_%K189344189386%_
                                             _%rest-ids189396%_
                                             _%clause-id189394%_)))
                                        (_%E189343189352%_))))))
                          (if (pair? _%rest189320189328%_)
                              (let ((_%hd189325189401%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest189320189328%_)))
                                    (_%tl189326189403%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest189320189328%_))))
                                (let* ((_%clause189406%_ _%hd189325189401%_)
                                       (_%rest189408%_ _%tl189326189403%_))
                                  (_%K189324189398%_
                                   _%rest189408%_
                                   _%clause189406%_)))
                              (_%else189322189336%_)))))))
                 (_%generate-body188698%_
                  (lambda (_%bindings189267%_ _%body189268%_)
                    (let _%recur189270%_ ((_%rest189272%_ _%bindings189267%_))
                      (let* ((_%rest189273189281%_ _%rest189272%_)
                             (_%else189275189289%_ (lambda () _%body189268%_))
                             (_%K189277189295%_
                              (lambda (_%rest189292%_ _%hd189293%_)
                                (let ((__tmp190031 (cons _%hd189293%_ '()))
                                      (__tmp190030
                                       (_%recur189270%_ _%rest189292%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp190031
                                   __tmp190030)))))
                        (if (pair? _%rest189273189281%_)
                            (let ((_%hd189278189298%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest189273189281%_)))
                                  (_%tl189279189300%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest189273189281%_))))
                              (let* ((_%hd189303%_ _%hd189278189298%_)
                                     (_%rest189305%_ _%tl189279189300%_))
                                (_%K189277189295%_
                                 _%rest189305%_
                                 _%hd189303%_)))
                            (_%else189275189289%_))))))
                 (_%generate-clause188699%_
                  (lambda (_%target189130%_
                           _%ids189131%_
                           _%clause189132%_
                           _%E189133%_)
                    (letrec ((_%generate1189135%_
                              (lambda (_%hd189222%_
                                       _%fender189223%_
                                       _%body189224%_)
                                (let ((_g190032_
                                       (_%parse-clause188701%_
                                        _%hd189222%_
                                        _%ids189131%_)))
                                  (begin
                                    (let ((_g190033_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190032_)
                                                 (##values-length _g190032_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190033_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190033_)))
                                    (let ((_%e189226%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190032_ 0)))
                                          (_%mvars189227%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190032_ 1))))
                                      (let* ((_%pvars189229%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars189227%_))))
                                             (_%E189231%_
                                              (cons _%E189133%_
                                                    (cons _%target189130%_
                                                          '())))
                                             (_%K189264%_
                                              (let ((__tmp190034
                                                     (let ((__tmp190036
                                                            (map (lambda (_%mvar189233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar189234%_)
                           (let* ((_%mvar189235189242%_ _%mvar189233%_)
                                  (_%E189237189246%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar189235189242%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K189238189252%_
                                   (lambda (_%depth189249%_ _%id189250%_)
                                     (cons _%id189250%_
                                           (cons (let ((__tmp190038
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id189250%_)))
                                                       (__tmp190037
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar189234%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp190038
                                                    __tmp190037
                                                    _%depth189249%_))
                                                 '())))))
                             (if (pair? _%mvar189235189242%_)
                                 (let ((_%hd189239189255%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar189235189242%_)))
                                       (_%tl189240189257%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar189235189242%_))))
                                   (let* ((_%id189260%_ _%hd189239189255%_)
                                          (_%depth189262%_ _%tl189240189257%_))
                                     (_%K189238189252%_
                                      _%depth189262%_
                                      _%id189260%_)))
                                 (_%E189237189246%_))))
                         _%mvars189227%_
                         _%pvars189229%_))
                   (__tmp190035
                    (if (eq? _%fender189223%_ '#t)
                        _%body189224%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender189223%_
                           _%body189224%_
                           _%E189231%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp190036 __tmp190035))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars189229%_
                                                 __tmp190034))))
                                        (_%generate-match188700%_
                                         _%hd189222%_
                                         _%target189130%_
                                         _%e189226%_
                                         _%mvars189227%_
                                         _%K189264%_
                                         _%E189231%_))))))))
                      (let* ((_%e189136189156%_ _%clause189132%_)
                             (_%E189145189160%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e189136189156%_))))
                             (_%E189138189194%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e189136189156%_))
                                    (let ((_%e189146189164%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e189136189156%_))))
                                      (let ((_%hd189147189167%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e189146189164%_)))
                                            (_%tl189148189169%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e189146189164%_))))
                                        (let ((_%hd189172%_
                                               _%hd189147189167%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl189148189169%_))
                                              (let ((_%e189149189174%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl189148189169%_))))
                                                (let ((_%hd189150189177%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e189149189174%_)))
                                                      (_%tl189151189179%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e189149189174%_))))
                                                  (let ((_%fender189182%_
                                                         _%hd189150189177%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl189151189179%_))
                                                        (let ((_%e189152189184%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl189151189179%_))))
                  (let ((_%hd189153189187%_
                         (let ()
                           (declare (not safe))
                           (##car _%e189152189184%_)))
                        (_%tl189154189189%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e189152189184%_))))
                    (let ((_%body189192%_ _%hd189153189187%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl189154189189%_))
                          (_%generate1189135%_
                           _%hd189172%_
                           _%fender189182%_
                           _%body189192%_)
                          (_%E189145189160%_)))))
                (_%E189145189160%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E189145189160%_)))))
                                    (_%E189145189160%_))))
                             (_%E189137189218%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e189136189156%_))
                                    (let ((_%e189139189198%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e189136189156%_))))
                                      (let ((_%hd189140189201%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e189139189198%_)))
                                            (_%tl189141189203%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e189139189198%_))))
                                        (let ((_%hd189206%_
                                               _%hd189140189201%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl189141189203%_))
                                              (let ((_%e189142189208%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl189141189203%_))))
                                                (let ((_%hd189143189211%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e189142189208%_)))
                                                      (_%tl189144189213%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e189142189208%_))))
                                                  (let ((_%body189216%_
                                                         _%hd189143189211%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl189144189213%_))
                                                        (_%generate1189135%_
                                                         _%hd189206%_
                                                         '#t
                                                         _%body189216%_)
                                                        (_%E189138189194%_)))))
                                              (_%E189138189194%_)))))
                                    (_%E189138189194%_)))))
                        (_%E189137189218%_)))))
                 (_%generate-match188700%_
                  (lambda (_%where188879%_
                           _%target188880%_
                           _%hd188881%_
                           _%mvars188882%_
                           _%K188883%_
                           _%E188884%_)
                    (letrec ((_%BUG188886%_
                              (lambda (_%q189128%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx188692%_
                                         _%hd188881%_
                                         _%q189128%_))))
                             (_%recur188887%_
                              (lambda (_%e188978%_
                                       _%vars188979%_
                                       _%target188980%_
                                       _%E188981%_
                                       _%k188982%_)
                                (let* ((_%e188983188990%_ _%e188978%_)
                                       (_%E188985188994%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e188983188990%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K188986189116%_
                                        (lambda (_%body188997%_ _%tag188998%_)
                                          (let ((_%$e189000%_ _%tag188998%_))
                                            (if (eq? 'any _%$e189000%_)
                                                (_%k188982%_ _%vars188979%_)
                                                (if (eq? 'id _%$e189000%_)
                                                    (let ((__tmp190043
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target188980%_)))
                                                          (__tmp190039
                                                           (let ((__tmp190041
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp190042
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e188695%_
                                    _%body188997%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?188693%_
                             __tmp190042
                             _%target188980%_)))
                         (__tmp190040 (_%k188982%_ _%vars188979%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp190041 __tmp190040 _%E188981%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp190043 __tmp190039 _%E188981%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e189000%_)
                                                        (_%k188982%_
                                                         (cons (cons _%body188997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target188980%_)
                       _%vars188979%_))
                (if (eq? 'cons _%$e189000%_)
                    (let ((_%$e189003%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd189004%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl189005%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp190049
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target188980%_)))
                            (__tmp190044
                             (let ((__tmp190048
                                    (cons (cons (cons _%$e189003%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e188694%_
                                                         _%target188980%_))
                                                      '()))
                                          '()))
                                   (__tmp190045
                                    (let ((__tmp190047
                                           (cons (cons (cons _%$hd189004%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e189003%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl189005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e189003%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp190046
                                           (let* ((_%body189006189013%_
                                                   _%body188997%_)
                                                  (_%E189008189017%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body189006189013%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K189009189025%_
                                                   (lambda (_%tl189020%_
                                                            _%hd189021%_)
                                                     (_%recur188887%_
                                                      _%hd189021%_
                                                      _%vars188979%_
                                                      _%$hd189004%_
                                                      _%E188981%_
                                                      (lambda (_%vars189023%_)
                                                        (_%recur188887%_
                                                         _%tl189020%_
                                                         _%vars189023%_
                                                         _%$tl189005%_
                                                         _%E188981%_
                                                         _%k188982%_))))))
                                             (if (pair? _%body189006189013%_)
                                                 (let ((_%hd189010189028%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body189006189013%_)))
                                                       (_%tl189011189030%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body189006189013%_))))
                                                   (let* ((_%hd189033%_
                                                           _%hd189010189028%_)
                                                          (_%tl189035%_
                                                           _%tl189011189030%_))
                                                     (_%K189009189025%_
                                                      _%tl189035%_
                                                      _%hd189033%_)))
                                                 (_%E189008189017%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp190047
                                       __tmp190046))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp190048
                                __tmp190045))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp190049
                         __tmp190044
                         _%E188981%_)))
                    (if (eq? 'splice _%$e189000%_)
                        (let* ((_%body189036189043%_ _%body188997%_)
                               (_%E189038189047%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body189036189043%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K189039189098%_
                                (lambda (_%tl189050%_ _%hd189051%_)
                                  (let* ((_%rlen189053%_
                                          (_%splice-rlen188888%_ _%tl189050%_))
                                         (_%$target189055%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd189057%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl189059%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp189061%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e189063%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd189065%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl189067%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars189069%_
                                          (_%splice-vars188889%_ _%hd189051%_))
                                         (_%lvars189071%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars189069%_)))
                                         (_%tlvars189073%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars189069%_)))
                                         (_%linit189077%_
                                          (map (lambda (_%var189075%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars189071%_)))
                                    (letrec ((_%make-loop189080%_
                                              (lambda (_%vars189084%_)
                                                (let ((__tmp190051
                                                       (cons (cons (cons _%$lp189061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp190064
                                        (cons _%$hd189057%_ _%lvars189071%_))
                                       (__tmp190052
                                        (let ((__tmp190063
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd189057%_)))
                                              (__tmp190057
                                               (let ((__tmp190062
                                                      (cons (cons (cons _%$lp-e189063%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e188694%_
                                   _%$hd189057%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp190058
                                                      (let ((__tmp190061
                                                             (cons (cons (cons _%$lp-hd189065%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e189063%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl189067%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e189063%_))
                                             '()))
                                 '())))
                    (__tmp190059
                     (_%recur188887%_
                      _%hd189051%_
                      '()
                      _%$lp-hd189065%_
                      _%E188981%_
                      (lambda (_%hdvars189086%_)
                        (cons _%$lp189061%_
                              (cons _%$lp-tl189067%_
                                    (map (lambda (_%svar189088%_
                                                  _%lvar189089%_)
                                           (let ((__tmp190060
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar189088%_
                                                     _%hdvars189086%_
                                                     _%BUG188886%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp190060
                                              _%lvar189089%_)))
                                         _%svars189069%_
                                         _%lvars189071%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp190061 __tmp190059))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp190062
                                                  __tmp190058)))
                                              (__tmp190053
                                               (let ((__tmp190056
                                                      (map (lambda (_%lvar189091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar189092%_)
                     (cons (cons _%tlvar189092%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar189091%_))
                                 '())))
                   _%lvars189071%_
                   _%tlvars189073%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp190054
                                                      (_%k188982%_
                                                       (let ((__tmp190055
                                                              (lambda (_%svar189094%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar189095%_
                               _%r189096%_)
                        (cons (cons _%svar189094%_ _%tlvar189095%_)
                              _%r189096%_))))
                 (declare (not safe))
                 (foldl__1
                  __tmp190055
                  _%vars189084%_
                  _%svars189069%_
                  _%tlvars189073%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp190056
                                                  __tmp190054))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp190063
                                           __tmp190057
                                           __tmp190053))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp190064
                                    __tmp190052))
                                 '()))
                     '()))
              (__tmp190050
               (cons _%$lp189061%_ (cons _%$target189055%_ _%linit189077%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp190051
                                                   __tmp190050)))))
                                      (let ((_%body189082%_
                                             (let ((__tmp190066
                                                    (cons (cons (cons _%$target189055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl189059%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target188980%_
                                 _%rlen189053%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp190065
                                                    (_%recur188887%_
                                                     _%tl189050%_
                                                     _%vars188979%_
                                                     _%$tl189059%_
                                                     _%E188981%_
                                                     _%make-loop189080%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp190066
                                                __tmp190065))))
                                        (let ((__tmp190070
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target188980%_)))
                                              (__tmp190067
                                               (if (zero? _%rlen189053%_)
                                                   _%body189082%_
                                                   (let ((__tmp190068
                                                          (let ((__tmp190069
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target188980%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp190069 _%rlen189053%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp190068
                                                      _%body189082%_
                                                      _%E188981%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp190070
                                           __tmp190067
                                           _%E188981%_))))))))
                          (if (pair? _%body189036189043%_)
                              (let ((_%hd189040189101%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body189036189043%_)))
                                    (_%tl189041189103%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body189036189043%_))))
                                (let* ((_%hd189106%_ _%hd189040189101%_)
                                       (_%tl189108%_ _%tl189041189103%_))
                                  (_%K189039189098%_
                                   _%tl189108%_
                                   _%hd189106%_)))
                              (_%E189038189047%_)))
                        (if (eq? 'null _%$e189000%_)
                            (let ((__tmp190072
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target188980%_)))
                                  (__tmp190071 (_%k188982%_ _%vars188979%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp190072
                               __tmp190071
                               _%E188981%_))
                            (if (eq? 'vector _%$e189000%_)
                                (let ((_%$e189110%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp190077
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target188980%_)))
                                        (__tmp190073
                                         (let ((__tmp190075
                                                (cons (cons (cons _%$e189110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp190076
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e188694%_
                                    _%target188980%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp190076))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp190074
                                                (_%recur188887%_
                                                 _%body188997%_
                                                 _%vars188979%_
                                                 _%$e189110%_
                                                 _%E188981%_
                                                 _%k188982%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp190075
                                            __tmp190074))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp190077
                                     __tmp190073
                                     _%E188981%_)))
                                (if (eq? 'box _%$e189000%_)
                                    (let ((_%$e189112%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp190082
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target188980%_)))
                                            (__tmp190078
                                             (let ((__tmp190080
                                                    (cons (cons (cons _%$e189112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp190081
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e188694%_
                                        _%target188980%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp190081))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp190079
                                                    (_%recur188887%_
                                                     _%body188997%_
                                                     _%vars188979%_
                                                     _%$e189112%_
                                                     _%E188981%_
                                                     _%k188982%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp190080
                                                __tmp190079))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp190082
                                         __tmp190078
                                         _%E188981%_)))
                                    (if (eq? 'datum _%$e189000%_)
                                        (let ((_%$e189114%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp190088
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target188980%_)))
                                                (__tmp190083
                                                 (let ((__tmp190087
                                                        (cons (cons (cons _%$e189114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target188980%_))
                                  '()))
                      '()))
               (__tmp190084
                (let ((__tmp190086
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e189114%_ _%body188997%_)))
                      (__tmp190085 (_%k188982%_ _%vars188979%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp190086 __tmp190085 _%E188981%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp190087
                                                    __tmp190084))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp190088
                                             __tmp190083
                                             _%E188981%_)))
                                        (_%BUG188886%_
                                         _%e188978%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e188983188990%_)
                                      (let ((_%hd188987189119%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e188983188990%_)))
                                            (_%tl188988189121%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e188983188990%_))))
                                        (let* ((_%tag189124%_
                                                _%hd188987189119%_)
                                               (_%body189126%_
                                                _%tl188988189121%_))
                                          (_%K188986189116%_
                                           _%body189126%_
                                           _%tag189124%_)))
                                      (_%E188985188994%_)))))
                             (_%splice-rlen188888%_
                              (lambda (_%e188940%_)
                                (let _%lp188942%_ ((_%e188944%_ _%e188940%_)
                                                   (_%n188945%_ '0))
                                  (let* ((_%e188946188953%_ _%e188944%_)
                                         (_%E188948188957%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e188946188953%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K188949188966%_
                                          (lambda (_%body188960%_
                                                   _%tag188961%_)
                                            (let ((_%$e188963%_ _%tag188961%_))
                                              (if (eq? 'splice _%$e188963%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx188692%_
                                                     _%where188879%_))
                                                  (if (eq? 'cons _%$e188963%_)
                                                      (_%lp188942%_
                                                       (cdr _%body188960%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n188945%_
                                                                '1)))
                                                      _%n188945%_))))))
                                    (if (pair? _%e188946188953%_)
                                        (let ((_%hd188950188969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188946188953%_)))
                                              (_%tl188951188971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188946188953%_))))
                                          (let* ((_%tag188974%_
                                                  _%hd188950188969%_)
                                                 (_%body188976%_
                                                  _%tl188951188971%_))
                                            (_%K188949188966%_
                                             _%body188976%_
                                             _%tag188974%_)))
                                        (_%E188948188957%_))))))
                             (_%splice-vars188889%_
                              (lambda (_%e188896%_)
                                (let _%recur188898%_ ((_%e188900%_ _%e188896%_)
                                                      (_%vars188901%_ '()))
                                  (let* ((_%e188902188909%_ _%e188900%_)
                                         (_%E188904188913%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e188902188909%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K188905188928%_
                                          (lambda (_%body188916%_
                                                   _%tag188917%_)
                                            (let ((_%$e188919%_ _%tag188917%_))
                                              (if (eq? 'var _%$e188919%_)
                                                  (cons _%body188916%_
                                                        _%vars188901%_)
                                                  (if (or (eq? 'cons
                                                               _%$e188919%_)
                                                          (eq? 'splice
                                                               _%$e188919%_))
                                                      (_%recur188898%_
                                                       (cdr _%body188916%_)
                                                       (_%recur188898%_
                                                        (car _%body188916%_)
                                                        _%vars188901%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e188919%_)
                      (eq? 'box _%$e188919%_))
                  (_%recur188898%_ _%body188916%_ _%vars188901%_)
                  _%vars188901%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e188902188909%_)
                                        (let ((_%hd188906188931%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188902188909%_)))
                                              (_%tl188907188933%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188902188909%_))))
                                          (let* ((_%tag188936%_
                                                  _%hd188906188931%_)
                                                 (_%body188938%_
                                                  _%tl188907188933%_))
                                            (_%K188905188928%_
                                             _%body188938%_
                                             _%tag188936%_)))
                                        (_%E188904188913%_))))))
                             (_%make-body188890%_
                              (lambda (_%vars188892%_)
                                (cons _%K188883%_
                                      (map (lambda (_%mvar188894%_)
                                             (let ((__tmp190089
                                                    (car _%mvar188894%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp190089
                                                _%vars188892%_
                                                _%BUG188886%_)))
                                           _%mvars188882%_)))))
                      (_%recur188887%_
                       _%hd188881%_
                       '()
                       _%target188880%_
                       _%E188884%_
                       _%make-body188890%_))))
                 (_%parse-clause188701%_
                  (lambda (_%hd188773%_ _%ids188774%_)
                    (let _%recur188776%_ ((_%e188778%_ _%hd188773%_)
                                          (_%vars188779%_ '())
                                          (_%depth188780%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e188778%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e188778%_))
                              (values '(any) _%vars188779%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e188778%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx188692%_
                                     _%hd188773%_))
                                  (if (let ((__tmp190090
                                             (lambda (_%id188785%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e188778%_
                                                  _%id188785%_)))))
                                        (declare (not safe))
                                        (__find __tmp190090 _%ids188774%_))
                                      (values (cons 'id _%e188778%_)
                                              _%vars188779%_)
                                      (if (let ((__tmp190091
                                                 (lambda (_%var188788%_)
                                                   (let ((__tmp190092
                                                          (car _%var188788%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e188778%_
                                                      __tmp190092)))))
                                            (declare (not safe))
                                            (__find __tmp190091
                                                    _%vars188779%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx188692%_
                                             _%e188778%_))
                                          (values (cons 'var _%e188778%_)
                                                  (cons (cons _%e188778%_
                                                              _%depth188780%_)
                                                        _%vars188779%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e188778%_))
                              (let* ((_%e188792188799%_ _%e188778%_)
                                     (_%E188794188803%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e188792188799%_))))
                                     (_%E188793188864%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e188792188799%_))
                                            (let ((_%e188795188807%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e188792188799%_))))
                                              (let ((_%hd188796188810%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e188795188807%_)))
                                                    (_%tl188797188812%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e188795188807%_))))
                                                (let* ((_%hd188815%_
                                                        _%hd188796188810%_)
                                                       (_%rest188817%_
                                                        _%tl188797188812%_)
                                                       (_%make-pair188832%_
                                                        (lambda (_%tag188819%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd188820%_
                         _%tl188821%_)
                  (let* ((_%hd-depth188823%_
                          (if (eq? _%tag188819%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth188780%_ '1))
                              _%depth188780%_))
                         (_g190093_
                          (_%recur188776%_
                           _%hd188820%_
                           _%vars188779%_
                           _%hd-depth188823%_)))
                    (begin
                      (let ((_g190094_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g190093_)
                                   (##values-length _g190093_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g190094_ 2)))
                            (error "Context expects 2 values" _g190094_)))
                      (let ((_%hd188825%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g190093_ 0)))
                            (_%vars188826%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g190093_ 1))))
                        (let ((_g190095_
                               (_%recur188776%_
                                _%tl188821%_
                                _%vars188826%_
                                _%depth188780%_)))
                          (begin
                            (let ((_g190096_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g190095_)
                                         (##values-length _g190095_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g190096_ 2)))
                                  (error "Context expects 2 values"
                                         _g190096_)))
                            (let ((_%tl188828%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g190095_ 0)))
                                  (_%vars188829%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g190095_ 1))))
                              (values (cons _%tag188819%_
                                            (cons _%hd188825%_ _%tl188828%_))
                                      _%vars188829%_)))))))))
               (_%e188833188840%_ _%rest188817%_)
               (_%E188835188844%_
                (lambda ()
                  (_%make-pair188832%_ 'cons _%hd188815%_ _%rest188817%_)))
               (_%E188834188860%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e188833188840%_))
                      (let ((_%e188836188848%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e188833188840%_))))
                        (let ((_%hd188837188851%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188836188848%_)))
                              (_%tl188838188853%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188836188848%_))))
                          (let* ((_%rest-hd188856%_ _%hd188837188851%_)
                                 (_%rest-tl188858%_ _%tl188838188853%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd188856%_))
                                (_%make-pair188832%_
                                 'splice
                                 _%hd188815%_
                                 _%rest-tl188858%_)
                                (_%make-pair188832%_
                                 'cons
                                 _%hd188815%_
                                 _%rest188817%_)))))
                      (_%E188835188844%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E188834188860%_))))
                                            (_%E188794188803%_)))))
                                (_%E188793188864%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e188778%_))
                                  (values '(null) _%vars188779%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e188778%_))
                                      (let ((_g190097_
                                             (_%recur188776%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e188778%_)))
                                              _%vars188779%_
                                              _%depth188780%_)))
                                        (begin
                                          (let ((_g190098_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g190097_)
                                                       (##values-length
                                                        _g190097_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g190098_ 2)))
                                                (error "Context expects 2 values"
                                                       _g190098_)))
                                          (let ((_%e188870%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g190097_ 0)))
                                                (_%vars188871%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g190097_
                                                    1))))
                                            (values (cons 'vector _%e188870%_)
                                                    _%vars188871%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e188778%_))
                                          (let ((_g190099_
                                                 (_%recur188776%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e188778%_)))
                                                  _%vars188779%_
                                                  _%depth188780%_)))
                                            (begin
                                              (let ((_g190100_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g190099_)
                                                           (##values-length
                                                            _g190099_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g190100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g190100_)))
                                              (let ((_%e188874%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g190099_
                                                        0)))
                                                    (_%vars188875%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g190099_
                                                        1))))
                                                (values (cons 'box _%e188874%_)
                                                        _%vars188875%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e188778%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e188778%_)))
                                                      _%vars188779%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx188692%_
                                                 _%e188778%_))))))))))))
          (let* ((_%e188702188715%_ _%stx188692%_)
                 (_%E188704188719%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e188702188715%_))))
                 (_%E188703188769%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e188702188715%_))
                        (let ((_%e188705188723%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e188702188715%_))))
                          (let ((_%hd188706188726%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e188705188723%_)))
                                (_%tl188707188728%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e188705188723%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl188707188728%_))
                                (let ((_%e188708188731%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl188707188728%_))))
                                  (let ((_%hd188709188734%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e188708188731%_)))
                                        (_%tl188710188736%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e188708188731%_))))
                                    (let ((_%expr188739%_ _%hd188709188734%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl188710188736%_))
                                          (let ((_%e188711188741%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl188710188736%_))))
                                            (let ((_%hd188712188744%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e188711188741%_)))
                                                  (_%tl188713188746%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e188711188741%_))))
                                              (let* ((_%ids188749%_
                                                      _%hd188712188744%_)
                                                     (_%clauses188751%_
                                                      _%tl188713188746%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids188749%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses188751%_))
                                                        (let* ((_%ids188756%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids188749%_)))
                       (_%clauses188758%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses188751%_)))
                       (_%clause-ids188760%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses188758%_)))
                       (_%E188762%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target188764%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first188766%_
                        (if (null? _%clauses188758%_)
                            _%E188762%_
                            (car _%clause-ids188760%_))))
                  (let ((__tmp190102
                         (let ((__tmp190103
                                (let ((__tmp190105
                                       (let ((__tmp190107
                                              (cons (cons (cons _%E188762%_
                                                                '())
                                                          (cons (let ((__tmp190109
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target188764%_ '()))
                              (__tmp190108
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target188764%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp190109 __tmp190108))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp190106
                                              (_%generate-body188698%_
                                               (_%generate-bindings188697%_
                                                _%target188764%_
                                                _%ids188756%_
                                                _%clauses188758%_
                                                _%clause-ids188760%_
                                                _%E188762%_)
                                               (cons _%first188766%_
                                                     (cons _%expr188739%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp190107
                                          __tmp190106)))
                                      (__tmp190104
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx188692%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp190105
                                   __tmp190104))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp190103)))
                        (__tmp190101
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx188692%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp190102 __tmp190101)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx188692%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx188692%_
                                                       _%ids188749%_))))))
                                          (_%E188704188719%_)))))
                                (_%E188704188719%_))))
                        (_%E188704188719%_)))))
            (_%E188703188769%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx189417%_)
        (let* ((_%identifier=?189419%_ 'free-identifier=?)
               (_%unwrap-e189421%_ 'syntax-e)
               (_%wrap-e189423%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx189417%_
           _%identifier=?189419%_
           _%unwrap-e189421%_
           _%wrap-e189423%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx189425%_ _%identifier=?189426%_)
        (let* ((_%unwrap-e189428%_ 'syntax-e) (_%wrap-e189430%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx189425%_
           _%identifier=?189426%_
           _%unwrap-e189428%_
           _%wrap-e189430%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx189432%_ _%identifier=?189433%_ _%unwrap-e189434%_)
        (let ((_%wrap-e189436%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx189432%_
           _%identifier=?189433%_
           _%unwrap-e189434%_
           _%wrap-e189436%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g190110_
        (let ((_g190111_ (let () (declare (not safe)) (##length _g190110_))))
          (cond ((let () (declare (not safe)) (##fx= _g190111_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g190110_))
                ((let () (declare (not safe)) (##fx= _g190111_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g190110_))
                ((let () (declare (not safe)) (##fx= _g190111_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g190110_))
                ((let () (declare (not safe)) (##fx= _g190111_ 4))
                 (apply gx#macro-expand-syntax-case__% _g190110_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g190110_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx188689%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx188689%_))
            (let ((__tmp190112
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx188689%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp190112 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd188647%_ . _%rest188648%_)
        (let ((_%len188650%_ (length _%hd188647%_)))
          (let _%lp188652%_ ((_%rest188654%_ _%rest188648%_))
            (let* ((_%rest188655188663%_ _%rest188654%_)
                   (_%else188657188671%_ (lambda () '#!void))
                   (_%K188659188677%_
                    (lambda (_%rest188674%_ _%hd188675%_)
                      (if (let ((__tmp190113 (length _%hd188675%_)))
                            (declare (not safe))
                            (##fx= _%len188650%_ __tmp190113))
                          (_%lp188652%_ _%rest188674%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd188675%_))))))
              (if (pair? _%rest188655188663%_)
                  (let ((_%hd188660188680%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest188655188663%_)))
                        (_%tl188661188682%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest188655188663%_))))
                    (let* ((_%hd188685%_ _%hd188660188680%_)
                           (_%rest188687%_ _%tl188661188682%_))
                      (_%K188659188677%_ _%rest188687%_ _%hd188685%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx188597%_ _%n188598%_)
        (let _%lp188600%_ ((_%rest188603%_ _%stx188597%_) (_%r188605%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest188603%_))
              (let* ((_%g188607188614%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest188603%_)))
                     (_%E188609188618%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g188607188614%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K188610188625%_
                      (lambda (_%rest188621%_ _%hd188622%_)
                        (_%lp188600%_
                         _%rest188621%_
                         (cons _%hd188622%_ _%r188605%_)))))
                (if (pair? _%g188607188614%_)
                    (let ((_%hd188611188628%_
                           (let ()
                             (declare (not safe))
                             (##car _%g188607188614%_)))
                          (_%tl188612188630%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g188607188614%_))))
                      (let* ((_%hd188633%_ _%hd188611188628%_)
                             (_%rest188635%_ _%tl188612188630%_))
                        (_%K188610188625%_ _%rest188635%_ _%hd188633%_)))
                    (_%E188609188618%_)))
              (let _%lp188637%_ ((_%n188639%_ _%n188598%_)
                                 (_%l188640%_ _%r188605%_)
                                 (_%r188642%_ _%rest188603%_))
                (if (null? _%l188640%_)
                    (values _%l188640%_ _%r188642%_)
                    (if (fxpositive? _%n188639%_)
                        (_%lp188637%_
                         (let () (declare (not safe)) (##fx- _%n188639%_ '1))
                         (cdr _%l188640%_)
                         (cons (car _%l188640%_) _%r188642%_))
                        (values (reverse! _%l188640%_) _%r188642%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx188547%_ _%n188548%_)
        (let _%lp188550%_ ((_%rest188553%_ _%stx188547%_) (_%r188555%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest188553%_))
              (let* ((_%g188557188564%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest188553%_)))
                     (_%E188559188568%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g188557188564%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K188560188575%_
                      (lambda (_%rest188571%_ _%hd188572%_)
                        (_%lp188550%_
                         _%rest188571%_
                         (cons _%hd188572%_ _%r188555%_)))))
                (if (pair? _%g188557188564%_)
                    (let ((_%hd188561188578%_
                           (let ()
                             (declare (not safe))
                             (##car _%g188557188564%_)))
                          (_%tl188562188580%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g188557188564%_))))
                      (let* ((_%hd188583%_ _%hd188561188578%_)
                             (_%rest188585%_ _%tl188562188580%_))
                        (_%K188560188575%_ _%rest188585%_ _%hd188583%_)))
                    (_%E188559188568%_)))
              (let _%lp188587%_ ((_%n188589%_ _%n188548%_)
                                 (_%l188590%_ _%r188555%_)
                                 (_%r188592%_ _%rest188553%_))
                (if (null? _%l188590%_)
                    (vector _%l188590%_ _%r188592%_)
                    (if (fxpositive? _%n188589%_)
                        (_%lp188587%_
                         (let () (declare (not safe)) (##fx- _%n188589%_ '1))
                         (cdr _%l188590%_)
                         (cons (car _%l188590%_) _%r188592%_))
                        (vector (reverse! _%l188590%_) _%r188592%_))))))))))
