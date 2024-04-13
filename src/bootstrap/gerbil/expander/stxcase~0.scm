(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1713004411)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp131415 (list gx#expander::t))
            (__tmp131414 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp131415
         '(id depth)
         __tmp131414
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args131411%_
        (apply make-instance gx#syntax-pattern::t _%$args131411%_)))
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
      (lambda (_%self130018131395%_ _%stx131397%_)
        (let* ((_%self131399%_ _%self130018131395%_)
               (_%self131401%_ _%self131399%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx131397%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx130861%_)
        (letrec ((_%generate130863%_
                  (lambda (_%e131103%_)
                    (letrec ((_%BUG131105%_
                              (lambda (_%q131270%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx130861%_
                                         _%e131103%_
                                         _%q131270%_))))
                             (_%local-pattern-e131106%_
                              (lambda (_%pat131268%_)
                                (let ((__tmp131416
                                       (##structure-ref
                                        _%pat131268%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp131416))))
                             (_%getvar131107%_
                              (lambda (_%q131265%_ _%vars131266%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q131265%_
                                   _%vars131266%_
                                   _%BUG131105%_))))
                             (_%getarg131108%_
                              (lambda (_%arg131231%_ _%vars131232%_)
                                (let* ((_%arg131233131240%_ _%arg131231%_)
                                       (_%E131235131244%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg131233131240%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K131236131253%_
                                        (lambda (_%e131247%_ _%tag131248%_)
                                          (let ((_%$e131250%_ _%tag131248%_))
                                            (if (eq? 'ref _%$e131250%_)
                                                (_%getvar131107%_
                                                 _%e131247%_
                                                 _%vars131232%_)
                                                (if (eq? 'pattern _%$e131250%_)
                                                    (_%local-pattern-e131106%_
                                                     _%e131247%_)
                                                    (_%BUG131105%_
                                                     _%arg131231%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%arg131233131240%_))
                                      (let ((_%hd131237131256%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg131233131240%_)))
                                            (_%tl131238131258%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg131233131240%_))))
                                        (let* ((_%tag131261%_
                                                _%hd131237131256%_)
                                               (_%e131263%_
                                                _%tl131238131258%_))
                                          (_%K131236131253%_
                                           _%e131263%_
                                           _%tag131261%_)))
                                      (_%E131235131244%_))))))
                      (let _%recur131110%_ ((_%e131112%_ _%e131103%_)
                                            (_%vars131113%_ '()))
                        (let* ((_%e131114131121%_ _%e131112%_)
                               (_%E131116131125%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e131114131121%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K131117131219%_
                                (lambda (_%body131128%_ _%tag131129%_)
                                  (let ((_%$e131131%_ _%tag131129%_))
                                    (if (eq? 'datum _%$e131131%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body131128%_))
                                        (if (eq? 'term _%$e131131%_)
                                            (let ((_%id131134%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body131128%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id131134%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks131137%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id131134%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks131137%_)
                                                        (let ((__tmp131417
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body131128%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp131417))
                (let ((__tmp131419
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body131128%_)))
                      (__tmp131418
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body131128%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp131419
                   __tmp131418
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id131134%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body131128%_))
                                                      (_%BUG131105%_
                                                       _%e131112%_))))
                                            (if (eq? 'pattern _%$e131131%_)
                                                (_%local-pattern-e131106%_
                                                 _%body131128%_)
                                                (if (eq? 'ref _%$e131131%_)
                                                    (_%getvar131107%_
                                                     _%body131128%_
                                                     _%vars131113%_)
                                                    (if (eq? 'cons
                                                             _%$e131131%_)
                                                        (let ((__tmp131421
                                                               (_%recur131110%_
                                                                (car _%body131128%_)
                                                                _%vars131113%_))
                                                              (__tmp131420
                                                               (_%recur131110%_
                                                                (cdr _%body131128%_)
                                                                _%vars131113%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp131421
                                                           __tmp131420))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e131131%_)
                    (let ((__tmp131422
                           (_%recur131110%_ _%body131128%_ _%vars131113%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp131422))
                    (if (eq? 'box _%$e131131%_)
                        (let ((__tmp131423
                               (_%recur131110%_
                                _%body131128%_
                                _%vars131113%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp131423))
                        (if (eq? 'splice _%$e131131%_)
                            (let* ((_%body131140131151%_ _%body131128%_)
                                   (_%E131142131155%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body131140131151%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K131143131193%_
                                    (lambda (_%args131158%_
                                             _%iv131159%_
                                             _%hd131160%_
                                             _%depth131161%_)
                                      (let* ((_%targets131167%_
                                              (map (lambda (_%g131162131164%_)
                                                     (_%getarg131108%_
                                                      _%g131162131164%_
                                                      _%vars131113%_))
                                                   _%args131158%_))
                                             (_%fold-in131169%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args131158%_)))
                                             (_%fold-out131171%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args131173%_
                                              (let ((__tmp131424
                                                     (cons _%fold-out131171%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp131424
                                                 _%fold-in131169%_)))
                                             (_%lambda-body131190%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth131161%_ '1))
                                                  (let ((_%r-args131181%_
                                                         (map (lambda (_%arg131175%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg131175%_)))
                      _%args131158%_))
                (_%r-vars131182%_
                 (let ((__tmp131425
                        (lambda (_%arg131177%_ _%var131178%_ _%r131179%_)
                          (cons (cons (cdr _%arg131177%_) _%var131178%_)
                                _%r131179%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp131425
                    _%vars131113%_
                    _%args131158%_
                    _%fold-in131169%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur131110%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth131161%_ '1))
                         (cons _%hd131160%_
                               (cons (cons 'var _%fold-out131171%_)
                                     _%r-args131181%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars131182%_))
                                                  (let* ((_%hd-vars131188%_
                                                          (let ((__tmp131426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg131184%_ _%var131185%_ _%r131186%_)
                           (cons (cons (cdr _%arg131184%_) _%var131185%_)
                                 _%r131186%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp131426
                     _%vars131113%_
                     _%args131158%_
                     _%fold-in131169%_)))
                 (__tmp131427
                  (_%recur131110%_ _%hd131160%_ _%hd-vars131188%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp131427
                                                     _%fold-out131171%_)))))
                                        (let ((__tmp131431
                                               (if (let ((__tmp131432
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets131167%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp131432 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets131167%_))
                                                   '#!void))
                                              (__tmp131428
                                               (let ((__tmp131430
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args131173%_
                                                         _%lambda-body131190%_)))
                                                     (__tmp131429
                                                      (_%recur131110%_
                                                       _%iv131159%_
                                                       _%vars131113%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp131430
                                                  __tmp131429
                                                  _%targets131167%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp131431
                                           __tmp131428))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%body131140131151%_))
                                  (let ((_%hd131144131196%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body131140131151%_)))
                                        (_%tl131145131198%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body131140131151%_))))
                                    (let ((_%depth131201%_ _%hd131144131196%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl131145131198%_))
                                          (let ((_%hd131146131203%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl131145131198%_)))
                                                (_%tl131147131205%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl131145131198%_))))
                                            (let ((_%hd131208%_
                                                   _%hd131146131203%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl131147131205%_))
                                                  (let ((_%hd131148131210%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl131147131205%_)))
                                                        (_%tl131149131212%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl131147131205%_))))
                                                    (let* ((_%iv131215%_
                                                            _%hd131148131210%_)
                                                           (_%args131217%_
                                                            _%tl131149131212%_))
                                                      (_%K131143131193%_
                                                       _%args131217%_
                                                       _%iv131215%_
                                                       _%hd131208%_
                                                       _%depth131201%_)))
                                                  (_%E131142131155%_))))
                                          (_%E131142131155%_))))
                                  (_%E131142131155%_)))
                            (if (eq? 'var _%$e131131%_)
                                _%body131128%_
                                (_%BUG131105%_ _%e131112%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%e131114131121%_))
                              (let ((_%hd131118131222%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e131114131121%_)))
                                    (_%tl131119131224%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e131114131121%_))))
                                (let* ((_%tag131227%_ _%hd131118131222%_)
                                       (_%body131229%_ _%tl131119131224%_))
                                  (_%K131117131219%_
                                   _%body131229%_
                                   _%tag131227%_)))
                              (_%E131116131125%_)))))))
                 (_%parse130864%_
                  (lambda (_%e130905%_)
                    (letrec ((_%make-cons130907%_
                              (lambda (_%hd131095%_ _%tl131096%_)
                                (let ((_g131433_ _%hd131095%_)
                                      (_g131435_ _%tl131096%_))
                                  (begin
                                    (let ((_g131434_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g131433_)
                                                 (##vector-length _g131433_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g131434_ 2)))
                                          (error "Context expects 2 values"
                                                 _g131434_)))
                                    (let ((_g131436_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g131435_)
                                                 (##vector-length _g131435_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g131436_ 2)))
                                          (error "Context expects 2 values"
                                                 _g131436_)))
                                    (let ((_%hd-e131098%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131433_ 0)))
                                          (_%hd-vars131099%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131433_ 1))))
                                      (let ((_%tl-e131100%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g131435_ 0)))
                                            (_%tl-vars131101%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g131435_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e131098%_
                                                            _%tl-e131100%_))
                                                (append _%hd-vars131099%_
                                                        _%tl-vars131101%_))))))))
                             (_%make-splice130908%_
                              (lambda (_%where131031%_
                                       _%depth131032%_
                                       _%hd131033%_
                                       _%tl131034%_)
                                (let ((_g131437_ _%hd131033%_)
                                      (_g131439_ _%tl131034%_))
                                  (begin
                                    (let ((_g131438_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g131437_)
                                                 (##vector-length _g131437_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g131438_ 2)))
                                          (error "Context expects 2 values"
                                                 _g131438_)))
                                    (let ((_g131440_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g131439_)
                                                 (##vector-length _g131439_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g131440_ 2)))
                                          (error "Context expects 2 values"
                                                 _g131440_)))
                                    (let ((_%hd-e131036%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131437_ 0)))
                                          (_%hd-vars131037%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131437_ 1))))
                                      (let ((_%tl-e131038%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g131439_ 0)))
                                            (_%tl-vars131039%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g131439_ 1))))
                                        (let _%lp131041%_ ((_%rest131043%_
                                                            _%hd-vars131037%_)
                                                           (_%targets131044%_
                                                            '())
                                                           (_%vars131045%_
                                                            _%tl-vars131039%_))
                                          (let* ((_%rest131046131056%_
                                                  _%rest131043%_)
                                                 (_%else131048131064%_
                                                  (lambda ()
                                                    (if (null? _%targets131044%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx130861%_
                                                           _%where131031%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth131032%_
                                    (cons _%hd-e131036%_
                                          (cons _%tl-e131038%_
                                                _%targets131044%_))))
                        _%vars131045%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K131050131076%_
                                                  (lambda (_%rest131067%_
                                                           _%hd-pat131068%_
                                                           _%hd-depth*131069%_)
                                                    (let ((_%hd-depth131071%_
                                                           (fx- _%hd-depth*131069%_
                                                                _%depth131032%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth131071%_))
                                                          (_%lp131041%_
                                                           _%rest131067%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat131068%_)
                         _%targets131044%_)
                   (cons (cons _%hd-depth131071%_ _%hd-pat131068%_)
                         _%vars131045%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth131071%_))
                      (_%lp131041%_
                       _%rest131067%_
                       (cons (cons 'pattern _%hd-pat131068%_)
                             _%targets131044%_)
                       _%vars131045%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx130861%_
                         _%where131031%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%rest131046131056%_))
                                                (let ((_%hd131051131079%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest131046131056%_)))
                                                      (_%tl131052131081%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest131046131056%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd131051131079%_))
                                                      (let ((_%hd131053131084%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd131051131079%_)))
                    (_%tl131054131086%_
                     (let () (declare (not safe)) (##cdr _%hd131051131079%_))))
                (let* ((_%hd-depth*131089%_ _%hd131053131084%_)
                       (_%hd-pat131091%_ _%tl131054131086%_)
                       (_%rest131093%_ _%tl131052131081%_))
                  (_%K131050131076%_
                   _%rest131093%_
                   _%hd-pat131091%_
                   _%hd-depth*131089%_)))
              (_%else131048131064%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else131048131064%_))))))))))
                             (_%recur130909%_
                              (lambda (_%e130914%_ _%is-e?130915%_)
                                (if (_%is-e?130915%_ _%e130914%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx130861%_))
                                    (if (gx#syntax-local-pattern? _%e130914%_)
                                        (let* ((_%pat130919%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e130914%_)))
                                               (_%depth130921%_
                                                (##structure-ref
                                                 _%pat130919%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth130921%_)
                                              (values (cons 'ref _%pat130919%_)
                                                      (cons (cons _%depth130921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat130919%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat130919%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e130914%_))
                                            (values (cons 'term _%e130914%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e130914%_))
                                                (let* ((_%e130925130932%_
                                                        _%e130914%_)
                                                       (_%E130927130936%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e130925130932%_))))
                                                       (_%E130926131018%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e130925130932%_))
                      (let ((_%e130928130940%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e130925130932%_))))
                        (let ((_%hd130929130943%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e130928130940%_)))
                              (_%tl130930130945%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e130928130940%_))))
                          (let* ((_%hd130948%_ _%hd130929130943%_)
                                 (_%rest130950%_ _%tl130930130945%_))
                            (if (_%is-e?130915%_ _%hd130948%_)
                                (let* ((_%e130951130958%_ _%rest130950%_)
                                       (_%E130953130962%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx130861%_
                                             _%e130914%_))))
                                       (_%E130952130976%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e130951130958%_))
                                              (let ((_%e130954130966%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e130951130958%_))))
                                                (let ((_%hd130955130969%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e130954130966%_)))
                                                      (_%tl130956130971%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e130954130966%_))))
                                                  (let ((_%rest130974%_
                                                         _%hd130955130969%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl130956130971%_))
                                                        (_%recur130909%_
                                                         _%rest130974%_
                                                         false)
                                                        (_%E130953130962%_)))))
                                              (_%E130953130962%_)))))
                                  (_%E130952130976%_))
                                (let _%lp130980%_ ((_%rest130982%_
                                                    _%rest130950%_)
                                                   (_%depth130983%_ '0))
                                  (let* ((_%e130984130991%_ _%rest130982%_)
                                         (_%E130986130995%_
                                          (lambda ()
                                            (if (fxpositive? _%depth130983%_)
                                                (_%make-splice130908%_
                                                 _%e130914%_
                                                 _%depth130983%_
                                                 (_%recur130909%_
                                                  _%hd130948%_
                                                  _%is-e?130915%_)
                                                 (_%recur130909%_
                                                  _%rest130982%_
                                                  _%is-e?130915%_))
                                                (_%make-cons130907%_
                                                 (_%recur130909%_
                                                  _%hd130948%_
                                                  _%is-e?130915%_)
                                                 (_%recur130909%_
                                                  _%rest130982%_
                                                  _%is-e?130915%_)))))
                                         (_%E130985131014%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e130984130991%_))
                                                (let ((_%e130987130999%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e130984130991%_))))
                                                  (let ((_%hd130988131002%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e130987130999%_)))
                                                        (_%tl130989131004%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e130987130999%_))))
                                                    (let* ((_%rest-hd131007%_
                                                            _%hd130988131002%_)
                                                           (_%rest-tl131009%_
                                                            _%tl130989131004%_))
                                                      (if (_%is-e?130915%_
                                                           _%rest-hd131007%_)
                                                          (_%lp130980%_
                                                           _%rest-tl131009%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth130983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth130983%_)
                      (_%make-splice130908%_
                       _%e130914%_
                       _%depth130983%_
                       (_%recur130909%_ _%hd130948%_ _%is-e?130915%_)
                       (_%recur130909%_ _%rest130982%_ _%is-e?130915%_))
                      (_%make-cons130907%_
                       (_%recur130909%_ _%hd130948%_ _%is-e?130915%_)
                       (_%recur130909%_ _%rest130982%_ _%is-e?130915%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E130986130995%_)))))
                                    (_%E130985131014%_)))))))
                      (_%E130927130936%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130926131018%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e130914%_))
                                                    (let ((_g131441_
                                                           (_%recur130909%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e130914%_)))
                    _%is-e?130915%_)))
              (begin
                (let ((_g131442_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g131441_)
                             (##vector-length _g131441_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g131442_ 2)))
                      (error "Context expects 2 values" _g131442_)))
                (let ((_%e131023%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g131441_ 0)))
                      (_%vars131024%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g131441_ 1))))
                  (values (cons 'vector _%e131023%_) _%vars131024%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e130914%_))
                                                        (let ((_g131443_
                                                               (_%recur130909%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e130914%_)))
                        _%is-e?130915%_)))
                  (begin
                    (let ((_g131444_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g131443_)
                                 (##vector-length _g131443_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g131444_ 2)))
                          (error "Context expects 2 values" _g131444_)))
                    (let ((_%e131027%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g131443_ 0)))
                          (_%vars131028%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g131443_ 1))))
                      (values (cons 'box _%e131027%_) _%vars131028%_))))
                (values (cons 'datum _%e130914%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g131445_
                             (_%recur130909%_ _%e130905%_ gx#ellipsis?)))
                        (begin
                          (let ((_g131446_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g131445_)
                                       (##vector-length _g131445_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g131446_ 2)))
                                (error "Context expects 2 values" _g131446_)))
                          (let ((_%tree130911%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g131445_ 0)))
                                (_%vars130912%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g131445_ 1))))
                            (if (null? _%vars130912%_)
                                _%tree130911%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx130861%_
                                   _%vars130912%_))))))))))
          (let* ((_%e130865130875%_ _%stx130861%_)
                 (_%E130867130879%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx130861%_))))
                 (_%E130866130901%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e130865130875%_))
                        (let ((_%e130868130883%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e130865130875%_))))
                          (let ((_%hd130869130886%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e130868130883%_)))
                                (_%tl130870130888%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e130868130883%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl130870130888%_))
                                (let ((_%e130871130891%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl130870130888%_))))
                                  (let ((_%hd130872130894%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e130871130891%_)))
                                        (_%tl130873130896%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e130871130891%_))))
                                    (let ((_%form130899%_ _%hd130872130894%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl130873130896%_))
                                          (let ((__tmp131448
                                                 (_%generate130863%_
                                                  (_%parse130864%_
                                                   _%form130899%_)))
                                                (__tmp131447
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx130861%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp131448
                                             __tmp131447))
                                          (_%E130867130879%_)))))
                                (_%E130867130879%_))))
                        (_%E130867130879%_)))))
            (_%E130866130901%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx130110%_
               _%identifier=?130111%_
               _%unwrap-e130112%_
               _%wrap-e130113%_)
        (letrec ((_%generate-bindings130115%_
                  (lambda (_%target130725%_
                           _%ids130726%_
                           _%clauses130727%_
                           _%clause-ids130728%_
                           _%E130729%_)
                    (letrec ((_%generate1130731%_
                              (lambda (_%clause130828%_
                                       _%clause-id130829%_
                                       _%E130830%_)
                                (cons (cons _%clause-id130829%_ '())
                                      (cons (let ((__tmp131450
                                                   (cons _%target130725%_ '()))
                                                  (__tmp131449
                                                   (_%generate-clause130117%_
                                                    _%target130725%_
                                                    _%ids130726%_
                                                    _%clause130828%_
                                                    _%E130830%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp131450
                                               __tmp131449))
                                            '())))))
                      (let _%lp130733%_ ((_%rest130735%_ _%clauses130727%_)
                                         (_%rest-ids130736%_
                                          _%clause-ids130728%_)
                                         (_%bindings130737%_ '()))
                        (let* ((_%rest130738130746%_ _%rest130735%_)
                               (_%else130740130754%_
                                (lambda () _%bindings130737%_))
                               (_%K130742130816%_
                                (lambda (_%rest130757%_ _%clause130758%_)
                                  (let* ((_%rest-ids130759130766%_
                                          _%rest-ids130736%_)
                                         (_%E130761130770%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids130759130766%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K130762130804%_
                                          (lambda (_%rest-ids130773%_
                                                   _%clause-id130774%_)
                                            (let* ((_%rest-ids130775130783%_
                                                    _%rest-ids130773%_)
                                                   (_%else130777130791%_
                                                    (lambda ()
                                                      (cons (_%generate1130731%_
                                                             _%clause130758%_
                                                             _%clause-id130774%_
                                                             _%E130729%_)
                                                            _%bindings130737%_)))
                                                   (_%K130779130796%_
                                                    (lambda (_%next-clause-id130794%_)
                                                      (_%lp130733%_
                                                       _%rest130757%_
                                                       _%rest-ids130773%_
                                                       (cons (_%generate1130731%_
                                                              _%clause130758%_
                                                              _%clause-id130774%_
                                                              _%next-clause-id130794%_)
                                                             _%bindings130737%_)))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%rest-ids130775130783%_))
                                                  (let* ((_%hd130780130799%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids130775130783%_)))
                                                         (_%next-clause-id130802%_
                                                          _%hd130780130799%_))
                                                    (_%K130779130796%_
                                                     _%next-clause-id130802%_))
                                                  (_%else130777130791%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%rest-ids130759130766%_))
                                        (let ((_%hd130763130807%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids130759130766%_)))
                                              (_%tl130764130809%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids130759130766%_))))
                                          (let* ((_%clause-id130812%_
                                                  _%hd130763130807%_)
                                                 (_%rest-ids130814%_
                                                  _%tl130764130809%_))
                                            (_%K130762130804%_
                                             _%rest-ids130814%_
                                             _%clause-id130812%_)))
                                        (_%E130761130770%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest130738130746%_))
                              (let ((_%hd130743130819%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest130738130746%_)))
                                    (_%tl130744130821%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest130738130746%_))))
                                (let* ((_%clause130824%_ _%hd130743130819%_)
                                       (_%rest130826%_ _%tl130744130821%_))
                                  (_%K130742130816%_
                                   _%rest130826%_
                                   _%clause130824%_)))
                              (_%else130740130754%_)))))))
                 (_%generate-body130116%_
                  (lambda (_%bindings130685%_ _%body130686%_)
                    (let _%recur130688%_ ((_%rest130690%_ _%bindings130685%_))
                      (let* ((_%rest130691130699%_ _%rest130690%_)
                             (_%else130693130707%_ (lambda () _%body130686%_))
                             (_%K130695130713%_
                              (lambda (_%rest130710%_ _%hd130711%_)
                                (let ((__tmp131452 (cons _%hd130711%_ '()))
                                      (__tmp131451
                                       (_%recur130688%_ _%rest130710%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp131452
                                   __tmp131451)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest130691130699%_))
                            (let ((_%hd130696130716%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest130691130699%_)))
                                  (_%tl130697130718%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest130691130699%_))))
                              (let* ((_%hd130721%_ _%hd130696130716%_)
                                     (_%rest130723%_ _%tl130697130718%_))
                                (_%K130695130713%_
                                 _%rest130723%_
                                 _%hd130721%_)))
                            (_%else130693130707%_))))))
                 (_%generate-clause130117%_
                  (lambda (_%target130548%_
                           _%ids130549%_
                           _%clause130550%_
                           _%E130551%_)
                    (letrec ((_%generate1130553%_
                              (lambda (_%hd130640%_
                                       _%fender130641%_
                                       _%body130642%_)
                                (let ((_g131453_
                                       (_%parse-clause130119%_
                                        _%hd130640%_
                                        _%ids130549%_)))
                                  (begin
                                    (let ((_g131454_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g131453_)
                                                 (##vector-length _g131453_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g131454_ 2)))
                                          (error "Context expects 2 values"
                                                 _g131454_)))
                                    (let ((_%e130644%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131453_ 0)))
                                          (_%mvars130645%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131453_ 1))))
                                      (let* ((_%pvars130647%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars130645%_))))
                                             (_%E130649%_
                                              (cons _%E130551%_
                                                    (cons _%target130548%_
                                                          '())))
                                             (_%K130682%_
                                              (let ((__tmp131455
                                                     (let ((__tmp131457
                                                            (map (lambda (_%mvar130651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar130652%_)
                           (let* ((_%mvar130653130660%_ _%mvar130651%_)
                                  (_%E130655130664%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar130653130660%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K130656130670%_
                                   (lambda (_%depth130667%_ _%id130668%_)
                                     (cons _%id130668%_
                                           (cons (let ((__tmp131459
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id130668%_)))
                                                       (__tmp131458
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar130652%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp131459
                                                    __tmp131458
                                                    _%depth130667%_))
                                                 '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%mvar130653130660%_))
                                 (let ((_%hd130657130673%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar130653130660%_)))
                                       (_%tl130658130675%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar130653130660%_))))
                                   (let* ((_%id130678%_ _%hd130657130673%_)
                                          (_%depth130680%_ _%tl130658130675%_))
                                     (_%K130656130670%_
                                      _%depth130680%_
                                      _%id130678%_)))
                                 (_%E130655130664%_))))
                         _%mvars130645%_
                         _%pvars130647%_))
                   (__tmp131456
                    (if (eq? _%fender130641%_ '#t)
                        _%body130642%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender130641%_
                           _%body130642%_
                           _%E130649%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp131457 __tmp131456))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars130647%_
                                                 __tmp131455))))
                                        (_%generate-match130118%_
                                         _%hd130640%_
                                         _%target130548%_
                                         _%e130644%_
                                         _%mvars130645%_
                                         _%K130682%_
                                         _%E130649%_))))))))
                      (let* ((_%e130554130574%_ _%clause130550%_)
                             (_%E130563130578%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e130554130574%_))))
                             (_%E130556130612%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e130554130574%_))
                                    (let ((_%e130564130582%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e130554130574%_))))
                                      (let ((_%hd130565130585%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e130564130582%_)))
                                            (_%tl130566130587%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e130564130582%_))))
                                        (let ((_%hd130590%_
                                               _%hd130565130585%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl130566130587%_))
                                              (let ((_%e130567130592%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl130566130587%_))))
                                                (let ((_%hd130568130595%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e130567130592%_)))
                                                      (_%tl130569130597%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e130567130592%_))))
                                                  (let ((_%fender130600%_
                                                         _%hd130568130595%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl130569130597%_))
                                                        (let ((_%e130570130602%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl130569130597%_))))
                  (let ((_%hd130571130605%_
                         (let ()
                           (declare (not safe))
                           (##car _%e130570130602%_)))
                        (_%tl130572130607%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e130570130602%_))))
                    (let ((_%body130610%_ _%hd130571130605%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl130572130607%_))
                          (_%generate1130553%_
                           _%hd130590%_
                           _%fender130600%_
                           _%body130610%_)
                          (_%E130563130578%_)))))
                (_%E130563130578%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E130563130578%_)))))
                                    (_%E130563130578%_))))
                             (_%E130555130636%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e130554130574%_))
                                    (let ((_%e130557130616%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e130554130574%_))))
                                      (let ((_%hd130558130619%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e130557130616%_)))
                                            (_%tl130559130621%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e130557130616%_))))
                                        (let ((_%hd130624%_
                                               _%hd130558130619%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl130559130621%_))
                                              (let ((_%e130560130626%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl130559130621%_))))
                                                (let ((_%hd130561130629%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e130560130626%_)))
                                                      (_%tl130562130631%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e130560130626%_))))
                                                  (let ((_%body130634%_
                                                         _%hd130561130629%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl130562130631%_))
                                                        (_%generate1130553%_
                                                         _%hd130624%_
                                                         '#t
                                                         _%body130634%_)
                                                        (_%E130556130612%_)))))
                                              (_%E130556130612%_)))))
                                    (_%E130556130612%_)))))
                        (_%E130555130636%_)))))
                 (_%generate-match130118%_
                  (lambda (_%where130297%_
                           _%target130298%_
                           _%hd130299%_
                           _%mvars130300%_
                           _%K130301%_
                           _%E130302%_)
                    (letrec ((_%BUG130304%_
                              (lambda (_%q130546%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx130110%_
                                         _%hd130299%_
                                         _%q130546%_))))
                             (_%recur130305%_
                              (lambda (_%e130396%_
                                       _%vars130397%_
                                       _%target130398%_
                                       _%E130399%_
                                       _%k130400%_)
                                (let* ((_%e130401130408%_ _%e130396%_)
                                       (_%E130403130412%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e130401130408%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K130404130534%_
                                        (lambda (_%body130415%_ _%tag130416%_)
                                          (let ((_%$e130418%_ _%tag130416%_))
                                            (if (eq? 'any _%$e130418%_)
                                                (_%k130400%_ _%vars130397%_)
                                                (if (eq? 'id _%$e130418%_)
                                                    (let ((__tmp131464
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target130398%_)))
                                                          (__tmp131460
                                                           (let ((__tmp131462
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp131463
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e130113%_
                                    _%body130415%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?130111%_
                             __tmp131463
                             _%target130398%_)))
                         (__tmp131461 (_%k130400%_ _%vars130397%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp131462 __tmp131461 _%E130399%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp131464 __tmp131460 _%E130399%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e130418%_)
                                                        (_%k130400%_
                                                         (cons (cons _%body130415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target130398%_)
                       _%vars130397%_))
                (if (eq? 'cons _%$e130418%_)
                    (let ((_%$e130421%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd130422%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl130423%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp131470
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target130398%_)))
                            (__tmp131465
                             (let ((__tmp131469
                                    (cons (cons (cons _%$e130421%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e130112%_
                                                         _%target130398%_))
                                                      '()))
                                          '()))
                                   (__tmp131466
                                    (let ((__tmp131468
                                           (cons (cons (cons _%$hd130422%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e130421%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl130423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e130421%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp131467
                                           (let* ((_%body130424130431%_
                                                   _%body130415%_)
                                                  (_%E130426130435%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body130424130431%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K130427130443%_
                                                   (lambda (_%tl130438%_
                                                            _%hd130439%_)
                                                     (_%recur130305%_
                                                      _%hd130439%_
                                                      _%vars130397%_
                                                      _%$hd130422%_
                                                      _%E130399%_
                                                      (lambda (_%vars130441%_)
                                                        (_%recur130305%_
                                                         _%tl130438%_
                                                         _%vars130441%_
                                                         _%$tl130423%_
                                                         _%E130399%_
                                                         _%k130400%_))))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _%body130424130431%_))
                                                 (let ((_%hd130428130446%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body130424130431%_)))
                                                       (_%tl130429130448%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body130424130431%_))))
                                                   (let* ((_%hd130451%_
                                                           _%hd130428130446%_)
                                                          (_%tl130453%_
                                                           _%tl130429130448%_))
                                                     (_%K130427130443%_
                                                      _%tl130453%_
                                                      _%hd130451%_)))
                                                 (_%E130426130435%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp131468
                                       __tmp131467))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp131469
                                __tmp131466))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp131470
                         __tmp131465
                         _%E130399%_)))
                    (if (eq? 'splice _%$e130418%_)
                        (let* ((_%body130454130461%_ _%body130415%_)
                               (_%E130456130465%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body130454130461%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K130457130516%_
                                (lambda (_%tl130468%_ _%hd130469%_)
                                  (let* ((_%rlen130471%_
                                          (_%splice-rlen130306%_ _%tl130468%_))
                                         (_%$target130473%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd130475%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl130477%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp130479%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e130481%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd130483%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl130485%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars130487%_
                                          (_%splice-vars130307%_ _%hd130469%_))
                                         (_%lvars130489%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars130487%_)))
                                         (_%tlvars130491%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars130487%_)))
                                         (_%linit130495%_
                                          (map (lambda (_%var130493%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars130489%_)))
                                    (letrec ((_%make-loop130498%_
                                              (lambda (_%vars130502%_)
                                                (let ((__tmp131472
                                                       (cons (cons (cons _%$lp130479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp131485
                                        (cons _%$hd130475%_ _%lvars130489%_))
                                       (__tmp131473
                                        (let ((__tmp131484
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd130475%_)))
                                              (__tmp131478
                                               (let ((__tmp131483
                                                      (cons (cons (cons _%$lp-e130481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e130112%_
                                   _%$hd130475%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp131479
                                                      (let ((__tmp131482
                                                             (cons (cons (cons _%$lp-hd130483%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e130481%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl130485%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e130481%_))
                                             '()))
                                 '())))
                    (__tmp131480
                     (_%recur130305%_
                      _%hd130469%_
                      '()
                      _%$lp-hd130483%_
                      _%E130399%_
                      (lambda (_%hdvars130504%_)
                        (cons _%$lp130479%_
                              (cons _%$lp-tl130485%_
                                    (map (lambda (_%svar130506%_
                                                  _%lvar130507%_)
                                           (let ((__tmp131481
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar130506%_
                                                     _%hdvars130504%_
                                                     _%BUG130304%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp131481
                                              _%lvar130507%_)))
                                         _%svars130487%_
                                         _%lvars130489%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp131482 __tmp131480))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp131483
                                                  __tmp131479)))
                                              (__tmp131474
                                               (let ((__tmp131477
                                                      (map (lambda (_%lvar130509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar130510%_)
                     (cons (cons _%tlvar130510%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar130509%_))
                                 '())))
                   _%lvars130489%_
                   _%tlvars130491%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp131475
                                                      (_%k130400%_
                                                       (let ((__tmp131476
                                                              (lambda (_%svar130512%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar130513%_
                               _%r130514%_)
                        (cons (cons _%svar130512%_ _%tlvar130513%_)
                              _%r130514%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp131476
                  _%vars130502%_
                  _%svars130487%_
                  _%tlvars130491%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp131477
                                                  __tmp131475))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp131484
                                           __tmp131478
                                           __tmp131474))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp131485
                                    __tmp131473))
                                 '()))
                     '()))
              (__tmp131471
               (cons _%$lp130479%_ (cons _%$target130473%_ _%linit130495%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp131472
                                                   __tmp131471)))))
                                      (let ((_%body130500%_
                                             (let ((__tmp131487
                                                    (cons (cons (cons _%$target130473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl130477%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target130398%_
                                 _%rlen130471%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp131486
                                                    (_%recur130305%_
                                                     _%tl130468%_
                                                     _%vars130397%_
                                                     _%$tl130477%_
                                                     _%E130399%_
                                                     _%make-loop130498%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp131487
                                                __tmp131486))))
                                        (let ((__tmp131491
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target130398%_)))
                                              (__tmp131488
                                               (if (zero? _%rlen130471%_)
                                                   _%body130500%_
                                                   (let ((__tmp131489
                                                          (let ((__tmp131490
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target130398%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp131490 _%rlen130471%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp131489
                                                      _%body130500%_
                                                      _%E130399%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp131491
                                           __tmp131488
                                           _%E130399%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%body130454130461%_))
                              (let ((_%hd130458130519%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body130454130461%_)))
                                    (_%tl130459130521%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body130454130461%_))))
                                (let* ((_%hd130524%_ _%hd130458130519%_)
                                       (_%tl130526%_ _%tl130459130521%_))
                                  (_%K130457130516%_
                                   _%tl130526%_
                                   _%hd130524%_)))
                              (_%E130456130465%_)))
                        (if (eq? 'null _%$e130418%_)
                            (let ((__tmp131493
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target130398%_)))
                                  (__tmp131492 (_%k130400%_ _%vars130397%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp131493
                               __tmp131492
                               _%E130399%_))
                            (if (eq? 'vector _%$e130418%_)
                                (let ((_%$e130528%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp131498
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target130398%_)))
                                        (__tmp131494
                                         (let ((__tmp131496
                                                (cons (cons (cons _%$e130528%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp131497
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e130112%_
                                    _%target130398%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp131497))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp131495
                                                (_%recur130305%_
                                                 _%body130415%_
                                                 _%vars130397%_
                                                 _%$e130528%_
                                                 _%E130399%_
                                                 _%k130400%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp131496
                                            __tmp131495))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp131498
                                     __tmp131494
                                     _%E130399%_)))
                                (if (eq? 'box _%$e130418%_)
                                    (let ((_%$e130530%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp131503
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target130398%_)))
                                            (__tmp131499
                                             (let ((__tmp131501
                                                    (cons (cons (cons _%$e130530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp131502
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e130112%_
                                        _%target130398%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp131502))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp131500
                                                    (_%recur130305%_
                                                     _%body130415%_
                                                     _%vars130397%_
                                                     _%$e130530%_
                                                     _%E130399%_
                                                     _%k130400%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp131501
                                                __tmp131500))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp131503
                                         __tmp131499
                                         _%E130399%_)))
                                    (if (eq? 'datum _%$e130418%_)
                                        (let ((_%$e130532%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp131509
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target130398%_)))
                                                (__tmp131504
                                                 (let ((__tmp131508
                                                        (cons (cons (cons _%$e130532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target130398%_))
                                  '()))
                      '()))
               (__tmp131505
                (let ((__tmp131507
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e130532%_ _%body130415%_)))
                      (__tmp131506 (_%k130400%_ _%vars130397%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp131507 __tmp131506 _%E130399%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp131508
                                                    __tmp131505))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp131509
                                             __tmp131504
                                             _%E130399%_)))
                                        (_%BUG130304%_
                                         _%e130396%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%e130401130408%_))
                                      (let ((_%hd130405130537%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e130401130408%_)))
                                            (_%tl130406130539%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e130401130408%_))))
                                        (let* ((_%tag130542%_
                                                _%hd130405130537%_)
                                               (_%body130544%_
                                                _%tl130406130539%_))
                                          (_%K130404130534%_
                                           _%body130544%_
                                           _%tag130542%_)))
                                      (_%E130403130412%_)))))
                             (_%splice-rlen130306%_
                              (lambda (_%e130358%_)
                                (let _%lp130360%_ ((_%e130362%_ _%e130358%_)
                                                   (_%n130363%_ '0))
                                  (let* ((_%e130364130371%_ _%e130362%_)
                                         (_%E130366130375%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e130364130371%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K130367130384%_
                                          (lambda (_%body130378%_
                                                   _%tag130379%_)
                                            (let ((_%$e130381%_ _%tag130379%_))
                                              (if (eq? 'splice _%$e130381%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx130110%_
                                                     _%where130297%_))
                                                  (if (eq? 'cons _%$e130381%_)
                                                      (_%lp130360%_
                                                       (cdr _%body130378%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n130363%_
                                                                '1)))
                                                      _%n130363%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e130364130371%_))
                                        (let ((_%hd130368130387%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e130364130371%_)))
                                              (_%tl130369130389%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e130364130371%_))))
                                          (let* ((_%tag130392%_
                                                  _%hd130368130387%_)
                                                 (_%body130394%_
                                                  _%tl130369130389%_))
                                            (_%K130367130384%_
                                             _%body130394%_
                                             _%tag130392%_)))
                                        (_%E130366130375%_))))))
                             (_%splice-vars130307%_
                              (lambda (_%e130314%_)
                                (let _%recur130316%_ ((_%e130318%_ _%e130314%_)
                                                      (_%vars130319%_ '()))
                                  (let* ((_%e130320130327%_ _%e130318%_)
                                         (_%E130322130331%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e130320130327%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K130323130346%_
                                          (lambda (_%body130334%_
                                                   _%tag130335%_)
                                            (let ((_%$e130337%_ _%tag130335%_))
                                              (if (eq? 'var _%$e130337%_)
                                                  (cons _%body130334%_
                                                        _%vars130319%_)
                                                  (if (or (eq? 'cons
                                                               _%$e130337%_)
                                                          (eq? 'splice
                                                               _%$e130337%_))
                                                      (_%recur130316%_
                                                       (cdr _%body130334%_)
                                                       (_%recur130316%_
                                                        (car _%body130334%_)
                                                        _%vars130319%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e130337%_)
                      (eq? 'box _%$e130337%_))
                  (_%recur130316%_ _%body130334%_ _%vars130319%_)
                  _%vars130319%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e130320130327%_))
                                        (let ((_%hd130324130349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e130320130327%_)))
                                              (_%tl130325130351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e130320130327%_))))
                                          (let* ((_%tag130354%_
                                                  _%hd130324130349%_)
                                                 (_%body130356%_
                                                  _%tl130325130351%_))
                                            (_%K130323130346%_
                                             _%body130356%_
                                             _%tag130354%_)))
                                        (_%E130322130331%_))))))
                             (_%make-body130308%_
                              (lambda (_%vars130310%_)
                                (cons _%K130301%_
                                      (map (lambda (_%mvar130312%_)
                                             (let ((__tmp131510
                                                    (car _%mvar130312%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp131510
                                                _%vars130310%_
                                                _%BUG130304%_)))
                                           _%mvars130300%_)))))
                      (_%recur130305%_
                       _%hd130299%_
                       '()
                       _%target130298%_
                       _%E130302%_
                       _%make-body130308%_))))
                 (_%parse-clause130119%_
                  (lambda (_%hd130191%_ _%ids130192%_)
                    (let _%recur130194%_ ((_%e130196%_ _%hd130191%_)
                                          (_%vars130197%_ '())
                                          (_%depth130198%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e130196%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e130196%_))
                              (values '(any) _%vars130197%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e130196%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx130110%_
                                     _%hd130191%_))
                                  (if (let ((__tmp131511
                                             (lambda (_%id130203%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e130196%_
                                                  _%id130203%_)))))
                                        (declare (not safe))
                                        (__find __tmp131511 _%ids130192%_))
                                      (values (cons 'id _%e130196%_)
                                              _%vars130197%_)
                                      (if (let ((__tmp131512
                                                 (lambda (_%var130206%_)
                                                   (let ((__tmp131513
                                                          (car _%var130206%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e130196%_
                                                      __tmp131513)))))
                                            (declare (not safe))
                                            (__find __tmp131512
                                                    _%vars130197%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx130110%_
                                             _%e130196%_))
                                          (values (cons 'var _%e130196%_)
                                                  (cons (cons _%e130196%_
                                                              _%depth130198%_)
                                                        _%vars130197%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e130196%_))
                              (let* ((_%e130210130217%_ _%e130196%_)
                                     (_%E130212130221%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e130210130217%_))))
                                     (_%E130211130282%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e130210130217%_))
                                            (let ((_%e130213130225%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e130210130217%_))))
                                              (let ((_%hd130214130228%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e130213130225%_)))
                                                    (_%tl130215130230%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e130213130225%_))))
                                                (let* ((_%hd130233%_
                                                        _%hd130214130228%_)
                                                       (_%rest130235%_
                                                        _%tl130215130230%_)
                                                       (_%make-pair130250%_
                                                        (lambda (_%tag130237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd130238%_
                         _%tl130239%_)
                  (let* ((_%hd-depth130241%_
                          (if (eq? _%tag130237%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth130198%_ '1))
                              _%depth130198%_))
                         (_g131514_
                          (_%recur130194%_
                           _%hd130238%_
                           _%vars130197%_
                           _%hd-depth130241%_)))
                    (begin
                      (let ((_g131515_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g131514_)
                                   (##vector-length _g131514_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g131515_ 2)))
                            (error "Context expects 2 values" _g131515_)))
                      (let ((_%hd130243%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g131514_ 0)))
                            (_%vars130244%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g131514_ 1))))
                        (let ((_g131516_
                               (_%recur130194%_
                                _%tl130239%_
                                _%vars130244%_
                                _%depth130198%_)))
                          (begin
                            (let ((_g131517_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g131516_)
                                         (##vector-length _g131516_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g131517_ 2)))
                                  (error "Context expects 2 values"
                                         _g131517_)))
                            (let ((_%tl130246%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g131516_ 0)))
                                  (_%vars130247%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g131516_ 1))))
                              (values (cons _%tag130237%_
                                            (cons _%hd130243%_ _%tl130246%_))
                                      _%vars130247%_)))))))))
               (_%e130251130258%_ _%rest130235%_)
               (_%E130253130262%_
                (lambda ()
                  (_%make-pair130250%_ 'cons _%hd130233%_ _%rest130235%_)))
               (_%E130252130278%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e130251130258%_))
                      (let ((_%e130254130266%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e130251130258%_))))
                        (let ((_%hd130255130269%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e130254130266%_)))
                              (_%tl130256130271%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e130254130266%_))))
                          (let* ((_%rest-hd130274%_ _%hd130255130269%_)
                                 (_%rest-tl130276%_ _%tl130256130271%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd130274%_))
                                (_%make-pair130250%_
                                 'splice
                                 _%hd130233%_
                                 _%rest-tl130276%_)
                                (_%make-pair130250%_
                                 'cons
                                 _%hd130233%_
                                 _%rest130235%_)))))
                      (_%E130253130262%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130252130278%_))))
                                            (_%E130212130221%_)))))
                                (_%E130211130282%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e130196%_))
                                  (values '(null) _%vars130197%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e130196%_))
                                      (let ((_g131518_
                                             (_%recur130194%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e130196%_)))
                                              _%vars130197%_
                                              _%depth130198%_)))
                                        (begin
                                          (let ((_g131519_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g131518_)
                                                       (##vector-length
                                                        _g131518_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g131519_ 2)))
                                                (error "Context expects 2 values"
                                                       _g131519_)))
                                          (let ((_%e130288%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g131518_ 0)))
                                                (_%vars130289%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g131518_
                                                    1))))
                                            (values (cons 'vector _%e130288%_)
                                                    _%vars130289%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e130196%_))
                                          (let ((_g131520_
                                                 (_%recur130194%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e130196%_)))
                                                  _%vars130197%_
                                                  _%depth130198%_)))
                                            (begin
                                              (let ((_g131521_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g131520_)
                                                           (##vector-length
                                                            _g131520_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g131521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g131521_)))
                                              (let ((_%e130292%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g131520_
                                                        0)))
                                                    (_%vars130293%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g131520_
                                                        1))))
                                                (values (cons 'box _%e130292%_)
                                                        _%vars130293%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e130196%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e130196%_)))
                                                      _%vars130197%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx130110%_
                                                 _%e130196%_))))))))))))
          (let* ((_%e130120130133%_ _%stx130110%_)
                 (_%E130122130137%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e130120130133%_))))
                 (_%E130121130187%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e130120130133%_))
                        (let ((_%e130123130141%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e130120130133%_))))
                          (let ((_%hd130124130144%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e130123130141%_)))
                                (_%tl130125130146%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e130123130141%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl130125130146%_))
                                (let ((_%e130126130149%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl130125130146%_))))
                                  (let ((_%hd130127130152%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e130126130149%_)))
                                        (_%tl130128130154%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e130126130149%_))))
                                    (let ((_%expr130157%_ _%hd130127130152%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl130128130154%_))
                                          (let ((_%e130129130159%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl130128130154%_))))
                                            (let ((_%hd130130130162%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e130129130159%_)))
                                                  (_%tl130131130164%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e130129130159%_))))
                                              (let* ((_%ids130167%_
                                                      _%hd130130130162%_)
                                                     (_%clauses130169%_
                                                      _%tl130131130164%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids130167%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses130169%_))
                                                        (let* ((_%ids130174%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids130167%_)))
                       (_%clauses130176%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses130169%_)))
                       (_%clause-ids130178%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses130176%_)))
                       (_%E130180%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target130182%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first130184%_
                        (if (null? _%clauses130176%_)
                            _%E130180%_
                            (car _%clause-ids130178%_))))
                  (let ((__tmp131523
                         (let ((__tmp131524
                                (let ((__tmp131526
                                       (let ((__tmp131528
                                              (cons (cons (cons _%E130180%_
                                                                '())
                                                          (cons (let ((__tmp131530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target130182%_ '()))
                              (__tmp131529
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target130182%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp131530 __tmp131529))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp131527
                                              (_%generate-body130116%_
                                               (_%generate-bindings130115%_
                                                _%target130182%_
                                                _%ids130174%_
                                                _%clauses130176%_
                                                _%clause-ids130178%_
                                                _%E130180%_)
                                               (cons _%first130184%_
                                                     (cons _%expr130157%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp131528
                                          __tmp131527)))
                                      (__tmp131525
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx130110%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp131526
                                   __tmp131525))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp131524)))
                        (__tmp131522
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx130110%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp131523 __tmp131522)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx130110%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx130110%_
                                                       _%ids130167%_))))))
                                          (_%E130122130137%_)))))
                                (_%E130122130137%_))))
                        (_%E130122130137%_)))))
            (_%E130121130187%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx130835%_)
        (let* ((_%identifier=?130837%_ 'free-identifier=?)
               (_%unwrap-e130839%_ 'syntax-e)
               (_%wrap-e130841%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx130835%_
           _%identifier=?130837%_
           _%unwrap-e130839%_
           _%wrap-e130841%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx130843%_ _%identifier=?130844%_)
        (let* ((_%unwrap-e130846%_ 'syntax-e) (_%wrap-e130848%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx130843%_
           _%identifier=?130844%_
           _%unwrap-e130846%_
           _%wrap-e130848%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx130850%_ _%identifier=?130851%_ _%unwrap-e130852%_)
        (let ((_%wrap-e130854%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx130850%_
           _%identifier=?130851%_
           _%unwrap-e130852%_
           _%wrap-e130854%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g131532_
        (let ((_g131531_ (let () (declare (not safe)) (##length _g131532_))))
          (cond ((let () (declare (not safe)) (##fx= _g131531_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g131532_))
                ((let () (declare (not safe)) (##fx= _g131531_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g131532_))
                ((let () (declare (not safe)) (##fx= _g131531_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g131532_))
                ((let () (declare (not safe)) (##fx= _g131531_ 4))
                 (apply gx#macro-expand-syntax-case__% _g131532_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g131532_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx130107%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx130107%_))
            (let ((__tmp131533
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx130107%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp131533 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd130065%_ . _%rest130066%_)
        (let ((_%len130068%_ (length _%hd130065%_)))
          (let _%lp130070%_ ((_%rest130072%_ _%rest130066%_))
            (let* ((_%rest130073130081%_ _%rest130072%_)
                   (_%else130075130089%_ (lambda () '#!void))
                   (_%K130077130095%_
                    (lambda (_%rest130092%_ _%hd130093%_)
                      (if (let ((__tmp131534 (length _%hd130093%_)))
                            (declare (not safe))
                            (##fx= _%len130068%_ __tmp131534))
                          (_%lp130070%_ _%rest130092%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd130093%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest130073130081%_))
                  (let ((_%hd130078130098%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest130073130081%_)))
                        (_%tl130079130100%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest130073130081%_))))
                    (let* ((_%hd130103%_ _%hd130078130098%_)
                           (_%rest130105%_ _%tl130079130100%_))
                      (_%K130077130095%_ _%rest130105%_ _%hd130103%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx130020%_ _%n130021%_)
        (let _%lp130023%_ ((_%rest130025%_ _%stx130020%_) (_%r130026%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest130025%_))
              (let* ((_%g130027130034%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest130025%_)))
                     (_%E130029130038%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g130027130034%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K130030130044%_
                      (lambda (_%rest130041%_ _%hd130042%_)
                        (_%lp130023%_
                         _%rest130041%_
                         (cons _%hd130042%_ _%r130026%_)))))
                (if (let () (declare (not safe)) (##pair? _%g130027130034%_))
                    (let ((_%hd130031130047%_
                           (let ()
                             (declare (not safe))
                             (##car _%g130027130034%_)))
                          (_%tl130032130049%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g130027130034%_))))
                      (let* ((_%hd130052%_ _%hd130031130047%_)
                             (_%rest130054%_ _%tl130032130049%_))
                        (_%K130030130044%_ _%rest130054%_ _%hd130052%_)))
                    (_%E130029130038%_)))
              (let _%lp130056%_ ((_%n130058%_ _%n130021%_)
                                 (_%l130059%_ _%r130026%_)
                                 (_%r130060%_ _%rest130025%_))
                (if (null? _%l130059%_)
                    (values _%l130059%_ _%r130060%_)
                    (if (fxpositive? _%n130058%_)
                        (_%lp130056%_
                         (let () (declare (not safe)) (##fx- _%n130058%_ '1))
                         (cdr _%l130059%_)
                         (cons (car _%l130059%_) _%r130060%_))
                        (values (reverse _%l130059%_) _%r130060%_))))))))))
