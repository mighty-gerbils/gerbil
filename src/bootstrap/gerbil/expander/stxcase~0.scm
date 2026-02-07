(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1770505719)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp186512 (list gx#expander::t))
            (__tmp186511 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp186512
         '(id depth)
         __tmp186511
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args186508%_
        (apply make-instance gx#syntax-pattern::t _%$args186508%_)))
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
      (lambda (_%self186494%_ _%stx186495%_)
        (let ((_%self186498%_ _%self186494%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx186495%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx185961%_)
        (letrec ((_%generate185963%_
                  (lambda (_%e186203%_)
                    (letrec ((_%BUG186205%_
                              (lambda (_%q186370%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx185961%_
                                         _%e186203%_
                                         _%q186370%_))))
                             (_%local-pattern-e186206%_
                              (lambda (_%pat186368%_)
                                (let ((__tmp186513
                                       (##structure-ref
                                        _%pat186368%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp186513))))
                             (_%getvar186207%_
                              (lambda (_%q186365%_ _%vars186366%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q186365%_
                                   _%vars186366%_
                                   _%BUG186205%_))))
                             (_%getarg186208%_
                              (lambda (_%arg186331%_ _%vars186332%_)
                                (let* ((_%arg186333186340%_ _%arg186331%_)
                                       (_%E186335186344%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg186333186340%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K186336186353%_
                                        (lambda (_%e186347%_ _%tag186348%_)
                                          (let ((_%$e186350%_ _%tag186348%_))
                                            (if (eq? 'ref _%$e186350%_)
                                                (_%getvar186207%_
                                                 _%e186347%_
                                                 _%vars186332%_)
                                                (if (eq? 'pattern _%$e186350%_)
                                                    (_%local-pattern-e186206%_
                                                     _%e186347%_)
                                                    (_%BUG186205%_
                                                     _%arg186331%_)))))))
                                  (if (pair? _%arg186333186340%_)
                                      (let ((_%hd186337186356%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg186333186340%_)))
                                            (_%tl186338186358%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg186333186340%_))))
                                        (let* ((_%tag186361%_
                                                _%hd186337186356%_)
                                               (_%e186363%_
                                                _%tl186338186358%_))
                                          (_%K186336186353%_
                                           _%e186363%_
                                           _%tag186361%_)))
                                      (_%E186335186344%_))))))
                      (let _%recur186210%_ ((_%e186212%_ _%e186203%_)
                                            (_%vars186213%_ '()))
                        (let* ((_%e186214186221%_ _%e186212%_)
                               (_%E186216186225%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e186214186221%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K186217186319%_
                                (lambda (_%body186228%_ _%tag186229%_)
                                  (let ((_%$e186231%_ _%tag186229%_))
                                    (if (eq? 'datum _%$e186231%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body186228%_))
                                        (if (eq? 'term _%$e186231%_)
                                            (let ((_%id186234%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body186228%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id186234%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks186237%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id186234%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks186237%_)
                                                        (let ((__tmp186514
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body186228%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp186514))
                (let ((__tmp186516
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body186228%_)))
                      (__tmp186515
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body186228%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp186516
                   __tmp186515
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id186234%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body186228%_))
                                                      (_%BUG186205%_
                                                       _%e186212%_))))
                                            (if (eq? 'pattern _%$e186231%_)
                                                (_%local-pattern-e186206%_
                                                 _%body186228%_)
                                                (if (eq? 'ref _%$e186231%_)
                                                    (_%getvar186207%_
                                                     _%body186228%_
                                                     _%vars186213%_)
                                                    (if (eq? 'cons
                                                             _%$e186231%_)
                                                        (let ((__tmp186518
                                                               (_%recur186210%_
                                                                (car _%body186228%_)
                                                                _%vars186213%_))
                                                              (__tmp186517
                                                               (_%recur186210%_
                                                                (cdr _%body186228%_)
                                                                _%vars186213%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp186518
                                                           __tmp186517))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e186231%_)
                    (let ((__tmp186519
                           (_%recur186210%_ _%body186228%_ _%vars186213%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp186519))
                    (if (eq? 'box _%$e186231%_)
                        (let ((__tmp186520
                               (_%recur186210%_
                                _%body186228%_
                                _%vars186213%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp186520))
                        (if (eq? 'splice _%$e186231%_)
                            (let* ((_%body186240186251%_ _%body186228%_)
                                   (_%E186242186255%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body186240186251%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K186243186293%_
                                    (lambda (_%args186258%_
                                             _%iv186259%_
                                             _%hd186260%_
                                             _%depth186261%_)
                                      (let* ((_%targets186267%_
                                              (map (lambda (_%g186262186264%_)
                                                     (_%getarg186208%_
                                                      _%g186262186264%_
                                                      _%vars186213%_))
                                                   _%args186258%_))
                                             (_%fold-in186269%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args186258%_)))
                                             (_%fold-out186271%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args186273%_
                                              (let ((__tmp186521
                                                     (cons _%fold-out186271%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp186521
                                                 _%fold-in186269%_)))
                                             (_%lambda-body186290%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth186261%_ '1))
                                                  (let ((_%r-args186281%_
                                                         (map (lambda (_%arg186275%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg186275%_)))
                      _%args186258%_))
                (_%r-vars186282%_
                 (let ((__tmp186522
                        (lambda (_%arg186277%_ _%var186278%_ _%r186279%_)
                          (cons (cons (cdr _%arg186277%_) _%var186278%_)
                                _%r186279%_))))
                   (declare (not safe))
                   (foldr__1
                    __tmp186522
                    _%vars186213%_
                    _%args186258%_
                    _%fold-in186269%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur186210%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth186261%_ '1))
                         (cons _%hd186260%_
                               (cons (cons 'var _%fold-out186271%_)
                                     _%r-args186281%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars186282%_))
                                                  (let* ((_%hd-vars186288%_
                                                          (let ((__tmp186523
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg186284%_ _%var186285%_ _%r186286%_)
                           (cons (cons (cdr _%arg186284%_) _%var186285%_)
                                 _%r186286%_))))
                    (declare (not safe))
                    (foldr__1
                     __tmp186523
                     _%vars186213%_
                     _%args186258%_
                     _%fold-in186269%_)))
                 (__tmp186524
                  (_%recur186210%_ _%hd186260%_ _%hd-vars186288%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp186524
                                                     _%fold-out186271%_)))))
                                        (let ((__tmp186528
                                               (if (let ((__tmp186529
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets186267%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp186529 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets186267%_))
                                                   '#!void))
                                              (__tmp186525
                                               (let ((__tmp186527
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args186273%_
                                                         _%lambda-body186290%_)))
                                                     (__tmp186526
                                                      (_%recur186210%_
                                                       _%iv186259%_
                                                       _%vars186213%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp186527
                                                  __tmp186526
                                                  _%targets186267%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp186528
                                           __tmp186525))))))
                              (if (pair? _%body186240186251%_)
                                  (let ((_%hd186244186296%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body186240186251%_)))
                                        (_%tl186245186298%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body186240186251%_))))
                                    (let ((_%depth186301%_ _%hd186244186296%_))
                                      (if (pair? _%tl186245186298%_)
                                          (let ((_%hd186246186303%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl186245186298%_)))
                                                (_%tl186247186305%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl186245186298%_))))
                                            (let ((_%hd186308%_
                                                   _%hd186246186303%_))
                                              (if (pair? _%tl186247186305%_)
                                                  (let ((_%hd186248186310%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl186247186305%_)))
                                                        (_%tl186249186312%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl186247186305%_))))
                                                    (let* ((_%iv186315%_
                                                            _%hd186248186310%_)
                                                           (_%args186317%_
                                                            _%tl186249186312%_))
                                                      (_%K186243186293%_
                                                       _%args186317%_
                                                       _%iv186315%_
                                                       _%hd186308%_
                                                       _%depth186301%_)))
                                                  (_%E186242186255%_))))
                                          (_%E186242186255%_))))
                                  (_%E186242186255%_)))
                            (if (eq? 'var _%$e186231%_)
                                _%body186228%_
                                (_%BUG186205%_ _%e186212%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e186214186221%_)
                              (let ((_%hd186218186322%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e186214186221%_)))
                                    (_%tl186219186324%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e186214186221%_))))
                                (let* ((_%tag186327%_ _%hd186218186322%_)
                                       (_%body186329%_ _%tl186219186324%_))
                                  (_%K186217186319%_
                                   _%body186329%_
                                   _%tag186327%_)))
                              (_%E186216186225%_)))))))
                 (_%parse185964%_
                  (lambda (_%e186005%_)
                    (letrec ((_%make-cons186007%_
                              (lambda (_%hd186195%_ _%tl186196%_)
                                (let ((_g186530_ _%hd186195%_)
                                      (_g186532_ _%tl186196%_))
                                  (begin
                                    (let ((_g186531_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186530_)
                                                 (##values-length _g186530_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186531_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186531_)))
                                    (let ((_g186533_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186532_)
                                                 (##values-length _g186532_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186533_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186533_)))
                                    (let ((_%hd-e186198%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g186530_ 0)))
                                          (_%hd-vars186199%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g186530_ 1))))
                                      (let ((_%tl-e186200%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g186532_ 0)))
                                            (_%tl-vars186201%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g186532_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e186198%_
                                                            _%tl-e186200%_))
                                                (append _%hd-vars186199%_
                                                        _%tl-vars186201%_))))))))
                             (_%make-splice186008%_
                              (lambda (_%where186131%_
                                       _%depth186132%_
                                       _%hd186133%_
                                       _%tl186134%_)
                                (let ((_g186534_ _%hd186133%_)
                                      (_g186536_ _%tl186134%_))
                                  (begin
                                    (let ((_g186535_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186534_)
                                                 (##values-length _g186534_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186535_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186535_)))
                                    (let ((_g186537_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186536_)
                                                 (##values-length _g186536_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186537_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186537_)))
                                    (let ((_%hd-e186136%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g186534_ 0)))
                                          (_%hd-vars186137%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g186534_ 1))))
                                      (let ((_%tl-e186138%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g186536_ 0)))
                                            (_%tl-vars186139%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g186536_ 1))))
                                        (let _%lp186141%_ ((_%rest186143%_
                                                            _%hd-vars186137%_)
                                                           (_%targets186144%_
                                                            '())
                                                           (_%vars186145%_
                                                            _%tl-vars186139%_))
                                          (let* ((_%rest186146186156%_
                                                  _%rest186143%_)
                                                 (_%else186148186164%_
                                                  (lambda ()
                                                    (if (null? _%targets186144%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx185961%_
                                                           _%where186131%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth186132%_
                                    (cons _%hd-e186136%_
                                          (cons _%tl-e186138%_
                                                _%targets186144%_))))
                        _%vars186145%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K186150186176%_
                                                  (lambda (_%rest186167%_
                                                           _%hd-pat186168%_
                                                           _%hd-depth*186169%_)
                                                    (let ((_%hd-depth186171%_
                                                           (fx- _%hd-depth*186169%_
                                                                _%depth186132%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth186171%_))
                                                          (_%lp186141%_
                                                           _%rest186167%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat186168%_)
                         _%targets186144%_)
                   (cons (cons _%hd-depth186171%_ _%hd-pat186168%_)
                         _%vars186145%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth186171%_))
                      (_%lp186141%_
                       _%rest186167%_
                       (cons (cons 'pattern _%hd-pat186168%_)
                             _%targets186144%_)
                       _%vars186145%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx185961%_
                         _%where186131%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest186146186156%_)
                                                (let ((_%hd186151186179%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest186146186156%_)))
                                                      (_%tl186152186181%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest186146186156%_))))
                                                  (if (pair? _%hd186151186179%_)
                                                      (let ((_%hd186153186184%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd186151186179%_)))
                    (_%tl186154186186%_
                     (let () (declare (not safe)) (##cdr _%hd186151186179%_))))
                (let* ((_%hd-depth*186189%_ _%hd186153186184%_)
                       (_%hd-pat186191%_ _%tl186154186186%_)
                       (_%rest186193%_ _%tl186152186181%_))
                  (_%K186150186176%_
                   _%rest186193%_
                   _%hd-pat186191%_
                   _%hd-depth*186189%_)))
              (_%else186148186164%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else186148186164%_))))))))))
                             (_%recur186009%_
                              (lambda (_%e186014%_ _%is-e?186015%_)
                                (if (_%is-e?186015%_ _%e186014%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx185961%_))
                                    (if (gx#syntax-local-pattern? _%e186014%_)
                                        (let* ((_%pat186019%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e186014%_)))
                                               (_%depth186021%_
                                                (##structure-ref
                                                 _%pat186019%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth186021%_)
                                              (values (cons 'ref _%pat186019%_)
                                                      (cons (cons _%depth186021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat186019%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat186019%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e186014%_))
                                            (values (cons 'term _%e186014%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e186014%_))
                                                (let* ((_%e186025186032%_
                                                        _%e186014%_)
                                                       (_%E186027186036%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e186025186032%_))))
                                                       (_%E186026186118%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e186025186032%_))
                      (let ((_%e186028186040%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e186025186032%_))))
                        (let ((_%hd186029186043%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e186028186040%_)))
                              (_%tl186030186045%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e186028186040%_))))
                          (let* ((_%hd186048%_ _%hd186029186043%_)
                                 (_%rest186050%_ _%tl186030186045%_))
                            (if (_%is-e?186015%_ _%hd186048%_)
                                (let* ((_%e186051186058%_ _%rest186050%_)
                                       (_%E186053186062%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx185961%_
                                             _%e186014%_))))
                                       (_%E186052186076%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e186051186058%_))
                                              (let ((_%e186054186066%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e186051186058%_))))
                                                (let ((_%hd186055186069%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e186054186066%_)))
                                                      (_%tl186056186071%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e186054186066%_))))
                                                  (let ((_%rest186074%_
                                                         _%hd186055186069%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl186056186071%_))
                                                        (_%recur186009%_
                                                         _%rest186074%_
                                                         false)
                                                        (_%E186053186062%_)))))
                                              (_%E186053186062%_)))))
                                  (_%E186052186076%_))
                                (let _%lp186080%_ ((_%rest186082%_
                                                    _%rest186050%_)
                                                   (_%depth186083%_ '0))
                                  (let* ((_%e186084186091%_ _%rest186082%_)
                                         (_%E186086186095%_
                                          (lambda ()
                                            (if (fxpositive? _%depth186083%_)
                                                (_%make-splice186008%_
                                                 _%e186014%_
                                                 _%depth186083%_
                                                 (_%recur186009%_
                                                  _%hd186048%_
                                                  _%is-e?186015%_)
                                                 (_%recur186009%_
                                                  _%rest186082%_
                                                  _%is-e?186015%_))
                                                (_%make-cons186007%_
                                                 (_%recur186009%_
                                                  _%hd186048%_
                                                  _%is-e?186015%_)
                                                 (_%recur186009%_
                                                  _%rest186082%_
                                                  _%is-e?186015%_)))))
                                         (_%E186085186114%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e186084186091%_))
                                                (let ((_%e186087186099%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e186084186091%_))))
                                                  (let ((_%hd186088186102%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e186087186099%_)))
                                                        (_%tl186089186104%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e186087186099%_))))
                                                    (let* ((_%rest-hd186107%_
                                                            _%hd186088186102%_)
                                                           (_%rest-tl186109%_
                                                            _%tl186089186104%_))
                                                      (if (_%is-e?186015%_
                                                           _%rest-hd186107%_)
                                                          (_%lp186080%_
                                                           _%rest-tl186109%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth186083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth186083%_)
                      (_%make-splice186008%_
                       _%e186014%_
                       _%depth186083%_
                       (_%recur186009%_ _%hd186048%_ _%is-e?186015%_)
                       (_%recur186009%_ _%rest186082%_ _%is-e?186015%_))
                      (_%make-cons186007%_
                       (_%recur186009%_ _%hd186048%_ _%is-e?186015%_)
                       (_%recur186009%_ _%rest186082%_ _%is-e?186015%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E186086186095%_)))))
                                    (_%E186085186114%_)))))))
                      (_%E186027186036%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E186026186118%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e186014%_))
                                                    (let ((_g186538_
                                                           (_%recur186009%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e186014%_)))
                    _%is-e?186015%_)))
              (begin
                (let ((_g186539_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g186538_)
                             (##values-length _g186538_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g186539_ 2)))
                      (error "Context expects 2 values" _g186539_)))
                (let ((_%e186123%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g186538_ 0)))
                      (_%vars186124%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g186538_ 1))))
                  (values (cons 'vector _%e186123%_) _%vars186124%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e186014%_))
                                                        (let ((_g186540_
                                                               (_%recur186009%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e186014%_)))
                        _%is-e?186015%_)))
                  (begin
                    (let ((_g186541_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g186540_)
                                 (##values-length _g186540_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g186541_ 2)))
                          (error "Context expects 2 values" _g186541_)))
                    (let ((_%e186127%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g186540_ 0)))
                          (_%vars186128%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g186540_ 1))))
                      (values (cons 'box _%e186127%_) _%vars186128%_))))
                (values (cons 'datum _%e186014%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g186542_
                             (_%recur186009%_ _%e186005%_ gx#ellipsis?)))
                        (begin
                          (let ((_g186543_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g186542_)
                                       (##values-length _g186542_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g186543_ 2)))
                                (error "Context expects 2 values" _g186543_)))
                          (let ((_%tree186011%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g186542_ 0)))
                                (_%vars186012%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g186542_ 1))))
                            (if (null? _%vars186012%_)
                                _%tree186011%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx185961%_
                                   _%vars186012%_))))))))))
          (let* ((_%e185965185975%_ _%stx185961%_)
                 (_%E185967185979%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx185961%_))))
                 (_%E185966186001%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e185965185975%_))
                        (let ((_%e185968185983%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e185965185975%_))))
                          (let ((_%hd185969185986%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e185968185983%_)))
                                (_%tl185970185988%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e185968185983%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl185970185988%_))
                                (let ((_%e185971185991%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl185970185988%_))))
                                  (let ((_%hd185972185994%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e185971185991%_)))
                                        (_%tl185973185996%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e185971185991%_))))
                                    (let ((_%form185999%_ _%hd185972185994%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl185973185996%_))
                                          (let ((__tmp186545
                                                 (_%generate185963%_
                                                  (_%parse185964%_
                                                   _%form185999%_)))
                                                (__tmp186544
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx185961%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp186545
                                             __tmp186544))
                                          (_%E185967185979%_)))))
                                (_%E185967185979%_))))
                        (_%E185967185979%_)))))
            (_%E185966186001%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx185210%_
               _%identifier=?185211%_
               _%unwrap-e185212%_
               _%wrap-e185213%_)
        (letrec ((_%generate-bindings185215%_
                  (lambda (_%target185825%_
                           _%ids185826%_
                           _%clauses185827%_
                           _%clause-ids185828%_
                           _%E185829%_)
                    (letrec ((_%generate1185831%_
                              (lambda (_%clause185928%_
                                       _%clause-id185929%_
                                       _%E185930%_)
                                (cons (cons _%clause-id185929%_ '())
                                      (cons (let ((__tmp186547
                                                   (cons _%target185825%_ '()))
                                                  (__tmp186546
                                                   (_%generate-clause185217%_
                                                    _%target185825%_
                                                    _%ids185826%_
                                                    _%clause185928%_
                                                    _%E185930%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp186547
                                               __tmp186546))
                                            '())))))
                      (let _%lp185833%_ ((_%rest185835%_ _%clauses185827%_)
                                         (_%rest-ids185836%_
                                          _%clause-ids185828%_)
                                         (_%bindings185837%_ '()))
                        (let* ((_%rest185838185846%_ _%rest185835%_)
                               (_%else185840185854%_
                                (lambda () _%bindings185837%_))
                               (_%K185842185916%_
                                (lambda (_%rest185857%_ _%clause185858%_)
                                  (let* ((_%rest-ids185859185866%_
                                          _%rest-ids185836%_)
                                         (_%E185861185870%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids185859185866%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K185862185904%_
                                          (lambda (_%rest-ids185873%_
                                                   _%clause-id185874%_)
                                            (let* ((_%rest-ids185875185883%_
                                                    _%rest-ids185873%_)
                                                   (_%else185877185891%_
                                                    (lambda ()
                                                      (cons (_%generate1185831%_
                                                             _%clause185858%_
                                                             _%clause-id185874%_
                                                             _%E185829%_)
                                                            _%bindings185837%_)))
                                                   (_%K185879185896%_
                                                    (lambda (_%next-clause-id185894%_)
                                                      (_%lp185833%_
                                                       _%rest185857%_
                                                       _%rest-ids185873%_
                                                       (cons (_%generate1185831%_
                                                              _%clause185858%_
                                                              _%clause-id185874%_
                                                              _%next-clause-id185894%_)
                                                             _%bindings185837%_)))))
                                              (if (pair? _%rest-ids185875185883%_)
                                                  (let* ((_%hd185880185899%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids185875185883%_)))
                                                         (_%next-clause-id185902%_
                                                          _%hd185880185899%_))
                                                    (_%K185879185896%_
                                                     _%next-clause-id185902%_))
                                                  (_%else185877185891%_))))))
                                    (if (pair? _%rest-ids185859185866%_)
                                        (let ((_%hd185863185907%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids185859185866%_)))
                                              (_%tl185864185909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids185859185866%_))))
                                          (let* ((_%clause-id185912%_
                                                  _%hd185863185907%_)
                                                 (_%rest-ids185914%_
                                                  _%tl185864185909%_))
                                            (_%K185862185904%_
                                             _%rest-ids185914%_
                                             _%clause-id185912%_)))
                                        (_%E185861185870%_))))))
                          (if (pair? _%rest185838185846%_)
                              (let ((_%hd185843185919%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest185838185846%_)))
                                    (_%tl185844185921%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest185838185846%_))))
                                (let* ((_%clause185924%_ _%hd185843185919%_)
                                       (_%rest185926%_ _%tl185844185921%_))
                                  (_%K185842185916%_
                                   _%rest185926%_
                                   _%clause185924%_)))
                              (_%else185840185854%_)))))))
                 (_%generate-body185216%_
                  (lambda (_%bindings185785%_ _%body185786%_)
                    (let _%recur185788%_ ((_%rest185790%_ _%bindings185785%_))
                      (let* ((_%rest185791185799%_ _%rest185790%_)
                             (_%else185793185807%_ (lambda () _%body185786%_))
                             (_%K185795185813%_
                              (lambda (_%rest185810%_ _%hd185811%_)
                                (let ((__tmp186549 (cons _%hd185811%_ '()))
                                      (__tmp186548
                                       (_%recur185788%_ _%rest185810%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp186549
                                   __tmp186548)))))
                        (if (pair? _%rest185791185799%_)
                            (let ((_%hd185796185816%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest185791185799%_)))
                                  (_%tl185797185818%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest185791185799%_))))
                              (let* ((_%hd185821%_ _%hd185796185816%_)
                                     (_%rest185823%_ _%tl185797185818%_))
                                (_%K185795185813%_
                                 _%rest185823%_
                                 _%hd185821%_)))
                            (_%else185793185807%_))))))
                 (_%generate-clause185217%_
                  (lambda (_%target185648%_
                           _%ids185649%_
                           _%clause185650%_
                           _%E185651%_)
                    (letrec ((_%generate1185653%_
                              (lambda (_%hd185740%_
                                       _%fender185741%_
                                       _%body185742%_)
                                (let ((_g186550_
                                       (_%parse-clause185219%_
                                        _%hd185740%_
                                        _%ids185649%_)))
                                  (begin
                                    (let ((_g186551_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186550_)
                                                 (##values-length _g186550_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186551_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186551_)))
                                    (let ((_%e185744%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g186550_ 0)))
                                          (_%mvars185745%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g186550_ 1))))
                                      (let* ((_%pvars185747%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars185745%_))))
                                             (_%E185749%_
                                              (cons _%E185651%_
                                                    (cons _%target185648%_
                                                          '())))
                                             (_%K185782%_
                                              (let ((__tmp186552
                                                     (let ((__tmp186554
                                                            (map (lambda (_%mvar185751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar185752%_)
                           (let* ((_%mvar185753185760%_ _%mvar185751%_)
                                  (_%E185755185764%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar185753185760%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K185756185770%_
                                   (lambda (_%depth185767%_ _%id185768%_)
                                     (cons _%id185768%_
                                           (cons (let ((__tmp186556
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id185768%_)))
                                                       (__tmp186555
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar185752%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp186556
                                                    __tmp186555
                                                    _%depth185767%_))
                                                 '())))))
                             (if (pair? _%mvar185753185760%_)
                                 (let ((_%hd185757185773%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar185753185760%_)))
                                       (_%tl185758185775%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar185753185760%_))))
                                   (let* ((_%id185778%_ _%hd185757185773%_)
                                          (_%depth185780%_ _%tl185758185775%_))
                                     (_%K185756185770%_
                                      _%depth185780%_
                                      _%id185778%_)))
                                 (_%E185755185764%_))))
                         _%mvars185745%_
                         _%pvars185747%_))
                   (__tmp186553
                    (if (eq? _%fender185741%_ '#t)
                        _%body185742%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender185741%_
                           _%body185742%_
                           _%E185749%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp186554 __tmp186553))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars185747%_
                                                 __tmp186552))))
                                        (_%generate-match185218%_
                                         _%hd185740%_
                                         _%target185648%_
                                         _%e185744%_
                                         _%mvars185745%_
                                         _%K185782%_
                                         _%E185749%_))))))))
                      (let* ((_%e185654185674%_ _%clause185650%_)
                             (_%E185663185678%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e185654185674%_))))
                             (_%E185656185712%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e185654185674%_))
                                    (let ((_%e185664185682%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e185654185674%_))))
                                      (let ((_%hd185665185685%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e185664185682%_)))
                                            (_%tl185666185687%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e185664185682%_))))
                                        (let ((_%hd185690%_
                                               _%hd185665185685%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl185666185687%_))
                                              (let ((_%e185667185692%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl185666185687%_))))
                                                (let ((_%hd185668185695%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e185667185692%_)))
                                                      (_%tl185669185697%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e185667185692%_))))
                                                  (let ((_%fender185700%_
                                                         _%hd185668185695%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl185669185697%_))
                                                        (let ((_%e185670185702%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl185669185697%_))))
                  (let ((_%hd185671185705%_
                         (let ()
                           (declare (not safe))
                           (##car _%e185670185702%_)))
                        (_%tl185672185707%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e185670185702%_))))
                    (let ((_%body185710%_ _%hd185671185705%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl185672185707%_))
                          (_%generate1185653%_
                           _%hd185690%_
                           _%fender185700%_
                           _%body185710%_)
                          (_%E185663185678%_)))))
                (_%E185663185678%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E185663185678%_)))))
                                    (_%E185663185678%_))))
                             (_%E185655185736%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e185654185674%_))
                                    (let ((_%e185657185716%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e185654185674%_))))
                                      (let ((_%hd185658185719%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e185657185716%_)))
                                            (_%tl185659185721%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e185657185716%_))))
                                        (let ((_%hd185724%_
                                               _%hd185658185719%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl185659185721%_))
                                              (let ((_%e185660185726%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl185659185721%_))))
                                                (let ((_%hd185661185729%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e185660185726%_)))
                                                      (_%tl185662185731%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e185660185726%_))))
                                                  (let ((_%body185734%_
                                                         _%hd185661185729%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl185662185731%_))
                                                        (_%generate1185653%_
                                                         _%hd185724%_
                                                         '#t
                                                         _%body185734%_)
                                                        (_%E185656185712%_)))))
                                              (_%E185656185712%_)))))
                                    (_%E185656185712%_)))))
                        (_%E185655185736%_)))))
                 (_%generate-match185218%_
                  (lambda (_%where185397%_
                           _%target185398%_
                           _%hd185399%_
                           _%mvars185400%_
                           _%K185401%_
                           _%E185402%_)
                    (letrec ((_%BUG185404%_
                              (lambda (_%q185646%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx185210%_
                                         _%hd185399%_
                                         _%q185646%_))))
                             (_%recur185405%_
                              (lambda (_%e185496%_
                                       _%vars185497%_
                                       _%target185498%_
                                       _%E185499%_
                                       _%k185500%_)
                                (let* ((_%e185501185508%_ _%e185496%_)
                                       (_%E185503185512%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e185501185508%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K185504185634%_
                                        (lambda (_%body185515%_ _%tag185516%_)
                                          (let ((_%$e185518%_ _%tag185516%_))
                                            (if (eq? 'any _%$e185518%_)
                                                (_%k185500%_ _%vars185497%_)
                                                (if (eq? 'id _%$e185518%_)
                                                    (let ((__tmp186561
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target185498%_)))
                                                          (__tmp186557
                                                           (let ((__tmp186559
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp186560
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e185213%_
                                    _%body185515%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?185211%_
                             __tmp186560
                             _%target185498%_)))
                         (__tmp186558 (_%k185500%_ _%vars185497%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp186559 __tmp186558 _%E185499%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp186561 __tmp186557 _%E185499%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e185518%_)
                                                        (_%k185500%_
                                                         (cons (cons _%body185515%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target185498%_)
                       _%vars185497%_))
                (if (eq? 'cons _%$e185518%_)
                    (let ((_%$e185521%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd185522%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl185523%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp186567
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target185498%_)))
                            (__tmp186562
                             (let ((__tmp186566
                                    (cons (cons (cons _%$e185521%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e185212%_
                                                         _%target185498%_))
                                                      '()))
                                          '()))
                                   (__tmp186563
                                    (let ((__tmp186565
                                           (cons (cons (cons _%$hd185522%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e185521%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl185523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e185521%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp186564
                                           (let* ((_%body185524185531%_
                                                   _%body185515%_)
                                                  (_%E185526185535%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body185524185531%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K185527185543%_
                                                   (lambda (_%tl185538%_
                                                            _%hd185539%_)
                                                     (_%recur185405%_
                                                      _%hd185539%_
                                                      _%vars185497%_
                                                      _%$hd185522%_
                                                      _%E185499%_
                                                      (lambda (_%vars185541%_)
                                                        (_%recur185405%_
                                                         _%tl185538%_
                                                         _%vars185541%_
                                                         _%$tl185523%_
                                                         _%E185499%_
                                                         _%k185500%_))))))
                                             (if (pair? _%body185524185531%_)
                                                 (let ((_%hd185528185546%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body185524185531%_)))
                                                       (_%tl185529185548%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body185524185531%_))))
                                                   (let* ((_%hd185551%_
                                                           _%hd185528185546%_)
                                                          (_%tl185553%_
                                                           _%tl185529185548%_))
                                                     (_%K185527185543%_
                                                      _%tl185553%_
                                                      _%hd185551%_)))
                                                 (_%E185526185535%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp186565
                                       __tmp186564))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp186566
                                __tmp186563))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp186567
                         __tmp186562
                         _%E185499%_)))
                    (if (eq? 'splice _%$e185518%_)
                        (let* ((_%body185554185561%_ _%body185515%_)
                               (_%E185556185565%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body185554185561%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K185557185616%_
                                (lambda (_%tl185568%_ _%hd185569%_)
                                  (let* ((_%rlen185571%_
                                          (_%splice-rlen185406%_ _%tl185568%_))
                                         (_%$target185573%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd185575%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl185577%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp185579%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e185581%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd185583%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl185585%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars185587%_
                                          (_%splice-vars185407%_ _%hd185569%_))
                                         (_%lvars185589%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars185587%_)))
                                         (_%tlvars185591%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars185587%_)))
                                         (_%linit185595%_
                                          (map (lambda (_%var185593%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars185589%_)))
                                    (letrec ((_%make-loop185598%_
                                              (lambda (_%vars185602%_)
                                                (let ((__tmp186569
                                                       (cons (cons (cons _%$lp185579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp186582
                                        (cons _%$hd185575%_ _%lvars185589%_))
                                       (__tmp186570
                                        (let ((__tmp186581
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd185575%_)))
                                              (__tmp186575
                                               (let ((__tmp186580
                                                      (cons (cons (cons _%$lp-e185581%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e185212%_
                                   _%$hd185575%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp186576
                                                      (let ((__tmp186579
                                                             (cons (cons (cons _%$lp-hd185583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e185581%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl185585%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e185581%_))
                                             '()))
                                 '())))
                    (__tmp186577
                     (_%recur185405%_
                      _%hd185569%_
                      '()
                      _%$lp-hd185583%_
                      _%E185499%_
                      (lambda (_%hdvars185604%_)
                        (cons _%$lp185579%_
                              (cons _%$lp-tl185585%_
                                    (map (lambda (_%svar185606%_
                                                  _%lvar185607%_)
                                           (let ((__tmp186578
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar185606%_
                                                     _%hdvars185604%_
                                                     _%BUG185404%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp186578
                                              _%lvar185607%_)))
                                         _%svars185587%_
                                         _%lvars185589%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp186579 __tmp186577))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp186580
                                                  __tmp186576)))
                                              (__tmp186571
                                               (let ((__tmp186574
                                                      (map (lambda (_%lvar185609%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar185610%_)
                     (cons (cons _%tlvar185610%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar185609%_))
                                 '())))
                   _%lvars185589%_
                   _%tlvars185591%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp186572
                                                      (_%k185500%_
                                                       (let ((__tmp186573
                                                              (lambda (_%svar185612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar185613%_
                               _%r185614%_)
                        (cons (cons _%svar185612%_ _%tlvar185613%_)
                              _%r185614%_))))
                 (declare (not safe))
                 (foldl__1
                  __tmp186573
                  _%vars185602%_
                  _%svars185587%_
                  _%tlvars185591%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp186574
                                                  __tmp186572))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp186581
                                           __tmp186575
                                           __tmp186571))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp186582
                                    __tmp186570))
                                 '()))
                     '()))
              (__tmp186568
               (cons _%$lp185579%_ (cons _%$target185573%_ _%linit185595%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp186569
                                                   __tmp186568)))))
                                      (let ((_%body185600%_
                                             (let ((__tmp186584
                                                    (cons (cons (cons _%$target185573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl185577%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target185498%_
                                 _%rlen185571%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp186583
                                                    (_%recur185405%_
                                                     _%tl185568%_
                                                     _%vars185497%_
                                                     _%$tl185577%_
                                                     _%E185499%_
                                                     _%make-loop185598%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp186584
                                                __tmp186583))))
                                        (let ((__tmp186588
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target185498%_)))
                                              (__tmp186585
                                               (if (zero? _%rlen185571%_)
                                                   _%body185600%_
                                                   (let ((__tmp186586
                                                          (let ((__tmp186587
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target185498%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp186587 _%rlen185571%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp186586
                                                      _%body185600%_
                                                      _%E185499%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp186588
                                           __tmp186585
                                           _%E185499%_))))))))
                          (if (pair? _%body185554185561%_)
                              (let ((_%hd185558185619%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body185554185561%_)))
                                    (_%tl185559185621%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body185554185561%_))))
                                (let* ((_%hd185624%_ _%hd185558185619%_)
                                       (_%tl185626%_ _%tl185559185621%_))
                                  (_%K185557185616%_
                                   _%tl185626%_
                                   _%hd185624%_)))
                              (_%E185556185565%_)))
                        (if (eq? 'null _%$e185518%_)
                            (let ((__tmp186590
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target185498%_)))
                                  (__tmp186589 (_%k185500%_ _%vars185497%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp186590
                               __tmp186589
                               _%E185499%_))
                            (if (eq? 'vector _%$e185518%_)
                                (let ((_%$e185628%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp186595
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target185498%_)))
                                        (__tmp186591
                                         (let ((__tmp186593
                                                (cons (cons (cons _%$e185628%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp186594
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e185212%_
                                    _%target185498%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp186594))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp186592
                                                (_%recur185405%_
                                                 _%body185515%_
                                                 _%vars185497%_
                                                 _%$e185628%_
                                                 _%E185499%_
                                                 _%k185500%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp186593
                                            __tmp186592))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp186595
                                     __tmp186591
                                     _%E185499%_)))
                                (if (eq? 'box _%$e185518%_)
                                    (let ((_%$e185630%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp186600
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target185498%_)))
                                            (__tmp186596
                                             (let ((__tmp186598
                                                    (cons (cons (cons _%$e185630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp186599
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e185212%_
                                        _%target185498%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp186599))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp186597
                                                    (_%recur185405%_
                                                     _%body185515%_
                                                     _%vars185497%_
                                                     _%$e185630%_
                                                     _%E185499%_
                                                     _%k185500%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp186598
                                                __tmp186597))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp186600
                                         __tmp186596
                                         _%E185499%_)))
                                    (if (eq? 'datum _%$e185518%_)
                                        (let ((_%$e185632%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp186606
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target185498%_)))
                                                (__tmp186601
                                                 (let ((__tmp186605
                                                        (cons (cons (cons _%$e185632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target185498%_))
                                  '()))
                      '()))
               (__tmp186602
                (let ((__tmp186604
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e185632%_ _%body185515%_)))
                      (__tmp186603 (_%k185500%_ _%vars185497%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp186604 __tmp186603 _%E185499%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp186605
                                                    __tmp186602))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp186606
                                             __tmp186601
                                             _%E185499%_)))
                                        (_%BUG185404%_
                                         _%e185496%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e185501185508%_)
                                      (let ((_%hd185505185637%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e185501185508%_)))
                                            (_%tl185506185639%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e185501185508%_))))
                                        (let* ((_%tag185642%_
                                                _%hd185505185637%_)
                                               (_%body185644%_
                                                _%tl185506185639%_))
                                          (_%K185504185634%_
                                           _%body185644%_
                                           _%tag185642%_)))
                                      (_%E185503185512%_)))))
                             (_%splice-rlen185406%_
                              (lambda (_%e185458%_)
                                (let _%lp185460%_ ((_%e185462%_ _%e185458%_)
                                                   (_%n185463%_ '0))
                                  (let* ((_%e185464185471%_ _%e185462%_)
                                         (_%E185466185475%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e185464185471%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K185467185484%_
                                          (lambda (_%body185478%_
                                                   _%tag185479%_)
                                            (let ((_%$e185481%_ _%tag185479%_))
                                              (if (eq? 'splice _%$e185481%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx185210%_
                                                     _%where185397%_))
                                                  (if (eq? 'cons _%$e185481%_)
                                                      (_%lp185460%_
                                                       (cdr _%body185478%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n185463%_
                                                                '1)))
                                                      _%n185463%_))))))
                                    (if (pair? _%e185464185471%_)
                                        (let ((_%hd185468185487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e185464185471%_)))
                                              (_%tl185469185489%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e185464185471%_))))
                                          (let* ((_%tag185492%_
                                                  _%hd185468185487%_)
                                                 (_%body185494%_
                                                  _%tl185469185489%_))
                                            (_%K185467185484%_
                                             _%body185494%_
                                             _%tag185492%_)))
                                        (_%E185466185475%_))))))
                             (_%splice-vars185407%_
                              (lambda (_%e185414%_)
                                (let _%recur185416%_ ((_%e185418%_ _%e185414%_)
                                                      (_%vars185419%_ '()))
                                  (let* ((_%e185420185427%_ _%e185418%_)
                                         (_%E185422185431%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e185420185427%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K185423185446%_
                                          (lambda (_%body185434%_
                                                   _%tag185435%_)
                                            (let ((_%$e185437%_ _%tag185435%_))
                                              (if (eq? 'var _%$e185437%_)
                                                  (cons _%body185434%_
                                                        _%vars185419%_)
                                                  (if (or (eq? 'cons
                                                               _%$e185437%_)
                                                          (eq? 'splice
                                                               _%$e185437%_))
                                                      (_%recur185416%_
                                                       (cdr _%body185434%_)
                                                       (_%recur185416%_
                                                        (car _%body185434%_)
                                                        _%vars185419%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e185437%_)
                      (eq? 'box _%$e185437%_))
                  (_%recur185416%_ _%body185434%_ _%vars185419%_)
                  _%vars185419%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e185420185427%_)
                                        (let ((_%hd185424185449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e185420185427%_)))
                                              (_%tl185425185451%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e185420185427%_))))
                                          (let* ((_%tag185454%_
                                                  _%hd185424185449%_)
                                                 (_%body185456%_
                                                  _%tl185425185451%_))
                                            (_%K185423185446%_
                                             _%body185456%_
                                             _%tag185454%_)))
                                        (_%E185422185431%_))))))
                             (_%make-body185408%_
                              (lambda (_%vars185410%_)
                                (cons _%K185401%_
                                      (map (lambda (_%mvar185412%_)
                                             (let ((__tmp186607
                                                    (car _%mvar185412%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp186607
                                                _%vars185410%_
                                                _%BUG185404%_)))
                                           _%mvars185400%_)))))
                      (_%recur185405%_
                       _%hd185399%_
                       '()
                       _%target185398%_
                       _%E185402%_
                       _%make-body185408%_))))
                 (_%parse-clause185219%_
                  (lambda (_%hd185291%_ _%ids185292%_)
                    (let _%recur185294%_ ((_%e185296%_ _%hd185291%_)
                                          (_%vars185297%_ '())
                                          (_%depth185298%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e185296%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e185296%_))
                              (values '(any) _%vars185297%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e185296%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx185210%_
                                     _%hd185291%_))
                                  (if (let ((__tmp186608
                                             (lambda (_%id185303%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e185296%_
                                                  _%id185303%_)))))
                                        (declare (not safe))
                                        (__find __tmp186608 _%ids185292%_))
                                      (values (cons 'id _%e185296%_)
                                              _%vars185297%_)
                                      (if (let ((__tmp186609
                                                 (lambda (_%var185306%_)
                                                   (let ((__tmp186610
                                                          (car _%var185306%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e185296%_
                                                      __tmp186610)))))
                                            (declare (not safe))
                                            (__find __tmp186609
                                                    _%vars185297%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx185210%_
                                             _%e185296%_))
                                          (values (cons 'var _%e185296%_)
                                                  (cons (cons _%e185296%_
                                                              _%depth185298%_)
                                                        _%vars185297%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e185296%_))
                              (let* ((_%e185310185317%_ _%e185296%_)
                                     (_%E185312185321%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e185310185317%_))))
                                     (_%E185311185382%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e185310185317%_))
                                            (let ((_%e185313185325%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e185310185317%_))))
                                              (let ((_%hd185314185328%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e185313185325%_)))
                                                    (_%tl185315185330%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e185313185325%_))))
                                                (let* ((_%hd185333%_
                                                        _%hd185314185328%_)
                                                       (_%rest185335%_
                                                        _%tl185315185330%_)
                                                       (_%make-pair185350%_
                                                        (lambda (_%tag185337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd185338%_
                         _%tl185339%_)
                  (let* ((_%hd-depth185341%_
                          (if (eq? _%tag185337%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth185298%_ '1))
                              _%depth185298%_))
                         (_g186611_
                          (_%recur185294%_
                           _%hd185338%_
                           _%vars185297%_
                           _%hd-depth185341%_)))
                    (begin
                      (let ((_g186612_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g186611_)
                                   (##values-length _g186611_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g186612_ 2)))
                            (error "Context expects 2 values" _g186612_)))
                      (let ((_%hd185343%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g186611_ 0)))
                            (_%vars185344%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g186611_ 1))))
                        (let ((_g186613_
                               (_%recur185294%_
                                _%tl185339%_
                                _%vars185344%_
                                _%depth185298%_)))
                          (begin
                            (let ((_g186614_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g186613_)
                                         (##values-length _g186613_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g186614_ 2)))
                                  (error "Context expects 2 values"
                                         _g186614_)))
                            (let ((_%tl185346%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g186613_ 0)))
                                  (_%vars185347%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g186613_ 1))))
                              (values (cons _%tag185337%_
                                            (cons _%hd185343%_ _%tl185346%_))
                                      _%vars185347%_)))))))))
               (_%e185351185358%_ _%rest185335%_)
               (_%E185353185362%_
                (lambda ()
                  (_%make-pair185350%_ 'cons _%hd185333%_ _%rest185335%_)))
               (_%E185352185378%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e185351185358%_))
                      (let ((_%e185354185366%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e185351185358%_))))
                        (let ((_%hd185355185369%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e185354185366%_)))
                              (_%tl185356185371%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e185354185366%_))))
                          (let* ((_%rest-hd185374%_ _%hd185355185369%_)
                                 (_%rest-tl185376%_ _%tl185356185371%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd185374%_))
                                (_%make-pair185350%_
                                 'splice
                                 _%hd185333%_
                                 _%rest-tl185376%_)
                                (_%make-pair185350%_
                                 'cons
                                 _%hd185333%_
                                 _%rest185335%_)))))
                      (_%E185353185362%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E185352185378%_))))
                                            (_%E185312185321%_)))))
                                (_%E185311185382%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e185296%_))
                                  (values '(null) _%vars185297%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e185296%_))
                                      (let ((_g186615_
                                             (_%recur185294%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e185296%_)))
                                              _%vars185297%_
                                              _%depth185298%_)))
                                        (begin
                                          (let ((_g186616_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g186615_)
                                                       (##values-length
                                                        _g186615_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g186616_ 2)))
                                                (error "Context expects 2 values"
                                                       _g186616_)))
                                          (let ((_%e185388%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g186615_ 0)))
                                                (_%vars185389%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g186615_
                                                    1))))
                                            (values (cons 'vector _%e185388%_)
                                                    _%vars185389%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e185296%_))
                                          (let ((_g186617_
                                                 (_%recur185294%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e185296%_)))
                                                  _%vars185297%_
                                                  _%depth185298%_)))
                                            (begin
                                              (let ((_g186618_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g186617_)
                                                           (##values-length
                                                            _g186617_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g186618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g186618_)))
                                              (let ((_%e185392%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g186617_
                                                        0)))
                                                    (_%vars185393%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g186617_
                                                        1))))
                                                (values (cons 'box _%e185392%_)
                                                        _%vars185393%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e185296%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e185296%_)))
                                                      _%vars185297%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx185210%_
                                                 _%e185296%_))))))))))))
          (let* ((_%e185220185233%_ _%stx185210%_)
                 (_%E185222185237%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e185220185233%_))))
                 (_%E185221185287%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e185220185233%_))
                        (let ((_%e185223185241%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e185220185233%_))))
                          (let ((_%hd185224185244%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e185223185241%_)))
                                (_%tl185225185246%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e185223185241%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl185225185246%_))
                                (let ((_%e185226185249%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl185225185246%_))))
                                  (let ((_%hd185227185252%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e185226185249%_)))
                                        (_%tl185228185254%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e185226185249%_))))
                                    (let ((_%expr185257%_ _%hd185227185252%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl185228185254%_))
                                          (let ((_%e185229185259%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl185228185254%_))))
                                            (let ((_%hd185230185262%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e185229185259%_)))
                                                  (_%tl185231185264%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e185229185259%_))))
                                              (let* ((_%ids185267%_
                                                      _%hd185230185262%_)
                                                     (_%clauses185269%_
                                                      _%tl185231185264%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids185267%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses185269%_))
                                                        (let* ((_%ids185274%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids185267%_)))
                       (_%clauses185276%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses185269%_)))
                       (_%clause-ids185278%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses185276%_)))
                       (_%E185280%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target185282%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first185284%_
                        (if (null? _%clauses185276%_)
                            _%E185280%_
                            (car _%clause-ids185278%_))))
                  (let ((__tmp186620
                         (let ((__tmp186621
                                (let ((__tmp186623
                                       (let ((__tmp186625
                                              (cons (cons (cons _%E185280%_
                                                                '())
                                                          (cons (let ((__tmp186627
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target185282%_ '()))
                              (__tmp186626
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target185282%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp186627 __tmp186626))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp186624
                                              (_%generate-body185216%_
                                               (_%generate-bindings185215%_
                                                _%target185282%_
                                                _%ids185274%_
                                                _%clauses185276%_
                                                _%clause-ids185278%_
                                                _%E185280%_)
                                               (cons _%first185284%_
                                                     (cons _%expr185257%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp186625
                                          __tmp186624)))
                                      (__tmp186622
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx185210%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp186623
                                   __tmp186622))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp186621)))
                        (__tmp186619
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx185210%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp186620 __tmp186619)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx185210%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx185210%_
                                                       _%ids185267%_))))))
                                          (_%E185222185237%_)))))
                                (_%E185222185237%_))))
                        (_%E185222185237%_)))))
            (_%E185221185287%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx185935%_)
        (let* ((_%identifier=?185937%_ 'free-identifier=?)
               (_%unwrap-e185939%_ 'syntax-e)
               (_%wrap-e185941%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx185935%_
           _%identifier=?185937%_
           _%unwrap-e185939%_
           _%wrap-e185941%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx185943%_ _%identifier=?185944%_)
        (let* ((_%unwrap-e185946%_ 'syntax-e) (_%wrap-e185948%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx185943%_
           _%identifier=?185944%_
           _%unwrap-e185946%_
           _%wrap-e185948%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx185950%_ _%identifier=?185951%_ _%unwrap-e185952%_)
        (let ((_%wrap-e185954%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx185950%_
           _%identifier=?185951%_
           _%unwrap-e185952%_
           _%wrap-e185954%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g186628_
        (let ((_g186629_ (let () (declare (not safe)) (##length _g186628_))))
          (cond ((let () (declare (not safe)) (##fx= _g186629_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g186628_))
                ((let () (declare (not safe)) (##fx= _g186629_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g186628_))
                ((let () (declare (not safe)) (##fx= _g186629_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g186628_))
                ((let () (declare (not safe)) (##fx= _g186629_ 4))
                 (apply gx#macro-expand-syntax-case__% _g186628_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g186628_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx185207%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx185207%_))
            (let ((__tmp186630
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx185207%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp186630 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd185165%_ . _%rest185166%_)
        (let ((_%len185168%_ (length _%hd185165%_)))
          (let _%lp185170%_ ((_%rest185172%_ _%rest185166%_))
            (let* ((_%rest185173185181%_ _%rest185172%_)
                   (_%else185175185189%_ (lambda () '#!void))
                   (_%K185177185195%_
                    (lambda (_%rest185192%_ _%hd185193%_)
                      (if (let ((__tmp186631 (length _%hd185193%_)))
                            (declare (not safe))
                            (##fx= _%len185168%_ __tmp186631))
                          (_%lp185170%_ _%rest185192%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd185193%_))))))
              (if (pair? _%rest185173185181%_)
                  (let ((_%hd185178185198%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest185173185181%_)))
                        (_%tl185179185200%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest185173185181%_))))
                    (let* ((_%hd185203%_ _%hd185178185198%_)
                           (_%rest185205%_ _%tl185179185200%_))
                      (_%K185177185195%_ _%rest185205%_ _%hd185203%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx185115%_ _%n185116%_)
        (let _%lp185118%_ ((_%rest185121%_ _%stx185115%_) (_%r185123%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest185121%_))
              (let* ((_%g185125185132%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest185121%_)))
                     (_%E185127185136%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g185125185132%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K185128185143%_
                      (lambda (_%rest185139%_ _%hd185140%_)
                        (_%lp185118%_
                         _%rest185139%_
                         (cons _%hd185140%_ _%r185123%_)))))
                (if (pair? _%g185125185132%_)
                    (let ((_%hd185129185146%_
                           (let ()
                             (declare (not safe))
                             (##car _%g185125185132%_)))
                          (_%tl185130185148%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g185125185132%_))))
                      (let* ((_%hd185151%_ _%hd185129185146%_)
                             (_%rest185153%_ _%tl185130185148%_))
                        (_%K185128185143%_ _%rest185153%_ _%hd185151%_)))
                    (_%E185127185136%_)))
              (let _%lp185155%_ ((_%n185157%_ _%n185116%_)
                                 (_%l185158%_ _%r185123%_)
                                 (_%r185160%_ _%rest185121%_))
                (if (null? _%l185158%_)
                    (values _%l185158%_ _%r185160%_)
                    (if (fxpositive? _%n185157%_)
                        (_%lp185155%_
                         (let () (declare (not safe)) (##fx- _%n185157%_ '1))
                         (cdr _%l185158%_)
                         (cons (car _%l185158%_) _%r185160%_))
                        (values (reverse! _%l185158%_) _%r185160%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx185065%_ _%n185066%_)
        (let _%lp185068%_ ((_%rest185071%_ _%stx185065%_) (_%r185073%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest185071%_))
              (let* ((_%g185075185082%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest185071%_)))
                     (_%E185077185086%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g185075185082%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K185078185093%_
                      (lambda (_%rest185089%_ _%hd185090%_)
                        (_%lp185068%_
                         _%rest185089%_
                         (cons _%hd185090%_ _%r185073%_)))))
                (if (pair? _%g185075185082%_)
                    (let ((_%hd185079185096%_
                           (let ()
                             (declare (not safe))
                             (##car _%g185075185082%_)))
                          (_%tl185080185098%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g185075185082%_))))
                      (let* ((_%hd185101%_ _%hd185079185096%_)
                             (_%rest185103%_ _%tl185080185098%_))
                        (_%K185078185093%_ _%rest185103%_ _%hd185101%_)))
                    (_%E185077185086%_)))
              (let _%lp185105%_ ((_%n185107%_ _%n185066%_)
                                 (_%l185108%_ _%r185073%_)
                                 (_%r185110%_ _%rest185071%_))
                (if (null? _%l185108%_)
                    (vector _%l185108%_ _%r185110%_)
                    (if (fxpositive? _%n185107%_)
                        (_%lp185105%_
                         (let () (declare (not safe)) (##fx- _%n185107%_ '1))
                         (cdr _%l185108%_)
                         (cons (car _%l185108%_) _%r185110%_))
                        (vector (reverse! _%l185108%_) _%r185110%_))))))))))
