(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1713000278)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp132331 (list gx#expander::t))
            (__tmp132330 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp132331
         '(id depth)
         __tmp132330
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args132327%_
        (apply make-instance gx#syntax-pattern::t _%$args132327%_)))
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
      (lambda (_%self130934132311%_ _%stx132313%_)
        (let* ((_%self132315%_ _%self130934132311%_)
               (_%self132317%_ _%self132315%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx132313%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx131777%_)
        (letrec ((_%generate131779%_
                  (lambda (_%e132019%_)
                    (letrec ((_%BUG132021%_
                              (lambda (_%q132186%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx131777%_
                                         _%e132019%_
                                         _%q132186%_))))
                             (_%local-pattern-e132022%_
                              (lambda (_%pat132184%_)
                                (let ((__tmp132332
                                       (##structure-ref
                                        _%pat132184%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp132332))))
                             (_%getvar132023%_
                              (lambda (_%q132181%_ _%vars132182%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q132181%_
                                   _%vars132182%_
                                   _%BUG132021%_))))
                             (_%getarg132024%_
                              (lambda (_%arg132147%_ _%vars132148%_)
                                (let* ((_%arg132149132156%_ _%arg132147%_)
                                       (_%E132151132160%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg132149132156%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K132152132169%_
                                        (lambda (_%e132163%_ _%tag132164%_)
                                          (let ((_%$e132166%_ _%tag132164%_))
                                            (if (eq? 'ref _%$e132166%_)
                                                (_%getvar132023%_
                                                 _%e132163%_
                                                 _%vars132148%_)
                                                (if (eq? 'pattern _%$e132166%_)
                                                    (_%local-pattern-e132022%_
                                                     _%e132163%_)
                                                    (_%BUG132021%_
                                                     _%arg132147%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%arg132149132156%_))
                                      (let ((_%hd132153132172%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg132149132156%_)))
                                            (_%tl132154132174%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg132149132156%_))))
                                        (let* ((_%tag132177%_
                                                _%hd132153132172%_)
                                               (_%e132179%_
                                                _%tl132154132174%_))
                                          (_%K132152132169%_
                                           _%e132179%_
                                           _%tag132177%_)))
                                      (_%E132151132160%_))))))
                      (let _%recur132026%_ ((_%e132028%_ _%e132019%_)
                                            (_%vars132029%_ '()))
                        (let* ((_%e132030132037%_ _%e132028%_)
                               (_%E132032132041%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e132030132037%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K132033132135%_
                                (lambda (_%body132044%_ _%tag132045%_)
                                  (let ((_%$e132047%_ _%tag132045%_))
                                    (if (eq? 'datum _%$e132047%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body132044%_))
                                        (if (eq? 'term _%$e132047%_)
                                            (let ((_%id132050%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body132044%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id132050%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks132053%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id132050%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks132053%_)
                                                        (let ((__tmp132333
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body132044%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp132333))
                (let ((__tmp132335
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body132044%_)))
                      (__tmp132334
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body132044%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp132335
                   __tmp132334
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id132050%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body132044%_))
                                                      (_%BUG132021%_
                                                       _%e132028%_))))
                                            (if (eq? 'pattern _%$e132047%_)
                                                (_%local-pattern-e132022%_
                                                 _%body132044%_)
                                                (if (eq? 'ref _%$e132047%_)
                                                    (_%getvar132023%_
                                                     _%body132044%_
                                                     _%vars132029%_)
                                                    (if (eq? 'cons
                                                             _%$e132047%_)
                                                        (let ((__tmp132337
                                                               (_%recur132026%_
                                                                (car _%body132044%_)
                                                                _%vars132029%_))
                                                              (__tmp132336
                                                               (_%recur132026%_
                                                                (cdr _%body132044%_)
                                                                _%vars132029%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp132337
                                                           __tmp132336))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e132047%_)
                    (let ((__tmp132338
                           (_%recur132026%_ _%body132044%_ _%vars132029%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp132338))
                    (if (eq? 'box _%$e132047%_)
                        (let ((__tmp132339
                               (_%recur132026%_
                                _%body132044%_
                                _%vars132029%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp132339))
                        (if (eq? 'splice _%$e132047%_)
                            (let* ((_%body132056132067%_ _%body132044%_)
                                   (_%E132058132071%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body132056132067%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K132059132109%_
                                    (lambda (_%args132074%_
                                             _%iv132075%_
                                             _%hd132076%_
                                             _%depth132077%_)
                                      (let* ((_%targets132083%_
                                              (map (lambda (_%g132078132080%_)
                                                     (_%getarg132024%_
                                                      _%g132078132080%_
                                                      _%vars132029%_))
                                                   _%args132074%_))
                                             (_%fold-in132085%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args132074%_)))
                                             (_%fold-out132087%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args132089%_
                                              (let ((__tmp132340
                                                     (cons _%fold-out132087%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp132340
                                                 _%fold-in132085%_)))
                                             (_%lambda-body132106%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth132077%_ '1))
                                                  (let ((_%r-args132097%_
                                                         (map (lambda (_%arg132091%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg132091%_)))
                      _%args132074%_))
                (_%r-vars132098%_
                 (let ((__tmp132341
                        (lambda (_%arg132093%_ _%var132094%_ _%r132095%_)
                          (cons (cons (cdr _%arg132093%_) _%var132094%_)
                                _%r132095%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp132341
                    _%vars132029%_
                    _%args132074%_
                    _%fold-in132085%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur132026%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth132077%_ '1))
                         (cons _%hd132076%_
                               (cons (cons 'var _%fold-out132087%_)
                                     _%r-args132097%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars132098%_))
                                                  (let* ((_%hd-vars132104%_
                                                          (let ((__tmp132342
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg132100%_ _%var132101%_ _%r132102%_)
                           (cons (cons (cdr _%arg132100%_) _%var132101%_)
                                 _%r132102%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp132342
                     _%vars132029%_
                     _%args132074%_
                     _%fold-in132085%_)))
                 (__tmp132343
                  (_%recur132026%_ _%hd132076%_ _%hd-vars132104%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp132343
                                                     _%fold-out132087%_)))))
                                        (let ((__tmp132347
                                               (if (let ((__tmp132348
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets132083%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp132348 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets132083%_))
                                                   '#!void))
                                              (__tmp132344
                                               (let ((__tmp132346
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args132089%_
                                                         _%lambda-body132106%_)))
                                                     (__tmp132345
                                                      (_%recur132026%_
                                                       _%iv132075%_
                                                       _%vars132029%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp132346
                                                  __tmp132345
                                                  _%targets132083%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp132347
                                           __tmp132344))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%body132056132067%_))
                                  (let ((_%hd132060132112%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body132056132067%_)))
                                        (_%tl132061132114%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body132056132067%_))))
                                    (let ((_%depth132117%_ _%hd132060132112%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl132061132114%_))
                                          (let ((_%hd132062132119%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl132061132114%_)))
                                                (_%tl132063132121%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl132061132114%_))))
                                            (let ((_%hd132124%_
                                                   _%hd132062132119%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl132063132121%_))
                                                  (let ((_%hd132064132126%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl132063132121%_)))
                                                        (_%tl132065132128%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl132063132121%_))))
                                                    (let* ((_%iv132131%_
                                                            _%hd132064132126%_)
                                                           (_%args132133%_
                                                            _%tl132065132128%_))
                                                      (_%K132059132109%_
                                                       _%args132133%_
                                                       _%iv132131%_
                                                       _%hd132124%_
                                                       _%depth132117%_)))
                                                  (_%E132058132071%_))))
                                          (_%E132058132071%_))))
                                  (_%E132058132071%_)))
                            (if (eq? 'var _%$e132047%_)
                                _%body132044%_
                                (_%BUG132021%_ _%e132028%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%e132030132037%_))
                              (let ((_%hd132034132138%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e132030132037%_)))
                                    (_%tl132035132140%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e132030132037%_))))
                                (let* ((_%tag132143%_ _%hd132034132138%_)
                                       (_%body132145%_ _%tl132035132140%_))
                                  (_%K132033132135%_
                                   _%body132145%_
                                   _%tag132143%_)))
                              (_%E132032132041%_)))))))
                 (_%parse131780%_
                  (lambda (_%e131821%_)
                    (letrec ((_%make-cons131823%_
                              (lambda (_%hd132011%_ _%tl132012%_)
                                (let ((_g132349_ _%hd132011%_)
                                      (_g132351_ _%tl132012%_))
                                  (begin
                                    (let ((_g132350_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g132349_)
                                                 (##vector-length _g132349_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g132350_ 2)))
                                          (error "Context expects 2 values"
                                                 _g132350_)))
                                    (let ((_g132352_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g132351_)
                                                 (##vector-length _g132351_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g132352_ 2)))
                                          (error "Context expects 2 values"
                                                 _g132352_)))
                                    (let ((_%hd-e132014%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g132349_ 0)))
                                          (_%hd-vars132015%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g132349_ 1))))
                                      (let ((_%tl-e132016%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g132351_ 0)))
                                            (_%tl-vars132017%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g132351_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e132014%_
                                                            _%tl-e132016%_))
                                                (append _%hd-vars132015%_
                                                        _%tl-vars132017%_))))))))
                             (_%make-splice131824%_
                              (lambda (_%where131947%_
                                       _%depth131948%_
                                       _%hd131949%_
                                       _%tl131950%_)
                                (let ((_g132353_ _%hd131949%_)
                                      (_g132355_ _%tl131950%_))
                                  (begin
                                    (let ((_g132354_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g132353_)
                                                 (##vector-length _g132353_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g132354_ 2)))
                                          (error "Context expects 2 values"
                                                 _g132354_)))
                                    (let ((_g132356_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g132355_)
                                                 (##vector-length _g132355_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g132356_ 2)))
                                          (error "Context expects 2 values"
                                                 _g132356_)))
                                    (let ((_%hd-e131952%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g132353_ 0)))
                                          (_%hd-vars131953%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g132353_ 1))))
                                      (let ((_%tl-e131954%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g132355_ 0)))
                                            (_%tl-vars131955%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g132355_ 1))))
                                        (let _%lp131957%_ ((_%rest131959%_
                                                            _%hd-vars131953%_)
                                                           (_%targets131960%_
                                                            '())
                                                           (_%vars131961%_
                                                            _%tl-vars131955%_))
                                          (let* ((_%rest131962131972%_
                                                  _%rest131959%_)
                                                 (_%else131964131980%_
                                                  (lambda ()
                                                    (if (null? _%targets131960%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx131777%_
                                                           _%where131947%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth131948%_
                                    (cons _%hd-e131952%_
                                          (cons _%tl-e131954%_
                                                _%targets131960%_))))
                        _%vars131961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K131966131992%_
                                                  (lambda (_%rest131983%_
                                                           _%hd-pat131984%_
                                                           _%hd-depth*131985%_)
                                                    (let ((_%hd-depth131987%_
                                                           (fx- _%hd-depth*131985%_
                                                                _%depth131948%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth131987%_))
                                                          (_%lp131957%_
                                                           _%rest131983%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat131984%_)
                         _%targets131960%_)
                   (cons (cons _%hd-depth131987%_ _%hd-pat131984%_)
                         _%vars131961%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth131987%_))
                      (_%lp131957%_
                       _%rest131983%_
                       (cons (cons 'pattern _%hd-pat131984%_)
                             _%targets131960%_)
                       _%vars131961%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx131777%_
                         _%where131947%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%rest131962131972%_))
                                                (let ((_%hd131967131995%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest131962131972%_)))
                                                      (_%tl131968131997%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest131962131972%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd131967131995%_))
                                                      (let ((_%hd131969132000%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd131967131995%_)))
                    (_%tl131970132002%_
                     (let () (declare (not safe)) (##cdr _%hd131967131995%_))))
                (let* ((_%hd-depth*132005%_ _%hd131969132000%_)
                       (_%hd-pat132007%_ _%tl131970132002%_)
                       (_%rest132009%_ _%tl131968131997%_))
                  (_%K131966131992%_
                   _%rest132009%_
                   _%hd-pat132007%_
                   _%hd-depth*132005%_)))
              (_%else131964131980%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else131964131980%_))))))))))
                             (_%recur131825%_
                              (lambda (_%e131830%_ _%is-e?131831%_)
                                (if (_%is-e?131831%_ _%e131830%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx131777%_))
                                    (if (gx#syntax-local-pattern? _%e131830%_)
                                        (let* ((_%pat131835%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e131830%_)))
                                               (_%depth131837%_
                                                (##structure-ref
                                                 _%pat131835%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth131837%_)
                                              (values (cons 'ref _%pat131835%_)
                                                      (cons (cons _%depth131837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat131835%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat131835%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e131830%_))
                                            (values (cons 'term _%e131830%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e131830%_))
                                                (let* ((_%e131841131848%_
                                                        _%e131830%_)
                                                       (_%E131843131852%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e131841131848%_))))
                                                       (_%E131842131934%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e131841131848%_))
                      (let ((_%e131844131856%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e131841131848%_))))
                        (let ((_%hd131845131859%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131844131856%_)))
                              (_%tl131846131861%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131844131856%_))))
                          (let* ((_%hd131864%_ _%hd131845131859%_)
                                 (_%rest131866%_ _%tl131846131861%_))
                            (if (_%is-e?131831%_ _%hd131864%_)
                                (let* ((_%e131867131874%_ _%rest131866%_)
                                       (_%E131869131878%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx131777%_
                                             _%e131830%_))))
                                       (_%E131868131892%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e131867131874%_))
                                              (let ((_%e131870131882%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e131867131874%_))))
                                                (let ((_%hd131871131885%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e131870131882%_)))
                                                      (_%tl131872131887%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e131870131882%_))))
                                                  (let ((_%rest131890%_
                                                         _%hd131871131885%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl131872131887%_))
                                                        (_%recur131825%_
                                                         _%rest131890%_
                                                         false)
                                                        (_%E131869131878%_)))))
                                              (_%E131869131878%_)))))
                                  (_%E131868131892%_))
                                (let _%lp131896%_ ((_%rest131898%_
                                                    _%rest131866%_)
                                                   (_%depth131899%_ '0))
                                  (let* ((_%e131900131907%_ _%rest131898%_)
                                         (_%E131902131911%_
                                          (lambda ()
                                            (if (fxpositive? _%depth131899%_)
                                                (_%make-splice131824%_
                                                 _%e131830%_
                                                 _%depth131899%_
                                                 (_%recur131825%_
                                                  _%hd131864%_
                                                  _%is-e?131831%_)
                                                 (_%recur131825%_
                                                  _%rest131898%_
                                                  _%is-e?131831%_))
                                                (_%make-cons131823%_
                                                 (_%recur131825%_
                                                  _%hd131864%_
                                                  _%is-e?131831%_)
                                                 (_%recur131825%_
                                                  _%rest131898%_
                                                  _%is-e?131831%_)))))
                                         (_%E131901131930%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e131900131907%_))
                                                (let ((_%e131903131915%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e131900131907%_))))
                                                  (let ((_%hd131904131918%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e131903131915%_)))
                                                        (_%tl131905131920%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e131903131915%_))))
                                                    (let* ((_%rest-hd131923%_
                                                            _%hd131904131918%_)
                                                           (_%rest-tl131925%_
                                                            _%tl131905131920%_))
                                                      (if (_%is-e?131831%_
                                                           _%rest-hd131923%_)
                                                          (_%lp131896%_
                                                           _%rest-tl131925%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth131899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth131899%_)
                      (_%make-splice131824%_
                       _%e131830%_
                       _%depth131899%_
                       (_%recur131825%_ _%hd131864%_ _%is-e?131831%_)
                       (_%recur131825%_ _%rest131898%_ _%is-e?131831%_))
                      (_%make-cons131823%_
                       (_%recur131825%_ _%hd131864%_ _%is-e?131831%_)
                       (_%recur131825%_ _%rest131898%_ _%is-e?131831%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E131902131911%_)))))
                                    (_%E131901131930%_)))))))
                      (_%E131843131852%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131842131934%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e131830%_))
                                                    (let ((_g132357_
                                                           (_%recur131825%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e131830%_)))
                    _%is-e?131831%_)))
              (begin
                (let ((_g132358_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g132357_)
                             (##vector-length _g132357_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g132358_ 2)))
                      (error "Context expects 2 values" _g132358_)))
                (let ((_%e131939%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g132357_ 0)))
                      (_%vars131940%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g132357_ 1))))
                  (values (cons 'vector _%e131939%_) _%vars131940%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e131830%_))
                                                        (let ((_g132359_
                                                               (_%recur131825%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e131830%_)))
                        _%is-e?131831%_)))
                  (begin
                    (let ((_g132360_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g132359_)
                                 (##vector-length _g132359_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g132360_ 2)))
                          (error "Context expects 2 values" _g132360_)))
                    (let ((_%e131943%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g132359_ 0)))
                          (_%vars131944%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g132359_ 1))))
                      (values (cons 'box _%e131943%_) _%vars131944%_))))
                (values (cons 'datum _%e131830%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g132361_
                             (_%recur131825%_ _%e131821%_ gx#ellipsis?)))
                        (begin
                          (let ((_g132362_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g132361_)
                                       (##vector-length _g132361_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g132362_ 2)))
                                (error "Context expects 2 values" _g132362_)))
                          (let ((_%tree131827%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g132361_ 0)))
                                (_%vars131828%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g132361_ 1))))
                            (if (null? _%vars131828%_)
                                _%tree131827%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx131777%_
                                   _%vars131828%_))))))))))
          (let* ((_%e131781131791%_ _%stx131777%_)
                 (_%E131783131795%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx131777%_))))
                 (_%E131782131817%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e131781131791%_))
                        (let ((_%e131784131799%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e131781131791%_))))
                          (let ((_%hd131785131802%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131784131799%_)))
                                (_%tl131786131804%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131784131799%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl131786131804%_))
                                (let ((_%e131787131807%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl131786131804%_))))
                                  (let ((_%hd131788131810%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e131787131807%_)))
                                        (_%tl131789131812%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e131787131807%_))))
                                    (let ((_%form131815%_ _%hd131788131810%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl131789131812%_))
                                          (let ((__tmp132364
                                                 (_%generate131779%_
                                                  (_%parse131780%_
                                                   _%form131815%_)))
                                                (__tmp132363
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx131777%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp132364
                                             __tmp132363))
                                          (_%E131783131795%_)))))
                                (_%E131783131795%_))))
                        (_%E131783131795%_)))))
            (_%E131782131817%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx131026%_
               _%identifier=?131027%_
               _%unwrap-e131028%_
               _%wrap-e131029%_)
        (letrec ((_%generate-bindings131031%_
                  (lambda (_%target131641%_
                           _%ids131642%_
                           _%clauses131643%_
                           _%clause-ids131644%_
                           _%E131645%_)
                    (letrec ((_%generate1131647%_
                              (lambda (_%clause131744%_
                                       _%clause-id131745%_
                                       _%E131746%_)
                                (cons (cons _%clause-id131745%_ '())
                                      (cons (let ((__tmp132366
                                                   (cons _%target131641%_ '()))
                                                  (__tmp132365
                                                   (_%generate-clause131033%_
                                                    _%target131641%_
                                                    _%ids131642%_
                                                    _%clause131744%_
                                                    _%E131746%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp132366
                                               __tmp132365))
                                            '())))))
                      (let _%lp131649%_ ((_%rest131651%_ _%clauses131643%_)
                                         (_%rest-ids131652%_
                                          _%clause-ids131644%_)
                                         (_%bindings131653%_ '()))
                        (let* ((_%rest131654131662%_ _%rest131651%_)
                               (_%else131656131670%_
                                (lambda () _%bindings131653%_))
                               (_%K131658131732%_
                                (lambda (_%rest131673%_ _%clause131674%_)
                                  (let* ((_%rest-ids131675131682%_
                                          _%rest-ids131652%_)
                                         (_%E131677131686%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids131675131682%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K131678131720%_
                                          (lambda (_%rest-ids131689%_
                                                   _%clause-id131690%_)
                                            (let* ((_%rest-ids131691131699%_
                                                    _%rest-ids131689%_)
                                                   (_%else131693131707%_
                                                    (lambda ()
                                                      (cons (_%generate1131647%_
                                                             _%clause131674%_
                                                             _%clause-id131690%_
                                                             _%E131645%_)
                                                            _%bindings131653%_)))
                                                   (_%K131695131712%_
                                                    (lambda (_%next-clause-id131710%_)
                                                      (_%lp131649%_
                                                       _%rest131673%_
                                                       _%rest-ids131689%_
                                                       (cons (_%generate1131647%_
                                                              _%clause131674%_
                                                              _%clause-id131690%_
                                                              _%next-clause-id131710%_)
                                                             _%bindings131653%_)))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%rest-ids131691131699%_))
                                                  (let* ((_%hd131696131715%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids131691131699%_)))
                                                         (_%next-clause-id131718%_
                                                          _%hd131696131715%_))
                                                    (_%K131695131712%_
                                                     _%next-clause-id131718%_))
                                                  (_%else131693131707%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%rest-ids131675131682%_))
                                        (let ((_%hd131679131723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids131675131682%_)))
                                              (_%tl131680131725%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids131675131682%_))))
                                          (let* ((_%clause-id131728%_
                                                  _%hd131679131723%_)
                                                 (_%rest-ids131730%_
                                                  _%tl131680131725%_))
                                            (_%K131678131720%_
                                             _%rest-ids131730%_
                                             _%clause-id131728%_)))
                                        (_%E131677131686%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest131654131662%_))
                              (let ((_%hd131659131735%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest131654131662%_)))
                                    (_%tl131660131737%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest131654131662%_))))
                                (let* ((_%clause131740%_ _%hd131659131735%_)
                                       (_%rest131742%_ _%tl131660131737%_))
                                  (_%K131658131732%_
                                   _%rest131742%_
                                   _%clause131740%_)))
                              (_%else131656131670%_)))))))
                 (_%generate-body131032%_
                  (lambda (_%bindings131601%_ _%body131602%_)
                    (let _%recur131604%_ ((_%rest131606%_ _%bindings131601%_))
                      (let* ((_%rest131607131615%_ _%rest131606%_)
                             (_%else131609131623%_ (lambda () _%body131602%_))
                             (_%K131611131629%_
                              (lambda (_%rest131626%_ _%hd131627%_)
                                (let ((__tmp132368 (cons _%hd131627%_ '()))
                                      (__tmp132367
                                       (_%recur131604%_ _%rest131626%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp132368
                                   __tmp132367)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest131607131615%_))
                            (let ((_%hd131612131632%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest131607131615%_)))
                                  (_%tl131613131634%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest131607131615%_))))
                              (let* ((_%hd131637%_ _%hd131612131632%_)
                                     (_%rest131639%_ _%tl131613131634%_))
                                (_%K131611131629%_
                                 _%rest131639%_
                                 _%hd131637%_)))
                            (_%else131609131623%_))))))
                 (_%generate-clause131033%_
                  (lambda (_%target131464%_
                           _%ids131465%_
                           _%clause131466%_
                           _%E131467%_)
                    (letrec ((_%generate1131469%_
                              (lambda (_%hd131556%_
                                       _%fender131557%_
                                       _%body131558%_)
                                (let ((_g132369_
                                       (_%parse-clause131035%_
                                        _%hd131556%_
                                        _%ids131465%_)))
                                  (begin
                                    (let ((_g132370_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g132369_)
                                                 (##vector-length _g132369_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g132370_ 2)))
                                          (error "Context expects 2 values"
                                                 _g132370_)))
                                    (let ((_%e131560%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g132369_ 0)))
                                          (_%mvars131561%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g132369_ 1))))
                                      (let* ((_%pvars131563%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars131561%_))))
                                             (_%E131565%_
                                              (cons _%E131467%_
                                                    (cons _%target131464%_
                                                          '())))
                                             (_%K131598%_
                                              (let ((__tmp132371
                                                     (let ((__tmp132373
                                                            (map (lambda (_%mvar131567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar131568%_)
                           (let* ((_%mvar131569131576%_ _%mvar131567%_)
                                  (_%E131571131580%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar131569131576%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K131572131586%_
                                   (lambda (_%depth131583%_ _%id131584%_)
                                     (cons _%id131584%_
                                           (cons (let ((__tmp132375
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id131584%_)))
                                                       (__tmp132374
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar131568%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp132375
                                                    __tmp132374
                                                    _%depth131583%_))
                                                 '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%mvar131569131576%_))
                                 (let ((_%hd131573131589%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar131569131576%_)))
                                       (_%tl131574131591%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar131569131576%_))))
                                   (let* ((_%id131594%_ _%hd131573131589%_)
                                          (_%depth131596%_ _%tl131574131591%_))
                                     (_%K131572131586%_
                                      _%depth131596%_
                                      _%id131594%_)))
                                 (_%E131571131580%_))))
                         _%mvars131561%_
                         _%pvars131563%_))
                   (__tmp132372
                    (if (eq? _%fender131557%_ '#t)
                        _%body131558%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender131557%_
                           _%body131558%_
                           _%E131565%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp132373 __tmp132372))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars131563%_
                                                 __tmp132371))))
                                        (_%generate-match131034%_
                                         _%hd131556%_
                                         _%target131464%_
                                         _%e131560%_
                                         _%mvars131561%_
                                         _%K131598%_
                                         _%E131565%_))))))))
                      (let* ((_%e131470131490%_ _%clause131466%_)
                             (_%E131479131494%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e131470131490%_))))
                             (_%E131472131528%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e131470131490%_))
                                    (let ((_%e131480131498%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e131470131490%_))))
                                      (let ((_%hd131481131501%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e131480131498%_)))
                                            (_%tl131482131503%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e131480131498%_))))
                                        (let ((_%hd131506%_
                                               _%hd131481131501%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl131482131503%_))
                                              (let ((_%e131483131508%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl131482131503%_))))
                                                (let ((_%hd131484131511%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e131483131508%_)))
                                                      (_%tl131485131513%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e131483131508%_))))
                                                  (let ((_%fender131516%_
                                                         _%hd131484131511%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl131485131513%_))
                                                        (let ((_%e131486131518%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl131485131513%_))))
                  (let ((_%hd131487131521%_
                         (let ()
                           (declare (not safe))
                           (##car _%e131486131518%_)))
                        (_%tl131488131523%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e131486131518%_))))
                    (let ((_%body131526%_ _%hd131487131521%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl131488131523%_))
                          (_%generate1131469%_
                           _%hd131506%_
                           _%fender131516%_
                           _%body131526%_)
                          (_%E131479131494%_)))))
                (_%E131479131494%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E131479131494%_)))))
                                    (_%E131479131494%_))))
                             (_%E131471131552%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e131470131490%_))
                                    (let ((_%e131473131532%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e131470131490%_))))
                                      (let ((_%hd131474131535%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e131473131532%_)))
                                            (_%tl131475131537%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e131473131532%_))))
                                        (let ((_%hd131540%_
                                               _%hd131474131535%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl131475131537%_))
                                              (let ((_%e131476131542%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl131475131537%_))))
                                                (let ((_%hd131477131545%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e131476131542%_)))
                                                      (_%tl131478131547%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e131476131542%_))))
                                                  (let ((_%body131550%_
                                                         _%hd131477131545%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl131478131547%_))
                                                        (_%generate1131469%_
                                                         _%hd131540%_
                                                         '#t
                                                         _%body131550%_)
                                                        (_%E131472131528%_)))))
                                              (_%E131472131528%_)))))
                                    (_%E131472131528%_)))))
                        (_%E131471131552%_)))))
                 (_%generate-match131034%_
                  (lambda (_%where131213%_
                           _%target131214%_
                           _%hd131215%_
                           _%mvars131216%_
                           _%K131217%_
                           _%E131218%_)
                    (letrec ((_%BUG131220%_
                              (lambda (_%q131462%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx131026%_
                                         _%hd131215%_
                                         _%q131462%_))))
                             (_%recur131221%_
                              (lambda (_%e131312%_
                                       _%vars131313%_
                                       _%target131314%_
                                       _%E131315%_
                                       _%k131316%_)
                                (let* ((_%e131317131324%_ _%e131312%_)
                                       (_%E131319131328%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e131317131324%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K131320131450%_
                                        (lambda (_%body131331%_ _%tag131332%_)
                                          (let ((_%$e131334%_ _%tag131332%_))
                                            (if (eq? 'any _%$e131334%_)
                                                (_%k131316%_ _%vars131313%_)
                                                (if (eq? 'id _%$e131334%_)
                                                    (let ((__tmp132380
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target131314%_)))
                                                          (__tmp132376
                                                           (let ((__tmp132378
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp132379
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e131029%_
                                    _%body131331%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?131027%_
                             __tmp132379
                             _%target131314%_)))
                         (__tmp132377 (_%k131316%_ _%vars131313%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp132378 __tmp132377 _%E131315%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp132380 __tmp132376 _%E131315%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e131334%_)
                                                        (_%k131316%_
                                                         (cons (cons _%body131331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target131314%_)
                       _%vars131313%_))
                (if (eq? 'cons _%$e131334%_)
                    (let ((_%$e131337%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd131338%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl131339%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp132386
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target131314%_)))
                            (__tmp132381
                             (let ((__tmp132385
                                    (cons (cons (cons _%$e131337%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e131028%_
                                                         _%target131314%_))
                                                      '()))
                                          '()))
                                   (__tmp132382
                                    (let ((__tmp132384
                                           (cons (cons (cons _%$hd131338%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e131337%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl131339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e131337%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp132383
                                           (let* ((_%body131340131347%_
                                                   _%body131331%_)
                                                  (_%E131342131351%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body131340131347%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K131343131359%_
                                                   (lambda (_%tl131354%_
                                                            _%hd131355%_)
                                                     (_%recur131221%_
                                                      _%hd131355%_
                                                      _%vars131313%_
                                                      _%$hd131338%_
                                                      _%E131315%_
                                                      (lambda (_%vars131357%_)
                                                        (_%recur131221%_
                                                         _%tl131354%_
                                                         _%vars131357%_
                                                         _%$tl131339%_
                                                         _%E131315%_
                                                         _%k131316%_))))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _%body131340131347%_))
                                                 (let ((_%hd131344131362%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body131340131347%_)))
                                                       (_%tl131345131364%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body131340131347%_))))
                                                   (let* ((_%hd131367%_
                                                           _%hd131344131362%_)
                                                          (_%tl131369%_
                                                           _%tl131345131364%_))
                                                     (_%K131343131359%_
                                                      _%tl131369%_
                                                      _%hd131367%_)))
                                                 (_%E131342131351%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp132384
                                       __tmp132383))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp132385
                                __tmp132382))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp132386
                         __tmp132381
                         _%E131315%_)))
                    (if (eq? 'splice _%$e131334%_)
                        (let* ((_%body131370131377%_ _%body131331%_)
                               (_%E131372131381%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body131370131377%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K131373131432%_
                                (lambda (_%tl131384%_ _%hd131385%_)
                                  (let* ((_%rlen131387%_
                                          (_%splice-rlen131222%_ _%tl131384%_))
                                         (_%$target131389%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd131391%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl131393%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp131395%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e131397%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd131399%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl131401%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars131403%_
                                          (_%splice-vars131223%_ _%hd131385%_))
                                         (_%lvars131405%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars131403%_)))
                                         (_%tlvars131407%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars131403%_)))
                                         (_%linit131411%_
                                          (map (lambda (_%var131409%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars131405%_)))
                                    (letrec ((_%make-loop131414%_
                                              (lambda (_%vars131418%_)
                                                (let ((__tmp132388
                                                       (cons (cons (cons _%$lp131395%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp132401
                                        (cons _%$hd131391%_ _%lvars131405%_))
                                       (__tmp132389
                                        (let ((__tmp132400
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd131391%_)))
                                              (__tmp132394
                                               (let ((__tmp132399
                                                      (cons (cons (cons _%$lp-e131397%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e131028%_
                                   _%$hd131391%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp132395
                                                      (let ((__tmp132398
                                                             (cons (cons (cons _%$lp-hd131399%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e131397%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl131401%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e131397%_))
                                             '()))
                                 '())))
                    (__tmp132396
                     (_%recur131221%_
                      _%hd131385%_
                      '()
                      _%$lp-hd131399%_
                      _%E131315%_
                      (lambda (_%hdvars131420%_)
                        (cons _%$lp131395%_
                              (cons _%$lp-tl131401%_
                                    (map (lambda (_%svar131422%_
                                                  _%lvar131423%_)
                                           (let ((__tmp132397
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar131422%_
                                                     _%hdvars131420%_
                                                     _%BUG131220%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp132397
                                              _%lvar131423%_)))
                                         _%svars131403%_
                                         _%lvars131405%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp132398 __tmp132396))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp132399
                                                  __tmp132395)))
                                              (__tmp132390
                                               (let ((__tmp132393
                                                      (map (lambda (_%lvar131425%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar131426%_)
                     (cons (cons _%tlvar131426%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar131425%_))
                                 '())))
                   _%lvars131405%_
                   _%tlvars131407%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp132391
                                                      (_%k131316%_
                                                       (let ((__tmp132392
                                                              (lambda (_%svar131428%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar131429%_
                               _%r131430%_)
                        (cons (cons _%svar131428%_ _%tlvar131429%_)
                              _%r131430%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp132392
                  _%vars131418%_
                  _%svars131403%_
                  _%tlvars131407%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp132393
                                                  __tmp132391))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp132400
                                           __tmp132394
                                           __tmp132390))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp132401
                                    __tmp132389))
                                 '()))
                     '()))
              (__tmp132387
               (cons _%$lp131395%_ (cons _%$target131389%_ _%linit131411%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp132388
                                                   __tmp132387)))))
                                      (let ((_%body131416%_
                                             (let ((__tmp132403
                                                    (cons (cons (cons _%$target131389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl131393%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target131314%_
                                 _%rlen131387%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp132402
                                                    (_%recur131221%_
                                                     _%tl131384%_
                                                     _%vars131313%_
                                                     _%$tl131393%_
                                                     _%E131315%_
                                                     _%make-loop131414%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp132403
                                                __tmp132402))))
                                        (let ((__tmp132407
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target131314%_)))
                                              (__tmp132404
                                               (if (zero? _%rlen131387%_)
                                                   _%body131416%_
                                                   (let ((__tmp132405
                                                          (let ((__tmp132406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target131314%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp132406 _%rlen131387%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp132405
                                                      _%body131416%_
                                                      _%E131315%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp132407
                                           __tmp132404
                                           _%E131315%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%body131370131377%_))
                              (let ((_%hd131374131435%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body131370131377%_)))
                                    (_%tl131375131437%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body131370131377%_))))
                                (let* ((_%hd131440%_ _%hd131374131435%_)
                                       (_%tl131442%_ _%tl131375131437%_))
                                  (_%K131373131432%_
                                   _%tl131442%_
                                   _%hd131440%_)))
                              (_%E131372131381%_)))
                        (if (eq? 'null _%$e131334%_)
                            (let ((__tmp132409
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target131314%_)))
                                  (__tmp132408 (_%k131316%_ _%vars131313%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp132409
                               __tmp132408
                               _%E131315%_))
                            (if (eq? 'vector _%$e131334%_)
                                (let ((_%$e131444%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp132414
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target131314%_)))
                                        (__tmp132410
                                         (let ((__tmp132412
                                                (cons (cons (cons _%$e131444%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp132413
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e131028%_
                                    _%target131314%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp132413))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp132411
                                                (_%recur131221%_
                                                 _%body131331%_
                                                 _%vars131313%_
                                                 _%$e131444%_
                                                 _%E131315%_
                                                 _%k131316%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp132412
                                            __tmp132411))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp132414
                                     __tmp132410
                                     _%E131315%_)))
                                (if (eq? 'box _%$e131334%_)
                                    (let ((_%$e131446%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp132419
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target131314%_)))
                                            (__tmp132415
                                             (let ((__tmp132417
                                                    (cons (cons (cons _%$e131446%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp132418
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e131028%_
                                        _%target131314%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp132418))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp132416
                                                    (_%recur131221%_
                                                     _%body131331%_
                                                     _%vars131313%_
                                                     _%$e131446%_
                                                     _%E131315%_
                                                     _%k131316%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp132417
                                                __tmp132416))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp132419
                                         __tmp132415
                                         _%E131315%_)))
                                    (if (eq? 'datum _%$e131334%_)
                                        (let ((_%$e131448%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp132425
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target131314%_)))
                                                (__tmp132420
                                                 (let ((__tmp132424
                                                        (cons (cons (cons _%$e131448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target131314%_))
                                  '()))
                      '()))
               (__tmp132421
                (let ((__tmp132423
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e131448%_ _%body131331%_)))
                      (__tmp132422 (_%k131316%_ _%vars131313%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp132423 __tmp132422 _%E131315%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp132424
                                                    __tmp132421))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp132425
                                             __tmp132420
                                             _%E131315%_)))
                                        (_%BUG131220%_
                                         _%e131312%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%e131317131324%_))
                                      (let ((_%hd131321131453%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e131317131324%_)))
                                            (_%tl131322131455%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e131317131324%_))))
                                        (let* ((_%tag131458%_
                                                _%hd131321131453%_)
                                               (_%body131460%_
                                                _%tl131322131455%_))
                                          (_%K131320131450%_
                                           _%body131460%_
                                           _%tag131458%_)))
                                      (_%E131319131328%_)))))
                             (_%splice-rlen131222%_
                              (lambda (_%e131274%_)
                                (let _%lp131276%_ ((_%e131278%_ _%e131274%_)
                                                   (_%n131279%_ '0))
                                  (let* ((_%e131280131287%_ _%e131278%_)
                                         (_%E131282131291%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e131280131287%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K131283131300%_
                                          (lambda (_%body131294%_
                                                   _%tag131295%_)
                                            (let ((_%$e131297%_ _%tag131295%_))
                                              (if (eq? 'splice _%$e131297%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx131026%_
                                                     _%where131213%_))
                                                  (if (eq? 'cons _%$e131297%_)
                                                      (_%lp131276%_
                                                       (cdr _%body131294%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n131279%_
                                                                '1)))
                                                      _%n131279%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e131280131287%_))
                                        (let ((_%hd131284131303%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e131280131287%_)))
                                              (_%tl131285131305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e131280131287%_))))
                                          (let* ((_%tag131308%_
                                                  _%hd131284131303%_)
                                                 (_%body131310%_
                                                  _%tl131285131305%_))
                                            (_%K131283131300%_
                                             _%body131310%_
                                             _%tag131308%_)))
                                        (_%E131282131291%_))))))
                             (_%splice-vars131223%_
                              (lambda (_%e131230%_)
                                (let _%recur131232%_ ((_%e131234%_ _%e131230%_)
                                                      (_%vars131235%_ '()))
                                  (let* ((_%e131236131243%_ _%e131234%_)
                                         (_%E131238131247%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e131236131243%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K131239131262%_
                                          (lambda (_%body131250%_
                                                   _%tag131251%_)
                                            (let ((_%$e131253%_ _%tag131251%_))
                                              (if (eq? 'var _%$e131253%_)
                                                  (cons _%body131250%_
                                                        _%vars131235%_)
                                                  (if (or (eq? 'cons
                                                               _%$e131253%_)
                                                          (eq? 'splice
                                                               _%$e131253%_))
                                                      (_%recur131232%_
                                                       (cdr _%body131250%_)
                                                       (_%recur131232%_
                                                        (car _%body131250%_)
                                                        _%vars131235%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e131253%_)
                      (eq? 'box _%$e131253%_))
                  (_%recur131232%_ _%body131250%_ _%vars131235%_)
                  _%vars131235%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e131236131243%_))
                                        (let ((_%hd131240131265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e131236131243%_)))
                                              (_%tl131241131267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e131236131243%_))))
                                          (let* ((_%tag131270%_
                                                  _%hd131240131265%_)
                                                 (_%body131272%_
                                                  _%tl131241131267%_))
                                            (_%K131239131262%_
                                             _%body131272%_
                                             _%tag131270%_)))
                                        (_%E131238131247%_))))))
                             (_%make-body131224%_
                              (lambda (_%vars131226%_)
                                (cons _%K131217%_
                                      (map (lambda (_%mvar131228%_)
                                             (let ((__tmp132426
                                                    (car _%mvar131228%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp132426
                                                _%vars131226%_
                                                _%BUG131220%_)))
                                           _%mvars131216%_)))))
                      (_%recur131221%_
                       _%hd131215%_
                       '()
                       _%target131214%_
                       _%E131218%_
                       _%make-body131224%_))))
                 (_%parse-clause131035%_
                  (lambda (_%hd131107%_ _%ids131108%_)
                    (let _%recur131110%_ ((_%e131112%_ _%hd131107%_)
                                          (_%vars131113%_ '())
                                          (_%depth131114%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e131112%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e131112%_))
                              (values '(any) _%vars131113%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e131112%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx131026%_
                                     _%hd131107%_))
                                  (if (let ((__tmp132427
                                             (lambda (_%id131119%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e131112%_
                                                  _%id131119%_)))))
                                        (declare (not safe))
                                        (__find __tmp132427 _%ids131108%_))
                                      (values (cons 'id _%e131112%_)
                                              _%vars131113%_)
                                      (if (let ((__tmp132428
                                                 (lambda (_%var131122%_)
                                                   (let ((__tmp132429
                                                          (car _%var131122%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e131112%_
                                                      __tmp132429)))))
                                            (declare (not safe))
                                            (__find __tmp132428
                                                    _%vars131113%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx131026%_
                                             _%e131112%_))
                                          (values (cons 'var _%e131112%_)
                                                  (cons (cons _%e131112%_
                                                              _%depth131114%_)
                                                        _%vars131113%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e131112%_))
                              (let* ((_%e131126131133%_ _%e131112%_)
                                     (_%E131128131137%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e131126131133%_))))
                                     (_%E131127131198%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e131126131133%_))
                                            (let ((_%e131129131141%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e131126131133%_))))
                                              (let ((_%hd131130131144%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e131129131141%_)))
                                                    (_%tl131131131146%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e131129131141%_))))
                                                (let* ((_%hd131149%_
                                                        _%hd131130131144%_)
                                                       (_%rest131151%_
                                                        _%tl131131131146%_)
                                                       (_%make-pair131166%_
                                                        (lambda (_%tag131153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd131154%_
                         _%tl131155%_)
                  (let* ((_%hd-depth131157%_
                          (if (eq? _%tag131153%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth131114%_ '1))
                              _%depth131114%_))
                         (_g132430_
                          (_%recur131110%_
                           _%hd131154%_
                           _%vars131113%_
                           _%hd-depth131157%_)))
                    (begin
                      (let ((_g132431_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g132430_)
                                   (##vector-length _g132430_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g132431_ 2)))
                            (error "Context expects 2 values" _g132431_)))
                      (let ((_%hd131159%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g132430_ 0)))
                            (_%vars131160%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g132430_ 1))))
                        (let ((_g132432_
                               (_%recur131110%_
                                _%tl131155%_
                                _%vars131160%_
                                _%depth131114%_)))
                          (begin
                            (let ((_g132433_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g132432_)
                                         (##vector-length _g132432_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g132433_ 2)))
                                  (error "Context expects 2 values"
                                         _g132433_)))
                            (let ((_%tl131162%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g132432_ 0)))
                                  (_%vars131163%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g132432_ 1))))
                              (values (cons _%tag131153%_
                                            (cons _%hd131159%_ _%tl131162%_))
                                      _%vars131163%_)))))))))
               (_%e131167131174%_ _%rest131151%_)
               (_%E131169131178%_
                (lambda ()
                  (_%make-pair131166%_ 'cons _%hd131149%_ _%rest131151%_)))
               (_%E131168131194%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e131167131174%_))
                      (let ((_%e131170131182%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e131167131174%_))))
                        (let ((_%hd131171131185%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131170131182%_)))
                              (_%tl131172131187%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131170131182%_))))
                          (let* ((_%rest-hd131190%_ _%hd131171131185%_)
                                 (_%rest-tl131192%_ _%tl131172131187%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd131190%_))
                                (_%make-pair131166%_
                                 'splice
                                 _%hd131149%_
                                 _%rest-tl131192%_)
                                (_%make-pair131166%_
                                 'cons
                                 _%hd131149%_
                                 _%rest131151%_)))))
                      (_%E131169131178%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131168131194%_))))
                                            (_%E131128131137%_)))))
                                (_%E131127131198%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e131112%_))
                                  (values '(null) _%vars131113%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e131112%_))
                                      (let ((_g132434_
                                             (_%recur131110%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e131112%_)))
                                              _%vars131113%_
                                              _%depth131114%_)))
                                        (begin
                                          (let ((_g132435_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g132434_)
                                                       (##vector-length
                                                        _g132434_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g132435_ 2)))
                                                (error "Context expects 2 values"
                                                       _g132435_)))
                                          (let ((_%e131204%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g132434_ 0)))
                                                (_%vars131205%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g132434_
                                                    1))))
                                            (values (cons 'vector _%e131204%_)
                                                    _%vars131205%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e131112%_))
                                          (let ((_g132436_
                                                 (_%recur131110%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e131112%_)))
                                                  _%vars131113%_
                                                  _%depth131114%_)))
                                            (begin
                                              (let ((_g132437_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g132436_)
                                                           (##vector-length
                                                            _g132436_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g132437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g132437_)))
                                              (let ((_%e131208%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g132436_
                                                        0)))
                                                    (_%vars131209%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g132436_
                                                        1))))
                                                (values (cons 'box _%e131208%_)
                                                        _%vars131209%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e131112%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e131112%_)))
                                                      _%vars131113%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx131026%_
                                                 _%e131112%_))))))))))))
          (let* ((_%e131036131049%_ _%stx131026%_)
                 (_%E131038131053%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e131036131049%_))))
                 (_%E131037131103%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e131036131049%_))
                        (let ((_%e131039131057%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e131036131049%_))))
                          (let ((_%hd131040131060%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131039131057%_)))
                                (_%tl131041131062%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131039131057%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl131041131062%_))
                                (let ((_%e131042131065%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl131041131062%_))))
                                  (let ((_%hd131043131068%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e131042131065%_)))
                                        (_%tl131044131070%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e131042131065%_))))
                                    (let ((_%expr131073%_ _%hd131043131068%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl131044131070%_))
                                          (let ((_%e131045131075%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl131044131070%_))))
                                            (let ((_%hd131046131078%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e131045131075%_)))
                                                  (_%tl131047131080%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e131045131075%_))))
                                              (let* ((_%ids131083%_
                                                      _%hd131046131078%_)
                                                     (_%clauses131085%_
                                                      _%tl131047131080%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids131083%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses131085%_))
                                                        (let* ((_%ids131090%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids131083%_)))
                       (_%clauses131092%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses131085%_)))
                       (_%clause-ids131094%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses131092%_)))
                       (_%E131096%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target131098%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first131100%_
                        (if (null? _%clauses131092%_)
                            _%E131096%_
                            (car _%clause-ids131094%_))))
                  (let ((__tmp132439
                         (let ((__tmp132440
                                (let ((__tmp132442
                                       (let ((__tmp132444
                                              (cons (cons (cons _%E131096%_
                                                                '())
                                                          (cons (let ((__tmp132446
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target131098%_ '()))
                              (__tmp132445
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target131098%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp132446 __tmp132445))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp132443
                                              (_%generate-body131032%_
                                               (_%generate-bindings131031%_
                                                _%target131098%_
                                                _%ids131090%_
                                                _%clauses131092%_
                                                _%clause-ids131094%_
                                                _%E131096%_)
                                               (cons _%first131100%_
                                                     (cons _%expr131073%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp132444
                                          __tmp132443)))
                                      (__tmp132441
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx131026%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp132442
                                   __tmp132441))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp132440)))
                        (__tmp132438
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx131026%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp132439 __tmp132438)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx131026%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx131026%_
                                                       _%ids131083%_))))))
                                          (_%E131038131053%_)))))
                                (_%E131038131053%_))))
                        (_%E131038131053%_)))))
            (_%E131037131103%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx131751%_)
        (let* ((_%identifier=?131753%_ 'free-identifier=?)
               (_%unwrap-e131755%_ 'syntax-e)
               (_%wrap-e131757%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx131751%_
           _%identifier=?131753%_
           _%unwrap-e131755%_
           _%wrap-e131757%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx131759%_ _%identifier=?131760%_)
        (let* ((_%unwrap-e131762%_ 'syntax-e) (_%wrap-e131764%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx131759%_
           _%identifier=?131760%_
           _%unwrap-e131762%_
           _%wrap-e131764%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx131766%_ _%identifier=?131767%_ _%unwrap-e131768%_)
        (let ((_%wrap-e131770%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx131766%_
           _%identifier=?131767%_
           _%unwrap-e131768%_
           _%wrap-e131770%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g132448_
        (let ((_g132447_ (let () (declare (not safe)) (##length _g132448_))))
          (cond ((let () (declare (not safe)) (##fx= _g132447_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g132448_))
                ((let () (declare (not safe)) (##fx= _g132447_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g132448_))
                ((let () (declare (not safe)) (##fx= _g132447_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g132448_))
                ((let () (declare (not safe)) (##fx= _g132447_ 4))
                 (apply gx#macro-expand-syntax-case__% _g132448_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g132448_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx131023%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx131023%_))
            (let ((__tmp132449
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx131023%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp132449 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd130981%_ . _%rest130982%_)
        (let ((_%len130984%_ (length _%hd130981%_)))
          (let _%lp130986%_ ((_%rest130988%_ _%rest130982%_))
            (let* ((_%rest130989130997%_ _%rest130988%_)
                   (_%else130991131005%_ (lambda () '#!void))
                   (_%K130993131011%_
                    (lambda (_%rest131008%_ _%hd131009%_)
                      (if (let ((__tmp132450 (length _%hd131009%_)))
                            (declare (not safe))
                            (##fx= _%len130984%_ __tmp132450))
                          (_%lp130986%_ _%rest131008%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd131009%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest130989130997%_))
                  (let ((_%hd130994131014%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest130989130997%_)))
                        (_%tl130995131016%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest130989130997%_))))
                    (let* ((_%hd131019%_ _%hd130994131014%_)
                           (_%rest131021%_ _%tl130995131016%_))
                      (_%K130993131011%_ _%rest131021%_ _%hd131019%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx130936%_ _%n130937%_)
        (let _%lp130939%_ ((_%rest130941%_ _%stx130936%_) (_%r130942%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest130941%_))
              (let* ((_%g130943130950%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest130941%_)))
                     (_%E130945130954%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g130943130950%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K130946130960%_
                      (lambda (_%rest130957%_ _%hd130958%_)
                        (_%lp130939%_
                         _%rest130957%_
                         (cons _%hd130958%_ _%r130942%_)))))
                (if (let () (declare (not safe)) (##pair? _%g130943130950%_))
                    (let ((_%hd130947130963%_
                           (let ()
                             (declare (not safe))
                             (##car _%g130943130950%_)))
                          (_%tl130948130965%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g130943130950%_))))
                      (let* ((_%hd130968%_ _%hd130947130963%_)
                             (_%rest130970%_ _%tl130948130965%_))
                        (_%K130946130960%_ _%rest130970%_ _%hd130968%_)))
                    (_%E130945130954%_)))
              (let _%lp130972%_ ((_%n130974%_ _%n130937%_)
                                 (_%l130975%_ _%r130942%_)
                                 (_%r130976%_ _%rest130941%_))
                (if (null? _%l130975%_)
                    (values _%l130975%_ _%r130976%_)
                    (if (fxpositive? _%n130974%_)
                        (_%lp130972%_
                         (let () (declare (not safe)) (##fx- _%n130974%_ '1))
                         (cdr _%l130975%_)
                         (cons (car _%l130975%_) _%r130976%_))
                        (values (reverse _%l130975%_) _%r130976%_))))))))))
