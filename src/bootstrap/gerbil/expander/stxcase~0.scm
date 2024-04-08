(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1712573431)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp128865 (list gx#expander::t))
            (__tmp128864 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp128865
         '(id depth)
         __tmp128864
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args128861%_
        (apply make-instance gx#syntax-pattern::t _%$args128861%_)))
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
      (lambda (_%self128847%_ _%stx128848%_)
        (let ((_%self128851%_ _%self128847%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx128848%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx128313%_)
        (letrec ((_%generate128315%_
                  (lambda (_%e128555%_)
                    (letrec ((_%BUG128557%_
                              (lambda (_%q128722%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx128313%_
                                         _%e128555%_
                                         _%q128722%_))))
                             (_%local-pattern-e128558%_
                              (lambda (_%pat128720%_)
                                (let ((__tmp128866
                                       (##structure-ref
                                        _%pat128720%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp128866))))
                             (_%getvar128559%_
                              (lambda (_%q128717%_ _%vars128718%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q128717%_
                                   _%vars128718%_
                                   _%BUG128557%_))))
                             (_%getarg128560%_
                              (lambda (_%arg128683%_ _%vars128684%_)
                                (let* ((_%arg128685128692%_ _%arg128683%_)
                                       (_%E128687128696%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg128685128692%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K128688128705%_
                                        (lambda (_%e128699%_ _%tag128700%_)
                                          (let ((_%$e128702%_ _%tag128700%_))
                                            (if (eq? 'ref _%$e128702%_)
                                                (_%getvar128559%_
                                                 _%e128699%_
                                                 _%vars128684%_)
                                                (if (eq? 'pattern _%$e128702%_)
                                                    (_%local-pattern-e128558%_
                                                     _%e128699%_)
                                                    (_%BUG128557%_
                                                     _%arg128683%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%arg128685128692%_))
                                      (let ((_%hd128689128708%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg128685128692%_)))
                                            (_%tl128690128710%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg128685128692%_))))
                                        (let* ((_%tag128713%_
                                                _%hd128689128708%_)
                                               (_%e128715%_
                                                _%tl128690128710%_))
                                          (_%K128688128705%_
                                           _%e128715%_
                                           _%tag128713%_)))
                                      (_%E128687128696%_))))))
                      (let _%recur128562%_ ((_%e128564%_ _%e128555%_)
                                            (_%vars128565%_ '()))
                        (let* ((_%e128566128573%_ _%e128564%_)
                               (_%E128568128577%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e128566128573%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K128569128671%_
                                (lambda (_%body128580%_ _%tag128581%_)
                                  (let ((_%$e128583%_ _%tag128581%_))
                                    (if (eq? 'datum _%$e128583%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body128580%_))
                                        (if (eq? 'term _%$e128583%_)
                                            (let ((_%id128586%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body128580%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id128586%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks128589%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id128586%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks128589%_)
                                                        (let ((__tmp128867
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body128580%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp128867))
                (let ((__tmp128869
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body128580%_)))
                      (__tmp128868
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body128580%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp128869
                   __tmp128868
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id128586%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body128580%_))
                                                      (_%BUG128557%_
                                                       _%e128564%_))))
                                            (if (eq? 'pattern _%$e128583%_)
                                                (_%local-pattern-e128558%_
                                                 _%body128580%_)
                                                (if (eq? 'ref _%$e128583%_)
                                                    (_%getvar128559%_
                                                     _%body128580%_
                                                     _%vars128565%_)
                                                    (if (eq? 'cons
                                                             _%$e128583%_)
                                                        (let ((__tmp128871
                                                               (_%recur128562%_
                                                                (car _%body128580%_)
                                                                _%vars128565%_))
                                                              (__tmp128870
                                                               (_%recur128562%_
                                                                (cdr _%body128580%_)
                                                                _%vars128565%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp128871
                                                           __tmp128870))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e128583%_)
                    (let ((__tmp128872
                           (_%recur128562%_ _%body128580%_ _%vars128565%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp128872))
                    (if (eq? 'box _%$e128583%_)
                        (let ((__tmp128873
                               (_%recur128562%_
                                _%body128580%_
                                _%vars128565%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp128873))
                        (if (eq? 'splice _%$e128583%_)
                            (let* ((_%body128592128603%_ _%body128580%_)
                                   (_%E128594128607%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body128592128603%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K128595128645%_
                                    (lambda (_%args128610%_
                                             _%iv128611%_
                                             _%hd128612%_
                                             _%depth128613%_)
                                      (let* ((_%targets128619%_
                                              (map (lambda (_%g128614128616%_)
                                                     (_%getarg128560%_
                                                      _%g128614128616%_
                                                      _%vars128565%_))
                                                   _%args128610%_))
                                             (_%fold-in128621%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args128610%_)))
                                             (_%fold-out128623%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args128625%_
                                              (let ((__tmp128874
                                                     (cons _%fold-out128623%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp128874
                                                 _%fold-in128621%_)))
                                             (_%lambda-body128642%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth128613%_ '1))
                                                  (let ((_%r-args128633%_
                                                         (map (lambda (_%arg128627%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg128627%_)))
                      _%args128610%_))
                (_%r-vars128634%_
                 (let ((__tmp128875
                        (lambda (_%arg128629%_ _%var128630%_ _%r128631%_)
                          (cons (cons (cdr _%arg128629%_) _%var128630%_)
                                _%r128631%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp128875
                    _%vars128565%_
                    _%args128610%_
                    _%fold-in128621%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur128562%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth128613%_ '1))
                         (cons _%hd128612%_
                               (cons (cons 'var _%fold-out128623%_)
                                     _%r-args128633%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars128634%_))
                                                  (let* ((_%hd-vars128640%_
                                                          (let ((__tmp128876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg128636%_ _%var128637%_ _%r128638%_)
                           (cons (cons (cdr _%arg128636%_) _%var128637%_)
                                 _%r128638%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp128876
                     _%vars128565%_
                     _%args128610%_
                     _%fold-in128621%_)))
                 (__tmp128877
                  (_%recur128562%_ _%hd128612%_ _%hd-vars128640%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp128877
                                                     _%fold-out128623%_)))))
                                        (let ((__tmp128881
                                               (if (let ((__tmp128882
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets128619%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp128882 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets128619%_))
                                                   '#!void))
                                              (__tmp128878
                                               (let ((__tmp128880
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args128625%_
                                                         _%lambda-body128642%_)))
                                                     (__tmp128879
                                                      (_%recur128562%_
                                                       _%iv128611%_
                                                       _%vars128565%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp128880
                                                  __tmp128879
                                                  _%targets128619%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp128881
                                           __tmp128878))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%body128592128603%_))
                                  (let ((_%hd128596128648%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body128592128603%_)))
                                        (_%tl128597128650%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body128592128603%_))))
                                    (let ((_%depth128653%_ _%hd128596128648%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl128597128650%_))
                                          (let ((_%hd128598128655%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl128597128650%_)))
                                                (_%tl128599128657%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl128597128650%_))))
                                            (let ((_%hd128660%_
                                                   _%hd128598128655%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl128599128657%_))
                                                  (let ((_%hd128600128662%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl128599128657%_)))
                                                        (_%tl128601128664%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl128599128657%_))))
                                                    (let* ((_%iv128667%_
                                                            _%hd128600128662%_)
                                                           (_%args128669%_
                                                            _%tl128601128664%_))
                                                      (_%K128595128645%_
                                                       _%args128669%_
                                                       _%iv128667%_
                                                       _%hd128660%_
                                                       _%depth128653%_)))
                                                  (_%E128594128607%_))))
                                          (_%E128594128607%_))))
                                  (_%E128594128607%_)))
                            (if (eq? 'var _%$e128583%_)
                                _%body128580%_
                                (_%BUG128557%_ _%e128564%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%e128566128573%_))
                              (let ((_%hd128570128674%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e128566128573%_)))
                                    (_%tl128571128676%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e128566128573%_))))
                                (let* ((_%tag128679%_ _%hd128570128674%_)
                                       (_%body128681%_ _%tl128571128676%_))
                                  (_%K128569128671%_
                                   _%body128681%_
                                   _%tag128679%_)))
                              (_%E128568128577%_)))))))
                 (_%parse128316%_
                  (lambda (_%e128357%_)
                    (letrec ((_%make-cons128359%_
                              (lambda (_%hd128547%_ _%tl128548%_)
                                (let ((_g128883_ _%hd128547%_)
                                      (_g128885_ _%tl128548%_))
                                  (begin
                                    (let ((_g128884_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g128883_)
                                                 (##vector-length _g128883_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g128884_ 2)))
                                          (error "Context expects 2 values"
                                                 _g128884_)))
                                    (let ((_g128886_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g128885_)
                                                 (##vector-length _g128885_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g128886_ 2)))
                                          (error "Context expects 2 values"
                                                 _g128886_)))
                                    (let ((_%hd-e128550%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128883_ 0)))
                                          (_%hd-vars128551%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128883_ 1))))
                                      (let ((_%tl-e128552%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128885_ 0)))
                                            (_%tl-vars128553%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128885_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e128550%_
                                                            _%tl-e128552%_))
                                                (append _%hd-vars128551%_
                                                        _%tl-vars128553%_))))))))
                             (_%make-splice128360%_
                              (lambda (_%where128483%_
                                       _%depth128484%_
                                       _%hd128485%_
                                       _%tl128486%_)
                                (let ((_g128887_ _%hd128485%_)
                                      (_g128889_ _%tl128486%_))
                                  (begin
                                    (let ((_g128888_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g128887_)
                                                 (##vector-length _g128887_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g128888_ 2)))
                                          (error "Context expects 2 values"
                                                 _g128888_)))
                                    (let ((_g128890_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g128889_)
                                                 (##vector-length _g128889_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g128890_ 2)))
                                          (error "Context expects 2 values"
                                                 _g128890_)))
                                    (let ((_%hd-e128488%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128887_ 0)))
                                          (_%hd-vars128489%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128887_ 1))))
                                      (let ((_%tl-e128490%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128889_ 0)))
                                            (_%tl-vars128491%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128889_ 1))))
                                        (let _%lp128493%_ ((_%rest128495%_
                                                            _%hd-vars128489%_)
                                                           (_%targets128496%_
                                                            '())
                                                           (_%vars128497%_
                                                            _%tl-vars128491%_))
                                          (let* ((_%rest128498128508%_
                                                  _%rest128495%_)
                                                 (_%else128500128516%_
                                                  (lambda ()
                                                    (if (null? _%targets128496%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx128313%_
                                                           _%where128483%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth128484%_
                                    (cons _%hd-e128488%_
                                          (cons _%tl-e128490%_
                                                _%targets128496%_))))
                        _%vars128497%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K128502128528%_
                                                  (lambda (_%rest128519%_
                                                           _%hd-pat128520%_
                                                           _%hd-depth*128521%_)
                                                    (let ((_%hd-depth128523%_
                                                           (fx- _%hd-depth*128521%_
                                                                _%depth128484%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth128523%_))
                                                          (_%lp128493%_
                                                           _%rest128519%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat128520%_)
                         _%targets128496%_)
                   (cons (cons _%hd-depth128523%_ _%hd-pat128520%_)
                         _%vars128497%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth128523%_))
                      (_%lp128493%_
                       _%rest128519%_
                       (cons (cons 'pattern _%hd-pat128520%_)
                             _%targets128496%_)
                       _%vars128497%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx128313%_
                         _%where128483%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%rest128498128508%_))
                                                (let ((_%hd128503128531%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest128498128508%_)))
                                                      (_%tl128504128533%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest128498128508%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd128503128531%_))
                                                      (let ((_%hd128505128536%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd128503128531%_)))
                    (_%tl128506128538%_
                     (let () (declare (not safe)) (##cdr _%hd128503128531%_))))
                (let* ((_%hd-depth*128541%_ _%hd128505128536%_)
                       (_%hd-pat128543%_ _%tl128506128538%_)
                       (_%rest128545%_ _%tl128504128533%_))
                  (_%K128502128528%_
                   _%rest128545%_
                   _%hd-pat128543%_
                   _%hd-depth*128541%_)))
              (_%else128500128516%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else128500128516%_))))))))))
                             (_%recur128361%_
                              (lambda (_%e128366%_ _%is-e?128367%_)
                                (if (_%is-e?128367%_ _%e128366%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx128313%_))
                                    (if (gx#syntax-local-pattern? _%e128366%_)
                                        (let* ((_%pat128371%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e128366%_)))
                                               (_%depth128373%_
                                                (##structure-ref
                                                 _%pat128371%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth128373%_)
                                              (values (cons 'ref _%pat128371%_)
                                                      (cons (cons _%depth128373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat128371%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat128371%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e128366%_))
                                            (values (cons 'term _%e128366%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e128366%_))
                                                (let* ((_%e128377128384%_
                                                        _%e128366%_)
                                                       (_%E128379128388%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e128377128384%_))))
                                                       (_%E128378128470%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e128377128384%_))
                      (let ((_%e128380128392%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e128377128384%_))))
                        (let ((_%hd128381128395%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e128380128392%_)))
                              (_%tl128382128397%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e128380128392%_))))
                          (let* ((_%hd128400%_ _%hd128381128395%_)
                                 (_%rest128402%_ _%tl128382128397%_))
                            (if '#t
                                (if (_%is-e?128367%_ _%hd128400%_)
                                    (let* ((_%e128403128410%_ _%rest128402%_)
                                           (_%E128405128414%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _%stx128313%_
                                                 _%e128366%_))))
                                           (_%E128404128428%_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%e128403128410%_))
                                                  (let ((_%e128406128418%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e128403128410%_))))
                                                    (let ((_%hd128407128421%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e128406128418%_)))
                                                          (_%tl128408128423%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e128406128418%_))))
                                                      (let ((_%rest128426%_
                                                             _%hd128407128421%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl128408128423%_))
                                                            (if '#t
                                                                (_%recur128361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rest128426%_
                         false)
                        (_%E128405128414%_))
                    (_%E128405128414%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E128405128414%_)))))
                                      (_%E128404128428%_))
                                    (let _%lp128432%_ ((_%rest128434%_
                                                        _%rest128402%_)
                                                       (_%depth128435%_ '0))
                                      (let* ((_%e128436128443%_ _%rest128434%_)
                                             (_%E128438128447%_
                                              (lambda ()
                                                (if (fxpositive?
                                                     _%depth128435%_)
                                                    (_%make-splice128360%_
                                                     _%e128366%_
                                                     _%depth128435%_
                                                     (_%recur128361%_
                                                      _%hd128400%_
                                                      _%is-e?128367%_)
                                                     (_%recur128361%_
                                                      _%rest128434%_
                                                      _%is-e?128367%_))
                                                    (_%make-cons128359%_
                                                     (_%recur128361%_
                                                      _%hd128400%_
                                                      _%is-e?128367%_)
                                                     (_%recur128361%_
                                                      _%rest128434%_
                                                      _%is-e?128367%_)))))
                                             (_%E128437128466%_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%e128436128443%_))
                                                    (let ((_%e128439128451%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%e128436128443%_))))
                                                      (let ((_%hd128440128454%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e128439128451%_)))
                    (_%tl128441128456%_
                     (let () (declare (not safe)) (##cdr _%e128439128451%_))))
                (let* ((_%rest-hd128459%_ _%hd128440128454%_)
                       (_%rest-tl128461%_ _%tl128441128456%_))
                  (if '#t
                      (if (_%is-e?128367%_ _%rest-hd128459%_)
                          (_%lp128432%_
                           _%rest-tl128461%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%depth128435%_ '1)))
                          (if (fxpositive? _%depth128435%_)
                              (_%make-splice128360%_
                               _%e128366%_
                               _%depth128435%_
                               (_%recur128361%_ _%hd128400%_ _%is-e?128367%_)
                               (_%recur128361%_
                                _%rest128434%_
                                _%is-e?128367%_))
                              (_%make-cons128359%_
                               (_%recur128361%_ _%hd128400%_ _%is-e?128367%_)
                               (_%recur128361%_
                                _%rest128434%_
                                _%is-e?128367%_))))
                      (_%E128438128447%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E128438128447%_)))))
                                        (_%E128437128466%_))))
                                (_%E128379128388%_)))))
                      (_%E128379128388%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E128378128470%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e128366%_))
                                                    (let ((_g128891_
                                                           (_%recur128361%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e128366%_)))
                    _%is-e?128367%_)))
              (begin
                (let ((_g128892_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g128891_)
                             (##vector-length _g128891_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g128892_ 2)))
                      (error "Context expects 2 values" _g128892_)))
                (let ((_%e128475%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g128891_ 0)))
                      (_%vars128476%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g128891_ 1))))
                  (values (cons 'vector _%e128475%_) _%vars128476%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e128366%_))
                                                        (let ((_g128893_
                                                               (_%recur128361%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e128366%_)))
                        _%is-e?128367%_)))
                  (begin
                    (let ((_g128894_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g128893_)
                                 (##vector-length _g128893_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g128894_ 2)))
                          (error "Context expects 2 values" _g128894_)))
                    (let ((_%e128479%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g128893_ 0)))
                          (_%vars128480%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g128893_ 1))))
                      (values (cons 'box _%e128479%_) _%vars128480%_))))
                (values (cons 'datum _%e128366%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g128895_
                             (_%recur128361%_ _%e128357%_ gx#ellipsis?)))
                        (begin
                          (let ((_g128896_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g128895_)
                                       (##vector-length _g128895_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g128896_ 2)))
                                (error "Context expects 2 values" _g128896_)))
                          (let ((_%tree128363%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g128895_ 0)))
                                (_%vars128364%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g128895_ 1))))
                            (if (null? _%vars128364%_)
                                _%tree128363%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx128313%_
                                   _%vars128364%_))))))))))
          (let* ((_%e128317128327%_ _%stx128313%_)
                 (_%E128319128331%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx128313%_))))
                 (_%E128318128353%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e128317128327%_))
                        (let ((_%e128320128335%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e128317128327%_))))
                          (let ((_%hd128321128338%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e128320128335%_)))
                                (_%tl128322128340%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e128320128335%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl128322128340%_))
                                (let ((_%e128323128343%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl128322128340%_))))
                                  (let ((_%hd128324128346%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e128323128343%_)))
                                        (_%tl128325128348%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e128323128343%_))))
                                    (let ((_%form128351%_ _%hd128324128346%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl128325128348%_))
                                          (if '#t
                                              (let ((__tmp128898
                                                     (_%generate128315%_
                                                      (_%parse128316%_
                                                       _%form128351%_)))
                                                    (__tmp128897
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _%stx128313%_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp128898
                                                 __tmp128897))
                                              (_%E128319128331%_))
                                          (_%E128319128331%_)))))
                                (_%E128319128331%_))))
                        (_%E128319128331%_)))))
            (_%E128318128353%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx127562%_
               _%identifier=?127563%_
               _%unwrap-e127564%_
               _%wrap-e127565%_)
        (letrec ((_%generate-bindings127567%_
                  (lambda (_%target128177%_
                           _%ids128178%_
                           _%clauses128179%_
                           _%clause-ids128180%_
                           _%E128181%_)
                    (letrec ((_%generate1128183%_
                              (lambda (_%clause128280%_
                                       _%clause-id128281%_
                                       _%E128282%_)
                                (cons (cons _%clause-id128281%_ '())
                                      (cons (let ((__tmp128900
                                                   (cons _%target128177%_ '()))
                                                  (__tmp128899
                                                   (_%generate-clause127569%_
                                                    _%target128177%_
                                                    _%ids128178%_
                                                    _%clause128280%_
                                                    _%E128282%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp128900
                                               __tmp128899))
                                            '())))))
                      (let _%lp128185%_ ((_%rest128187%_ _%clauses128179%_)
                                         (_%rest-ids128188%_
                                          _%clause-ids128180%_)
                                         (_%bindings128189%_ '()))
                        (let* ((_%rest128190128198%_ _%rest128187%_)
                               (_%else128192128206%_
                                (lambda () _%bindings128189%_))
                               (_%K128194128268%_
                                (lambda (_%rest128209%_ _%clause128210%_)
                                  (let* ((_%rest-ids128211128218%_
                                          _%rest-ids128188%_)
                                         (_%E128213128222%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids128211128218%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K128214128256%_
                                          (lambda (_%rest-ids128225%_
                                                   _%clause-id128226%_)
                                            (let* ((_%rest-ids128227128235%_
                                                    _%rest-ids128225%_)
                                                   (_%else128229128243%_
                                                    (lambda ()
                                                      (cons (_%generate1128183%_
                                                             _%clause128210%_
                                                             _%clause-id128226%_
                                                             _%E128181%_)
                                                            _%bindings128189%_)))
                                                   (_%K128231128248%_
                                                    (lambda (_%next-clause-id128246%_)
                                                      (_%lp128185%_
                                                       _%rest128209%_
                                                       _%rest-ids128225%_
                                                       (cons (_%generate1128183%_
                                                              _%clause128210%_
                                                              _%clause-id128226%_
                                                              _%next-clause-id128246%_)
                                                             _%bindings128189%_)))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%rest-ids128227128235%_))
                                                  (let* ((_%hd128232128251%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids128227128235%_)))
                                                         (_%next-clause-id128254%_
                                                          _%hd128232128251%_))
                                                    (_%K128231128248%_
                                                     _%next-clause-id128254%_))
                                                  (_%else128229128243%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%rest-ids128211128218%_))
                                        (let ((_%hd128215128259%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids128211128218%_)))
                                              (_%tl128216128261%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids128211128218%_))))
                                          (let* ((_%clause-id128264%_
                                                  _%hd128215128259%_)
                                                 (_%rest-ids128266%_
                                                  _%tl128216128261%_))
                                            (_%K128214128256%_
                                             _%rest-ids128266%_
                                             _%clause-id128264%_)))
                                        (_%E128213128222%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest128190128198%_))
                              (let ((_%hd128195128271%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest128190128198%_)))
                                    (_%tl128196128273%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest128190128198%_))))
                                (let* ((_%clause128276%_ _%hd128195128271%_)
                                       (_%rest128278%_ _%tl128196128273%_))
                                  (_%K128194128268%_
                                   _%rest128278%_
                                   _%clause128276%_)))
                              (_%else128192128206%_)))))))
                 (_%generate-body127568%_
                  (lambda (_%bindings128137%_ _%body128138%_)
                    (let _%recur128140%_ ((_%rest128142%_ _%bindings128137%_))
                      (let* ((_%rest128143128151%_ _%rest128142%_)
                             (_%else128145128159%_ (lambda () _%body128138%_))
                             (_%K128147128165%_
                              (lambda (_%rest128162%_ _%hd128163%_)
                                (let ((__tmp128902 (cons _%hd128163%_ '()))
                                      (__tmp128901
                                       (_%recur128140%_ _%rest128162%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp128902
                                   __tmp128901)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest128143128151%_))
                            (let ((_%hd128148128168%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest128143128151%_)))
                                  (_%tl128149128170%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest128143128151%_))))
                              (let* ((_%hd128173%_ _%hd128148128168%_)
                                     (_%rest128175%_ _%tl128149128170%_))
                                (_%K128147128165%_
                                 _%rest128175%_
                                 _%hd128173%_)))
                            (_%else128145128159%_))))))
                 (_%generate-clause127569%_
                  (lambda (_%target128000%_
                           _%ids128001%_
                           _%clause128002%_
                           _%E128003%_)
                    (letrec ((_%generate1128005%_
                              (lambda (_%hd128092%_
                                       _%fender128093%_
                                       _%body128094%_)
                                (let ((_g128903_
                                       (_%parse-clause127571%_
                                        _%hd128092%_
                                        _%ids128001%_)))
                                  (begin
                                    (let ((_g128904_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g128903_)
                                                 (##vector-length _g128903_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g128904_ 2)))
                                          (error "Context expects 2 values"
                                                 _g128904_)))
                                    (let ((_%e128096%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128903_ 0)))
                                          (_%mvars128097%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128903_ 1))))
                                      (let* ((_%pvars128099%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars128097%_))))
                                             (_%E128101%_
                                              (cons _%E128003%_
                                                    (cons _%target128000%_
                                                          '())))
                                             (_%K128134%_
                                              (let ((__tmp128905
                                                     (let ((__tmp128907
                                                            (map (lambda (_%mvar128103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar128104%_)
                           (let* ((_%mvar128105128112%_ _%mvar128103%_)
                                  (_%E128107128116%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar128105128112%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K128108128122%_
                                   (lambda (_%depth128119%_ _%id128120%_)
                                     (cons _%id128120%_
                                           (cons (let ((__tmp128909
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id128120%_)))
                                                       (__tmp128908
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar128104%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp128909
                                                    __tmp128908
                                                    _%depth128119%_))
                                                 '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%mvar128105128112%_))
                                 (let ((_%hd128109128125%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar128105128112%_)))
                                       (_%tl128110128127%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar128105128112%_))))
                                   (let* ((_%id128130%_ _%hd128109128125%_)
                                          (_%depth128132%_ _%tl128110128127%_))
                                     (_%K128108128122%_
                                      _%depth128132%_
                                      _%id128130%_)))
                                 (_%E128107128116%_))))
                         _%mvars128097%_
                         _%pvars128099%_))
                   (__tmp128906
                    (if (eq? _%fender128093%_ '#t)
                        _%body128094%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender128093%_
                           _%body128094%_
                           _%E128101%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp128907 __tmp128906))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars128099%_
                                                 __tmp128905))))
                                        (_%generate-match127570%_
                                         _%hd128092%_
                                         _%target128000%_
                                         _%e128096%_
                                         _%mvars128097%_
                                         _%K128134%_
                                         _%E128101%_))))))))
                      (let* ((_%e128006128026%_ _%clause128002%_)
                             (_%E128015128030%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e128006128026%_))))
                             (_%E128008128064%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128006128026%_))
                                    (let ((_%e128016128034%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128006128026%_))))
                                      (let ((_%hd128017128037%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128016128034%_)))
                                            (_%tl128018128039%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128016128034%_))))
                                        (let ((_%hd128042%_
                                               _%hd128017128037%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128018128039%_))
                                              (let ((_%e128019128044%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128018128039%_))))
                                                (let ((_%hd128020128047%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128019128044%_)))
                                                      (_%tl128021128049%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128019128044%_))))
                                                  (let ((_%fender128052%_
                                                         _%hd128020128047%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl128021128049%_))
                                                        (let ((_%e128022128054%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl128021128049%_))))
                  (let ((_%hd128023128057%_
                         (let ()
                           (declare (not safe))
                           (##car _%e128022128054%_)))
                        (_%tl128024128059%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e128022128054%_))))
                    (let ((_%body128062%_ _%hd128023128057%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl128024128059%_))
                          (if '#t
                              (_%generate1128005%_
                               _%hd128042%_
                               _%fender128052%_
                               _%body128062%_)
                              (_%E128015128030%_))
                          (_%E128015128030%_)))))
                (_%E128015128030%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E128015128030%_)))))
                                    (_%E128015128030%_))))
                             (_%E128007128088%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128006128026%_))
                                    (let ((_%e128009128068%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128006128026%_))))
                                      (let ((_%hd128010128071%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128009128068%_)))
                                            (_%tl128011128073%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128009128068%_))))
                                        (let ((_%hd128076%_
                                               _%hd128010128071%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128011128073%_))
                                              (let ((_%e128012128078%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128011128073%_))))
                                                (let ((_%hd128013128081%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128012128078%_)))
                                                      (_%tl128014128083%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128012128078%_))))
                                                  (let ((_%body128086%_
                                                         _%hd128013128081%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl128014128083%_))
                                                        (if '#t
                                                            (_%generate1128005%_
                                                             _%hd128076%_
                                                             '#t
                                                             _%body128086%_)
                                                            (_%E128008128064%_))
                                                        (_%E128008128064%_)))))
                                              (_%E128008128064%_)))))
                                    (_%E128008128064%_)))))
                        (_%E128007128088%_)))))
                 (_%generate-match127570%_
                  (lambda (_%where127749%_
                           _%target127750%_
                           _%hd127751%_
                           _%mvars127752%_
                           _%K127753%_
                           _%E127754%_)
                    (letrec ((_%BUG127756%_
                              (lambda (_%q127998%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx127562%_
                                         _%hd127751%_
                                         _%q127998%_))))
                             (_%recur127757%_
                              (lambda (_%e127848%_
                                       _%vars127849%_
                                       _%target127850%_
                                       _%E127851%_
                                       _%k127852%_)
                                (let* ((_%e127853127860%_ _%e127848%_)
                                       (_%E127855127864%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e127853127860%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K127856127986%_
                                        (lambda (_%body127867%_ _%tag127868%_)
                                          (let ((_%$e127870%_ _%tag127868%_))
                                            (if (eq? 'any _%$e127870%_)
                                                (_%k127852%_ _%vars127849%_)
                                                (if (eq? 'id _%$e127870%_)
                                                    (let ((__tmp128914
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target127850%_)))
                                                          (__tmp128910
                                                           (let ((__tmp128912
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128913
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e127565%_
                                    _%body127867%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?127563%_
                             __tmp128913
                             _%target127850%_)))
                         (__tmp128911 (_%k127852%_ _%vars127849%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp128912 __tmp128911 _%E127851%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp128914 __tmp128910 _%E127851%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e127870%_)
                                                        (_%k127852%_
                                                         (cons (cons _%body127867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target127850%_)
                       _%vars127849%_))
                (if (eq? 'cons _%$e127870%_)
                    (let ((_%$e127873%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd127874%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl127875%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp128920
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target127850%_)))
                            (__tmp128915
                             (let ((__tmp128919
                                    (cons (cons (cons _%$e127873%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e127564%_
                                                         _%target127850%_))
                                                      '()))
                                          '()))
                                   (__tmp128916
                                    (let ((__tmp128918
                                           (cons (cons (cons _%$hd127874%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e127873%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl127875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e127873%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp128917
                                           (let* ((_%body127876127883%_
                                                   _%body127867%_)
                                                  (_%E127878127887%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body127876127883%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K127879127895%_
                                                   (lambda (_%tl127890%_
                                                            _%hd127891%_)
                                                     (_%recur127757%_
                                                      _%hd127891%_
                                                      _%vars127849%_
                                                      _%$hd127874%_
                                                      _%E127851%_
                                                      (lambda (_%vars127893%_)
                                                        (_%recur127757%_
                                                         _%tl127890%_
                                                         _%vars127893%_
                                                         _%$tl127875%_
                                                         _%E127851%_
                                                         _%k127852%_))))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _%body127876127883%_))
                                                 (let ((_%hd127880127898%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body127876127883%_)))
                                                       (_%tl127881127900%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body127876127883%_))))
                                                   (let* ((_%hd127903%_
                                                           _%hd127880127898%_)
                                                          (_%tl127905%_
                                                           _%tl127881127900%_))
                                                     (_%K127879127895%_
                                                      _%tl127905%_
                                                      _%hd127903%_)))
                                                 (_%E127878127887%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp128918
                                       __tmp128917))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp128919
                                __tmp128916))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp128920
                         __tmp128915
                         _%E127851%_)))
                    (if (eq? 'splice _%$e127870%_)
                        (let* ((_%body127906127913%_ _%body127867%_)
                               (_%E127908127917%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body127906127913%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K127909127968%_
                                (lambda (_%tl127920%_ _%hd127921%_)
                                  (let* ((_%rlen127923%_
                                          (_%splice-rlen127758%_ _%tl127920%_))
                                         (_%$target127925%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd127927%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl127929%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp127931%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e127933%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd127935%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl127937%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars127939%_
                                          (_%splice-vars127759%_ _%hd127921%_))
                                         (_%lvars127941%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars127939%_)))
                                         (_%tlvars127943%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars127939%_)))
                                         (_%linit127947%_
                                          (map (lambda (_%var127945%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars127941%_)))
                                    (letrec ((_%make-loop127950%_
                                              (lambda (_%vars127954%_)
                                                (let ((__tmp128922
                                                       (cons (cons (cons _%$lp127931%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp128935
                                        (cons _%$hd127927%_ _%lvars127941%_))
                                       (__tmp128923
                                        (let ((__tmp128934
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd127927%_)))
                                              (__tmp128928
                                               (let ((__tmp128933
                                                      (cons (cons (cons _%$lp-e127933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e127564%_
                                   _%$hd127927%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp128929
                                                      (let ((__tmp128932
                                                             (cons (cons (cons _%$lp-hd127935%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e127933%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl127937%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e127933%_))
                                             '()))
                                 '())))
                    (__tmp128930
                     (_%recur127757%_
                      _%hd127921%_
                      '()
                      _%$lp-hd127935%_
                      _%E127851%_
                      (lambda (_%hdvars127956%_)
                        (cons _%$lp127931%_
                              (cons _%$lp-tl127937%_
                                    (map (lambda (_%svar127958%_
                                                  _%lvar127959%_)
                                           (let ((__tmp128931
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar127958%_
                                                     _%hdvars127956%_
                                                     _%BUG127756%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp128931
                                              _%lvar127959%_)))
                                         _%svars127939%_
                                         _%lvars127941%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp128932 __tmp128930))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp128933
                                                  __tmp128929)))
                                              (__tmp128924
                                               (let ((__tmp128927
                                                      (map (lambda (_%lvar127961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar127962%_)
                     (cons (cons _%tlvar127962%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar127961%_))
                                 '())))
                   _%lvars127941%_
                   _%tlvars127943%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp128925
                                                      (_%k127852%_
                                                       (let ((__tmp128926
                                                              (lambda (_%svar127964%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar127965%_
                               _%r127966%_)
                        (cons (cons _%svar127964%_ _%tlvar127965%_)
                              _%r127966%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp128926
                  _%vars127954%_
                  _%svars127939%_
                  _%tlvars127943%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp128927
                                                  __tmp128925))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp128934
                                           __tmp128928
                                           __tmp128924))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp128935
                                    __tmp128923))
                                 '()))
                     '()))
              (__tmp128921
               (cons _%$lp127931%_ (cons _%$target127925%_ _%linit127947%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp128922
                                                   __tmp128921)))))
                                      (let ((_%body127952%_
                                             (let ((__tmp128937
                                                    (cons (cons (cons _%$target127925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl127929%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target127850%_
                                 _%rlen127923%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp128936
                                                    (_%recur127757%_
                                                     _%tl127920%_
                                                     _%vars127849%_
                                                     _%$tl127929%_
                                                     _%E127851%_
                                                     _%make-loop127950%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp128937
                                                __tmp128936))))
                                        (let ((__tmp128941
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target127850%_)))
                                              (__tmp128938
                                               (if (zero? _%rlen127923%_)
                                                   _%body127952%_
                                                   (let ((__tmp128939
                                                          (let ((__tmp128940
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target127850%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp128940 _%rlen127923%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp128939
                                                      _%body127952%_
                                                      _%E127851%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp128941
                                           __tmp128938
                                           _%E127851%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%body127906127913%_))
                              (let ((_%hd127910127971%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body127906127913%_)))
                                    (_%tl127911127973%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body127906127913%_))))
                                (let* ((_%hd127976%_ _%hd127910127971%_)
                                       (_%tl127978%_ _%tl127911127973%_))
                                  (_%K127909127968%_
                                   _%tl127978%_
                                   _%hd127976%_)))
                              (_%E127908127917%_)))
                        (if (eq? 'null _%$e127870%_)
                            (let ((__tmp128943
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target127850%_)))
                                  (__tmp128942 (_%k127852%_ _%vars127849%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp128943
                               __tmp128942
                               _%E127851%_))
                            (if (eq? 'vector _%$e127870%_)
                                (let ((_%$e127980%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp128948
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target127850%_)))
                                        (__tmp128944
                                         (let ((__tmp128946
                                                (cons (cons (cons _%$e127980%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp128947
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e127564%_
                                    _%target127850%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp128947))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp128945
                                                (_%recur127757%_
                                                 _%body127867%_
                                                 _%vars127849%_
                                                 _%$e127980%_
                                                 _%E127851%_
                                                 _%k127852%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp128946
                                            __tmp128945))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp128948
                                     __tmp128944
                                     _%E127851%_)))
                                (if (eq? 'box _%$e127870%_)
                                    (let ((_%$e127982%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp128953
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target127850%_)))
                                            (__tmp128949
                                             (let ((__tmp128951
                                                    (cons (cons (cons _%$e127982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp128952
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e127564%_
                                        _%target127850%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp128952))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp128950
                                                    (_%recur127757%_
                                                     _%body127867%_
                                                     _%vars127849%_
                                                     _%$e127982%_
                                                     _%E127851%_
                                                     _%k127852%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp128951
                                                __tmp128950))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp128953
                                         __tmp128949
                                         _%E127851%_)))
                                    (if (eq? 'datum _%$e127870%_)
                                        (let ((_%$e127984%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp128959
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target127850%_)))
                                                (__tmp128954
                                                 (let ((__tmp128958
                                                        (cons (cons (cons _%$e127984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target127850%_))
                                  '()))
                      '()))
               (__tmp128955
                (let ((__tmp128957
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e127984%_ _%body127867%_)))
                      (__tmp128956 (_%k127852%_ _%vars127849%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp128957 __tmp128956 _%E127851%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp128958
                                                    __tmp128955))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp128959
                                             __tmp128954
                                             _%E127851%_)))
                                        (_%BUG127756%_
                                         _%e127848%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%e127853127860%_))
                                      (let ((_%hd127857127989%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e127853127860%_)))
                                            (_%tl127858127991%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e127853127860%_))))
                                        (let* ((_%tag127994%_
                                                _%hd127857127989%_)
                                               (_%body127996%_
                                                _%tl127858127991%_))
                                          (_%K127856127986%_
                                           _%body127996%_
                                           _%tag127994%_)))
                                      (_%E127855127864%_)))))
                             (_%splice-rlen127758%_
                              (lambda (_%e127810%_)
                                (let _%lp127812%_ ((_%e127814%_ _%e127810%_)
                                                   (_%n127815%_ '0))
                                  (let* ((_%e127816127823%_ _%e127814%_)
                                         (_%E127818127827%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e127816127823%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K127819127836%_
                                          (lambda (_%body127830%_
                                                   _%tag127831%_)
                                            (let ((_%$e127833%_ _%tag127831%_))
                                              (if (eq? 'splice _%$e127833%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx127562%_
                                                     _%where127749%_))
                                                  (if (eq? 'cons _%$e127833%_)
                                                      (_%lp127812%_
                                                       (cdr _%body127830%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n127815%_
                                                                '1)))
                                                      _%n127815%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e127816127823%_))
                                        (let ((_%hd127820127839%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e127816127823%_)))
                                              (_%tl127821127841%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e127816127823%_))))
                                          (let* ((_%tag127844%_
                                                  _%hd127820127839%_)
                                                 (_%body127846%_
                                                  _%tl127821127841%_))
                                            (_%K127819127836%_
                                             _%body127846%_
                                             _%tag127844%_)))
                                        (_%E127818127827%_))))))
                             (_%splice-vars127759%_
                              (lambda (_%e127766%_)
                                (let _%recur127768%_ ((_%e127770%_ _%e127766%_)
                                                      (_%vars127771%_ '()))
                                  (let* ((_%e127772127779%_ _%e127770%_)
                                         (_%E127774127783%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e127772127779%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K127775127798%_
                                          (lambda (_%body127786%_
                                                   _%tag127787%_)
                                            (let ((_%$e127789%_ _%tag127787%_))
                                              (if (eq? 'var _%$e127789%_)
                                                  (cons _%body127786%_
                                                        _%vars127771%_)
                                                  (if (or (eq? 'cons
                                                               _%$e127789%_)
                                                          (eq? 'splice
                                                               _%$e127789%_))
                                                      (_%recur127768%_
                                                       (cdr _%body127786%_)
                                                       (_%recur127768%_
                                                        (car _%body127786%_)
                                                        _%vars127771%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e127789%_)
                      (eq? 'box _%$e127789%_))
                  (_%recur127768%_ _%body127786%_ _%vars127771%_)
                  _%vars127771%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e127772127779%_))
                                        (let ((_%hd127776127801%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e127772127779%_)))
                                              (_%tl127777127803%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e127772127779%_))))
                                          (let* ((_%tag127806%_
                                                  _%hd127776127801%_)
                                                 (_%body127808%_
                                                  _%tl127777127803%_))
                                            (_%K127775127798%_
                                             _%body127808%_
                                             _%tag127806%_)))
                                        (_%E127774127783%_))))))
                             (_%make-body127760%_
                              (lambda (_%vars127762%_)
                                (cons _%K127753%_
                                      (map (lambda (_%mvar127764%_)
                                             (let ((__tmp128960
                                                    (car _%mvar127764%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp128960
                                                _%vars127762%_
                                                _%BUG127756%_)))
                                           _%mvars127752%_)))))
                      (_%recur127757%_
                       _%hd127751%_
                       '()
                       _%target127750%_
                       _%E127754%_
                       _%make-body127760%_))))
                 (_%parse-clause127571%_
                  (lambda (_%hd127643%_ _%ids127644%_)
                    (let _%recur127646%_ ((_%e127648%_ _%hd127643%_)
                                          (_%vars127649%_ '())
                                          (_%depth127650%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e127648%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e127648%_))
                              (values '(any) _%vars127649%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e127648%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx127562%_
                                     _%hd127643%_))
                                  (if (let ((__tmp128961
                                             (lambda (_%id127655%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e127648%_
                                                  _%id127655%_)))))
                                        (declare (not safe))
                                        (__find __tmp128961 _%ids127644%_))
                                      (values (cons 'id _%e127648%_)
                                              _%vars127649%_)
                                      (if (let ((__tmp128962
                                                 (lambda (_%var127658%_)
                                                   (let ((__tmp128963
                                                          (car _%var127658%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e127648%_
                                                      __tmp128963)))))
                                            (declare (not safe))
                                            (__find __tmp128962
                                                    _%vars127649%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx127562%_
                                             _%e127648%_))
                                          (values (cons 'var _%e127648%_)
                                                  (cons (cons _%e127648%_
                                                              _%depth127650%_)
                                                        _%vars127649%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e127648%_))
                              (let* ((_%e127662127669%_ _%e127648%_)
                                     (_%E127664127673%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e127662127669%_))))
                                     (_%E127663127734%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e127662127669%_))
                                            (let ((_%e127665127677%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e127662127669%_))))
                                              (let ((_%hd127666127680%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e127665127677%_)))
                                                    (_%tl127667127682%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e127665127677%_))))
                                                (let* ((_%hd127685%_
                                                        _%hd127666127680%_)
                                                       (_%rest127687%_
                                                        _%tl127667127682%_))
                                                  (if '#t
                                                      (let* ((_%make-pair127702%_
                                                              (lambda (_%tag127689%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd127690%_
                               _%tl127691%_)
                        (let* ((_%hd-depth127693%_
                                (if (eq? _%tag127689%_ 'splice)
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%depth127650%_ '1))
                                    _%depth127650%_))
                               (_g128964_
                                (_%recur127646%_
                                 _%hd127690%_
                                 _%vars127649%_
                                 _%hd-depth127693%_)))
                          (begin
                            (let ((_g128965_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g128964_)
                                         (##vector-length _g128964_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g128965_ 2)))
                                  (error "Context expects 2 values"
                                         _g128965_)))
                            (let ((_%hd127695%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g128964_ 0)))
                                  (_%vars127696%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g128964_ 1))))
                              (let ((_g128966_
                                     (_%recur127646%_
                                      _%tl127691%_
                                      _%vars127696%_
                                      _%depth127650%_)))
                                (begin
                                  (let ((_g128967_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g128966_)
                                               (##vector-length _g128966_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g128967_ 2)))
                                        (error "Context expects 2 values"
                                               _g128967_)))
                                  (let ((_%tl127698%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g128966_ 0)))
                                        (_%vars127699%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g128966_ 1))))
                                    (values (cons _%tag127689%_
                                                  (cons _%hd127695%_
                                                        _%tl127698%_))
                                            _%vars127699%_)))))))))
                     (_%e127703127710%_ _%rest127687%_)
                     (_%E127705127714%_
                      (lambda ()
                        (_%make-pair127702%_
                         'cons
                         _%hd127685%_
                         _%rest127687%_)))
                     (_%E127704127730%_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%e127703127710%_))
                            (let ((_%e127706127718%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%e127703127710%_))))
                              (let ((_%hd127707127721%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e127706127718%_)))
                                    (_%tl127708127723%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e127706127718%_))))
                                (let* ((_%rest-hd127726%_ _%hd127707127721%_)
                                       (_%rest-tl127728%_ _%tl127708127723%_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _%rest-hd127726%_))
                                          (_%make-pair127702%_
                                           'splice
                                           _%hd127685%_
                                           _%rest-tl127728%_)
                                          (_%make-pair127702%_
                                           'cons
                                           _%hd127685%_
                                           _%rest127687%_))
                                      (_%E127705127714%_)))))
                            (_%E127705127714%_)))))
                (_%E127704127730%_))
              (_%E127664127673%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E127664127673%_)))))
                                (_%E127663127734%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e127648%_))
                                  (values '(null) _%vars127649%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e127648%_))
                                      (let ((_g128968_
                                             (_%recur127646%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e127648%_)))
                                              _%vars127649%_
                                              _%depth127650%_)))
                                        (begin
                                          (let ((_g128969_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g128968_)
                                                       (##vector-length
                                                        _g128968_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g128969_ 2)))
                                                (error "Context expects 2 values"
                                                       _g128969_)))
                                          (let ((_%e127740%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g128968_ 0)))
                                                (_%vars127741%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g128968_
                                                    1))))
                                            (values (cons 'vector _%e127740%_)
                                                    _%vars127741%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e127648%_))
                                          (let ((_g128970_
                                                 (_%recur127646%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e127648%_)))
                                                  _%vars127649%_
                                                  _%depth127650%_)))
                                            (begin
                                              (let ((_g128971_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g128970_)
                                                           (##vector-length
                                                            _g128970_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g128971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g128971_)))
                                              (let ((_%e127744%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g128970_
                                                        0)))
                                                    (_%vars127745%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g128970_
                                                        1))))
                                                (values (cons 'box _%e127744%_)
                                                        _%vars127745%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e127648%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e127648%_)))
                                                      _%vars127649%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx127562%_
                                                 _%e127648%_))))))))))))
          (let* ((_%e127572127585%_ _%stx127562%_)
                 (_%E127574127589%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e127572127585%_))))
                 (_%E127573127639%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e127572127585%_))
                        (let ((_%e127575127593%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e127572127585%_))))
                          (let ((_%hd127576127596%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e127575127593%_)))
                                (_%tl127577127598%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e127575127593%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl127577127598%_))
                                (let ((_%e127578127601%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl127577127598%_))))
                                  (let ((_%hd127579127604%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e127578127601%_)))
                                        (_%tl127580127606%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e127578127601%_))))
                                    (let ((_%expr127609%_ _%hd127579127604%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl127580127606%_))
                                          (let ((_%e127581127611%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl127580127606%_))))
                                            (let ((_%hd127582127614%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e127581127611%_)))
                                                  (_%tl127583127616%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e127581127611%_))))
                                              (let* ((_%ids127619%_
                                                      _%hd127582127614%_)
                                                     (_%clauses127621%_
                                                      _%tl127583127616%_))
                                                (if '#t
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#identifier-list? _%ids127619%_)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _%stx127562%_
                   _%ids127619%_))
                (if (not (let ()
                           (declare (not safe))
                           (gx#stx-list? _%clauses127621%_)))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _%stx127562%_))
                    (let* ((_%ids127626%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _%ids127619%_)))
                           (_%clauses127628%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _%clauses127621%_)))
                           (_%clause-ids127630%_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _%clauses127628%_)))
                           (_%E127632%_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_%target127634%_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_%first127636%_
                            (if (null? _%clauses127628%_)
                                _%E127632%_
                                (car _%clause-ids127630%_))))
                      (let ((__tmp128973
                             (let ((__tmp128974
                                    (let ((__tmp128976
                                           (let ((__tmp128978
                                                  (cons (cons (cons _%E127632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp128980 (cons _%target127634%_ '()))
                                  (__tmp128979
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%target127634%_))))
                              (declare (not safe))
                              (gx#core-list 'lambda% __tmp128980 __tmp128979))
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (__tmp128977
                                                  (_%generate-body127568%_
                                                   (_%generate-bindings127567%_
                                                    _%target127634%_
                                                    _%ids127626%_
                                                    _%clauses127628%_
                                                    _%clause-ids127630%_
                                                    _%E127632%_)
                                                   (cons _%first127636%_
                                                         (cons _%expr127609%_
                                                               '())))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp128978
                                              __tmp128977)))
                                          (__tmp128975
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _%stx127562%_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp128976
                                       __tmp128975))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp128974)))
                            (__tmp128972
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx127562%_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp128973 __tmp128972)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E127574127589%_)))))
                                          (_%E127574127589%_)))))
                                (_%E127574127589%_))))
                        (_%E127574127589%_)))))
            (_%E127573127639%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx128287%_)
        (let* ((_%identifier=?128289%_ 'free-identifier=?)
               (_%unwrap-e128291%_ 'syntax-e)
               (_%wrap-e128293%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx128287%_
           _%identifier=?128289%_
           _%unwrap-e128291%_
           _%wrap-e128293%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx128295%_ _%identifier=?128296%_)
        (let* ((_%unwrap-e128298%_ 'syntax-e) (_%wrap-e128300%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx128295%_
           _%identifier=?128296%_
           _%unwrap-e128298%_
           _%wrap-e128300%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx128302%_ _%identifier=?128303%_ _%unwrap-e128304%_)
        (let ((_%wrap-e128306%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx128302%_
           _%identifier=?128303%_
           _%unwrap-e128304%_
           _%wrap-e128306%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g128982_
        (let ((_g128981_ (let () (declare (not safe)) (##length _g128982_))))
          (cond ((let () (declare (not safe)) (##fx= _g128981_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g128982_))
                ((let () (declare (not safe)) (##fx= _g128981_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g128982_))
                ((let () (declare (not safe)) (##fx= _g128981_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g128982_))
                ((let () (declare (not safe)) (##fx= _g128981_ 4))
                 (apply gx#macro-expand-syntax-case__% _g128982_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g128982_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx127559%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx127559%_))
            (let ((__tmp128983
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx127559%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp128983 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd127517%_ . _%rest127518%_)
        (let ((_%len127520%_ (length _%hd127517%_)))
          (let _%lp127522%_ ((_%rest127524%_ _%rest127518%_))
            (let* ((_%rest127525127533%_ _%rest127524%_)
                   (_%else127527127541%_ (lambda () '#!void))
                   (_%K127529127547%_
                    (lambda (_%rest127544%_ _%hd127545%_)
                      (if (let ((__tmp128984 (length _%hd127545%_)))
                            (declare (not safe))
                            (##fx= _%len127520%_ __tmp128984))
                          (_%lp127522%_ _%rest127544%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd127545%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest127525127533%_))
                  (let ((_%hd127530127550%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest127525127533%_)))
                        (_%tl127531127552%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest127525127533%_))))
                    (let* ((_%hd127555%_ _%hd127530127550%_)
                           (_%rest127557%_ _%tl127531127552%_))
                      (_%K127529127547%_ _%rest127557%_ _%hd127555%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx127472%_ _%n127473%_)
        (let _%lp127475%_ ((_%rest127477%_ _%stx127472%_) (_%r127478%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest127477%_))
              (let* ((_%g127479127486%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest127477%_)))
                     (_%E127481127490%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g127479127486%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K127482127496%_
                      (lambda (_%rest127493%_ _%hd127494%_)
                        (_%lp127475%_
                         _%rest127493%_
                         (cons _%hd127494%_ _%r127478%_)))))
                (if (let () (declare (not safe)) (##pair? _%g127479127486%_))
                    (let ((_%hd127483127499%_
                           (let ()
                             (declare (not safe))
                             (##car _%g127479127486%_)))
                          (_%tl127484127501%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g127479127486%_))))
                      (let* ((_%hd127504%_ _%hd127483127499%_)
                             (_%rest127506%_ _%tl127484127501%_))
                        (_%K127482127496%_ _%rest127506%_ _%hd127504%_)))
                    (_%E127481127490%_)))
              (let _%lp127508%_ ((_%n127510%_ _%n127473%_)
                                 (_%l127511%_ _%r127478%_)
                                 (_%r127512%_ _%rest127477%_))
                (if (null? _%l127511%_)
                    (values _%l127511%_ _%r127512%_)
                    (if (fxpositive? _%n127510%_)
                        (_%lp127508%_
                         (let () (declare (not safe)) (##fx- _%n127510%_ '1))
                         (cdr _%l127511%_)
                         (cons (car _%l127511%_) _%r127512%_))
                        (values (reverse _%l127511%_) _%r127512%_))))))))))
