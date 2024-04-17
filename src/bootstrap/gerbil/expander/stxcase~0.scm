(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1713044316)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp131363 (list gx#expander::t))
            (__tmp131362 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp131363
         '(id depth)
         __tmp131362
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args131359%_
        (apply make-instance gx#syntax-pattern::t _%$args131359%_)))
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
      (lambda (_%self129966131343%_ _%stx131345%_)
        (let* ((_%self131347%_ _%self129966131343%_)
               (_%self131349%_ _%self131347%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx131345%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx130809%_)
        (letrec ((_%generate130811%_
                  (lambda (_%e131051%_)
                    (letrec ((_%BUG131053%_
                              (lambda (_%q131218%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx130809%_
                                         _%e131051%_
                                         _%q131218%_))))
                             (_%local-pattern-e131054%_
                              (lambda (_%pat131216%_)
                                (let ((__tmp131364
                                       (##structure-ref
                                        _%pat131216%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp131364))))
                             (_%getvar131055%_
                              (lambda (_%q131213%_ _%vars131214%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q131213%_
                                   _%vars131214%_
                                   _%BUG131053%_))))
                             (_%getarg131056%_
                              (lambda (_%arg131179%_ _%vars131180%_)
                                (let* ((_%arg131181131188%_ _%arg131179%_)
                                       (_%E131183131192%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg131181131188%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K131184131201%_
                                        (lambda (_%e131195%_ _%tag131196%_)
                                          (let ((_%$e131198%_ _%tag131196%_))
                                            (if (eq? 'ref _%$e131198%_)
                                                (_%getvar131055%_
                                                 _%e131195%_
                                                 _%vars131180%_)
                                                (if (eq? 'pattern _%$e131198%_)
                                                    (_%local-pattern-e131054%_
                                                     _%e131195%_)
                                                    (_%BUG131053%_
                                                     _%arg131179%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%arg131181131188%_))
                                      (let ((_%hd131185131204%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg131181131188%_)))
                                            (_%tl131186131206%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg131181131188%_))))
                                        (let* ((_%tag131209%_
                                                _%hd131185131204%_)
                                               (_%e131211%_
                                                _%tl131186131206%_))
                                          (_%K131184131201%_
                                           _%e131211%_
                                           _%tag131209%_)))
                                      (_%E131183131192%_))))))
                      (let _%recur131058%_ ((_%e131060%_ _%e131051%_)
                                            (_%vars131061%_ '()))
                        (let* ((_%e131062131069%_ _%e131060%_)
                               (_%E131064131073%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e131062131069%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K131065131167%_
                                (lambda (_%body131076%_ _%tag131077%_)
                                  (let ((_%$e131079%_ _%tag131077%_))
                                    (if (eq? 'datum _%$e131079%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body131076%_))
                                        (if (eq? 'term _%$e131079%_)
                                            (let ((_%id131082%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body131076%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id131082%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks131085%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id131082%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks131085%_)
                                                        (let ((__tmp131365
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body131076%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp131365))
                (let ((__tmp131367
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body131076%_)))
                      (__tmp131366
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body131076%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp131367
                   __tmp131366
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id131082%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body131076%_))
                                                      (_%BUG131053%_
                                                       _%e131060%_))))
                                            (if (eq? 'pattern _%$e131079%_)
                                                (_%local-pattern-e131054%_
                                                 _%body131076%_)
                                                (if (eq? 'ref _%$e131079%_)
                                                    (_%getvar131055%_
                                                     _%body131076%_
                                                     _%vars131061%_)
                                                    (if (eq? 'cons
                                                             _%$e131079%_)
                                                        (let ((__tmp131369
                                                               (_%recur131058%_
                                                                (car _%body131076%_)
                                                                _%vars131061%_))
                                                              (__tmp131368
                                                               (_%recur131058%_
                                                                (cdr _%body131076%_)
                                                                _%vars131061%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp131369
                                                           __tmp131368))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e131079%_)
                    (let ((__tmp131370
                           (_%recur131058%_ _%body131076%_ _%vars131061%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp131370))
                    (if (eq? 'box _%$e131079%_)
                        (let ((__tmp131371
                               (_%recur131058%_
                                _%body131076%_
                                _%vars131061%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp131371))
                        (if (eq? 'splice _%$e131079%_)
                            (let* ((_%body131088131099%_ _%body131076%_)
                                   (_%E131090131103%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body131088131099%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K131091131141%_
                                    (lambda (_%args131106%_
                                             _%iv131107%_
                                             _%hd131108%_
                                             _%depth131109%_)
                                      (let* ((_%targets131115%_
                                              (map (lambda (_%g131110131112%_)
                                                     (_%getarg131056%_
                                                      _%g131110131112%_
                                                      _%vars131061%_))
                                                   _%args131106%_))
                                             (_%fold-in131117%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args131106%_)))
                                             (_%fold-out131119%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args131121%_
                                              (let ((__tmp131372
                                                     (cons _%fold-out131119%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp131372
                                                 _%fold-in131117%_)))
                                             (_%lambda-body131138%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth131109%_ '1))
                                                  (let ((_%r-args131129%_
                                                         (map (lambda (_%arg131123%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg131123%_)))
                      _%args131106%_))
                (_%r-vars131130%_
                 (let ((__tmp131373
                        (lambda (_%arg131125%_ _%var131126%_ _%r131127%_)
                          (cons (cons (cdr _%arg131125%_) _%var131126%_)
                                _%r131127%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp131373
                    _%vars131061%_
                    _%args131106%_
                    _%fold-in131117%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur131058%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth131109%_ '1))
                         (cons _%hd131108%_
                               (cons (cons 'var _%fold-out131119%_)
                                     _%r-args131129%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars131130%_))
                                                  (let* ((_%hd-vars131136%_
                                                          (let ((__tmp131374
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg131132%_ _%var131133%_ _%r131134%_)
                           (cons (cons (cdr _%arg131132%_) _%var131133%_)
                                 _%r131134%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp131374
                     _%vars131061%_
                     _%args131106%_
                     _%fold-in131117%_)))
                 (__tmp131375
                  (_%recur131058%_ _%hd131108%_ _%hd-vars131136%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp131375
                                                     _%fold-out131119%_)))))
                                        (let ((__tmp131379
                                               (if (let ((__tmp131380
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets131115%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp131380 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets131115%_))
                                                   '#!void))
                                              (__tmp131376
                                               (let ((__tmp131378
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args131121%_
                                                         _%lambda-body131138%_)))
                                                     (__tmp131377
                                                      (_%recur131058%_
                                                       _%iv131107%_
                                                       _%vars131061%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp131378
                                                  __tmp131377
                                                  _%targets131115%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp131379
                                           __tmp131376))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%body131088131099%_))
                                  (let ((_%hd131092131144%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body131088131099%_)))
                                        (_%tl131093131146%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body131088131099%_))))
                                    (let ((_%depth131149%_ _%hd131092131144%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl131093131146%_))
                                          (let ((_%hd131094131151%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl131093131146%_)))
                                                (_%tl131095131153%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl131093131146%_))))
                                            (let ((_%hd131156%_
                                                   _%hd131094131151%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl131095131153%_))
                                                  (let ((_%hd131096131158%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl131095131153%_)))
                                                        (_%tl131097131160%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl131095131153%_))))
                                                    (let* ((_%iv131163%_
                                                            _%hd131096131158%_)
                                                           (_%args131165%_
                                                            _%tl131097131160%_))
                                                      (_%K131091131141%_
                                                       _%args131165%_
                                                       _%iv131163%_
                                                       _%hd131156%_
                                                       _%depth131149%_)))
                                                  (_%E131090131103%_))))
                                          (_%E131090131103%_))))
                                  (_%E131090131103%_)))
                            (if (eq? 'var _%$e131079%_)
                                _%body131076%_
                                (_%BUG131053%_ _%e131060%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%e131062131069%_))
                              (let ((_%hd131066131170%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e131062131069%_)))
                                    (_%tl131067131172%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e131062131069%_))))
                                (let* ((_%tag131175%_ _%hd131066131170%_)
                                       (_%body131177%_ _%tl131067131172%_))
                                  (_%K131065131167%_
                                   _%body131177%_
                                   _%tag131175%_)))
                              (_%E131064131073%_)))))))
                 (_%parse130812%_
                  (lambda (_%e130853%_)
                    (letrec ((_%make-cons130855%_
                              (lambda (_%hd131043%_ _%tl131044%_)
                                (let ((_g131381_ _%hd131043%_)
                                      (_g131383_ _%tl131044%_))
                                  (begin
                                    (let ((_g131382_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g131381_)
                                                 (##vector-length _g131381_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g131382_ 2)))
                                          (error "Context expects 2 values"
                                                 _g131382_)))
                                    (let ((_g131384_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g131383_)
                                                 (##vector-length _g131383_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g131384_ 2)))
                                          (error "Context expects 2 values"
                                                 _g131384_)))
                                    (let ((_%hd-e131046%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131381_ 0)))
                                          (_%hd-vars131047%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131381_ 1))))
                                      (let ((_%tl-e131048%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g131383_ 0)))
                                            (_%tl-vars131049%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g131383_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e131046%_
                                                            _%tl-e131048%_))
                                                (append _%hd-vars131047%_
                                                        _%tl-vars131049%_))))))))
                             (_%make-splice130856%_
                              (lambda (_%where130979%_
                                       _%depth130980%_
                                       _%hd130981%_
                                       _%tl130982%_)
                                (let ((_g131385_ _%hd130981%_)
                                      (_g131387_ _%tl130982%_))
                                  (begin
                                    (let ((_g131386_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g131385_)
                                                 (##vector-length _g131385_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g131386_ 2)))
                                          (error "Context expects 2 values"
                                                 _g131386_)))
                                    (let ((_g131388_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g131387_)
                                                 (##vector-length _g131387_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g131388_ 2)))
                                          (error "Context expects 2 values"
                                                 _g131388_)))
                                    (let ((_%hd-e130984%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131385_ 0)))
                                          (_%hd-vars130985%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131385_ 1))))
                                      (let ((_%tl-e130986%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g131387_ 0)))
                                            (_%tl-vars130987%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g131387_ 1))))
                                        (let _%lp130989%_ ((_%rest130991%_
                                                            _%hd-vars130985%_)
                                                           (_%targets130992%_
                                                            '())
                                                           (_%vars130993%_
                                                            _%tl-vars130987%_))
                                          (let* ((_%rest130994131004%_
                                                  _%rest130991%_)
                                                 (_%else130996131012%_
                                                  (lambda ()
                                                    (if (null? _%targets130992%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx130809%_
                                                           _%where130979%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth130980%_
                                    (cons _%hd-e130984%_
                                          (cons _%tl-e130986%_
                                                _%targets130992%_))))
                        _%vars130993%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K130998131024%_
                                                  (lambda (_%rest131015%_
                                                           _%hd-pat131016%_
                                                           _%hd-depth*131017%_)
                                                    (let ((_%hd-depth131019%_
                                                           (fx- _%hd-depth*131017%_
                                                                _%depth130980%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth131019%_))
                                                          (_%lp130989%_
                                                           _%rest131015%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat131016%_)
                         _%targets130992%_)
                   (cons (cons _%hd-depth131019%_ _%hd-pat131016%_)
                         _%vars130993%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth131019%_))
                      (_%lp130989%_
                       _%rest131015%_
                       (cons (cons 'pattern _%hd-pat131016%_)
                             _%targets130992%_)
                       _%vars130993%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx130809%_
                         _%where130979%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%rest130994131004%_))
                                                (let ((_%hd130999131027%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest130994131004%_)))
                                                      (_%tl131000131029%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest130994131004%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd130999131027%_))
                                                      (let ((_%hd131001131032%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd130999131027%_)))
                    (_%tl131002131034%_
                     (let () (declare (not safe)) (##cdr _%hd130999131027%_))))
                (let* ((_%hd-depth*131037%_ _%hd131001131032%_)
                       (_%hd-pat131039%_ _%tl131002131034%_)
                       (_%rest131041%_ _%tl131000131029%_))
                  (_%K130998131024%_
                   _%rest131041%_
                   _%hd-pat131039%_
                   _%hd-depth*131037%_)))
              (_%else130996131012%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else130996131012%_))))))))))
                             (_%recur130857%_
                              (lambda (_%e130862%_ _%is-e?130863%_)
                                (if (_%is-e?130863%_ _%e130862%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx130809%_))
                                    (if (gx#syntax-local-pattern? _%e130862%_)
                                        (let* ((_%pat130867%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e130862%_)))
                                               (_%depth130869%_
                                                (##structure-ref
                                                 _%pat130867%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth130869%_)
                                              (values (cons 'ref _%pat130867%_)
                                                      (cons (cons _%depth130869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat130867%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat130867%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e130862%_))
                                            (values (cons 'term _%e130862%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e130862%_))
                                                (let* ((_%e130873130880%_
                                                        _%e130862%_)
                                                       (_%E130875130884%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e130873130880%_))))
                                                       (_%E130874130966%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e130873130880%_))
                      (let ((_%e130876130888%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e130873130880%_))))
                        (let ((_%hd130877130891%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e130876130888%_)))
                              (_%tl130878130893%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e130876130888%_))))
                          (let* ((_%hd130896%_ _%hd130877130891%_)
                                 (_%rest130898%_ _%tl130878130893%_))
                            (if (_%is-e?130863%_ _%hd130896%_)
                                (let* ((_%e130899130906%_ _%rest130898%_)
                                       (_%E130901130910%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx130809%_
                                             _%e130862%_))))
                                       (_%E130900130924%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e130899130906%_))
                                              (let ((_%e130902130914%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e130899130906%_))))
                                                (let ((_%hd130903130917%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e130902130914%_)))
                                                      (_%tl130904130919%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e130902130914%_))))
                                                  (let ((_%rest130922%_
                                                         _%hd130903130917%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl130904130919%_))
                                                        (_%recur130857%_
                                                         _%rest130922%_
                                                         false)
                                                        (_%E130901130910%_)))))
                                              (_%E130901130910%_)))))
                                  (_%E130900130924%_))
                                (let _%lp130928%_ ((_%rest130930%_
                                                    _%rest130898%_)
                                                   (_%depth130931%_ '0))
                                  (let* ((_%e130932130939%_ _%rest130930%_)
                                         (_%E130934130943%_
                                          (lambda ()
                                            (if (fxpositive? _%depth130931%_)
                                                (_%make-splice130856%_
                                                 _%e130862%_
                                                 _%depth130931%_
                                                 (_%recur130857%_
                                                  _%hd130896%_
                                                  _%is-e?130863%_)
                                                 (_%recur130857%_
                                                  _%rest130930%_
                                                  _%is-e?130863%_))
                                                (_%make-cons130855%_
                                                 (_%recur130857%_
                                                  _%hd130896%_
                                                  _%is-e?130863%_)
                                                 (_%recur130857%_
                                                  _%rest130930%_
                                                  _%is-e?130863%_)))))
                                         (_%E130933130962%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e130932130939%_))
                                                (let ((_%e130935130947%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e130932130939%_))))
                                                  (let ((_%hd130936130950%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e130935130947%_)))
                                                        (_%tl130937130952%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e130935130947%_))))
                                                    (let* ((_%rest-hd130955%_
                                                            _%hd130936130950%_)
                                                           (_%rest-tl130957%_
                                                            _%tl130937130952%_))
                                                      (if (_%is-e?130863%_
                                                           _%rest-hd130955%_)
                                                          (_%lp130928%_
                                                           _%rest-tl130957%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth130931%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth130931%_)
                      (_%make-splice130856%_
                       _%e130862%_
                       _%depth130931%_
                       (_%recur130857%_ _%hd130896%_ _%is-e?130863%_)
                       (_%recur130857%_ _%rest130930%_ _%is-e?130863%_))
                      (_%make-cons130855%_
                       (_%recur130857%_ _%hd130896%_ _%is-e?130863%_)
                       (_%recur130857%_ _%rest130930%_ _%is-e?130863%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E130934130943%_)))))
                                    (_%E130933130962%_)))))))
                      (_%E130875130884%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130874130966%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e130862%_))
                                                    (let ((_g131389_
                                                           (_%recur130857%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e130862%_)))
                    _%is-e?130863%_)))
              (begin
                (let ((_g131390_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g131389_)
                             (##vector-length _g131389_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g131390_ 2)))
                      (error "Context expects 2 values" _g131390_)))
                (let ((_%e130971%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g131389_ 0)))
                      (_%vars130972%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g131389_ 1))))
                  (values (cons 'vector _%e130971%_) _%vars130972%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e130862%_))
                                                        (let ((_g131391_
                                                               (_%recur130857%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e130862%_)))
                        _%is-e?130863%_)))
                  (begin
                    (let ((_g131392_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g131391_)
                                 (##vector-length _g131391_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g131392_ 2)))
                          (error "Context expects 2 values" _g131392_)))
                    (let ((_%e130975%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g131391_ 0)))
                          (_%vars130976%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g131391_ 1))))
                      (values (cons 'box _%e130975%_) _%vars130976%_))))
                (values (cons 'datum _%e130862%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g131393_
                             (_%recur130857%_ _%e130853%_ gx#ellipsis?)))
                        (begin
                          (let ((_g131394_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g131393_)
                                       (##vector-length _g131393_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g131394_ 2)))
                                (error "Context expects 2 values" _g131394_)))
                          (let ((_%tree130859%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g131393_ 0)))
                                (_%vars130860%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g131393_ 1))))
                            (if (null? _%vars130860%_)
                                _%tree130859%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx130809%_
                                   _%vars130860%_))))))))))
          (let* ((_%e130813130823%_ _%stx130809%_)
                 (_%E130815130827%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx130809%_))))
                 (_%E130814130849%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e130813130823%_))
                        (let ((_%e130816130831%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e130813130823%_))))
                          (let ((_%hd130817130834%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e130816130831%_)))
                                (_%tl130818130836%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e130816130831%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl130818130836%_))
                                (let ((_%e130819130839%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl130818130836%_))))
                                  (let ((_%hd130820130842%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e130819130839%_)))
                                        (_%tl130821130844%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e130819130839%_))))
                                    (let ((_%form130847%_ _%hd130820130842%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl130821130844%_))
                                          (let ((__tmp131396
                                                 (_%generate130811%_
                                                  (_%parse130812%_
                                                   _%form130847%_)))
                                                (__tmp131395
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx130809%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp131396
                                             __tmp131395))
                                          (_%E130815130827%_)))))
                                (_%E130815130827%_))))
                        (_%E130815130827%_)))))
            (_%E130814130849%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx130058%_
               _%identifier=?130059%_
               _%unwrap-e130060%_
               _%wrap-e130061%_)
        (letrec ((_%generate-bindings130063%_
                  (lambda (_%target130673%_
                           _%ids130674%_
                           _%clauses130675%_
                           _%clause-ids130676%_
                           _%E130677%_)
                    (letrec ((_%generate1130679%_
                              (lambda (_%clause130776%_
                                       _%clause-id130777%_
                                       _%E130778%_)
                                (cons (cons _%clause-id130777%_ '())
                                      (cons (let ((__tmp131398
                                                   (cons _%target130673%_ '()))
                                                  (__tmp131397
                                                   (_%generate-clause130065%_
                                                    _%target130673%_
                                                    _%ids130674%_
                                                    _%clause130776%_
                                                    _%E130778%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp131398
                                               __tmp131397))
                                            '())))))
                      (let _%lp130681%_ ((_%rest130683%_ _%clauses130675%_)
                                         (_%rest-ids130684%_
                                          _%clause-ids130676%_)
                                         (_%bindings130685%_ '()))
                        (let* ((_%rest130686130694%_ _%rest130683%_)
                               (_%else130688130702%_
                                (lambda () _%bindings130685%_))
                               (_%K130690130764%_
                                (lambda (_%rest130705%_ _%clause130706%_)
                                  (let* ((_%rest-ids130707130714%_
                                          _%rest-ids130684%_)
                                         (_%E130709130718%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids130707130714%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K130710130752%_
                                          (lambda (_%rest-ids130721%_
                                                   _%clause-id130722%_)
                                            (let* ((_%rest-ids130723130731%_
                                                    _%rest-ids130721%_)
                                                   (_%else130725130739%_
                                                    (lambda ()
                                                      (cons (_%generate1130679%_
                                                             _%clause130706%_
                                                             _%clause-id130722%_
                                                             _%E130677%_)
                                                            _%bindings130685%_)))
                                                   (_%K130727130744%_
                                                    (lambda (_%next-clause-id130742%_)
                                                      (_%lp130681%_
                                                       _%rest130705%_
                                                       _%rest-ids130721%_
                                                       (cons (_%generate1130679%_
                                                              _%clause130706%_
                                                              _%clause-id130722%_
                                                              _%next-clause-id130742%_)
                                                             _%bindings130685%_)))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%rest-ids130723130731%_))
                                                  (let* ((_%hd130728130747%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids130723130731%_)))
                                                         (_%next-clause-id130750%_
                                                          _%hd130728130747%_))
                                                    (_%K130727130744%_
                                                     _%next-clause-id130750%_))
                                                  (_%else130725130739%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%rest-ids130707130714%_))
                                        (let ((_%hd130711130755%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids130707130714%_)))
                                              (_%tl130712130757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids130707130714%_))))
                                          (let* ((_%clause-id130760%_
                                                  _%hd130711130755%_)
                                                 (_%rest-ids130762%_
                                                  _%tl130712130757%_))
                                            (_%K130710130752%_
                                             _%rest-ids130762%_
                                             _%clause-id130760%_)))
                                        (_%E130709130718%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest130686130694%_))
                              (let ((_%hd130691130767%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest130686130694%_)))
                                    (_%tl130692130769%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest130686130694%_))))
                                (let* ((_%clause130772%_ _%hd130691130767%_)
                                       (_%rest130774%_ _%tl130692130769%_))
                                  (_%K130690130764%_
                                   _%rest130774%_
                                   _%clause130772%_)))
                              (_%else130688130702%_)))))))
                 (_%generate-body130064%_
                  (lambda (_%bindings130633%_ _%body130634%_)
                    (let _%recur130636%_ ((_%rest130638%_ _%bindings130633%_))
                      (let* ((_%rest130639130647%_ _%rest130638%_)
                             (_%else130641130655%_ (lambda () _%body130634%_))
                             (_%K130643130661%_
                              (lambda (_%rest130658%_ _%hd130659%_)
                                (let ((__tmp131400 (cons _%hd130659%_ '()))
                                      (__tmp131399
                                       (_%recur130636%_ _%rest130658%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp131400
                                   __tmp131399)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest130639130647%_))
                            (let ((_%hd130644130664%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest130639130647%_)))
                                  (_%tl130645130666%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest130639130647%_))))
                              (let* ((_%hd130669%_ _%hd130644130664%_)
                                     (_%rest130671%_ _%tl130645130666%_))
                                (_%K130643130661%_
                                 _%rest130671%_
                                 _%hd130669%_)))
                            (_%else130641130655%_))))))
                 (_%generate-clause130065%_
                  (lambda (_%target130496%_
                           _%ids130497%_
                           _%clause130498%_
                           _%E130499%_)
                    (letrec ((_%generate1130501%_
                              (lambda (_%hd130588%_
                                       _%fender130589%_
                                       _%body130590%_)
                                (let ((_g131401_
                                       (_%parse-clause130067%_
                                        _%hd130588%_
                                        _%ids130497%_)))
                                  (begin
                                    (let ((_g131402_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g131401_)
                                                 (##vector-length _g131401_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g131402_ 2)))
                                          (error "Context expects 2 values"
                                                 _g131402_)))
                                    (let ((_%e130592%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131401_ 0)))
                                          (_%mvars130593%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131401_ 1))))
                                      (let* ((_%pvars130595%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars130593%_))))
                                             (_%E130597%_
                                              (cons _%E130499%_
                                                    (cons _%target130496%_
                                                          '())))
                                             (_%K130630%_
                                              (let ((__tmp131403
                                                     (let ((__tmp131405
                                                            (map (lambda (_%mvar130599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar130600%_)
                           (let* ((_%mvar130601130608%_ _%mvar130599%_)
                                  (_%E130603130612%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar130601130608%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K130604130618%_
                                   (lambda (_%depth130615%_ _%id130616%_)
                                     (cons _%id130616%_
                                           (cons (let ((__tmp131407
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id130616%_)))
                                                       (__tmp131406
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar130600%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp131407
                                                    __tmp131406
                                                    _%depth130615%_))
                                                 '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%mvar130601130608%_))
                                 (let ((_%hd130605130621%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar130601130608%_)))
                                       (_%tl130606130623%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar130601130608%_))))
                                   (let* ((_%id130626%_ _%hd130605130621%_)
                                          (_%depth130628%_ _%tl130606130623%_))
                                     (_%K130604130618%_
                                      _%depth130628%_
                                      _%id130626%_)))
                                 (_%E130603130612%_))))
                         _%mvars130593%_
                         _%pvars130595%_))
                   (__tmp131404
                    (if (eq? _%fender130589%_ '#t)
                        _%body130590%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender130589%_
                           _%body130590%_
                           _%E130597%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp131405 __tmp131404))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars130595%_
                                                 __tmp131403))))
                                        (_%generate-match130066%_
                                         _%hd130588%_
                                         _%target130496%_
                                         _%e130592%_
                                         _%mvars130593%_
                                         _%K130630%_
                                         _%E130597%_))))))))
                      (let* ((_%e130502130522%_ _%clause130498%_)
                             (_%E130511130526%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e130502130522%_))))
                             (_%E130504130560%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e130502130522%_))
                                    (let ((_%e130512130530%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e130502130522%_))))
                                      (let ((_%hd130513130533%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e130512130530%_)))
                                            (_%tl130514130535%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e130512130530%_))))
                                        (let ((_%hd130538%_
                                               _%hd130513130533%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl130514130535%_))
                                              (let ((_%e130515130540%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl130514130535%_))))
                                                (let ((_%hd130516130543%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e130515130540%_)))
                                                      (_%tl130517130545%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e130515130540%_))))
                                                  (let ((_%fender130548%_
                                                         _%hd130516130543%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl130517130545%_))
                                                        (let ((_%e130518130550%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl130517130545%_))))
                  (let ((_%hd130519130553%_
                         (let ()
                           (declare (not safe))
                           (##car _%e130518130550%_)))
                        (_%tl130520130555%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e130518130550%_))))
                    (let ((_%body130558%_ _%hd130519130553%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl130520130555%_))
                          (_%generate1130501%_
                           _%hd130538%_
                           _%fender130548%_
                           _%body130558%_)
                          (_%E130511130526%_)))))
                (_%E130511130526%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E130511130526%_)))))
                                    (_%E130511130526%_))))
                             (_%E130503130584%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e130502130522%_))
                                    (let ((_%e130505130564%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e130502130522%_))))
                                      (let ((_%hd130506130567%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e130505130564%_)))
                                            (_%tl130507130569%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e130505130564%_))))
                                        (let ((_%hd130572%_
                                               _%hd130506130567%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl130507130569%_))
                                              (let ((_%e130508130574%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl130507130569%_))))
                                                (let ((_%hd130509130577%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e130508130574%_)))
                                                      (_%tl130510130579%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e130508130574%_))))
                                                  (let ((_%body130582%_
                                                         _%hd130509130577%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl130510130579%_))
                                                        (_%generate1130501%_
                                                         _%hd130572%_
                                                         '#t
                                                         _%body130582%_)
                                                        (_%E130504130560%_)))))
                                              (_%E130504130560%_)))))
                                    (_%E130504130560%_)))))
                        (_%E130503130584%_)))))
                 (_%generate-match130066%_
                  (lambda (_%where130245%_
                           _%target130246%_
                           _%hd130247%_
                           _%mvars130248%_
                           _%K130249%_
                           _%E130250%_)
                    (letrec ((_%BUG130252%_
                              (lambda (_%q130494%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx130058%_
                                         _%hd130247%_
                                         _%q130494%_))))
                             (_%recur130253%_
                              (lambda (_%e130344%_
                                       _%vars130345%_
                                       _%target130346%_
                                       _%E130347%_
                                       _%k130348%_)
                                (let* ((_%e130349130356%_ _%e130344%_)
                                       (_%E130351130360%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e130349130356%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K130352130482%_
                                        (lambda (_%body130363%_ _%tag130364%_)
                                          (let ((_%$e130366%_ _%tag130364%_))
                                            (if (eq? 'any _%$e130366%_)
                                                (_%k130348%_ _%vars130345%_)
                                                (if (eq? 'id _%$e130366%_)
                                                    (let ((__tmp131412
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target130346%_)))
                                                          (__tmp131408
                                                           (let ((__tmp131410
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp131411
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e130061%_
                                    _%body130363%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?130059%_
                             __tmp131411
                             _%target130346%_)))
                         (__tmp131409 (_%k130348%_ _%vars130345%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp131410 __tmp131409 _%E130347%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp131412 __tmp131408 _%E130347%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e130366%_)
                                                        (_%k130348%_
                                                         (cons (cons _%body130363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target130346%_)
                       _%vars130345%_))
                (if (eq? 'cons _%$e130366%_)
                    (let ((_%$e130369%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd130370%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl130371%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp131418
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target130346%_)))
                            (__tmp131413
                             (let ((__tmp131417
                                    (cons (cons (cons _%$e130369%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e130060%_
                                                         _%target130346%_))
                                                      '()))
                                          '()))
                                   (__tmp131414
                                    (let ((__tmp131416
                                           (cons (cons (cons _%$hd130370%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e130369%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl130371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e130369%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp131415
                                           (let* ((_%body130372130379%_
                                                   _%body130363%_)
                                                  (_%E130374130383%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body130372130379%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K130375130391%_
                                                   (lambda (_%tl130386%_
                                                            _%hd130387%_)
                                                     (_%recur130253%_
                                                      _%hd130387%_
                                                      _%vars130345%_
                                                      _%$hd130370%_
                                                      _%E130347%_
                                                      (lambda (_%vars130389%_)
                                                        (_%recur130253%_
                                                         _%tl130386%_
                                                         _%vars130389%_
                                                         _%$tl130371%_
                                                         _%E130347%_
                                                         _%k130348%_))))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _%body130372130379%_))
                                                 (let ((_%hd130376130394%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body130372130379%_)))
                                                       (_%tl130377130396%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body130372130379%_))))
                                                   (let* ((_%hd130399%_
                                                           _%hd130376130394%_)
                                                          (_%tl130401%_
                                                           _%tl130377130396%_))
                                                     (_%K130375130391%_
                                                      _%tl130401%_
                                                      _%hd130399%_)))
                                                 (_%E130374130383%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp131416
                                       __tmp131415))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp131417
                                __tmp131414))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp131418
                         __tmp131413
                         _%E130347%_)))
                    (if (eq? 'splice _%$e130366%_)
                        (let* ((_%body130402130409%_ _%body130363%_)
                               (_%E130404130413%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body130402130409%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K130405130464%_
                                (lambda (_%tl130416%_ _%hd130417%_)
                                  (let* ((_%rlen130419%_
                                          (_%splice-rlen130254%_ _%tl130416%_))
                                         (_%$target130421%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd130423%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl130425%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp130427%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e130429%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd130431%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl130433%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars130435%_
                                          (_%splice-vars130255%_ _%hd130417%_))
                                         (_%lvars130437%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars130435%_)))
                                         (_%tlvars130439%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars130435%_)))
                                         (_%linit130443%_
                                          (map (lambda (_%var130441%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars130437%_)))
                                    (letrec ((_%make-loop130446%_
                                              (lambda (_%vars130450%_)
                                                (let ((__tmp131420
                                                       (cons (cons (cons _%$lp130427%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp131433
                                        (cons _%$hd130423%_ _%lvars130437%_))
                                       (__tmp131421
                                        (let ((__tmp131432
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd130423%_)))
                                              (__tmp131426
                                               (let ((__tmp131431
                                                      (cons (cons (cons _%$lp-e130429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e130060%_
                                   _%$hd130423%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp131427
                                                      (let ((__tmp131430
                                                             (cons (cons (cons _%$lp-hd130431%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e130429%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl130433%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e130429%_))
                                             '()))
                                 '())))
                    (__tmp131428
                     (_%recur130253%_
                      _%hd130417%_
                      '()
                      _%$lp-hd130431%_
                      _%E130347%_
                      (lambda (_%hdvars130452%_)
                        (cons _%$lp130427%_
                              (cons _%$lp-tl130433%_
                                    (map (lambda (_%svar130454%_
                                                  _%lvar130455%_)
                                           (let ((__tmp131429
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar130454%_
                                                     _%hdvars130452%_
                                                     _%BUG130252%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp131429
                                              _%lvar130455%_)))
                                         _%svars130435%_
                                         _%lvars130437%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp131430 __tmp131428))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp131431
                                                  __tmp131427)))
                                              (__tmp131422
                                               (let ((__tmp131425
                                                      (map (lambda (_%lvar130457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar130458%_)
                     (cons (cons _%tlvar130458%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar130457%_))
                                 '())))
                   _%lvars130437%_
                   _%tlvars130439%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp131423
                                                      (_%k130348%_
                                                       (let ((__tmp131424
                                                              (lambda (_%svar130460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar130461%_
                               _%r130462%_)
                        (cons (cons _%svar130460%_ _%tlvar130461%_)
                              _%r130462%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp131424
                  _%vars130450%_
                  _%svars130435%_
                  _%tlvars130439%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp131425
                                                  __tmp131423))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp131432
                                           __tmp131426
                                           __tmp131422))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp131433
                                    __tmp131421))
                                 '()))
                     '()))
              (__tmp131419
               (cons _%$lp130427%_ (cons _%$target130421%_ _%linit130443%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp131420
                                                   __tmp131419)))))
                                      (let ((_%body130448%_
                                             (let ((__tmp131435
                                                    (cons (cons (cons _%$target130421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl130425%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target130346%_
                                 _%rlen130419%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp131434
                                                    (_%recur130253%_
                                                     _%tl130416%_
                                                     _%vars130345%_
                                                     _%$tl130425%_
                                                     _%E130347%_
                                                     _%make-loop130446%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp131435
                                                __tmp131434))))
                                        (let ((__tmp131439
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target130346%_)))
                                              (__tmp131436
                                               (if (zero? _%rlen130419%_)
                                                   _%body130448%_
                                                   (let ((__tmp131437
                                                          (let ((__tmp131438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target130346%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp131438 _%rlen130419%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp131437
                                                      _%body130448%_
                                                      _%E130347%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp131439
                                           __tmp131436
                                           _%E130347%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%body130402130409%_))
                              (let ((_%hd130406130467%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body130402130409%_)))
                                    (_%tl130407130469%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body130402130409%_))))
                                (let* ((_%hd130472%_ _%hd130406130467%_)
                                       (_%tl130474%_ _%tl130407130469%_))
                                  (_%K130405130464%_
                                   _%tl130474%_
                                   _%hd130472%_)))
                              (_%E130404130413%_)))
                        (if (eq? 'null _%$e130366%_)
                            (let ((__tmp131441
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target130346%_)))
                                  (__tmp131440 (_%k130348%_ _%vars130345%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp131441
                               __tmp131440
                               _%E130347%_))
                            (if (eq? 'vector _%$e130366%_)
                                (let ((_%$e130476%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp131446
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target130346%_)))
                                        (__tmp131442
                                         (let ((__tmp131444
                                                (cons (cons (cons _%$e130476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp131445
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e130060%_
                                    _%target130346%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp131445))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp131443
                                                (_%recur130253%_
                                                 _%body130363%_
                                                 _%vars130345%_
                                                 _%$e130476%_
                                                 _%E130347%_
                                                 _%k130348%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp131444
                                            __tmp131443))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp131446
                                     __tmp131442
                                     _%E130347%_)))
                                (if (eq? 'box _%$e130366%_)
                                    (let ((_%$e130478%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp131451
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target130346%_)))
                                            (__tmp131447
                                             (let ((__tmp131449
                                                    (cons (cons (cons _%$e130478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp131450
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e130060%_
                                        _%target130346%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp131450))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp131448
                                                    (_%recur130253%_
                                                     _%body130363%_
                                                     _%vars130345%_
                                                     _%$e130478%_
                                                     _%E130347%_
                                                     _%k130348%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp131449
                                                __tmp131448))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp131451
                                         __tmp131447
                                         _%E130347%_)))
                                    (if (eq? 'datum _%$e130366%_)
                                        (let ((_%$e130480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp131457
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target130346%_)))
                                                (__tmp131452
                                                 (let ((__tmp131456
                                                        (cons (cons (cons _%$e130480%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target130346%_))
                                  '()))
                      '()))
               (__tmp131453
                (let ((__tmp131455
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e130480%_ _%body130363%_)))
                      (__tmp131454 (_%k130348%_ _%vars130345%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp131455 __tmp131454 _%E130347%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp131456
                                                    __tmp131453))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp131457
                                             __tmp131452
                                             _%E130347%_)))
                                        (_%BUG130252%_
                                         _%e130344%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%e130349130356%_))
                                      (let ((_%hd130353130485%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e130349130356%_)))
                                            (_%tl130354130487%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e130349130356%_))))
                                        (let* ((_%tag130490%_
                                                _%hd130353130485%_)
                                               (_%body130492%_
                                                _%tl130354130487%_))
                                          (_%K130352130482%_
                                           _%body130492%_
                                           _%tag130490%_)))
                                      (_%E130351130360%_)))))
                             (_%splice-rlen130254%_
                              (lambda (_%e130306%_)
                                (let _%lp130308%_ ((_%e130310%_ _%e130306%_)
                                                   (_%n130311%_ '0))
                                  (let* ((_%e130312130319%_ _%e130310%_)
                                         (_%E130314130323%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e130312130319%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K130315130332%_
                                          (lambda (_%body130326%_
                                                   _%tag130327%_)
                                            (let ((_%$e130329%_ _%tag130327%_))
                                              (if (eq? 'splice _%$e130329%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx130058%_
                                                     _%where130245%_))
                                                  (if (eq? 'cons _%$e130329%_)
                                                      (_%lp130308%_
                                                       (cdr _%body130326%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n130311%_
                                                                '1)))
                                                      _%n130311%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e130312130319%_))
                                        (let ((_%hd130316130335%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e130312130319%_)))
                                              (_%tl130317130337%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e130312130319%_))))
                                          (let* ((_%tag130340%_
                                                  _%hd130316130335%_)
                                                 (_%body130342%_
                                                  _%tl130317130337%_))
                                            (_%K130315130332%_
                                             _%body130342%_
                                             _%tag130340%_)))
                                        (_%E130314130323%_))))))
                             (_%splice-vars130255%_
                              (lambda (_%e130262%_)
                                (let _%recur130264%_ ((_%e130266%_ _%e130262%_)
                                                      (_%vars130267%_ '()))
                                  (let* ((_%e130268130275%_ _%e130266%_)
                                         (_%E130270130279%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e130268130275%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K130271130294%_
                                          (lambda (_%body130282%_
                                                   _%tag130283%_)
                                            (let ((_%$e130285%_ _%tag130283%_))
                                              (if (eq? 'var _%$e130285%_)
                                                  (cons _%body130282%_
                                                        _%vars130267%_)
                                                  (if (or (eq? 'cons
                                                               _%$e130285%_)
                                                          (eq? 'splice
                                                               _%$e130285%_))
                                                      (_%recur130264%_
                                                       (cdr _%body130282%_)
                                                       (_%recur130264%_
                                                        (car _%body130282%_)
                                                        _%vars130267%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e130285%_)
                      (eq? 'box _%$e130285%_))
                  (_%recur130264%_ _%body130282%_ _%vars130267%_)
                  _%vars130267%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e130268130275%_))
                                        (let ((_%hd130272130297%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e130268130275%_)))
                                              (_%tl130273130299%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e130268130275%_))))
                                          (let* ((_%tag130302%_
                                                  _%hd130272130297%_)
                                                 (_%body130304%_
                                                  _%tl130273130299%_))
                                            (_%K130271130294%_
                                             _%body130304%_
                                             _%tag130302%_)))
                                        (_%E130270130279%_))))))
                             (_%make-body130256%_
                              (lambda (_%vars130258%_)
                                (cons _%K130249%_
                                      (map (lambda (_%mvar130260%_)
                                             (let ((__tmp131458
                                                    (car _%mvar130260%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp131458
                                                _%vars130258%_
                                                _%BUG130252%_)))
                                           _%mvars130248%_)))))
                      (_%recur130253%_
                       _%hd130247%_
                       '()
                       _%target130246%_
                       _%E130250%_
                       _%make-body130256%_))))
                 (_%parse-clause130067%_
                  (lambda (_%hd130139%_ _%ids130140%_)
                    (let _%recur130142%_ ((_%e130144%_ _%hd130139%_)
                                          (_%vars130145%_ '())
                                          (_%depth130146%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e130144%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e130144%_))
                              (values '(any) _%vars130145%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e130144%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx130058%_
                                     _%hd130139%_))
                                  (if (let ((__tmp131459
                                             (lambda (_%id130151%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e130144%_
                                                  _%id130151%_)))))
                                        (declare (not safe))
                                        (__find __tmp131459 _%ids130140%_))
                                      (values (cons 'id _%e130144%_)
                                              _%vars130145%_)
                                      (if (let ((__tmp131460
                                                 (lambda (_%var130154%_)
                                                   (let ((__tmp131461
                                                          (car _%var130154%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e130144%_
                                                      __tmp131461)))))
                                            (declare (not safe))
                                            (__find __tmp131460
                                                    _%vars130145%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx130058%_
                                             _%e130144%_))
                                          (values (cons 'var _%e130144%_)
                                                  (cons (cons _%e130144%_
                                                              _%depth130146%_)
                                                        _%vars130145%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e130144%_))
                              (let* ((_%e130158130165%_ _%e130144%_)
                                     (_%E130160130169%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e130158130165%_))))
                                     (_%E130159130230%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e130158130165%_))
                                            (let ((_%e130161130173%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e130158130165%_))))
                                              (let ((_%hd130162130176%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e130161130173%_)))
                                                    (_%tl130163130178%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e130161130173%_))))
                                                (let* ((_%hd130181%_
                                                        _%hd130162130176%_)
                                                       (_%rest130183%_
                                                        _%tl130163130178%_)
                                                       (_%make-pair130198%_
                                                        (lambda (_%tag130185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd130186%_
                         _%tl130187%_)
                  (let* ((_%hd-depth130189%_
                          (if (eq? _%tag130185%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth130146%_ '1))
                              _%depth130146%_))
                         (_g131462_
                          (_%recur130142%_
                           _%hd130186%_
                           _%vars130145%_
                           _%hd-depth130189%_)))
                    (begin
                      (let ((_g131463_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g131462_)
                                   (##vector-length _g131462_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g131463_ 2)))
                            (error "Context expects 2 values" _g131463_)))
                      (let ((_%hd130191%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g131462_ 0)))
                            (_%vars130192%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g131462_ 1))))
                        (let ((_g131464_
                               (_%recur130142%_
                                _%tl130187%_
                                _%vars130192%_
                                _%depth130146%_)))
                          (begin
                            (let ((_g131465_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g131464_)
                                         (##vector-length _g131464_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g131465_ 2)))
                                  (error "Context expects 2 values"
                                         _g131465_)))
                            (let ((_%tl130194%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g131464_ 0)))
                                  (_%vars130195%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g131464_ 1))))
                              (values (cons _%tag130185%_
                                            (cons _%hd130191%_ _%tl130194%_))
                                      _%vars130195%_)))))))))
               (_%e130199130206%_ _%rest130183%_)
               (_%E130201130210%_
                (lambda ()
                  (_%make-pair130198%_ 'cons _%hd130181%_ _%rest130183%_)))
               (_%E130200130226%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e130199130206%_))
                      (let ((_%e130202130214%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e130199130206%_))))
                        (let ((_%hd130203130217%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e130202130214%_)))
                              (_%tl130204130219%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e130202130214%_))))
                          (let* ((_%rest-hd130222%_ _%hd130203130217%_)
                                 (_%rest-tl130224%_ _%tl130204130219%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd130222%_))
                                (_%make-pair130198%_
                                 'splice
                                 _%hd130181%_
                                 _%rest-tl130224%_)
                                (_%make-pair130198%_
                                 'cons
                                 _%hd130181%_
                                 _%rest130183%_)))))
                      (_%E130201130210%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130200130226%_))))
                                            (_%E130160130169%_)))))
                                (_%E130159130230%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e130144%_))
                                  (values '(null) _%vars130145%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e130144%_))
                                      (let ((_g131466_
                                             (_%recur130142%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e130144%_)))
                                              _%vars130145%_
                                              _%depth130146%_)))
                                        (begin
                                          (let ((_g131467_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g131466_)
                                                       (##vector-length
                                                        _g131466_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g131467_ 2)))
                                                (error "Context expects 2 values"
                                                       _g131467_)))
                                          (let ((_%e130236%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g131466_ 0)))
                                                (_%vars130237%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g131466_
                                                    1))))
                                            (values (cons 'vector _%e130236%_)
                                                    _%vars130237%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e130144%_))
                                          (let ((_g131468_
                                                 (_%recur130142%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e130144%_)))
                                                  _%vars130145%_
                                                  _%depth130146%_)))
                                            (begin
                                              (let ((_g131469_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g131468_)
                                                           (##vector-length
                                                            _g131468_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g131469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g131469_)))
                                              (let ((_%e130240%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g131468_
                                                        0)))
                                                    (_%vars130241%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g131468_
                                                        1))))
                                                (values (cons 'box _%e130240%_)
                                                        _%vars130241%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e130144%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e130144%_)))
                                                      _%vars130145%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx130058%_
                                                 _%e130144%_))))))))))))
          (let* ((_%e130068130081%_ _%stx130058%_)
                 (_%E130070130085%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e130068130081%_))))
                 (_%E130069130135%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e130068130081%_))
                        (let ((_%e130071130089%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e130068130081%_))))
                          (let ((_%hd130072130092%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e130071130089%_)))
                                (_%tl130073130094%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e130071130089%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl130073130094%_))
                                (let ((_%e130074130097%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl130073130094%_))))
                                  (let ((_%hd130075130100%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e130074130097%_)))
                                        (_%tl130076130102%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e130074130097%_))))
                                    (let ((_%expr130105%_ _%hd130075130100%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl130076130102%_))
                                          (let ((_%e130077130107%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl130076130102%_))))
                                            (let ((_%hd130078130110%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e130077130107%_)))
                                                  (_%tl130079130112%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e130077130107%_))))
                                              (let* ((_%ids130115%_
                                                      _%hd130078130110%_)
                                                     (_%clauses130117%_
                                                      _%tl130079130112%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids130115%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses130117%_))
                                                        (let* ((_%ids130122%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids130115%_)))
                       (_%clauses130124%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses130117%_)))
                       (_%clause-ids130126%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses130124%_)))
                       (_%E130128%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target130130%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first130132%_
                        (if (null? _%clauses130124%_)
                            _%E130128%_
                            (car _%clause-ids130126%_))))
                  (let ((__tmp131471
                         (let ((__tmp131472
                                (let ((__tmp131474
                                       (let ((__tmp131476
                                              (cons (cons (cons _%E130128%_
                                                                '())
                                                          (cons (let ((__tmp131478
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target130130%_ '()))
                              (__tmp131477
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target130130%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp131478 __tmp131477))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp131475
                                              (_%generate-body130064%_
                                               (_%generate-bindings130063%_
                                                _%target130130%_
                                                _%ids130122%_
                                                _%clauses130124%_
                                                _%clause-ids130126%_
                                                _%E130128%_)
                                               (cons _%first130132%_
                                                     (cons _%expr130105%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp131476
                                          __tmp131475)))
                                      (__tmp131473
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx130058%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp131474
                                   __tmp131473))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp131472)))
                        (__tmp131470
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx130058%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp131471 __tmp131470)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx130058%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx130058%_
                                                       _%ids130115%_))))))
                                          (_%E130070130085%_)))))
                                (_%E130070130085%_))))
                        (_%E130070130085%_)))))
            (_%E130069130135%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx130783%_)
        (let* ((_%identifier=?130785%_ 'free-identifier=?)
               (_%unwrap-e130787%_ 'syntax-e)
               (_%wrap-e130789%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx130783%_
           _%identifier=?130785%_
           _%unwrap-e130787%_
           _%wrap-e130789%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx130791%_ _%identifier=?130792%_)
        (let* ((_%unwrap-e130794%_ 'syntax-e) (_%wrap-e130796%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx130791%_
           _%identifier=?130792%_
           _%unwrap-e130794%_
           _%wrap-e130796%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx130798%_ _%identifier=?130799%_ _%unwrap-e130800%_)
        (let ((_%wrap-e130802%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx130798%_
           _%identifier=?130799%_
           _%unwrap-e130800%_
           _%wrap-e130802%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g131480_
        (let ((_g131479_ (let () (declare (not safe)) (##length _g131480_))))
          (cond ((let () (declare (not safe)) (##fx= _g131479_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g131480_))
                ((let () (declare (not safe)) (##fx= _g131479_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g131480_))
                ((let () (declare (not safe)) (##fx= _g131479_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g131480_))
                ((let () (declare (not safe)) (##fx= _g131479_ 4))
                 (apply gx#macro-expand-syntax-case__% _g131480_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g131480_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx130055%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx130055%_))
            (let ((__tmp131481
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx130055%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp131481 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd130013%_ . _%rest130014%_)
        (let ((_%len130016%_ (length _%hd130013%_)))
          (let _%lp130018%_ ((_%rest130020%_ _%rest130014%_))
            (let* ((_%rest130021130029%_ _%rest130020%_)
                   (_%else130023130037%_ (lambda () '#!void))
                   (_%K130025130043%_
                    (lambda (_%rest130040%_ _%hd130041%_)
                      (if (let ((__tmp131482 (length _%hd130041%_)))
                            (declare (not safe))
                            (##fx= _%len130016%_ __tmp131482))
                          (_%lp130018%_ _%rest130040%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd130041%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest130021130029%_))
                  (let ((_%hd130026130046%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest130021130029%_)))
                        (_%tl130027130048%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest130021130029%_))))
                    (let* ((_%hd130051%_ _%hd130026130046%_)
                           (_%rest130053%_ _%tl130027130048%_))
                      (_%K130025130043%_ _%rest130053%_ _%hd130051%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx129968%_ _%n129969%_)
        (let _%lp129971%_ ((_%rest129973%_ _%stx129968%_) (_%r129974%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest129973%_))
              (let* ((_%g129975129982%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest129973%_)))
                     (_%E129977129986%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g129975129982%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K129978129992%_
                      (lambda (_%rest129989%_ _%hd129990%_)
                        (_%lp129971%_
                         _%rest129989%_
                         (cons _%hd129990%_ _%r129974%_)))))
                (if (let () (declare (not safe)) (##pair? _%g129975129982%_))
                    (let ((_%hd129979129995%_
                           (let ()
                             (declare (not safe))
                             (##car _%g129975129982%_)))
                          (_%tl129980129997%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g129975129982%_))))
                      (let* ((_%hd130000%_ _%hd129979129995%_)
                             (_%rest130002%_ _%tl129980129997%_))
                        (_%K129978129992%_ _%rest130002%_ _%hd130000%_)))
                    (_%E129977129986%_)))
              (let _%lp130004%_ ((_%n130006%_ _%n129969%_)
                                 (_%l130007%_ _%r129974%_)
                                 (_%r130008%_ _%rest129973%_))
                (if (null? _%l130007%_)
                    (values _%l130007%_ _%r130008%_)
                    (if (fxpositive? _%n130006%_)
                        (_%lp130004%_
                         (let () (declare (not safe)) (##fx- _%n130006%_ '1))
                         (cdr _%l130007%_)
                         (cons (car _%l130007%_) _%r130008%_))
                        (values (reverse _%l130007%_) _%r130008%_))))))))))
