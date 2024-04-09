(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1712702631)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp128927 (list gx#expander::t))
            (__tmp128926 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp128927
         '(id depth)
         __tmp128926
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args128923%_
        (apply make-instance gx#syntax-pattern::t _%$args128923%_)))
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
      (lambda (_%self128909%_ _%stx128910%_)
        (let ((_%self128913%_ _%self128909%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx128910%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx128375%_)
        (letrec ((_%generate128377%_
                  (lambda (_%e128617%_)
                    (letrec ((_%BUG128619%_
                              (lambda (_%q128784%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx128375%_
                                         _%e128617%_
                                         _%q128784%_))))
                             (_%local-pattern-e128620%_
                              (lambda (_%pat128782%_)
                                (let ((__tmp128928
                                       (##structure-ref
                                        _%pat128782%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp128928))))
                             (_%getvar128621%_
                              (lambda (_%q128779%_ _%vars128780%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q128779%_
                                   _%vars128780%_
                                   _%BUG128619%_))))
                             (_%getarg128622%_
                              (lambda (_%arg128745%_ _%vars128746%_)
                                (let* ((_%arg128747128754%_ _%arg128745%_)
                                       (_%E128749128758%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg128747128754%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K128750128767%_
                                        (lambda (_%e128761%_ _%tag128762%_)
                                          (let ((_%$e128764%_ _%tag128762%_))
                                            (if (eq? 'ref _%$e128764%_)
                                                (_%getvar128621%_
                                                 _%e128761%_
                                                 _%vars128746%_)
                                                (if (eq? 'pattern _%$e128764%_)
                                                    (_%local-pattern-e128620%_
                                                     _%e128761%_)
                                                    (_%BUG128619%_
                                                     _%arg128745%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%arg128747128754%_))
                                      (let ((_%hd128751128770%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg128747128754%_)))
                                            (_%tl128752128772%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg128747128754%_))))
                                        (let* ((_%tag128775%_
                                                _%hd128751128770%_)
                                               (_%e128777%_
                                                _%tl128752128772%_))
                                          (_%K128750128767%_
                                           _%e128777%_
                                           _%tag128775%_)))
                                      (_%E128749128758%_))))))
                      (let _%recur128624%_ ((_%e128626%_ _%e128617%_)
                                            (_%vars128627%_ '()))
                        (let* ((_%e128628128635%_ _%e128626%_)
                               (_%E128630128639%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e128628128635%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K128631128733%_
                                (lambda (_%body128642%_ _%tag128643%_)
                                  (let ((_%$e128645%_ _%tag128643%_))
                                    (if (eq? 'datum _%$e128645%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body128642%_))
                                        (if (eq? 'term _%$e128645%_)
                                            (let ((_%id128648%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body128642%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id128648%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks128651%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id128648%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks128651%_)
                                                        (let ((__tmp128929
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body128642%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp128929))
                (let ((__tmp128931
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body128642%_)))
                      (__tmp128930
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body128642%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp128931
                   __tmp128930
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id128648%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body128642%_))
                                                      (_%BUG128619%_
                                                       _%e128626%_))))
                                            (if (eq? 'pattern _%$e128645%_)
                                                (_%local-pattern-e128620%_
                                                 _%body128642%_)
                                                (if (eq? 'ref _%$e128645%_)
                                                    (_%getvar128621%_
                                                     _%body128642%_
                                                     _%vars128627%_)
                                                    (if (eq? 'cons
                                                             _%$e128645%_)
                                                        (let ((__tmp128933
                                                               (_%recur128624%_
                                                                (car _%body128642%_)
                                                                _%vars128627%_))
                                                              (__tmp128932
                                                               (_%recur128624%_
                                                                (cdr _%body128642%_)
                                                                _%vars128627%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp128933
                                                           __tmp128932))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e128645%_)
                    (let ((__tmp128934
                           (_%recur128624%_ _%body128642%_ _%vars128627%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp128934))
                    (if (eq? 'box _%$e128645%_)
                        (let ((__tmp128935
                               (_%recur128624%_
                                _%body128642%_
                                _%vars128627%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp128935))
                        (if (eq? 'splice _%$e128645%_)
                            (let* ((_%body128654128665%_ _%body128642%_)
                                   (_%E128656128669%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body128654128665%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K128657128707%_
                                    (lambda (_%args128672%_
                                             _%iv128673%_
                                             _%hd128674%_
                                             _%depth128675%_)
                                      (let* ((_%targets128681%_
                                              (map (lambda (_%g128676128678%_)
                                                     (_%getarg128622%_
                                                      _%g128676128678%_
                                                      _%vars128627%_))
                                                   _%args128672%_))
                                             (_%fold-in128683%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args128672%_)))
                                             (_%fold-out128685%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args128687%_
                                              (let ((__tmp128936
                                                     (cons _%fold-out128685%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp128936
                                                 _%fold-in128683%_)))
                                             (_%lambda-body128704%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth128675%_ '1))
                                                  (let ((_%r-args128695%_
                                                         (map (lambda (_%arg128689%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg128689%_)))
                      _%args128672%_))
                (_%r-vars128696%_
                 (let ((__tmp128937
                        (lambda (_%arg128691%_ _%var128692%_ _%r128693%_)
                          (cons (cons (cdr _%arg128691%_) _%var128692%_)
                                _%r128693%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp128937
                    _%vars128627%_
                    _%args128672%_
                    _%fold-in128683%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur128624%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth128675%_ '1))
                         (cons _%hd128674%_
                               (cons (cons 'var _%fold-out128685%_)
                                     _%r-args128695%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars128696%_))
                                                  (let* ((_%hd-vars128702%_
                                                          (let ((__tmp128938
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg128698%_ _%var128699%_ _%r128700%_)
                           (cons (cons (cdr _%arg128698%_) _%var128699%_)
                                 _%r128700%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp128938
                     _%vars128627%_
                     _%args128672%_
                     _%fold-in128683%_)))
                 (__tmp128939
                  (_%recur128624%_ _%hd128674%_ _%hd-vars128702%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp128939
                                                     _%fold-out128685%_)))))
                                        (let ((__tmp128943
                                               (if (let ((__tmp128944
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets128681%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp128944 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets128681%_))
                                                   '#!void))
                                              (__tmp128940
                                               (let ((__tmp128942
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args128687%_
                                                         _%lambda-body128704%_)))
                                                     (__tmp128941
                                                      (_%recur128624%_
                                                       _%iv128673%_
                                                       _%vars128627%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp128942
                                                  __tmp128941
                                                  _%targets128681%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp128943
                                           __tmp128940))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%body128654128665%_))
                                  (let ((_%hd128658128710%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body128654128665%_)))
                                        (_%tl128659128712%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body128654128665%_))))
                                    (let ((_%depth128715%_ _%hd128658128710%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl128659128712%_))
                                          (let ((_%hd128660128717%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl128659128712%_)))
                                                (_%tl128661128719%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl128659128712%_))))
                                            (let ((_%hd128722%_
                                                   _%hd128660128717%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl128661128719%_))
                                                  (let ((_%hd128662128724%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl128661128719%_)))
                                                        (_%tl128663128726%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl128661128719%_))))
                                                    (let* ((_%iv128729%_
                                                            _%hd128662128724%_)
                                                           (_%args128731%_
                                                            _%tl128663128726%_))
                                                      (_%K128657128707%_
                                                       _%args128731%_
                                                       _%iv128729%_
                                                       _%hd128722%_
                                                       _%depth128715%_)))
                                                  (_%E128656128669%_))))
                                          (_%E128656128669%_))))
                                  (_%E128656128669%_)))
                            (if (eq? 'var _%$e128645%_)
                                _%body128642%_
                                (_%BUG128619%_ _%e128626%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%e128628128635%_))
                              (let ((_%hd128632128736%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e128628128635%_)))
                                    (_%tl128633128738%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e128628128635%_))))
                                (let* ((_%tag128741%_ _%hd128632128736%_)
                                       (_%body128743%_ _%tl128633128738%_))
                                  (_%K128631128733%_
                                   _%body128743%_
                                   _%tag128741%_)))
                              (_%E128630128639%_)))))))
                 (_%parse128378%_
                  (lambda (_%e128419%_)
                    (letrec ((_%make-cons128421%_
                              (lambda (_%hd128609%_ _%tl128610%_)
                                (let ((_g128945_ _%hd128609%_)
                                      (_g128947_ _%tl128610%_))
                                  (begin
                                    (let ((_g128946_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g128945_)
                                                 (##vector-length _g128945_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g128946_ 2)))
                                          (error "Context expects 2 values"
                                                 _g128946_)))
                                    (let ((_g128948_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g128947_)
                                                 (##vector-length _g128947_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g128948_ 2)))
                                          (error "Context expects 2 values"
                                                 _g128948_)))
                                    (let ((_%hd-e128612%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128945_ 0)))
                                          (_%hd-vars128613%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128945_ 1))))
                                      (let ((_%tl-e128614%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128947_ 0)))
                                            (_%tl-vars128615%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128947_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e128612%_
                                                            _%tl-e128614%_))
                                                (append _%hd-vars128613%_
                                                        _%tl-vars128615%_))))))))
                             (_%make-splice128422%_
                              (lambda (_%where128545%_
                                       _%depth128546%_
                                       _%hd128547%_
                                       _%tl128548%_)
                                (let ((_g128949_ _%hd128547%_)
                                      (_g128951_ _%tl128548%_))
                                  (begin
                                    (let ((_g128950_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g128949_)
                                                 (##vector-length _g128949_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g128950_ 2)))
                                          (error "Context expects 2 values"
                                                 _g128950_)))
                                    (let ((_g128952_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g128951_)
                                                 (##vector-length _g128951_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g128952_ 2)))
                                          (error "Context expects 2 values"
                                                 _g128952_)))
                                    (let ((_%hd-e128550%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128949_ 0)))
                                          (_%hd-vars128551%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128949_ 1))))
                                      (let ((_%tl-e128552%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128951_ 0)))
                                            (_%tl-vars128553%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128951_ 1))))
                                        (let _%lp128555%_ ((_%rest128557%_
                                                            _%hd-vars128551%_)
                                                           (_%targets128558%_
                                                            '())
                                                           (_%vars128559%_
                                                            _%tl-vars128553%_))
                                          (let* ((_%rest128560128570%_
                                                  _%rest128557%_)
                                                 (_%else128562128578%_
                                                  (lambda ()
                                                    (if (null? _%targets128558%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx128375%_
                                                           _%where128545%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth128546%_
                                    (cons _%hd-e128550%_
                                          (cons _%tl-e128552%_
                                                _%targets128558%_))))
                        _%vars128559%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K128564128590%_
                                                  (lambda (_%rest128581%_
                                                           _%hd-pat128582%_
                                                           _%hd-depth*128583%_)
                                                    (let ((_%hd-depth128585%_
                                                           (fx- _%hd-depth*128583%_
                                                                _%depth128546%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth128585%_))
                                                          (_%lp128555%_
                                                           _%rest128581%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat128582%_)
                         _%targets128558%_)
                   (cons (cons _%hd-depth128585%_ _%hd-pat128582%_)
                         _%vars128559%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth128585%_))
                      (_%lp128555%_
                       _%rest128581%_
                       (cons (cons 'pattern _%hd-pat128582%_)
                             _%targets128558%_)
                       _%vars128559%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx128375%_
                         _%where128545%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%rest128560128570%_))
                                                (let ((_%hd128565128593%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest128560128570%_)))
                                                      (_%tl128566128595%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest128560128570%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd128565128593%_))
                                                      (let ((_%hd128567128598%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd128565128593%_)))
                    (_%tl128568128600%_
                     (let () (declare (not safe)) (##cdr _%hd128565128593%_))))
                (let* ((_%hd-depth*128603%_ _%hd128567128598%_)
                       (_%hd-pat128605%_ _%tl128568128600%_)
                       (_%rest128607%_ _%tl128566128595%_))
                  (_%K128564128590%_
                   _%rest128607%_
                   _%hd-pat128605%_
                   _%hd-depth*128603%_)))
              (_%else128562128578%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else128562128578%_))))))))))
                             (_%recur128423%_
                              (lambda (_%e128428%_ _%is-e?128429%_)
                                (if (_%is-e?128429%_ _%e128428%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx128375%_))
                                    (if (gx#syntax-local-pattern? _%e128428%_)
                                        (let* ((_%pat128433%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e128428%_)))
                                               (_%depth128435%_
                                                (##structure-ref
                                                 _%pat128433%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth128435%_)
                                              (values (cons 'ref _%pat128433%_)
                                                      (cons (cons _%depth128435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat128433%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat128433%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e128428%_))
                                            (values (cons 'term _%e128428%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e128428%_))
                                                (let* ((_%e128439128446%_
                                                        _%e128428%_)
                                                       (_%E128441128450%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e128439128446%_))))
                                                       (_%E128440128532%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e128439128446%_))
                      (let ((_%e128442128454%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e128439128446%_))))
                        (let ((_%hd128443128457%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e128442128454%_)))
                              (_%tl128444128459%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e128442128454%_))))
                          (let* ((_%hd128462%_ _%hd128443128457%_)
                                 (_%rest128464%_ _%tl128444128459%_))
                            (if '#t
                                (if (_%is-e?128429%_ _%hd128462%_)
                                    (let* ((_%e128465128472%_ _%rest128464%_)
                                           (_%E128467128476%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _%stx128375%_
                                                 _%e128428%_))))
                                           (_%E128466128490%_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%e128465128472%_))
                                                  (let ((_%e128468128480%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e128465128472%_))))
                                                    (let ((_%hd128469128483%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e128468128480%_)))
                                                          (_%tl128470128485%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e128468128480%_))))
                                                      (let ((_%rest128488%_
                                                             _%hd128469128483%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl128470128485%_))
                                                            (if '#t
                                                                (_%recur128423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rest128488%_
                         false)
                        (_%E128467128476%_))
                    (_%E128467128476%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E128467128476%_)))))
                                      (_%E128466128490%_))
                                    (let _%lp128494%_ ((_%rest128496%_
                                                        _%rest128464%_)
                                                       (_%depth128497%_ '0))
                                      (let* ((_%e128498128505%_ _%rest128496%_)
                                             (_%E128500128509%_
                                              (lambda ()
                                                (if (fxpositive?
                                                     _%depth128497%_)
                                                    (_%make-splice128422%_
                                                     _%e128428%_
                                                     _%depth128497%_
                                                     (_%recur128423%_
                                                      _%hd128462%_
                                                      _%is-e?128429%_)
                                                     (_%recur128423%_
                                                      _%rest128496%_
                                                      _%is-e?128429%_))
                                                    (_%make-cons128421%_
                                                     (_%recur128423%_
                                                      _%hd128462%_
                                                      _%is-e?128429%_)
                                                     (_%recur128423%_
                                                      _%rest128496%_
                                                      _%is-e?128429%_)))))
                                             (_%E128499128528%_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%e128498128505%_))
                                                    (let ((_%e128501128513%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%e128498128505%_))))
                                                      (let ((_%hd128502128516%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e128501128513%_)))
                    (_%tl128503128518%_
                     (let () (declare (not safe)) (##cdr _%e128501128513%_))))
                (let* ((_%rest-hd128521%_ _%hd128502128516%_)
                       (_%rest-tl128523%_ _%tl128503128518%_))
                  (if '#t
                      (if (_%is-e?128429%_ _%rest-hd128521%_)
                          (_%lp128494%_
                           _%rest-tl128523%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%depth128497%_ '1)))
                          (if (fxpositive? _%depth128497%_)
                              (_%make-splice128422%_
                               _%e128428%_
                               _%depth128497%_
                               (_%recur128423%_ _%hd128462%_ _%is-e?128429%_)
                               (_%recur128423%_
                                _%rest128496%_
                                _%is-e?128429%_))
                              (_%make-cons128421%_
                               (_%recur128423%_ _%hd128462%_ _%is-e?128429%_)
                               (_%recur128423%_
                                _%rest128496%_
                                _%is-e?128429%_))))
                      (_%E128500128509%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E128500128509%_)))))
                                        (_%E128499128528%_))))
                                (_%E128441128450%_)))))
                      (_%E128441128450%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E128440128532%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e128428%_))
                                                    (let ((_g128953_
                                                           (_%recur128423%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e128428%_)))
                    _%is-e?128429%_)))
              (begin
                (let ((_g128954_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g128953_)
                             (##vector-length _g128953_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g128954_ 2)))
                      (error "Context expects 2 values" _g128954_)))
                (let ((_%e128537%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g128953_ 0)))
                      (_%vars128538%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g128953_ 1))))
                  (values (cons 'vector _%e128537%_) _%vars128538%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e128428%_))
                                                        (let ((_g128955_
                                                               (_%recur128423%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e128428%_)))
                        _%is-e?128429%_)))
                  (begin
                    (let ((_g128956_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g128955_)
                                 (##vector-length _g128955_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g128956_ 2)))
                          (error "Context expects 2 values" _g128956_)))
                    (let ((_%e128541%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g128955_ 0)))
                          (_%vars128542%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g128955_ 1))))
                      (values (cons 'box _%e128541%_) _%vars128542%_))))
                (values (cons 'datum _%e128428%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g128957_
                             (_%recur128423%_ _%e128419%_ gx#ellipsis?)))
                        (begin
                          (let ((_g128958_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g128957_)
                                       (##vector-length _g128957_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g128958_ 2)))
                                (error "Context expects 2 values" _g128958_)))
                          (let ((_%tree128425%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g128957_ 0)))
                                (_%vars128426%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g128957_ 1))))
                            (if (null? _%vars128426%_)
                                _%tree128425%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx128375%_
                                   _%vars128426%_))))))))))
          (let* ((_%e128379128389%_ _%stx128375%_)
                 (_%E128381128393%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx128375%_))))
                 (_%E128380128415%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e128379128389%_))
                        (let ((_%e128382128397%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e128379128389%_))))
                          (let ((_%hd128383128400%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e128382128397%_)))
                                (_%tl128384128402%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e128382128397%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl128384128402%_))
                                (let ((_%e128385128405%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl128384128402%_))))
                                  (let ((_%hd128386128408%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e128385128405%_)))
                                        (_%tl128387128410%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e128385128405%_))))
                                    (let ((_%form128413%_ _%hd128386128408%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl128387128410%_))
                                          (if '#t
                                              (let ((__tmp128960
                                                     (_%generate128377%_
                                                      (_%parse128378%_
                                                       _%form128413%_)))
                                                    (__tmp128959
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _%stx128375%_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp128960
                                                 __tmp128959))
                                              (_%E128381128393%_))
                                          (_%E128381128393%_)))))
                                (_%E128381128393%_))))
                        (_%E128381128393%_)))))
            (_%E128380128415%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx127624%_
               _%identifier=?127625%_
               _%unwrap-e127626%_
               _%wrap-e127627%_)
        (letrec ((_%generate-bindings127629%_
                  (lambda (_%target128239%_
                           _%ids128240%_
                           _%clauses128241%_
                           _%clause-ids128242%_
                           _%E128243%_)
                    (letrec ((_%generate1128245%_
                              (lambda (_%clause128342%_
                                       _%clause-id128343%_
                                       _%E128344%_)
                                (cons (cons _%clause-id128343%_ '())
                                      (cons (let ((__tmp128962
                                                   (cons _%target128239%_ '()))
                                                  (__tmp128961
                                                   (_%generate-clause127631%_
                                                    _%target128239%_
                                                    _%ids128240%_
                                                    _%clause128342%_
                                                    _%E128344%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp128962
                                               __tmp128961))
                                            '())))))
                      (let _%lp128247%_ ((_%rest128249%_ _%clauses128241%_)
                                         (_%rest-ids128250%_
                                          _%clause-ids128242%_)
                                         (_%bindings128251%_ '()))
                        (let* ((_%rest128252128260%_ _%rest128249%_)
                               (_%else128254128268%_
                                (lambda () _%bindings128251%_))
                               (_%K128256128330%_
                                (lambda (_%rest128271%_ _%clause128272%_)
                                  (let* ((_%rest-ids128273128280%_
                                          _%rest-ids128250%_)
                                         (_%E128275128284%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids128273128280%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K128276128318%_
                                          (lambda (_%rest-ids128287%_
                                                   _%clause-id128288%_)
                                            (let* ((_%rest-ids128289128297%_
                                                    _%rest-ids128287%_)
                                                   (_%else128291128305%_
                                                    (lambda ()
                                                      (cons (_%generate1128245%_
                                                             _%clause128272%_
                                                             _%clause-id128288%_
                                                             _%E128243%_)
                                                            _%bindings128251%_)))
                                                   (_%K128293128310%_
                                                    (lambda (_%next-clause-id128308%_)
                                                      (_%lp128247%_
                                                       _%rest128271%_
                                                       _%rest-ids128287%_
                                                       (cons (_%generate1128245%_
                                                              _%clause128272%_
                                                              _%clause-id128288%_
                                                              _%next-clause-id128308%_)
                                                             _%bindings128251%_)))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%rest-ids128289128297%_))
                                                  (let* ((_%hd128294128313%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids128289128297%_)))
                                                         (_%next-clause-id128316%_
                                                          _%hd128294128313%_))
                                                    (_%K128293128310%_
                                                     _%next-clause-id128316%_))
                                                  (_%else128291128305%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%rest-ids128273128280%_))
                                        (let ((_%hd128277128321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids128273128280%_)))
                                              (_%tl128278128323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids128273128280%_))))
                                          (let* ((_%clause-id128326%_
                                                  _%hd128277128321%_)
                                                 (_%rest-ids128328%_
                                                  _%tl128278128323%_))
                                            (_%K128276128318%_
                                             _%rest-ids128328%_
                                             _%clause-id128326%_)))
                                        (_%E128275128284%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest128252128260%_))
                              (let ((_%hd128257128333%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest128252128260%_)))
                                    (_%tl128258128335%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest128252128260%_))))
                                (let* ((_%clause128338%_ _%hd128257128333%_)
                                       (_%rest128340%_ _%tl128258128335%_))
                                  (_%K128256128330%_
                                   _%rest128340%_
                                   _%clause128338%_)))
                              (_%else128254128268%_)))))))
                 (_%generate-body127630%_
                  (lambda (_%bindings128199%_ _%body128200%_)
                    (let _%recur128202%_ ((_%rest128204%_ _%bindings128199%_))
                      (let* ((_%rest128205128213%_ _%rest128204%_)
                             (_%else128207128221%_ (lambda () _%body128200%_))
                             (_%K128209128227%_
                              (lambda (_%rest128224%_ _%hd128225%_)
                                (let ((__tmp128964 (cons _%hd128225%_ '()))
                                      (__tmp128963
                                       (_%recur128202%_ _%rest128224%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp128964
                                   __tmp128963)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest128205128213%_))
                            (let ((_%hd128210128230%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest128205128213%_)))
                                  (_%tl128211128232%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest128205128213%_))))
                              (let* ((_%hd128235%_ _%hd128210128230%_)
                                     (_%rest128237%_ _%tl128211128232%_))
                                (_%K128209128227%_
                                 _%rest128237%_
                                 _%hd128235%_)))
                            (_%else128207128221%_))))))
                 (_%generate-clause127631%_
                  (lambda (_%target128062%_
                           _%ids128063%_
                           _%clause128064%_
                           _%E128065%_)
                    (letrec ((_%generate1128067%_
                              (lambda (_%hd128154%_
                                       _%fender128155%_
                                       _%body128156%_)
                                (let ((_g128965_
                                       (_%parse-clause127633%_
                                        _%hd128154%_
                                        _%ids128063%_)))
                                  (begin
                                    (let ((_g128966_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g128965_)
                                                 (##vector-length _g128965_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g128966_ 2)))
                                          (error "Context expects 2 values"
                                                 _g128966_)))
                                    (let ((_%e128158%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128965_ 0)))
                                          (_%mvars128159%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128965_ 1))))
                                      (let* ((_%pvars128161%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars128159%_))))
                                             (_%E128163%_
                                              (cons _%E128065%_
                                                    (cons _%target128062%_
                                                          '())))
                                             (_%K128196%_
                                              (let ((__tmp128967
                                                     (let ((__tmp128969
                                                            (map (lambda (_%mvar128165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar128166%_)
                           (let* ((_%mvar128167128174%_ _%mvar128165%_)
                                  (_%E128169128178%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar128167128174%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K128170128184%_
                                   (lambda (_%depth128181%_ _%id128182%_)
                                     (cons _%id128182%_
                                           (cons (let ((__tmp128971
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id128182%_)))
                                                       (__tmp128970
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar128166%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp128971
                                                    __tmp128970
                                                    _%depth128181%_))
                                                 '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%mvar128167128174%_))
                                 (let ((_%hd128171128187%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar128167128174%_)))
                                       (_%tl128172128189%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar128167128174%_))))
                                   (let* ((_%id128192%_ _%hd128171128187%_)
                                          (_%depth128194%_ _%tl128172128189%_))
                                     (_%K128170128184%_
                                      _%depth128194%_
                                      _%id128192%_)))
                                 (_%E128169128178%_))))
                         _%mvars128159%_
                         _%pvars128161%_))
                   (__tmp128968
                    (if (eq? _%fender128155%_ '#t)
                        _%body128156%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender128155%_
                           _%body128156%_
                           _%E128163%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp128969 __tmp128968))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars128161%_
                                                 __tmp128967))))
                                        (_%generate-match127632%_
                                         _%hd128154%_
                                         _%target128062%_
                                         _%e128158%_
                                         _%mvars128159%_
                                         _%K128196%_
                                         _%E128163%_))))))))
                      (let* ((_%e128068128088%_ _%clause128064%_)
                             (_%E128077128092%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e128068128088%_))))
                             (_%E128070128126%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128068128088%_))
                                    (let ((_%e128078128096%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128068128088%_))))
                                      (let ((_%hd128079128099%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128078128096%_)))
                                            (_%tl128080128101%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128078128096%_))))
                                        (let ((_%hd128104%_
                                               _%hd128079128099%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128080128101%_))
                                              (let ((_%e128081128106%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128080128101%_))))
                                                (let ((_%hd128082128109%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128081128106%_)))
                                                      (_%tl128083128111%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128081128106%_))))
                                                  (let ((_%fender128114%_
                                                         _%hd128082128109%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl128083128111%_))
                                                        (let ((_%e128084128116%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl128083128111%_))))
                  (let ((_%hd128085128119%_
                         (let ()
                           (declare (not safe))
                           (##car _%e128084128116%_)))
                        (_%tl128086128121%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e128084128116%_))))
                    (let ((_%body128124%_ _%hd128085128119%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl128086128121%_))
                          (if '#t
                              (_%generate1128067%_
                               _%hd128104%_
                               _%fender128114%_
                               _%body128124%_)
                              (_%E128077128092%_))
                          (_%E128077128092%_)))))
                (_%E128077128092%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E128077128092%_)))))
                                    (_%E128077128092%_))))
                             (_%E128069128150%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128068128088%_))
                                    (let ((_%e128071128130%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128068128088%_))))
                                      (let ((_%hd128072128133%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128071128130%_)))
                                            (_%tl128073128135%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128071128130%_))))
                                        (let ((_%hd128138%_
                                               _%hd128072128133%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128073128135%_))
                                              (let ((_%e128074128140%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128073128135%_))))
                                                (let ((_%hd128075128143%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128074128140%_)))
                                                      (_%tl128076128145%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128074128140%_))))
                                                  (let ((_%body128148%_
                                                         _%hd128075128143%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl128076128145%_))
                                                        (if '#t
                                                            (_%generate1128067%_
                                                             _%hd128138%_
                                                             '#t
                                                             _%body128148%_)
                                                            (_%E128070128126%_))
                                                        (_%E128070128126%_)))))
                                              (_%E128070128126%_)))))
                                    (_%E128070128126%_)))))
                        (_%E128069128150%_)))))
                 (_%generate-match127632%_
                  (lambda (_%where127811%_
                           _%target127812%_
                           _%hd127813%_
                           _%mvars127814%_
                           _%K127815%_
                           _%E127816%_)
                    (letrec ((_%BUG127818%_
                              (lambda (_%q128060%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx127624%_
                                         _%hd127813%_
                                         _%q128060%_))))
                             (_%recur127819%_
                              (lambda (_%e127910%_
                                       _%vars127911%_
                                       _%target127912%_
                                       _%E127913%_
                                       _%k127914%_)
                                (let* ((_%e127915127922%_ _%e127910%_)
                                       (_%E127917127926%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e127915127922%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K127918128048%_
                                        (lambda (_%body127929%_ _%tag127930%_)
                                          (let ((_%$e127932%_ _%tag127930%_))
                                            (if (eq? 'any _%$e127932%_)
                                                (_%k127914%_ _%vars127911%_)
                                                (if (eq? 'id _%$e127932%_)
                                                    (let ((__tmp128976
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target127912%_)))
                                                          (__tmp128972
                                                           (let ((__tmp128974
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128975
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e127627%_
                                    _%body127929%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?127625%_
                             __tmp128975
                             _%target127912%_)))
                         (__tmp128973 (_%k127914%_ _%vars127911%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp128974 __tmp128973 _%E127913%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp128976 __tmp128972 _%E127913%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e127932%_)
                                                        (_%k127914%_
                                                         (cons (cons _%body127929%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target127912%_)
                       _%vars127911%_))
                (if (eq? 'cons _%$e127932%_)
                    (let ((_%$e127935%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd127936%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl127937%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp128982
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target127912%_)))
                            (__tmp128977
                             (let ((__tmp128981
                                    (cons (cons (cons _%$e127935%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e127626%_
                                                         _%target127912%_))
                                                      '()))
                                          '()))
                                   (__tmp128978
                                    (let ((__tmp128980
                                           (cons (cons (cons _%$hd127936%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e127935%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl127937%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e127935%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp128979
                                           (let* ((_%body127938127945%_
                                                   _%body127929%_)
                                                  (_%E127940127949%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body127938127945%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K127941127957%_
                                                   (lambda (_%tl127952%_
                                                            _%hd127953%_)
                                                     (_%recur127819%_
                                                      _%hd127953%_
                                                      _%vars127911%_
                                                      _%$hd127936%_
                                                      _%E127913%_
                                                      (lambda (_%vars127955%_)
                                                        (_%recur127819%_
                                                         _%tl127952%_
                                                         _%vars127955%_
                                                         _%$tl127937%_
                                                         _%E127913%_
                                                         _%k127914%_))))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _%body127938127945%_))
                                                 (let ((_%hd127942127960%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body127938127945%_)))
                                                       (_%tl127943127962%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body127938127945%_))))
                                                   (let* ((_%hd127965%_
                                                           _%hd127942127960%_)
                                                          (_%tl127967%_
                                                           _%tl127943127962%_))
                                                     (_%K127941127957%_
                                                      _%tl127967%_
                                                      _%hd127965%_)))
                                                 (_%E127940127949%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp128980
                                       __tmp128979))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp128981
                                __tmp128978))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp128982
                         __tmp128977
                         _%E127913%_)))
                    (if (eq? 'splice _%$e127932%_)
                        (let* ((_%body127968127975%_ _%body127929%_)
                               (_%E127970127979%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body127968127975%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K127971128030%_
                                (lambda (_%tl127982%_ _%hd127983%_)
                                  (let* ((_%rlen127985%_
                                          (_%splice-rlen127820%_ _%tl127982%_))
                                         (_%$target127987%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd127989%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl127991%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp127993%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e127995%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd127997%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl127999%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars128001%_
                                          (_%splice-vars127821%_ _%hd127983%_))
                                         (_%lvars128003%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars128001%_)))
                                         (_%tlvars128005%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars128001%_)))
                                         (_%linit128009%_
                                          (map (lambda (_%var128007%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars128003%_)))
                                    (letrec ((_%make-loop128012%_
                                              (lambda (_%vars128016%_)
                                                (let ((__tmp128984
                                                       (cons (cons (cons _%$lp127993%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp128997
                                        (cons _%$hd127989%_ _%lvars128003%_))
                                       (__tmp128985
                                        (let ((__tmp128996
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd127989%_)))
                                              (__tmp128990
                                               (let ((__tmp128995
                                                      (cons (cons (cons _%$lp-e127995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e127626%_
                                   _%$hd127989%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp128991
                                                      (let ((__tmp128994
                                                             (cons (cons (cons _%$lp-hd127997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e127995%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl127999%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e127995%_))
                                             '()))
                                 '())))
                    (__tmp128992
                     (_%recur127819%_
                      _%hd127983%_
                      '()
                      _%$lp-hd127997%_
                      _%E127913%_
                      (lambda (_%hdvars128018%_)
                        (cons _%$lp127993%_
                              (cons _%$lp-tl127999%_
                                    (map (lambda (_%svar128020%_
                                                  _%lvar128021%_)
                                           (let ((__tmp128993
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar128020%_
                                                     _%hdvars128018%_
                                                     _%BUG127818%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp128993
                                              _%lvar128021%_)))
                                         _%svars128001%_
                                         _%lvars128003%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp128994 __tmp128992))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp128995
                                                  __tmp128991)))
                                              (__tmp128986
                                               (let ((__tmp128989
                                                      (map (lambda (_%lvar128023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar128024%_)
                     (cons (cons _%tlvar128024%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar128023%_))
                                 '())))
                   _%lvars128003%_
                   _%tlvars128005%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp128987
                                                      (_%k127914%_
                                                       (let ((__tmp128988
                                                              (lambda (_%svar128026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar128027%_
                               _%r128028%_)
                        (cons (cons _%svar128026%_ _%tlvar128027%_)
                              _%r128028%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp128988
                  _%vars128016%_
                  _%svars128001%_
                  _%tlvars128005%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp128989
                                                  __tmp128987))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp128996
                                           __tmp128990
                                           __tmp128986))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp128997
                                    __tmp128985))
                                 '()))
                     '()))
              (__tmp128983
               (cons _%$lp127993%_ (cons _%$target127987%_ _%linit128009%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp128984
                                                   __tmp128983)))))
                                      (let ((_%body128014%_
                                             (let ((__tmp128999
                                                    (cons (cons (cons _%$target127987%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl127991%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target127912%_
                                 _%rlen127985%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp128998
                                                    (_%recur127819%_
                                                     _%tl127982%_
                                                     _%vars127911%_
                                                     _%$tl127991%_
                                                     _%E127913%_
                                                     _%make-loop128012%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp128999
                                                __tmp128998))))
                                        (let ((__tmp129003
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target127912%_)))
                                              (__tmp129000
                                               (if (zero? _%rlen127985%_)
                                                   _%body128014%_
                                                   (let ((__tmp129001
                                                          (let ((__tmp129002
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target127912%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp129002 _%rlen127985%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp129001
                                                      _%body128014%_
                                                      _%E127913%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp129003
                                           __tmp129000
                                           _%E127913%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%body127968127975%_))
                              (let ((_%hd127972128033%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body127968127975%_)))
                                    (_%tl127973128035%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body127968127975%_))))
                                (let* ((_%hd128038%_ _%hd127972128033%_)
                                       (_%tl128040%_ _%tl127973128035%_))
                                  (_%K127971128030%_
                                   _%tl128040%_
                                   _%hd128038%_)))
                              (_%E127970127979%_)))
                        (if (eq? 'null _%$e127932%_)
                            (let ((__tmp129005
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target127912%_)))
                                  (__tmp129004 (_%k127914%_ _%vars127911%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp129005
                               __tmp129004
                               _%E127913%_))
                            (if (eq? 'vector _%$e127932%_)
                                (let ((_%$e128042%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp129010
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target127912%_)))
                                        (__tmp129006
                                         (let ((__tmp129008
                                                (cons (cons (cons _%$e128042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp129009
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e127626%_
                                    _%target127912%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp129009))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp129007
                                                (_%recur127819%_
                                                 _%body127929%_
                                                 _%vars127911%_
                                                 _%$e128042%_
                                                 _%E127913%_
                                                 _%k127914%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp129008
                                            __tmp129007))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp129010
                                     __tmp129006
                                     _%E127913%_)))
                                (if (eq? 'box _%$e127932%_)
                                    (let ((_%$e128044%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp129015
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target127912%_)))
                                            (__tmp129011
                                             (let ((__tmp129013
                                                    (cons (cons (cons _%$e128044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp129014
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e127626%_
                                        _%target127912%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp129014))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129012
                                                    (_%recur127819%_
                                                     _%body127929%_
                                                     _%vars127911%_
                                                     _%$e128044%_
                                                     _%E127913%_
                                                     _%k127914%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129013
                                                __tmp129012))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp129015
                                         __tmp129011
                                         _%E127913%_)))
                                    (if (eq? 'datum _%$e127932%_)
                                        (let ((_%$e128046%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp129021
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target127912%_)))
                                                (__tmp129016
                                                 (let ((__tmp129020
                                                        (cons (cons (cons _%$e128046%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target127912%_))
                                  '()))
                      '()))
               (__tmp129017
                (let ((__tmp129019
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e128046%_ _%body127929%_)))
                      (__tmp129018 (_%k127914%_ _%vars127911%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp129019 __tmp129018 _%E127913%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp129020
                                                    __tmp129017))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp129021
                                             __tmp129016
                                             _%E127913%_)))
                                        (_%BUG127818%_
                                         _%e127910%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%e127915127922%_))
                                      (let ((_%hd127919128051%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e127915127922%_)))
                                            (_%tl127920128053%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e127915127922%_))))
                                        (let* ((_%tag128056%_
                                                _%hd127919128051%_)
                                               (_%body128058%_
                                                _%tl127920128053%_))
                                          (_%K127918128048%_
                                           _%body128058%_
                                           _%tag128056%_)))
                                      (_%E127917127926%_)))))
                             (_%splice-rlen127820%_
                              (lambda (_%e127872%_)
                                (let _%lp127874%_ ((_%e127876%_ _%e127872%_)
                                                   (_%n127877%_ '0))
                                  (let* ((_%e127878127885%_ _%e127876%_)
                                         (_%E127880127889%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e127878127885%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K127881127898%_
                                          (lambda (_%body127892%_
                                                   _%tag127893%_)
                                            (let ((_%$e127895%_ _%tag127893%_))
                                              (if (eq? 'splice _%$e127895%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx127624%_
                                                     _%where127811%_))
                                                  (if (eq? 'cons _%$e127895%_)
                                                      (_%lp127874%_
                                                       (cdr _%body127892%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n127877%_
                                                                '1)))
                                                      _%n127877%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e127878127885%_))
                                        (let ((_%hd127882127901%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e127878127885%_)))
                                              (_%tl127883127903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e127878127885%_))))
                                          (let* ((_%tag127906%_
                                                  _%hd127882127901%_)
                                                 (_%body127908%_
                                                  _%tl127883127903%_))
                                            (_%K127881127898%_
                                             _%body127908%_
                                             _%tag127906%_)))
                                        (_%E127880127889%_))))))
                             (_%splice-vars127821%_
                              (lambda (_%e127828%_)
                                (let _%recur127830%_ ((_%e127832%_ _%e127828%_)
                                                      (_%vars127833%_ '()))
                                  (let* ((_%e127834127841%_ _%e127832%_)
                                         (_%E127836127845%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e127834127841%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K127837127860%_
                                          (lambda (_%body127848%_
                                                   _%tag127849%_)
                                            (let ((_%$e127851%_ _%tag127849%_))
                                              (if (eq? 'var _%$e127851%_)
                                                  (cons _%body127848%_
                                                        _%vars127833%_)
                                                  (if (or (eq? 'cons
                                                               _%$e127851%_)
                                                          (eq? 'splice
                                                               _%$e127851%_))
                                                      (_%recur127830%_
                                                       (cdr _%body127848%_)
                                                       (_%recur127830%_
                                                        (car _%body127848%_)
                                                        _%vars127833%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e127851%_)
                      (eq? 'box _%$e127851%_))
                  (_%recur127830%_ _%body127848%_ _%vars127833%_)
                  _%vars127833%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e127834127841%_))
                                        (let ((_%hd127838127863%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e127834127841%_)))
                                              (_%tl127839127865%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e127834127841%_))))
                                          (let* ((_%tag127868%_
                                                  _%hd127838127863%_)
                                                 (_%body127870%_
                                                  _%tl127839127865%_))
                                            (_%K127837127860%_
                                             _%body127870%_
                                             _%tag127868%_)))
                                        (_%E127836127845%_))))))
                             (_%make-body127822%_
                              (lambda (_%vars127824%_)
                                (cons _%K127815%_
                                      (map (lambda (_%mvar127826%_)
                                             (let ((__tmp129022
                                                    (car _%mvar127826%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp129022
                                                _%vars127824%_
                                                _%BUG127818%_)))
                                           _%mvars127814%_)))))
                      (_%recur127819%_
                       _%hd127813%_
                       '()
                       _%target127812%_
                       _%E127816%_
                       _%make-body127822%_))))
                 (_%parse-clause127633%_
                  (lambda (_%hd127705%_ _%ids127706%_)
                    (let _%recur127708%_ ((_%e127710%_ _%hd127705%_)
                                          (_%vars127711%_ '())
                                          (_%depth127712%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e127710%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e127710%_))
                              (values '(any) _%vars127711%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e127710%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx127624%_
                                     _%hd127705%_))
                                  (if (let ((__tmp129023
                                             (lambda (_%id127717%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e127710%_
                                                  _%id127717%_)))))
                                        (declare (not safe))
                                        (__find __tmp129023 _%ids127706%_))
                                      (values (cons 'id _%e127710%_)
                                              _%vars127711%_)
                                      (if (let ((__tmp129024
                                                 (lambda (_%var127720%_)
                                                   (let ((__tmp129025
                                                          (car _%var127720%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e127710%_
                                                      __tmp129025)))))
                                            (declare (not safe))
                                            (__find __tmp129024
                                                    _%vars127711%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx127624%_
                                             _%e127710%_))
                                          (values (cons 'var _%e127710%_)
                                                  (cons (cons _%e127710%_
                                                              _%depth127712%_)
                                                        _%vars127711%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e127710%_))
                              (let* ((_%e127724127731%_ _%e127710%_)
                                     (_%E127726127735%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e127724127731%_))))
                                     (_%E127725127796%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e127724127731%_))
                                            (let ((_%e127727127739%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e127724127731%_))))
                                              (let ((_%hd127728127742%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e127727127739%_)))
                                                    (_%tl127729127744%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e127727127739%_))))
                                                (let* ((_%hd127747%_
                                                        _%hd127728127742%_)
                                                       (_%rest127749%_
                                                        _%tl127729127744%_))
                                                  (if '#t
                                                      (let* ((_%make-pair127764%_
                                                              (lambda (_%tag127751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd127752%_
                               _%tl127753%_)
                        (let* ((_%hd-depth127755%_
                                (if (eq? _%tag127751%_ 'splice)
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%depth127712%_ '1))
                                    _%depth127712%_))
                               (_g129026_
                                (_%recur127708%_
                                 _%hd127752%_
                                 _%vars127711%_
                                 _%hd-depth127755%_)))
                          (begin
                            (let ((_g129027_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g129026_)
                                         (##vector-length _g129026_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g129027_ 2)))
                                  (error "Context expects 2 values"
                                         _g129027_)))
                            (let ((_%hd127757%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g129026_ 0)))
                                  (_%vars127758%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g129026_ 1))))
                              (let ((_g129028_
                                     (_%recur127708%_
                                      _%tl127753%_
                                      _%vars127758%_
                                      _%depth127712%_)))
                                (begin
                                  (let ((_g129029_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g129028_)
                                               (##vector-length _g129028_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g129029_ 2)))
                                        (error "Context expects 2 values"
                                               _g129029_)))
                                  (let ((_%tl127760%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g129028_ 0)))
                                        (_%vars127761%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g129028_ 1))))
                                    (values (cons _%tag127751%_
                                                  (cons _%hd127757%_
                                                        _%tl127760%_))
                                            _%vars127761%_)))))))))
                     (_%e127765127772%_ _%rest127749%_)
                     (_%E127767127776%_
                      (lambda ()
                        (_%make-pair127764%_
                         'cons
                         _%hd127747%_
                         _%rest127749%_)))
                     (_%E127766127792%_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%e127765127772%_))
                            (let ((_%e127768127780%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%e127765127772%_))))
                              (let ((_%hd127769127783%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e127768127780%_)))
                                    (_%tl127770127785%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e127768127780%_))))
                                (let* ((_%rest-hd127788%_ _%hd127769127783%_)
                                       (_%rest-tl127790%_ _%tl127770127785%_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _%rest-hd127788%_))
                                          (_%make-pair127764%_
                                           'splice
                                           _%hd127747%_
                                           _%rest-tl127790%_)
                                          (_%make-pair127764%_
                                           'cons
                                           _%hd127747%_
                                           _%rest127749%_))
                                      (_%E127767127776%_)))))
                            (_%E127767127776%_)))))
                (_%E127766127792%_))
              (_%E127726127735%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E127726127735%_)))))
                                (_%E127725127796%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e127710%_))
                                  (values '(null) _%vars127711%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e127710%_))
                                      (let ((_g129030_
                                             (_%recur127708%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e127710%_)))
                                              _%vars127711%_
                                              _%depth127712%_)))
                                        (begin
                                          (let ((_g129031_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g129030_)
                                                       (##vector-length
                                                        _g129030_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g129031_ 2)))
                                                (error "Context expects 2 values"
                                                       _g129031_)))
                                          (let ((_%e127802%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g129030_ 0)))
                                                (_%vars127803%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g129030_
                                                    1))))
                                            (values (cons 'vector _%e127802%_)
                                                    _%vars127803%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e127710%_))
                                          (let ((_g129032_
                                                 (_%recur127708%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e127710%_)))
                                                  _%vars127711%_
                                                  _%depth127712%_)))
                                            (begin
                                              (let ((_g129033_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g129032_)
                                                           (##vector-length
                                                            _g129032_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g129033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g129033_)))
                                              (let ((_%e127806%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g129032_
                                                        0)))
                                                    (_%vars127807%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g129032_
                                                        1))))
                                                (values (cons 'box _%e127806%_)
                                                        _%vars127807%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e127710%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e127710%_)))
                                                      _%vars127711%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx127624%_
                                                 _%e127710%_))))))))))))
          (let* ((_%e127634127647%_ _%stx127624%_)
                 (_%E127636127651%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e127634127647%_))))
                 (_%E127635127701%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e127634127647%_))
                        (let ((_%e127637127655%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e127634127647%_))))
                          (let ((_%hd127638127658%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e127637127655%_)))
                                (_%tl127639127660%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e127637127655%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl127639127660%_))
                                (let ((_%e127640127663%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl127639127660%_))))
                                  (let ((_%hd127641127666%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e127640127663%_)))
                                        (_%tl127642127668%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e127640127663%_))))
                                    (let ((_%expr127671%_ _%hd127641127666%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl127642127668%_))
                                          (let ((_%e127643127673%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl127642127668%_))))
                                            (let ((_%hd127644127676%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e127643127673%_)))
                                                  (_%tl127645127678%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e127643127673%_))))
                                              (let* ((_%ids127681%_
                                                      _%hd127644127676%_)
                                                     (_%clauses127683%_
                                                      _%tl127645127678%_))
                                                (if '#t
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#identifier-list? _%ids127681%_)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _%stx127624%_
                   _%ids127681%_))
                (if (not (let ()
                           (declare (not safe))
                           (gx#stx-list? _%clauses127683%_)))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _%stx127624%_))
                    (let* ((_%ids127688%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _%ids127681%_)))
                           (_%clauses127690%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _%clauses127683%_)))
                           (_%clause-ids127692%_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _%clauses127690%_)))
                           (_%E127694%_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_%target127696%_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_%first127698%_
                            (if (null? _%clauses127690%_)
                                _%E127694%_
                                (car _%clause-ids127692%_))))
                      (let ((__tmp129035
                             (let ((__tmp129036
                                    (let ((__tmp129038
                                           (let ((__tmp129040
                                                  (cons (cons (cons _%E127694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp129042 (cons _%target127696%_ '()))
                                  (__tmp129041
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%target127696%_))))
                              (declare (not safe))
                              (gx#core-list 'lambda% __tmp129042 __tmp129041))
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (__tmp129039
                                                  (_%generate-body127630%_
                                                   (_%generate-bindings127629%_
                                                    _%target127696%_
                                                    _%ids127688%_
                                                    _%clauses127690%_
                                                    _%clause-ids127692%_
                                                    _%E127694%_)
                                                   (cons _%first127698%_
                                                         (cons _%expr127671%_
                                                               '())))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp129040
                                              __tmp129039)))
                                          (__tmp129037
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _%stx127624%_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp129038
                                       __tmp129037))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp129036)))
                            (__tmp129034
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx127624%_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp129035 __tmp129034)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E127636127651%_)))))
                                          (_%E127636127651%_)))))
                                (_%E127636127651%_))))
                        (_%E127636127651%_)))))
            (_%E127635127701%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx128349%_)
        (let* ((_%identifier=?128351%_ 'free-identifier=?)
               (_%unwrap-e128353%_ 'syntax-e)
               (_%wrap-e128355%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx128349%_
           _%identifier=?128351%_
           _%unwrap-e128353%_
           _%wrap-e128355%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx128357%_ _%identifier=?128358%_)
        (let* ((_%unwrap-e128360%_ 'syntax-e) (_%wrap-e128362%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx128357%_
           _%identifier=?128358%_
           _%unwrap-e128360%_
           _%wrap-e128362%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx128364%_ _%identifier=?128365%_ _%unwrap-e128366%_)
        (let ((_%wrap-e128368%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx128364%_
           _%identifier=?128365%_
           _%unwrap-e128366%_
           _%wrap-e128368%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g129044_
        (let ((_g129043_ (let () (declare (not safe)) (##length _g129044_))))
          (cond ((let () (declare (not safe)) (##fx= _g129043_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g129044_))
                ((let () (declare (not safe)) (##fx= _g129043_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g129044_))
                ((let () (declare (not safe)) (##fx= _g129043_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g129044_))
                ((let () (declare (not safe)) (##fx= _g129043_ 4))
                 (apply gx#macro-expand-syntax-case__% _g129044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g129044_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx127621%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx127621%_))
            (let ((__tmp129045
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx127621%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp129045 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd127579%_ . _%rest127580%_)
        (let ((_%len127582%_ (length _%hd127579%_)))
          (let _%lp127584%_ ((_%rest127586%_ _%rest127580%_))
            (let* ((_%rest127587127595%_ _%rest127586%_)
                   (_%else127589127603%_ (lambda () '#!void))
                   (_%K127591127609%_
                    (lambda (_%rest127606%_ _%hd127607%_)
                      (if (let ((__tmp129046 (length _%hd127607%_)))
                            (declare (not safe))
                            (##fx= _%len127582%_ __tmp129046))
                          (_%lp127584%_ _%rest127606%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd127607%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest127587127595%_))
                  (let ((_%hd127592127612%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest127587127595%_)))
                        (_%tl127593127614%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest127587127595%_))))
                    (let* ((_%hd127617%_ _%hd127592127612%_)
                           (_%rest127619%_ _%tl127593127614%_))
                      (_%K127591127609%_ _%rest127619%_ _%hd127617%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx127534%_ _%n127535%_)
        (let _%lp127537%_ ((_%rest127539%_ _%stx127534%_) (_%r127540%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest127539%_))
              (let* ((_%g127541127548%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest127539%_)))
                     (_%E127543127552%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g127541127548%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K127544127558%_
                      (lambda (_%rest127555%_ _%hd127556%_)
                        (_%lp127537%_
                         _%rest127555%_
                         (cons _%hd127556%_ _%r127540%_)))))
                (if (let () (declare (not safe)) (##pair? _%g127541127548%_))
                    (let ((_%hd127545127561%_
                           (let ()
                             (declare (not safe))
                             (##car _%g127541127548%_)))
                          (_%tl127546127563%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g127541127548%_))))
                      (let* ((_%hd127566%_ _%hd127545127561%_)
                             (_%rest127568%_ _%tl127546127563%_))
                        (_%K127544127558%_ _%rest127568%_ _%hd127566%_)))
                    (_%E127543127552%_)))
              (let _%lp127570%_ ((_%n127572%_ _%n127535%_)
                                 (_%l127573%_ _%r127540%_)
                                 (_%r127574%_ _%rest127539%_))
                (if (null? _%l127573%_)
                    (values _%l127573%_ _%r127574%_)
                    (if (fxpositive? _%n127572%_)
                        (_%lp127570%_
                         (let () (declare (not safe)) (##fx- _%n127572%_ '1))
                         (cdr _%l127573%_)
                         (cons (car _%l127573%_) _%r127574%_))
                        (values (reverse _%l127573%_) _%r127574%_))))))))))
